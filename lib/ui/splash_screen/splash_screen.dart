import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sneakers_track/ui/sign_in/view/sign_in_page.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static Page<void> page() => const MaterialPage<void>(child: SplashScreen());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/png/nike-logo.png'),
            SizedBox(
              height: 20.h,
            ),
            const Align(
                alignment: Alignment.topLeft,
                child: Text('Your reference destination for sneakers',
                    style: TextStyle(color: Colors.black, fontSize: 20))),
            SizedBox(height: 5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(onPressed: () {
                  Navigator.pushReplacementNamed(context, 'signUp');
                }, child: const Text('Sign up')),
                SizedBox(width: 3.w),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignInPage())
                    );
                  },
                  child: const Text('Sign in'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
