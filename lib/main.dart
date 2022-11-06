import 'package:flavorimplement/build_enviornment.dart';
import 'package:flavorimplement/constants/constant.dart';
import 'package:flutter/material.dart';

Future<void> mainApp(Environment env) async {
  AppConstants.appId = env.appId;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ConstantFile(context).constants.appTitle!,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
          title: ConstantFile(context).constants.landingScreenTitle!),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          TextButton(
              onPressed: () {},
              child: Text(
                ConstantFile(context).constants.foodInformation.toString(),
                style: const TextStyle(color: Colors.black),
              )),
          const SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                  ConstantFile(context).constants.medsForPets.toString(),
                  style: const TextStyle(color: Colors.black))),
          const SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                  ConstantFile(context).constants.gamesForPets.toString(),
                  style: const TextStyle(color: Colors.black)))
        ],
      ),
    );
  }
}
