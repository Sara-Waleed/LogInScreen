import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget defaultButton( {

   required double width,
   required Color color,
   required Function function,//required from programmer
    String text='log in ',//optional with initial value
})=>Container
(
width:width,
color:color,
child:MaterialButton
(
onPressed: function(),
child: Text
(text,style: const TextStyle(color:Colors.white,),
),
),
);




//*********************************************
// Widget defaultTextField({
//   required TextEditingController controller,
//   required  TextEditingController type,
//
//
// })=> TextFormField(
//                     controller: emailController,
//                      keyboardType: TextInputType.emailAddress,
//                      onFieldSubmitted: (String value) {
//                        print(value);
//                      },
//                     onChanged: (String value) {
//                       print(value);
//                     },
//                     decoration:const  InputDecoration(
//                       labelText: 'Email Address',
//                       prefixIcon: Icon(
//                         Icons.email,
//                       ),
//                       border: OutlineInputBorder(),
//                     ),
//
//                   );
//******************************************************
// TextFormField(
//                     controller: passwordController,
//                     keyboardType: TextInputType.visiblePassword,
//                     obscureText: true,
//                     onFieldSubmitted: (String value) {
//                       print(value);
//                     },
//                     onChanged: (String value) {
//                       print(value);
//                     },
//                     decoration:const    InputDecoration(
//                       labelText: 'Password',
//                       prefixIcon: Icon(
//                         Icons.lock,
//                       ),
//                       suffixIcon: Icon(
//                         Icons.remove_red_eye,
//                       ),
//                       border: OutlineInputBorder(),
//                     ),
//                   ),