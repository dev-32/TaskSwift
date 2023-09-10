import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal, Colors.blueGrey],
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('TaskSwift'),

              SingleChildScrollView(
                child: Container(
                  height: 450,
                  margin: const EdgeInsets.all(40),
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blueGrey.withOpacity(0.5),
                          offset: const Offset(0, 22),
                          blurRadius: 2,
                          spreadRadius: -10)
                    ],
                  ),
                  alignment: Alignment.center,
                  child: Form(
                    key: _form,
                    child: ListView(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                              label: Text(
                            'Name',
                            style: TextStyle(
                              color: Colors.blueGrey,
                            ),
                          )),
                        ),
                        const SizedBox(height: 22),
                        TextFormField(
                          decoration: const InputDecoration(
                              label: Text(
                            'Password',
                            style: TextStyle(
                              color: Colors.blueGrey,
                            ),
                          )),
                        ),
                        const SizedBox(height: 22),
                        TextFormField(
                          decoration: const InputDecoration(
                              label: Text(
                            'Confirm Password',
                            style: TextStyle(
                              color: Colors.blueGrey,
                            ),
                          )),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.login),
                            label: const Text('Sign up')),
                        const SizedBox(
                          height: 18,
                        ),
                        Row(
                          children: [
                            const Text('Already have an account.'),
                            const SizedBox(
                              width: 3,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Login',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ))
                          ],
                        )
                      ],
                    ),
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
