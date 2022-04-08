import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
                color: Colors.cyan,
                child: Consumer<Model>(builder: (context, model, child) {
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


