import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'button.dart';
import 'model.dart';

void main() {
  runApp(const ChangeNotifierProviderApp());
}

class ChangeNotifierProviderApp extends StatelessWidget {
  const ChangeNotifierProviderApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Model>(
      create: (context) => Model(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('ChangeNotifierProvider Type'),
          ),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                color: const Color.fromARGB(255, 151, 201, 207),
                child: Consumer<Model>(builder: (context, model, child) {
                  return const Button();
                }),
              ),
              Container(
                padding: const EdgeInsets.all(25),
                color: const Color.fromARGB(199, 33, 97, 92),
                child: Consumer<Model>(
                  builder: (context, model, child) {
                    return Text(model.someValue);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
