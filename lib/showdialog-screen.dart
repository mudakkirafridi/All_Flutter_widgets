import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShowDialogWidget extends StatefulWidget {
  const ShowDialogWidget({super.key});

  @override
  State<ShowDialogWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ShowDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Widget Testing Screen'),
        ),
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  showDialog(
                      barrierDismissible: true,
                      context: context,
                      builder: (context) {
                        return Container(
                          child: AlertDialog(
                            title: const Text('Mudakir'),
                            content:
                                const Text('Are You Sure You Want To Exit!'),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    SystemNavigator.pop();
                                  },
                                  child: const Text('Ok')),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('No'))
                            ],
                            shape: const BeveledRectangleBorder(),
                          ),
                        );
                      });
                },
                child: const Text('Show Dialog'))));
  }
}
