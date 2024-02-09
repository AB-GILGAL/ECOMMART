import 'package:ecom_mart/features/presentation/sign_in.dart';
import 'package:ecom_mart/features/presentation/sign_up.dart';
import 'package:ecom_mart/features/widget/button.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*1,
            width: MediaQuery.of(context).size.width*1,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/landingPage.jpg")
                )
            ),
          ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Browse",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 18,
                        )
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.55,),
                   const Text("Make your shopping",
                    style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500
                        ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                    const Text("enjoyable with us",
                    style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500
                        ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.055,),
                        Button(name:"Sign In", bgc: Colors.white, txtc: Colors.black, bdrc: Colors.white, nav: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const LogInPage();
          },));
          }),
          SizedBox(height: MediaQuery.of(context).size.height*0.035,),
           Button(name:"Sign Up", bgc: Colors.transparent, txtc: Colors.white, bdrc: Colors.white, nav: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const SignUpPage();
          },));
          })
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}