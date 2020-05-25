package com.example.bookinformation;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;


public class best extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.best);


    }
    public void onClick(View view) {
        Intent intent = null;
        switch (view.getId()) {
            case R.id.button1:
                intent = new Intent(best.this, b1.class);
                break;

            case R.id.button2:
                intent = new Intent(best.this, b2.class);
                break;
            case R.id.button3:
                intent = new Intent(best.this, b3.class);
            break;
            case R.id.button4:
                intent = new Intent(best.this, b4.class);
                break;
            case R.id.button5:
                intent = new Intent(best.this, b5.class);
                break;
            case R.id.button6:
                intent = new Intent(best.this, b6.class);
                break;
            case R.id.button7:
                intent = new Intent(best.this, b7.class);
                break;
            case R.id.button8:
                intent = new Intent(best.this, b8.class);
                break;

            case R.id.button9:
                intent = new Intent(best.this, b9.class);
                break;
            case R.id.button10:
                intent = new Intent(best.this, b10.class);
                break;
        }
        startActivity(intent);
    }
}