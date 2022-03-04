import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your app title here'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: FlutterLogo(
                  size: 80,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                            label: Text('Email'),
                            hintText: 'abc@mail.com',
                            prefixIcon: Icon(Icons.mail)),
                        validator: (value) {
                          if (value!.isEmpty && !value.contains('@')) {
                            return 'Please enter valid email address';
                          }
                        },
                      ),
                      TextFormField(
                        controller: _userNameController,
                        decoration: const InputDecoration(
                            label: Text('User name'),
                            hintText: 'Your name',
                            prefixIcon: Icon(Icons.person)),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your username';
                          }
                        },
                      ),
                      TextFormField(
                        controller: _passwordController,
                        decoration: const InputDecoration(
                            label: Text('Password'),
                            prefixIcon: Icon(Icons.mail)),
                        validator: (value) {
                          if (value!.length < 6) {
                            return 'Password should be at least 6 characters';
                          }
                        },
                      ),
                      SizedBox(height: 10,)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
