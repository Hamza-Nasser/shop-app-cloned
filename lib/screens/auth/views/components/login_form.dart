import 'package:flutter/material.dart';
import 'package:shop_cloned/constants.dart';

class LoginForm extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  const LoginForm({Key? key, required this.formKey}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              floatingLabelStyle: TextStyle(
                  color: accentColor,
                ),
                //prefixIcon: Icon(Icons.email),
                contentPadding: EdgeInsets.all(8.0),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                labelText: 'Email',
                focusedBorder: OutlineInputBorder()),
            validator: (text) {
              if (text!.isEmpty) {
                return 'Please Enter a valid data';
              }
              return null;
            },
          ),
          const SizedBox(height: defaultPadding),
          TextFormField(
            controller: _passwordController,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: const InputDecoration(
                labelText: 'Password',
                floatingLabelStyle: TextStyle(
                  color: accentColor,
                ),
                //prefixIcon: Icon(Icons.lock),
                contentPadding: EdgeInsets.all(8.0),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                focusedBorder: OutlineInputBorder()),
            validator: (text) {
              if (text!.isEmpty) {
                return 'Please Enter a valid data';
              }
              return null;
            },
          )
        ],
      ),
    );
  }
}


/* 
Widget loginForm(GlobalKey<FormState> formKey){
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  return Form(
    child: Column(
      children: [
        TextFormField(
          key: formKey,
          controller: _emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(icon: Icon(Icons.email), labelText: 'Email'),
          validator: (text){
            if(text!.isEmpty){
              return 'Please Enter a valid data';
            }
            return null;
          },

        ),
        TextFormField(
          key: formKey,
          controller: _passwordController,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(icon: Icon(Icons.password), labelText: 'Password'),
          validator: (text){
            if(text!.isEmpty){
              return 'Please Enter a valid data';
            }
            return null;
          },

        )
      ],
    ),
  );
} */