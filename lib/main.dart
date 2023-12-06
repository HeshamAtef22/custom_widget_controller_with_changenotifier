import 'package:custom_widget_controller_with_changenotifier/Controller/custom_container_controller.dart';
import 'package:custom_widget_controller_with_changenotifier/widgets/custom_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'widget_controller_with_changenotifier',

      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //هعمل اوبجيكت من الكاستوم كونترولر علشان يبقي هو نقطه الوصل بين الويدجيت والكلاس كونترولر
  CustomContainerController _customContainerController = CustomContainerController();

  //اهم جزئية انك توقف الاوبجيكت كونترولر طالما انا اتنقلت من السكرين وخلاص مش هستخدمه
  @override
  void dispose() {
    _customContainerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("widget_controller_with_changenotifier"),
      ),
      body: Center(
        child: CustomContainer(customContainerController: _customContainerController,),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //هنا هستدعي الميثود الخاصه بالتغغير داخل الكاستوم كونترولر كلاس
          _customContainerController.changeContainerAttrbuts();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.change_circle),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
