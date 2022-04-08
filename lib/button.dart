import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<Model>(context, listen: false);
    return ElevatedButton(
      child: const Text('Do something',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(10, 100, 10, 100),
          )),
      onPressed: () {
        model.doSomething();
      },
    );
  }
}
