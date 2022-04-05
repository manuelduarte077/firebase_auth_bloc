import 'package:firebase_auth_bloc/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:page_indicator/page_indicator.dart';

class IntroPage extends HookWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String _title = '''
Reprehenderit Lorem adipisicing labore aliquip Lorem id ipsum laborum. Veniam aliqua enim officia est voluptate pariatur ea enim amet duis.''';

    return PageIndicatorContainer(
      padding: const EdgeInsets.only(bottom: 40),
      length: 4,
      indicatorSelectorColor: Colors.deepOrangeAccent,
      indicatorColor: Colors.grey,
      child: PageView(
        children: [
          DescriptionPage(
            text: _title,
            imageUrl: 'https://logo.clearbit.com/firebase.com?size=200',
          ),
          DescriptionPage(
            text: _title,
            imageUrl: 'https://logo.clearbit.com/firebase.com?size=200',
          ),
          DescriptionPage(
            text: _title,
            imageUrl: 'https://logo.clearbit.com/firebase.com?size=200',
          ),
          const LogingPage(),
        ],
      ),
    );
  }
}
