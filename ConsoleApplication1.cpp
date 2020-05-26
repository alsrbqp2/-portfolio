#include <stdio.h>
#include <Windows.h>
#include <conio.h>
#include<stdlib.h>
#define LEFT 3
#define RIGHT 4
#define UP 1
#define DOWN 2
#define SUBMIT 5 // 스페이스바
#define WIDTH 40
#define HEIGHT 20
#define TRUE 1
#define FALSE 0
#define SC 90
int speed = 200;
int score = 0;
typedef struct 
{
    int x;
    int y;

    int act;
}Poo;
typedef struct
{
    int x;
   
}Player;

Poo poo[WIDTH];
Player player;

void CreateEnemy();
int keyControl();
void info();
void titleDraw();
void init();
void gotoxy();
int  menuDraw();
void init2game();





typedef enum { NOCURSOR, SOLIDCURSOR, NORMALCURSOR } CURSOR_TYPE; 

int isKeyDown(int key)
{
    return ((GetAsyncKeyState(key) & 0x8000) != 0);
}




// 커서 깜빡임 사라지게 하는 함수
void setcursortype(CURSOR_TYPE c)
{
    CONSOLE_CURSOR_INFO CurInfo;
    switch (c)
    {
    case NOCURSOR:
        CurInfo.dwSize = 1;
        CurInfo.bVisible = FALSE;
        break;
    case SOLIDCURSOR:
        CurInfo.dwSize = 100;
        CurInfo.bVisible = TRUE;
        break;
    case NORMALCURSOR:
        CurInfo.dwSize = 20;
        CurInfo.bVisible = TRUE;
        break;
    }
    SetConsoleCursorInfo(GetStdHandle(STD_OUTPUT_HANDLE), &CurInfo);
}

void init() {
    system("mode con cols=86 lines=30 | title f피하기 ");

}



void titleDraw() {
    printf("\n\n\n");
    printf("-------------------------------------------------------------------------------\n");
    printf("|            #######                ##       ###    #    ######## #           |\n");
    printf("|            #         ###########  ##   ########## #          #  #           |\n");
    printf("|            #######     ##   ##    ##       ###    ###       #   #           |\n");
    printf("|            #         ###########  ##      #   #   #        #    #           |\n");
    printf("|            #                      ##       ###    #       #     #           |\n");
    printf("-------------------------------------------------------------------------------\n");


}
void gotoxy(int x, int y) {
    HANDLE consoleHandle = GetStdHandle(STD_OUTPUT_HANDLE);
    COORD pos = {2* x,y };
   
    SetConsoleCursorPosition(consoleHandle, pos);
}


void info() {
    system("cls");
    printf("\n\n");
    printf("                  [ 조작법 ]\n\n");
    printf("                  방향키 왼쪽: <- 오른쪽: ->  \n");
    printf("                  [메뉴 선택] SPACE \n\n\n\n");
    printf("                  [ 만든이] 정민규\n\n");
    printf("                  space bar을 누르시면 메인화면으로 이동합니다.");
    while (1) {
        if (keyControl() == SUBMIT) {
            break;
        }
    }
}
int menuDraw() {
    int x = 17; int y = 12;
    gotoxy(x-2, y);
    printf("▶  GAME START");
    gotoxy(x, y+1);
    printf("게임방법 ");
    gotoxy(x,y+2);
    printf("종료");

    while (1) {

        int n = keyControl();
        switch (n) {
        case UP: {
            if (y > 12) {
                gotoxy(x - 2, y);
                printf(" ");
                gotoxy(x - 2, --y);
                printf("▶");
            }
            break;

        }
        case DOWN: {
            if (y < 14) {
                gotoxy(x - 2, y);
                printf(" ");
                gotoxy(x - 2, ++y);
                printf("▶");
            }
            break;
        }
        case SUBMIT: {
            return y - 12;
        }
        }
    }

}

int keyControl() {
    char temp;
    temp=_getch();
    if (temp == 'a' || temp == 'A') {
        return LEFT;
    }
    else if (temp == 'd' || temp == 'D') {
        return RIGHT;
    }
    else if (temp == 'w' || temp == 'W') {
        return UP;
    }
    else if (temp == 's' || temp == 'S') {
        return DOWN;
    }
    else if (temp == ' ') {
        return SUBMIT;
    }



}

void init2()
{
    int i;
    int score = 0;
    system("cls");
    gotoxy(10, 11);
    printf("-----------------------------");
    gotoxy(10, 12);
    printf("-아무키나 누르면 시작합니다-");
    gotoxy(10, 13);
    printf("-----------------------------");
    system("pause>>nul");
    for (i = 0; i < WIDTH; i++)
        poo[i].act = FALSE;

    player.x = WIDTH / 2;

}

void Score()
{
    
   
}

void CreatePoo()
{
    int i;

    for (i = 0; i < WIDTH; i++)
    {
        if (!poo[i].act)
        {
            poo[i].x = rand() % WIDTH;
            poo[i].y = HEIGHT;

            poo[i].act = TRUE;

            return;
        }
    }
}

void MovePoo()
{
    int i;

    for (i = 0; i < WIDTH; i++)
    {
        if (poo[i].act)
        {
            poo[i].y--;
        }
    }
}

void DeletePoo()
{
    int i;

    for (i = 0; i < WIDTH; i++)
    {
        if (poo[i].act && poo[i].y < 0)
        {
            poo[i].act = FALSE;
            score++;
        }
    }

}

int PlayerContainsPoo() 
{
    int i;
    
    for (i = 0; i < WIDTH; i++)
    {
        if ((poo[i].act) && (poo[i].y == 0) && (poo[i].x == player.x))
        {
            score = 0;
            return TRUE;
        }
    }

    return FALSE;
}

void MovePlayer()
{
    if (isKeyDown(VK_LEFT))
        player.x -= 1;
    if (isKeyDown(VK_RIGHT))
        player.x += 1;

    if (player.x < 0)
        player.x = 0;
    if (player.x > WIDTH - 1)
        player.x = WIDTH - 1;
}

void difficulty() {

    if (score == 10) {
        speed = 40;
        gotoxy(20,10);
        printf("스테이지2 ");
        gotoxy(20, 11);
        printf("시작하려면 아무키나 입력해주세요");
        system("pause>>nul");
    }
    if (score == 300) {
        speed = 40;
        gotoxy(20, 10);
        printf("스테이지3 ");
        gotoxy(20, 11);
        printf("시작하려면 아무키나 입력해주세요");
        system("pause>>nul");
    }
    if (score == 450) {
        speed = 40;
        gotoxy(20, 10);
        printf("스테이지4 ");
        gotoxy(20, 11);
        printf("시작하려면 아무키나 입력해주세요");
        system("pause>>nul");
    }
    if (score == 1000) {
        speed = 20;
        gotoxy(20, 10);
        printf("스테이지5");
        gotoxy(20, 11);
        printf("시작하려면 아무키나 입력해주세요");
        system("pause>>nul");
    }



}
void PrintMap()
{
    system("cls");
  
    int i;
  
    printf("score:%d", score); // 점수 출력
   for (i = 0; i < WIDTH; i++)

    {    if (poo[i].act)
       {
           gotoxy(poo[i].x/2, HEIGHT - poo[i].y);
          printf("F");
       }
    }
  
    gotoxy(player.x/2, HEIGHT);
    printf("옷");

    gotoxy(0, HEIGHT + 1);
    for (i = 0; i < HEIGHT; i++)
        printf("▤");
}

void init2game() { //  게임 배경화면

    

    init2();

    do
    {
        srand((int)malloc(NULL));

        CreatePoo();
        MovePoo();
        DeletePoo();
        
        MovePlayer();

        PrintMap();
       
        difficulty();

        Sleep(speed);
    } while (!(PlayerContainsPoo()));

      
   
        
    }








int main(void) {
    setcursortype(NOCURSOR);
   
    init();
    while (1) {
        titleDraw();
        int menuCode = menuDraw();
        if (menuCode == 0) {
           
            init2game();
        }
        if (menuCode == 1) {
            info();
        }
        if (menuCode == 2) {
            return 0;
        }
        system("cls");
    }
    return 0;
}



