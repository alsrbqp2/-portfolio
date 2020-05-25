package com.example.bookinformation;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RatingBar;
import android.widget.TextView;

public class rating extends AppCompatActivity {

    private RatingBar ratingBar;
    private TextView value;
    private Button button;
    static final int GET_STRING = 1;

    EditText edit;
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.rating);

        SetupRatingBar();

    }

    public void SetupRatingBar() {
        ratingBar = (RatingBar) findViewById(R.id.ratingBar);
        value = (TextView) findViewById(R.id.value);
        ratingBar.setOnRatingBarChangeListener(new RatingBar.OnRatingBarChangeListener() {
            public void onRatingChanged(RatingBar ratingBar, float rating, boolean fromUser) {
                value.setText(String.valueOf(rating));
            }
        });
    }


    public void onClick(View view) {
        Intent intent = null;
        switch (view.getId()) {
            case R.id.button1:
                intent = new Intent(rating.this, review2.class);
                break;
            case R.id.button2:
                intent = new Intent(rating.this, first.class);
                break;

        }
        startActivity(intent);

    }
    }




