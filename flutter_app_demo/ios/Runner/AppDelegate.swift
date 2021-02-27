import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    
    GeneratedPluginRegistrant.register(with: self)
    
    // 创建命名方法通道
    let methodChannel = FlutterMethodChannel.init(name: "flutter_postData", binaryMessenger: self.window.rootViewController as! FlutterBinaryMessenger)
    // 往方法通道注册方法调用处理回调
    methodChannel.setMethodCallHandler { (call, result) in
        if("flutter_postData" == call.method){
            //打印flutter传来的值
            print(call.arguments ?? {})
            //向flutter传递值
            DispatchQueue.main.async {
                result(["1","2","3"]);
            }
            
        }
    }
    
    
    let registrar:FlutterPluginRegistrar = self.registrar(forPlugin: "plugins.flutter.io/custom_platform_view_plugin")!
    let factory = MyFlutterViewFactory(messenger: registrar.messenger())
    registrar.register(factory, withId: "MyFlutterView")
    
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
