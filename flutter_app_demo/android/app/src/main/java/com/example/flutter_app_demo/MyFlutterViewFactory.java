package com.example.flutter_app_demo;
import android.content.Context;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;

// 视图工厂类
public class MyFlutterViewFactory extends PlatformViewFactory {
    private final BinaryMessenger messenger;
    // 初始化方法
    public MyFlutterViewFactory(BinaryMessenger msger) {
        super(StandardMessageCodec.INSTANCE);
        messenger = msger;
    }
    // 创建原生视图封装类，完成关联
    @Override
    public PlatformView create(Context context, int id, Object obj) {
        return new MyFlutterView(context, id, messenger);
    }
}