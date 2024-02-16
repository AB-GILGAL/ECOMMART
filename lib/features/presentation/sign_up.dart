import 'package:ecom_mart/features/presentation/home.dart';
import 'package:ecom_mart/features/presentation/home_tab.dart';
import 'package:ecom_mart/features/presentation/sign_in.dart';
import 'package:ecom_mart/features/widget/button.dart';
import 'package:ecom_mart/features/widget/form_item.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});
  

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*0.1,),
              const Text("Getting Started",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.015,),
              const Text("create an account to continue your all shopping"),
              SizedBox(height: MediaQuery.of(context).size.height*0.08,),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  FormItem(
                    "Name", nameController, "Abraham Ocansey"),
                  SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                  FormItem("Email", emailController, "ab@email.com"),
                  SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                  FormItem("Password", passwordController, "**************",  GestureDetector(
                    child: Icon(isPasswordVisible ?Icons.visibility_off : Icons.visibility, color: Colors.grey,) ,
                    onTap: (){
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                    ),
                    isPasswordVisible,
                    ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.08,),
                  Button(name: "Sign Up", bgc: Colors.black, txtc: Colors.white, bdrc: Colors.black,
                  nav: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const HomePage();
                    },));
                  })
                ],
              )
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              const Center(
                child: Text("Or",
                style: TextStyle(fontSize: 18),)
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                 Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 150,
                          child: ElevatedButton.icon(
                            style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                side: MaterialStateProperty.all(
                                  const  BorderSide(color: Colors.black)),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white)),
                            onPressed: () {},
                            icon: const Icon(
                              Icons.apple,
                              color: Colors.black,
                            ),
                            label: const Text(
                              "Apple",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 150,
                          child: ElevatedButton.icon(
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                side: MaterialStateProperty.all(
                                  const  BorderSide(color: Colors.black)),
                              ),
                              onPressed: () {},
                              icon:const Icon(
                                Icons.facebook,
                                color: Colors.blue,
                              ),
                              label: const Text("Facebook",
                                  style: TextStyle(color: Colors.black))),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                      const  Text(
                          "Already have an account?",
                          style: TextStyle(fontSize: 15),
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LogInPage()));
                            },
                            icon: const Icon(Icons.arrow_forward))
                      ],
                    )
            ],
          ),
        ),
      ),
    );
  }
}