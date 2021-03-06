import 'package:flutter/material.dart';

class Mohamed extends StatelessWidget {
var emailController = TextEditingController();
var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar() ,
      body:
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: SingleChildScrollView(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children :
              [

                Container(
                  padding: EdgeInsetsDirectional.only(top: 20.0),
                  child: Text(
                    'Login',

                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                  labelText: 'Email Address',
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                  border: OutlineInputBorder()
                ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  obscureText: true,
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                      ),
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(
                  height: 20.0 ,
                ),
                Container(
                  color: Colors.blue,
                  width: double.infinity,
                  child: MaterialButton(onPressed: ()
                  {
                    print(emailController.text);
                    print(passwordController.text);
                  },
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style :
                      TextStyle(
                      ),
                    ),
                    TextButton(
                        onPressed: ()
                        {

                        },
                        child:Text(
                            'Register Now',
                        )
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}
