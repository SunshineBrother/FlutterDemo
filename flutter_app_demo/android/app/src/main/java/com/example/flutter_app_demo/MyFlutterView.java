package com.example.flutter_app_demo;
import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.widget.TextView;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.platform.PlatformView;

// 原生视图封装类
class MyFlutterView implements PlatformView {
    private final TextView textView;// 缓存原生视图
    // 初始化方法，提前创建好视图
    public MyFlutterView(Context context, int id, BinaryMessenger messenger) {
        textView = new TextView(context);
        textView.setText("我是 Android View");
    }

    // 返回原生视图
    @Override
    public View getView() {
        return textView;
    }
    // 原生视图销毁回调
    @Override
    public void dispose() {
    }
}
