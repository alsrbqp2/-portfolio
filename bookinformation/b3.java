package com.example.bookinformation;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;

public class b3 extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.b3);


    }
    public void onClick(View view) {
        Intent intent = null;
        switch (view.getId()) {
            case R.id.button1:
                intent = new Intent(b3.this, first.class);
                break;

            case R.id.button2:
                intent = new Intent(b3.this, best.class);
                break;
            case R.id.button3:
                intent = new Intent(Intent.ACTION_VIEW,
                        Uri.parse("https://book.naver.com/bookdb/book_detail.nhn?bid=14740358"));
                break;
        }
        startActivity(intent);
    }
}