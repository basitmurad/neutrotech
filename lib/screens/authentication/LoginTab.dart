import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neutrotech/screens/dashboard/DashboardScreen.dart';

class LoginTab extends StatelessWidget {
  const LoginTab({super.key});

  @override
  Widget build(BuildContext context) {
    bool _isPasswordVisible = false;

    return  SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Text(
              "E-mail address",
              style: TextStyle(color: Color(0XFF89BA2D)),
              textAlign: TextAlign.start,
            ),
            const Card(
              elevation: 4.0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Enter password",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Color(0XFF89BA2D),
              ),
            ),
            Card(
              elevation: 4.0,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  obscureText: !_isPasswordVisible,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      onPressed: () {


                      },
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Checkbox(
                  checkColor: Colors.yellow,
                  value: _isPasswordVisible,
                  onChanged: (bool? value) {
      
      
                  },
                ),
                const Text(
                  'Remember me',
                  style: TextStyle(
                    color: Color(0XFF89BA2D),
                  ),
                ),
                const SizedBox(
                  width: 60,
                ),
                const Text(
                  "Forget Password?",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: Color(0XFF89BA2D),
                  ),
                ),
              ],
            ),
      
      
            SizedBox(height: 20,),
            SizedBox(
      
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextButton(onPressed: (){
                  Get.offAll(DashboardScreen());


                }, child: const Text("Login" ,textAlign: TextAlign.center, style: TextStyle(
                  color: Color(0XFF89BA2D),
      
                ),) )) ,
      
      
            SizedBox(height: 20,),
      
            const Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "or",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
              ],
            ),
      
      
      
      
          ],
        ),
      ),
    );
  }
}
