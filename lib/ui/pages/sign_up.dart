import 'package:airplane/ui/widgets/custom_text_form.dart';
import 'package:airplane/ui/widgets/cutom_button.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SignUp extends StatelessWidget {
  const SignUp({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30,),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection(){

      Widget nameInput(){
        return CustomTextForm(
          title: 'Full Name',
          hintText: 'Your full name',
        );
      }

       Widget emailInput(){
        return CustomTextForm(
          title: 'Email Address',
          hintText: 'Your email address',
        );
      }

      Widget passwordInput(){
        return CustomTextForm(
          title: 'Password',
          hintText: 'Your password',
          obsecureText: true,
        );
      }

          Widget hobbyInput(){
        return CustomTextForm(
          title: 'Hobby',
          hintText: 'Your hobby',
        );
      }

      Widget submitButton(){
        return CustomButton(
          title: 'Get Started', 
          width: 220,
          onPressed: (){
            Navigator.pushNamed(context, '/bonus');
          }
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: kWhitekColor,
          borderRadius: BorderRadius.circular(
            defaultRadius
          ),
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

      Widget tacButton(){
        return Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(
            top: 50,
            bottom: 73,
          ),
          child: Text(
            'Terms and Condition',
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.underline,
            ),
          ),
        );
      }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
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