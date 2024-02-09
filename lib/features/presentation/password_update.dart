import 'package:ecom_mart/features/presentation/start_shopping.dart';
import 'package:ecom_mart/features/widget/button.dart';
import 'package:ecom_mart/features/widget/form_item.dart';
import 'package:flutter/material.dart';


class UpdatePassword extends StatefulWidget {
  const UpdatePassword({super.key});

  @override
  State<UpdatePassword> createState() => _UpdatePasswordState();
}

class _UpdatePasswordState extends State<UpdatePassword> {
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;

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
              const Text("Update Password",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.015,),
              const Text("Enter a new password to change this."),
              SizedBox(height: MediaQuery.of(context).size.height*0.08,),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  FormItem("New Password", newPasswordController, "**************",  GestureDetector(
                    child: Icon(isPasswordVisible ?Icons.visibility_off : Icons.visibility, color: Colors.grey,) ,
                    onTap: (){
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                    ),
                    isPasswordVisible,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  FormItem("Confirm Password", confirmPasswordController, "**************",  GestureDetector(
                    child: Icon(isConfirmPasswordVisible ?Icons.visibility_off : Icons.visibility, color: Colors.grey,) ,
                    onTap: (){
                      setState(() {
                        isConfirmPasswordVisible = !isConfirmPasswordVisible;
                      });
                    },
                    ),
                    isConfirmPasswordVisible,
                    ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.08,),
                  Button(name: "Change Password", bgc: Colors.black, txtc: Colors.white, bdrc: Colors.black, nav: (){
                     Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const StartShoppingPage()));}
                  )
                ],
              )
              ),
            ],
          ),
        ),
            ]
      ),
        )
      )
    );
  }
}