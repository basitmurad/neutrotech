import 'package:flutter/material.dart';
import 'package:neutrotech/screens/dashboard/DashboardScreen.dart';

class RegisterTab extends StatefulWidget {
  @override
  _RegisterTabState createState() => _RegisterTabState();
}

class _RegisterTabState extends State<RegisterTab> {
  bool _isPasswordVisible = false;
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "E-mail address",
            style: TextStyle(color: Color(0XFF89BA2D)),
          ),
          Card(
            elevation: 4.0,
            child: const Padding(
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
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Checkbox(
                checkColor: Colors.yellow,
                value: _isPasswordVisible,
                onChanged: (bool? value) {

                  setState(() {
                    _rememberMe = value ?? false;
                  });

                },
              ),
              Text(
                'Remember me',
                style: TextStyle(
                  color: Color(0XFF89BA2D),
                ),
              ),
              SizedBox(
                width: 60,
              ),
              Text(
                "Forget Password?",
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: Color(0XFF89BA2D),
                ),
              ),
            ],
          ),


          Container(

            width: MediaQuery.of(context).size.width * 0.9,
              child: TextButton(onPressed: (){

              }, child: Text("Login" ,textAlign: TextAlign.center, style: TextStyle(
                color: Color(0XFF89BA2D),

              ),) )) ,



          Row(
            children: [
              Expanded(
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
          ),        ],
      ),
    );
  }
}
