package com.example.flutter_app_demo;

import android.os.Bundle;
import com.example.flutter_app_demo.MyFlutterViewFactory;
import io.flutter.Log;
import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;

public class MainActivity extends FlutterActivity {
    private static final String CHANNEL = "flutter_postData";
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        new MethodChannel(getFlutterView(), CHANNEL).setMethodCallHandler(
                new MethodCallHandler() {
                    @Override
                    public void onMethodCall(MethodCall call, Result result) {
                        // TODO
                        if(call.method.equals("flutter_postData")){
                            //向flutter传递值
                            result.success(new String[]{"1", "2","3"});
                        }
                    }
                });


        Registrar registrar = registrarFor("plugins.flutter.io/custom_platform_view_plugin");// 生成注册类
        MyFlutterViewFactory playerViewFactory = new MyFlutterViewFactory(registrar.messenger());// 生成视图工厂
        registrar.platformViewRegistry().registerViewFactory("MyFlutterView", playerViewFactory);// 注册视图工厂
    }
}