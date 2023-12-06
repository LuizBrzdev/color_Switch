import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: Color.fromRGBO(
          controller.rColor.toInt(),
          controller.gColor.toInt(),
          controller.bColor.toInt(),
          1.0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: SizedBox(
                height: 100,
                width: double.infinity,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 5,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Sua cor é',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        controller.colorText + controller.hexAndRgbToString,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(
              () => Slider(
                autofocus: true,
                min: 0,
                value: controller.rColor,
                max: 255,
                activeColor: Colors.redAccent,
                label: 'R',
                onChanged: (double sliderValue) => controller.rColor = sliderValue,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Obx(
              () => Slider(
                autofocus: true,
                min: 0,
                value: controller.gColor,
                activeColor: Colors.green,
                max: 255,
                label: 'G',
                onChanged: (double sliderValue) => controller.gColor = sliderValue,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Obx(
              () => Slider(
                autofocus: true,
                min: 0,
                value: controller.bColor,
                activeColor: Colors.blueAccent,
                max: 255,
                label: 'B',
                onChanged: (double sliderValue) => controller.bColor = sliderValue,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              borderRadius: BorderRadius.circular(10),
              enableFeedback: true,
              highlightColor: Colors.purple,
              autofocus: true,
              splashColor: Colors.purple,
              canRequestFocus: true,
              onTap: () => controller.changeButtonTextToRgbOrHex(),
              child: SizedBox(
                width: 100,
                height: 100,
                child: Card(
                  elevation: 5,
                  child: Center(
                    child: Text(
                      controller.buttonChange ? 'To RGB' : 'To HEX',
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
