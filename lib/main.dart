import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simplegetx/main_controller.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MainController mainController = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (controller){
        return Scaffold(
          body: Center(child: Text('${controller.count}')),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: controller.increment,
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: controller.decrement,
                child: const Icon(Icons.exposure_minus_1),
              ),
              FloatingActionButton(
                onPressed: controller.zero,
                child: const Icon(Icons.refresh),
              ),
            ],
          ),
        );
      },
    );
  }
}


