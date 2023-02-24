import 'package:flutter/material.dart';
import 'package:food_demo/theme/app_colors.dart';
import 'package:food_demo/utils/app_strings.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _userNameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.transparent,
        leading: const Icon(Icons.arrow_back, color: AppColors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        AppStrings.helloThere,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.hail_rounded)
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 30),
                    child: Text(AppStrings.pleaseEnterFullFills),
                  ),
                  _buildTextField(
                      AppStrings.usernameEmail, _userNameController),
                  const SizedBox(height: 20),
                  _buildTextField(AppStrings.password, _passwordController),
                  _buildRememberButton(),
                  const Divider(),
                  _buildForgotPasswordButton(),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Expanded(child: Divider()),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text('or continue with'),
                      ),
                      Expanded(child: Divider()),
                    ],
                  )
                ],
              ),
            ),
            _buildSignInButton(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildRememberButton() {
    return Row(
      children: [
        Text('Remember me'),
      ],
    );
  }

  Widget _buildForgotPasswordButton() {
    return Align(
      alignment: Alignment.center,
      child: TextButton(
        onPressed: () {},
        child: const Text(
          'Forgot Password',
          style: TextStyle(color: AppColors.primaryColor),
        ),
      ),
    );
  }

  Widget _buildTextField(String title, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        TextField(
          controller: controller,
          decoration: InputDecoration(),
        ),
      ],
    );
  }

  Widget _buildSignInButton() {
    return MaterialButton(
      onPressed: () {},
      height: 50,
      color: AppColors.primaryColor,
      child: const Text(
        'Sign In',
        style: TextStyle(color: AppColors.white),
      ),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(40),
        borderSide: const BorderSide(color: AppColors.transparent),
      ),
    );
  }
}
