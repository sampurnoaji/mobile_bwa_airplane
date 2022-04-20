import 'package:bwa_airplane/cubit/auth_cubit.dart';
import 'package:bwa_airplane/shared/theme.dart';
import 'package:bwa_airplane/ui/widgets/custom_button.dart';
import 'package:bwa_airplane/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatelessWidget {
  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  TextEditingController hobbyController = TextEditingController(text: '');

  Widget title() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Text(
        'Join us and get\nyour next journey',
        style: blackTextStyle.copyWith(
          fontSize: 24,
          fontWeight: semiBold,
        ),
      ),
    );
  }

  Widget inputSection() {
    return Builder(builder: (context) {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            CustomTextFormField(
              label: 'Full Name',
              hint: 'Your full name',
              controller: nameController,
            ),
            CustomTextFormField(
              label: 'Email Address',
              hint: 'Your email address',
              controller: emailController,
            ),
            CustomTextFormField(
              label: 'Password',
              hint: 'Your password',
              obscureText: true,
              controller: passwordController,
            ),
            CustomTextFormField(
              label: 'Hobby',
              hint: 'Your hobby',
              controller: hobbyController,
            ),
            SizedBox(height: 10),
            submitButton(),
          ],
        ),
      );
    });
  }

  Widget submitButton() {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          Navigator.pushNamedAndRemoveUntil(
              context, '/bonus', (route) => false);
        } else if (state is AuthFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(backgroundColor: kRedColor, content: Text(state.error)));
        }
      },
      builder: (context, state) {
        if (state is AuthLoading) {
          return Center(child: CircularProgressIndicator());
        }
        return CustomButton(
          title: 'Get Started',
          onPressed: () {
            context.read<AuthCubit>().signUp(
                email: emailController.text,
                password: passwordController.text,
                name: nameController.text,
                hobby: hobbyController.text);
          },
        );
      },
    );
  }

  Widget tacButton() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 50, bottom: 73),
      child: Text(
        'Terms and Conditions',
        style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            title(),
            inputSection(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}
