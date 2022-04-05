import 'package:flutter/material.dart';

class LogingPage extends StatelessWidget {
  const LogingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 150, bottom: 100, right: 40, left: 40),
        child: Column(
          children: [
            Image.network(
              'https://logo.clearbit.com/firebase.com?size=200',
              height: 200,
              width: 200,
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  'Sign in or create an account',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  _LoginButton(
                    text: 'Sign in with Google',
                    onTap: () {},
                    color: Colors.white,
                    textColor: Colors.grey,
                    image: 'https://logo.clearbit.com/google.com?size=200',
                  ),
                  const SizedBox(height: 20),
                  _LoginButton(
                    text: 'Sign in with Facebook',
                    onTap: () {},
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                    image: 'https://logo.clearbit.com/facebook.com?size=200',
                  ),
                  const SizedBox(height: 20),
                  _LoginButton(
                    text: 'Sign in with Email',
                    onTap: () {},
                    color: Colors.redAccent,
                    textColor: Colors.white,
                    image:
                        'https://cdn.icon-icons.com/icons2/1826/PNG/512/4202011emailgmaillogomailsocialsocialmedia-115677_115624.png?size=200',
                  ),
                  const SizedBox(height: 20),
                  _LoginButton(
                    text: 'Sign in with Anonymous',
                    onTap: () {},
                    color: Colors.deepPurple,
                    textColor: Colors.white,
                    image: 'https://logo.clearbit.com/anonymous.com?size=200',
                  ),
                  const SizedBox(height: 40),
                  OutlinedButton(
                    child: const Text('Create an account'),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  final String text;
  final String image;
  final Color color;
  final Color textColor;
  final VoidCallback onTap;

  const _LoginButton({
    Key? key,
    required this.text,
    required this.image,
    this.color = Colors.blue,
    required this.onTap,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      elevation: 5,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                image,
                height: 24,
                width: 24,
              ),
              const SizedBox(height: 20),
              Text(
                text,
                style: TextStyle(
                  fontSize: 24,
                  color: textColor,
                  fontFamily: 'Futura',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
