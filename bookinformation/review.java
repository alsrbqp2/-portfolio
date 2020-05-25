package com.example.bookinformation;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class review extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.review);
    }


    public void onClick(View view) {
        String str;
        EditText ed1 = (EditText) findViewById(R.id.edit);
        str=ed1.getText().toString();
        TextView tv1 = (TextView) findViewById(R.id.text);
        tv1.setText(str);
    }

}

