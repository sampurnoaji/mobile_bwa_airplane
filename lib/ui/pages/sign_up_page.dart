import 'package:bwa_airplane/shared/theme.dart';
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
    Widget nameInput() {
      return Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Full Name'),
            SizedBox(height: 6),
            TextFormField(
              cursorColor: kBlackColor,
              decoration: InputDecoration(
                  hintText: 'Your full name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(defaultRadius),
                      borderSide: BorderSide(color: primaryColor))),
            ),
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Email Address'),
            SizedBox(height: 6),
            TextFormField(
              cursorColor: kBlackColor,
              decoration: InputDecoration(
                  hintText: 'Your email address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(defaultRadius),
                      borderSide: BorderSide(color: primaryColor))),
            ),
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Password'),
            SizedBox(height: 6),
            TextFormField(
              cursorColor: kBlackColor,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Your password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(defaultRadius),
                      borderSide: BorderSide(color: primaryColor))),
            ),
          ],
        ),
      );
    }

    Widget hobbyInput() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hobby'),
            SizedBox(height: 6),
            TextFormField(
              cursorColor: kBlackColor,
              decoration: InputDecoration(
                  hintText: 'Your hobby',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(defaultRadius),
                      borderSide: BorderSide(color: primaryColor))),
            ),
          ],
        ),
      );
    }

    Widget submitButton() {
      return Builder(
        builder: (context) => Container(
          width: double.infinity,
          height: 55,
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/bonus');
            },
            style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                )),
            child: Text(
              'Get Started',
              style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
            ),
          ),
        ),
      );
    }

    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Column(
        children: [
          nameInput(),
          emailInput(),
          passwordInput(),
          hobbyInput(),
          submitButton(),
        ],
      ),
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
