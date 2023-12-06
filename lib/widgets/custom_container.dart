import 'package:custom_widget_controller_with_changenotifier/Controller/custom_container_controller.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
   CustomContainer({super.key, required this.customContainerController});
   //هنا انا مش هكريت اوبجيكت جديد لا انا هستعمله كاتربيوت وهممرله الاوبجيكت اللي عملته في الفايل اللي هستخدمه فيه ودا لاني عايزهم يستخدموا نفس الكونترولر "main"
  final CustomContainerController customContainerController;

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {

  @override
  void initState() {
    super.initState();
   // addListener من خلالها بتخلي الويدجيت تسمع لاي تغيير بيحصل عليها من بره او من الكونترولر وهنا هبدأ ابعتله التغيير اللي عايزه يحصل وانا في حالتي هنا كل اللي محتاجه
   // انه يعملي سيت استيت او يغيرلي من خواص الويدجيت فهمررله سيت استيت
    widget.customContainerController.addListener(() {
      setState(() {

      });
    });
  }
  Widget build(BuildContext context) {
    return AnimatedContainer(
    duration: Duration(seconds: 1),
    //همررله القيم الخاص بالكلاس كونترول علشان يقدريسمع للتغيراللي بيحصل عليها من خلال الكونترولر
    width: widget.customContainerController.width,
    height: widget.customContainerController.height,
    color: widget.customContainerController.color,

    );
  }
}
