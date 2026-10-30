import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/calccontroller.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

TextEditingController a = TextEditingController();
TextEditingController b = TextEditingController();

CalController calController = Get.put(CalController());

class Cal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(68.0),
        child: Column(
          children: [
            TextField(
              controller: a,
              decoration: InputDecoration(hintText: "A"),
            ),
            TextField(
              controller: b,
              decoration: InputDecoration(hintText: "B"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                calController.a.value = int.parse(a.text);
                calController.b.value = int.parse(b.text);
                calController.add();
              },
              child: Text("Add"),
            ),
            SizedBox(height: 20),
            Obx(
              () => Text(
                "The sum of ${calController.a.value} and ${calController.b.value} is ${calController.sum.value} ",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
