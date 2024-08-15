import 'package:flutter/material.dart';
import 'package:laundry_service_app/utils/const/color.dart';
import 'package:laundry_service_app/utils/const/logo.dart';
import 'package:laundry_service_app/utils/const/text.dart';
import 'package:laundry_service_app/views/screens/auth/google_login/google_login.dart';

class ContinueWithGoogleButton extends StatelessWidget {
  const ContinueWithGoogleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: TextButton(
        style: ButtonStyle(
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: const BorderSide()))),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const GoogleLoginPage()));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(CommonLogo.google),
            const Text(
              CommonText.welcomeT2,
              style: TextStyle(
                color: CommonColor.blue,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
