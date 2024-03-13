import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_context/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    debugPrint("Widget rebuild");
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("context watch and context read"),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Text(
                'You have pushed the button this many times:',
              ),
              TextWidget(),
            ],
          ),
        ),
        floatingActionButton:
            Button() // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("Text rebuild");
    return Text(context.read<IncrementNotifier>().counter);
  }
}

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("Button rebuild");
    return FloatingActionButton(
      onPressed: () => context.read<IncrementNotifier>().add(),
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}
