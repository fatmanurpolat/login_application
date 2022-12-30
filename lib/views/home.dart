import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

var size, height, width;

class _HomeState extends ConsumerState<Home> {
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: SizedBox(
              width: width / 0.5,
              height: height / 5,
              child: const Card(
                color: Color.fromARGB(255, 200, 185, 142),
                child: Center(
                  child: Text(
                    'Detay Bilgi',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 235, 232, 232)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
