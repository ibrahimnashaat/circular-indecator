import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:fast/home_page.dart';
import 'package:fast/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

import 'login_cubit.dart';
import 'login_states.dart';






class Login extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {


    return Scaffold(

      body: BlocProvider(
        create: (BuildContext context) => LoginCubit(),
        child: BlocConsumer<LoginCubit, LoginStates>(
          listener: (BuildContext context, Object? state) {},
          builder: (BuildContext context, state) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        CircleAvatar(
                          radius:80,
                          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                          backgroundImage:NetworkImage(
                            'https://th.bing.com/th/id/R.1255f98353e57c06b564ef62e066b9f0?rik=crGrAjY42bIIGQ&pid=ImgRaw&r=0',
                          ),


                        ),

                        SizedBox(
                          height:40,
                        ),
                        TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'please enter your email';
                            }
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            label: Text('Enter Email'),
                            prefixIcon: Icon(
                              Icons.mail_outline,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                          controller: passwordController,
                          obscureText: LoginCubit.get(context).isNotVisible,
                          keyboardType: TextInputType.visiblePassword,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'enter a valid password';
                            }
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              label: Text('passowrd'),
                              prefixIcon: Icon(
                                Icons.lock_outline,
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(LoginCubit.get(context).suffix),
                                onPressed: () {
                                  LoginCubit.get(context)
                                      .changePasswordVisability();
                                },
                              )),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(onPressed: (){}, child: Text('Forget password?'))
                          ],

                        ),

                        ConditionalBuilder(
                          condition: state != LoginLoadingStates,
                          builder: (BuildContext context) => Container(
                            width: double.infinity,
                            height: 50.0,
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  side: BorderSide(color: Colors.lightBlueAccent)),
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(context,
                                    MaterialPageRoute(builder: (context) => MyHomePage()), (route) => false);
                              },
                              color:Colors.lightBlue,
                              textColor:
                              Theme.of(context).scaffoldBackgroundColor,
                              child:
                              Text("LOGIN", style: TextStyle(fontSize: 28)),
                            ),
                          ),
                          fallback: (BuildContext context) =>
                              CircularProgressIndicator(),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('don\'t have an account?',
                              style: TextStyle(
                                  color: Colors.black54
                              ),),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Register()), (route) => false);

                                }, child: Text('REGISTER'))
                          ],
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor:Colors.white ,
                              backgroundImage: AssetImage(
                                  'assets/images/facebook2.png'
                              ),

                            ),
                            CircleAvatar(
                              radius: 30,
                              backgroundColor:Colors.white ,
                              backgroundImage: AssetImage(
                                  'assets/images/google.png'
                              ),

                            ),
                            CircleAvatar(
                              radius: 30,
                              backgroundColor:Colors.white ,
                              backgroundImage: AssetImage(
                                'assets/images/yahoo.png',


                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
