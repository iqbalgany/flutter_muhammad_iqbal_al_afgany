import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/sign_in_provider.dart';
import 'package:flutter_application_1/views/screens/home_page.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final formKey = GlobalKey<FormState>();

  late SharedPreferences logindata;
  late bool newUser;

  @override
  void initState() {
    super.initState();
    checkLogin(context);
  }

  void checkLogin(BuildContext context) async {
    logindata = await SharedPreferences.getInstance();
    newUser = logindata.getBool('login') ?? true;

    if (context.mounted) {
      if (newUser == false) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
            (route) => false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final signInProvider = Provider.of<SignInProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.all(20),
            height: 450,
            decoration: BoxDecoration(
              color: Colors.blueGrey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  /// USERNAME
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.account_circle_rounded),
                        label: const Text('Username'),
                        fillColor: Colors.blueGrey[300],
                        filled: true,
                        border: const OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.text,
                      controller: signInProvider.nameController,
                      validator: signInProvider.validatedUsername,
                    ),
                  ),

                  /// EMAIL
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email_rounded),
                        label: const Text('Email'),
                        fillColor: Colors.blueGrey[300],
                        filled: true,
                        border: const OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      controller: signInProvider.emailController,
                      validator: signInProvider.validatedEmail,
                    ),
                  ),

                  /// PASSWORD
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password_rounded),
                        label: const Text('Password'),
                        fillColor: Colors.blueGrey[300],
                        filled: true,
                        border: const OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.text,
                      controller: signInProvider.passwordController,
                      validator: signInProvider.validatePassword,
                    ),
                  ),

                  /// SUBMIT BUTTON
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: ElevatedButton(
                      onPressed: () {
                        final isValidForm = formKey.currentState!.validate();
                        String username = signInProvider.nameController.text;
                        if (isValidForm) {
                          logindata.setBool('login', false);
                          logindata.setString('username', username);
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              ),
                              (route) => false);
                          signInProvider.emailController.clear();
                          signInProvider.nameController.clear();
                          signInProvider.passwordController.clear();
                        }
                      },
                      child: const Text('Login'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    SignInProvider signInProvider = SignInProvider();
    signInProvider.emailController.dispose();
    signInProvider.nameController.dispose();
    signInProvider.passwordController.dispose();
    super.dispose();
  }
}
