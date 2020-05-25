package com.example.bookinformation;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;


public class first extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.first);


    }

    public void onClick(View view) {
        Intent intent = null;
        switch (view.getId()) {
            case R.id.imageView12:
                intent = new Intent(first.this, rating.class);
                break;
            case R.id.imageView1:
                intent = new Intent(Intent.ACTION_VIEW,Uri.parse("geo:37.30,127.2?z=10"));
                break;
            case R.id.imageView13:
                intent = new Intent(Intent.ACTION_VIEW,
                        Uri.parse("http://www.yes24.com/campaign/01_book/yesPresent/yesPresent.aspx?EventNo=169834&CategoryNumber=001"));
                break;
            case R.id.button1:
                intent = new Intent(first.this, intro.class);
                break;

            case R.id.button3:
                intent = new Intent(first.this, information.class);
                break;
            case R.id.button2:
                intent = new Intent(first.this, best.class);
                break;
            case R.id.button5:
                intent = new Intent(first.this, rating.class);
                break;
            case R.id.textView6:
                intent = new Intent(Intent.ACTION_DIAL, Uri.parse("tel:1544-2244"));
                break;
        }
        startActivity(intent);
    }
}