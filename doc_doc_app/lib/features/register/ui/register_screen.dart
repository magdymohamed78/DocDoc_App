import 'package:doc_doc_app/core/router/routes.dart';
import 'package:doc_doc_app/core/style/app_colors.dart';
import 'package:doc_doc_app/core/widgets/custome_button.dart';
import 'package:doc_doc_app/core/widgets/custome_text_feild.dart';
import 'package:doc_doc_app/features/register/logic/register_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.read<RegisterProvider>();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 76,
                ),
                child: Column(
                  spacing: 40,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Create Account',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                          style: TextStyle(
                            color: AppColors.bodyyColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),

                    Form(
                      key: provider.formKey,
                      child: Column(
                        spacing: 16,
                        children: [
                          CustomeTextFeild(
                            controller: provider.nameController,
                            hintText: 'Enter full name',
                            obscureText: false,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter full name';
                              }
                              return null;
                            },
                          ),

                          CustomeTextFeild(
                            controller: provider.emailController,
                            hintText: 'Enter email address',
                            obscureText: false,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter email address';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.emailAddress,
                          ),
                          CustomeTextFeild(
                            controller: provider.phoneController,
                            hintText: 'Enter phone number',
                            obscureText: false,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter phone number';
                              }
                              return null;
                            },

                            keyboardType: TextInputType.phone,
                          ),
                          CustomeTextFeild(
                            controller: provider.passwordController,
                            hintText: 'Enter Password',
                            obscureText: true,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter Password';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.visiblePassword,
                          ),
                          CustomeTextFeild(
                            controller: provider.confirmationPasswrdController,
                            hintText: 'Enter Confirmation Password',
                            obscureText: true,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter Confirmation Password';
                              } else if (value !=
                                  provider.passwordController.text) {
                                return 'Passwords don\'t match';
                              }

                              return null;
                            },
                            keyboardType: TextInputType.visiblePassword,
                          ),
                          CustomeButton(
                            onPressed: () {
                              return provider.register();
                            },
                            text: 'Create Account',
                          ),
                        ],
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account yet?',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.text100color,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                              context,
                              Routes.login,
                            );
                          },
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
