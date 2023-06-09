import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/login.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.only(left: 35,top: 130),
                child: const Text('WelCome\n Back',style: TextStyle(
                  color: Colors.white,
                  fontSize: 33
                ),),
              ),
            ),
          Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5,left: 35,right: 35),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: "email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(

                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Sign In",style: TextStyle(
                      color: Color(0xff4c505b) ,
                      fontSize: 27,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    CircleAvatar(
                      backgroundColor:Color(0xff4c505b) ,
                      child: IconButton(
                        color: Colors.white,
                        onPressed: (){
                          Navigator.pushNamed(context, 'dashboard');
                        },
                        icon: Icon(Icons.arrow_forward),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(onPressed: (){}, child: const Text("Sign UP",style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 18,
                      color: Color(0xff4c505b)
                    ),)),
                    TextButton(onPressed: (){}, child: const Text("Forgot Password",style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        color: Color(0xff4c505b)
                    ),)),
                  ],
                )

              ],
            ),
          )
          ],
        ),
      ),
    );
  }
}
