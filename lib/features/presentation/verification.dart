import 'package:ecom_mart/features/presentation/password_update.dart';
import 'package:ecom_mart/features/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  

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
              const Text("Verification Code",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.015,),
              const Text("Type the verification code we've sent you"),
              SizedBox(height: MediaQuery.of(context).size.height*0.2,),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  
              OtpTextField(
                numberOfFields: 4,
                borderColor: Colors.black54,
        fieldWidth: 60,
        focusedBorderColor: Colors.black54,
        cursorColor: Colors.black54,
        textStyle: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),
        borderRadius: BorderRadius.circular(15),
        
        //set to true to show as box or false to show as dash
        showFieldAsBox: true, 
        //runs when a code is typed in
        onCodeChanged: (String code) {
            //handle validation or checks here           
        },
        //runs when every textfield is filled
        onSubmit: (String verificationCode){
            showDialog(
                context: context,
                builder: (context){
                return AlertDialog(
                    title: const Text("Verification Code"),
                    content: Text('Code entered is $verificationCode'),
                );
                   }
                   );
                   }, // end onSubmit
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                  const Center(child: Text("Resend code in 00:48")),
                  SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                  Button(name: "Confirm", bgc: Colors.black, txtc: Colors.white, bdrc: Colors.black, nav: (){ Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const UpdatePassword()));})
                ],
              )
              ),
            ],
          ),
        ),
      ),
    );
  }
}