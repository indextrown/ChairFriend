package com.example.chairfriend

import android.os.Bundle
import androidx.activity.enableEdgeToEdge
import androidx.appcompat.app.AppCompatActivity
import androidx.core.view.ViewCompat
import androidx.core.view.WindowInsetsCompat
import android.os.Handler
import android.content.Intent
import android.os.Looper
import android.util.Log
import androidx.core.view.WindowCompat
import androidx.core.view.WindowInsetsControllerCompat


class splash : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContentView(R.layout.activity_splash)
        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.main)) { v, insets ->
            val systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars())
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom)
            insets
        }

        Handler(Looper.getMainLooper()).postDelayed({
            // 앱의 Main4Activity로 넘어가기
            val intent = Intent(this@splash, Main4Activity::class.java)
            startActivity(intent)
            // 현재 액티비티 닫기
            finish()
        }, 3000) // 3초

        val windowInsetsController = WindowCompat.getInsetsController(window, window.decorView)
        if (windowInsetsController != null) {
            val isImmersiveModeEnabled =
                (windowInsetsController.systemBarsBehavior == WindowInsetsControllerCompat.BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE)

            if (isImmersiveModeEnabled) {
                Log.i("Is on?", "Turning immersive mode off.")
                windowInsetsController.show(WindowInsetsCompat.Type.systemBars())
            } else {
                Log.i("Is on?", "Turning immersive mode on.")
                windowInsetsController.hide(WindowInsetsCompat.Type.systemBars())
                windowInsetsController.systemBarsBehavior = WindowInsetsControllerCompat.BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE
            }
        }
    }
}