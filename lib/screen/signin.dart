import 'package:flutter/material.dart';
import 'package:helptheguy/screen/dashboard.dart';

import '../common/custombutton.dart';
import '../common/textfield.dart';
import '../service/service.dart';
import '../utils/utils.dart';

class signin extends StatefulWidget {


  const signin({Key? key}) : super(key: key);

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  final AuthService authService = AuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }
  void signInUser(){
    authService.signInUser(
      context: context,
      email: _emailController.text,
      password: _passwordController.text,
    );
  }


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
       body: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 100),
         child: Container(
           color: Colors.white,
           height: 600,
           width: width * 0.9 ,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Padding(
                 padding: const EdgeInsets.only(top: 28.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black,

                        ),

                        child: Image.asset('assets/help.png'),
                      ),
                     SizedBox(
                       width: 5,
                     ),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: const [
                         Text('Ministry of ',
                           style: TextStyle(
                               color: Colors.black45,
                               fontSize: 17,
                               fontWeight: FontWeight.w500
                           ),
                         ),
                         SizedBox(
                           height: 2,
                         ),
                         Text('Commerce',
                           style: TextStyle(
                               color: Colors.black54,
                               fontSize: 19,
                               fontWeight: FontWeight.w600
                           ),
                         ),
                       ],
                     )
                   ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(25.0),
                 child: Form(

                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       Text("Email or Username",
                         style: TextStyle(
                             color: Colors.black45,
                           fontSize: 17,
                             fontWeight: FontWeight.w500
                         ),),
                       const SizedBox(
                         height: 10.0,
                       ),
                       CustomTextField(
                         hintText: 'Enter your email',
                         prefixIconData: Icons.email_outlined,
                         controller: _emailController,
                       ),
                       const SizedBox(
                         height: 40.0,
                       ),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: <Widget>[
                           Text("Password",
                           style: TextStyle(
                             color: Colors.black45,
                             fontSize: 17,
                               fontWeight: FontWeight.w500
                           ),),
                           const SizedBox(
                             height: 10.0,

                           ),
                           CustomTextField(
                             hintText: 'Enter your password',
                             controller: _passwordController,
                           ),
                           const SizedBox(
                             height: 10.0,
                           ),
                           const Text(
                             'Forgot password?',
                             style: TextStyle(
                               color: GlobalVariables.primaryColor,
                               fontSize: 17,
                               fontWeight: FontWeight.w500
                             ),
                           ),
                         ],
                       ),
                       SizedBox(
                         height: 20.0,
                       ),
                       CustomButton(
                         text: 'Login',
                         color: GlobalVariables.secondaryColor,
                         onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(
                              builder: (context)=> const dashboard()));
                         },


                       ),



                     ],
                   ),
                 ),
               ),
             ],
           ),
         ),
       ),
    );
  }
}
