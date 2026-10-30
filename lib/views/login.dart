import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/colors.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';

TextEditingController usernameController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DU Application"),
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.asset("logo.png", height: 100, width: 200)],
            ),
            Text(
              "Enter your username",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                hintText: "Your email or phone number",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Enter your password",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
                color: primaryColor,
              ),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                hintText: "Your secret code",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility),
              ),
            ),
            SizedBox(height: 25),
            MaterialButton(
              onPressed: () {
                Get.offAllNamed("/home");
                Get.snackbar(
                  "Login",
                  "The username is ${usernameController.text} and the passwor is ${passwordController.text}",
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: primaryColor,
                  colorText: Colors.white,
                );
              },
              color: primaryColor,
              height: 50,
              minWidth: double.infinity,
              child: Text("Login"),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text("No Account?"),
                SizedBox(width: 5),
                GestureDetector(
                  child: Text(
                    "Register",
                    style: TextStyle(color: secondaryColor),
                  ),
                  onTap: () {
                    Get.toNamed("/registration");
                  },
                ),
                Spacer(),
                Text("Forgot password?"),
                SizedBox(width: 5),
                Text("Recover", style: TextStyle(color: secondaryColor)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
