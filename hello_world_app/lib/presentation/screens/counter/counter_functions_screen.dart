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
          CustomButton(
            icon: Icons.refresh_rounded,
            onPressed: () {
              setState(() {
                counter = 0;
              });
            },
          ),

          const SizedBox(height: 10),
          CustomButton(
            icon: Icons.exposure_plus_1_sharp,
            onPressed: () {
              setState(() {
                counter++;
              });
            },
          ),
          const SizedBox(height: 10),
          CustomButton(
            icon: Icons.exposure_minus_1_sharp,
            onPressed: () {
              setState(() {
                if (counter > 0) {
                  counter--;
                }
              
              });
            },
          
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final  VoidCallback? onPressed;

  const CustomButton({super.key, required this.icon, this.onPressed });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      onPressed:onPressed,
      enableFeedback: true,
      child: Icon(
        icon,
        color: Colors.black87,
        size: 35,
      ),
    );
  }
}
