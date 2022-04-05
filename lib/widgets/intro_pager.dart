import 'package:firebase_auth_bloc/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:page_indicator/page_indicator.dart';

class IntroPager extends HookWidget {
  const IntroPager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String _title = '''
Reprehenderit Lorem adipisicing labore aliquip Lorem id ipsum laborum. Veniam aliqua enim officia est voluptate pariatur ea enim amet duis. Labore quis nisi do laboris id fugiat nostrud magna nostrud amet. Culpa tempor reprehenderit in eu anim ex velit ea adipisicing.''';

    return PageIndicatorContainer(
      padding: const EdgeInsets.only(bottom: 40),
      length: 4,
      indicatorSelectorColor: Colors.deepOrangeAccent,
      child: PageView(
        children: [
          DescriptionPage(
            color: Colors.indigo,
            text: _title,
            imageUrl: 'https://logo.clearbit.com/firebase.com?size=200',
          ),
          DescriptionPage(
            color: Colors.deepPurple,
            text: _title,
            imageUrl: 'https://logo.clearbit.com/firebase.com?size=200',
          ),
          DescriptionPage(
            color: Colors.green,
            text: _title,
            imageUrl: 'https://logo.clearbit.com/firebase.com?size=200',
          ),
          Container(
            color: Colors.deepPurpleAccent,
            child: Center(
              child:
                  Text('Login', style: Theme.of(context).textTheme.headline6),
            ),
          ),
        ],
      ),
    );
  }
}
