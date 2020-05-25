package com.example.bookinformation;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;


public class information extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.information);


    }
    public void onCLick(View view){
        Intent intent = null;
        switch (view.getId()){
            case R.id.button6:
                intent = new Intent(Intent.ACTION_VIEW,
                        Uri.parse("http://www.yes24.com/EventWorld/Main.aspx"));
                break;
            case R.id.button7:
                intent = new Intent(Intent.ACTION_VIEW,
                        Uri.parse("https://www.aladin.co.kr/events/wevent.aspx?EventId=193361"));
                break;
            case R.id.button8:
                intent = new Intent(Intent.ACTION_VIEW,
                        Uri.parse("http://www.kyobobook.co.kr/event/eventMain.laf?orderClick=rvm"));
                break;
        }
        startActivity(intent);
    }
}
