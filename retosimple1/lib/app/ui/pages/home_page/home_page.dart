import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:retosimple1/app/ui/global_widgets/customButton.dart';
import 'package:retosimple1/app/ui/global_widgets/encabezado.dart';
import 'package:retosimple1/app/ui/global_widgets/socialbuttons.dart';
import '../../../controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GetBuilder<HomeController>(
          builder: (_) {
            return Container(
              height: Get.height,
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  EncabezadoWidget(),
                  Container(
                    height: 350,
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/financesman.png'),
                    ),
                  ),
                  Column(
                    children: [
                      Center(
                        child: Text(
                          'Hello!',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Text(
                            '¿Quieres Ganar Dinero con 2 Sencillas Apps?',
                            style: TextStyle(
                              fontSize: 18,
                              textBaseline: TextBaseline.ideographic,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFC3C3C3),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        function: () {},
                        text: 'Login',
                        textColor: Colors.white,
                        boxdecoration: BoxDecoration(
                          color: Colors.blue.shade700,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CustomButton(
                        function: () {},
                        text: 'Sign Up',
                        textColor: Colors.black,
                        fontWeight: FontWeight.bold,
                        boxdecoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                              width: 2, color: Colors.deepPurple.shade900),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialButton(
                        image: ("assets/images/fb.png"),
                        function: () {},
                      ),
                      SocialButton(
                        image: ("assets/images/google.png"),
                        function: () {},
                      ),
                      SocialButton(
                        image: ("assets/images/in.png"),
                        function: () {},
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
