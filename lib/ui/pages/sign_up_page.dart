import 'package:bwa_airplane/shared/theme.dart';
import 'package:bwa_airplane/ui/widgets/custom_button.dart';
import 'package:bwa_airplane/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
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
            CustomTextFormField(label: 'Full Name', hint: 'Your full name'),
            CustomTextFormField(
                label: 'Email Address', hint: 'Your email address'),
            CustomTextFormField(
              label: 'Password',
              hint: 'Your password',
              obscureText: true,
            ),
            CustomTextFormField(label: 'Hobby', hint: 'Your hobby'),
            SizedBox(height: 10),
            CustomButton(
              title: 'Get Started',
              onPressed: () {
                Navigator.pushNamed(context, '/bonus');
              },
            ),
          ],
        ),
      );
    });
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
