import 'package:flutter/material.dart';
import 'package:flutter_coffe_shop/const.dart';
import 'package:flutter_coffe_shop/pages/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    //redirect();
    //redirect
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(child: _splashPageCard(context)),
    );
  }

  Widget _splashPageCard(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('lib/images/logo-coffe.png', width: 200),
        SizedBox(height: 40),
        Text(
          "Brew Day",
          style: TextStyle(
            fontSize: 24,
            color: Colors.brown,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15),
        Text(
          "How do you like your coffee?",
          style: TextStyle(
            fontSize: 16,
            color: Colors.brown,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 30),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(200, 70),
                backgroundColor: Colors.brown,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ).copyWith(
                overlayColor: WidgetStateProperty.all(Colors.brown.shade900),
              ),
              onPressed:
                  () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(), // const HomePage(),
                    ),
                  ),
              child: const Text(
                'Enter Shop',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
      ],
    );
  }

  // Future<void> redirect() async {
  //   await Future.delayed(const Duration(seconds: 3));
  //   Navigator.pushReplacement(
  //     // ignore: use_build_context_synchronously
  //     context,
  //     MaterialPageRoute(builder: (BuildContext context) => const HomePage()),
  //   );
  // }
}
