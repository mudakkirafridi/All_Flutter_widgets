import 'package:flutter/material.dart';

class CircularProgressIndicatorWidget extends StatefulWidget {
  const CircularProgressIndicatorWidget({super.key});

  @override
  State<CircularProgressIndicatorWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CircularProgressIndicatorWidget> {
  bool condition = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CircularProgressIndicator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          condition
              ? const CircularProgressIndicator()
              : const Text('start indicator'),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  condition = true;
                  setState(() {});
                },
                child: const Text('Start')),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  condition = false;
                  setState(() {});
                },
                child: const Text('Stop')),
          )
        ],
      ),
    );
  }
}
