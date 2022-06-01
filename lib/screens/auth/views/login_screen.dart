import 'package:flutter/material.dart';
import 'package:shop_cloned/constants.dart';
import 'package:shop_cloned/route/route_constants.dart';
import 'package:shop_cloned/screens/auth/views/components/login_form.dart';

class LoginScreen extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/login_dark.png',
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome Back!',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  const SizedBox(height: defaultPadding / 2),
                  const Text(
                      'Log in with your data that you Entered during your registration.'),
                  const SizedBox(height: defaultPadding),
                  Row(
                    children: [Expanded(child: LoginForm(formKey: _formKey))],
                  ),
                  const SizedBox(height: defaultPadding),
                  Align(
                    child: TextButton(
                      child: const Text('Forgot Password'),
                      onPressed: () {},
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(defaultColor),
                      ),
                    ),
                  ),
                  SizedBox(
                      height: _size.height > midScreenHeight
                          ? _size.height * 0.1
                          : defaultPadding),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(accentColor),
                              elevation: MaterialStateProperty.all(0.0),
                            ),
                            onPressed: () {
                              if (true) {
                                //kindly you have to put a condition.
                                Navigator.pushNamedAndRemoveUntil(
                                    context,
                                    homeScreenRoute,
                                    ModalRoute.withName(homeScreenRoute));
                              }
                            },
                            child: const Text('Login')),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all(defaultColor),
                          ),
                          child: const Text('Sign up'))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
