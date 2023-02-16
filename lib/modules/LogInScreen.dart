import 'package:flutter/material.dart';
//import 'package:fromscreen/shared_components/components.dart';

class LoginScreen extends StatefulWidget {

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  Icon icon =const  Icon(Icons.visibility);
  bool obscure = true;
  var formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    const  Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const  SizedBox(
                      height: 40.0,
                    ),
                    TextFormField(
                      validator:(String? value){
                        if(value != null && value.isEmpty){
                          return "Email Dress must not be empty";
                        }
                        return null;
                      },
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      onFieldSubmitted: (String value) {
                        print(value);
                      },
                      onChanged: (String value) {
                        print(value);
                      },
                      decoration:const  InputDecoration(
                        labelText: 'Email Address',
                        prefixIcon: Icon(
                          Icons.email,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const  SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      validator:(String? value){
                        if(value != null && value.isEmpty){
                          return "password must be not empty";
                        }
                        return null;
                      },
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: obscure,
                      onFieldSubmitted: (String value) {
                        print(value);
                      },
                      onChanged: (String value) {
                        print(value);
                      },
                      decoration:InputDecoration(
                        labelText: 'Password',
                        prefixIcon: const Icon(
                          Icons.lock,
                        ),

                        suffixIcon: IconButton(
                            onPressed:() {
                              setState(() {
                                if (obscure == true) {
                                  obscure = false;
                                  icon = const Icon(Icons.visibility_off);
                                } else {
                                  obscure = true;
                                  icon =const  Icon(Icons.visibility);
                                }
                              });
                            },
                            icon: icon
                        ),
                        border: const OutlineInputBorder(),
                      ),
                    ),
                    const  SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.blue,
                      child: MaterialButton(
                        onPressed: () {
                          if(formKey.currentState!.validate()){
                            print(emailController.text);
                            print(passwordController.text);

                          }
                        },
                        child:const Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const  SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const     Text(
                          'Don\'t have an account?',
                        ),
                        TextButton(
                          onPressed: () {},
                          child:const    Text(
                            'Register Now',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
