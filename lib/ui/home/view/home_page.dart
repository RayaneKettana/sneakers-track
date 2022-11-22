import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                    Navigator.pushNamed(context, 'null');
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
