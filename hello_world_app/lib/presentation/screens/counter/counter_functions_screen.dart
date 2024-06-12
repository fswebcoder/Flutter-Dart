import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text('Counter Functions', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                counter = 0;
              });
            },
            icon: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$counter', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
            Text('Click${counter == 1 ? "" : "s"}', style: const TextStyle(fontSize: 25)),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            onPressed: () {
              setState(() {
                counter = 0;
              });
            },
            child: const Icon(
              Icons.refresh_rounded,
              color: Colors.black87,
              size: 35,
            ),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child: const Icon(
              Icons.plus_one,
              color: Colors.black87,
              size: 35,
            ),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            onPressed: () {
              setState(() {
                if (counter > 0) {
                  counter--;
                }
              });
            },
            child: const Icon(
              Icons.exposure_minus_1_sharp,
              color: Colors.black87,
              size: 35,
            ),
          )
        ],
      ),
    );
  }
}
