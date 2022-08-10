import 'package:flutter/material.dart';

class AnimatedPaddinggg extends StatefulWidget {
  const AnimatedPaddinggg({Key? key}) : super(key: key);

  @override
  State<AnimatedPaddinggg> createState() => _AnimatedPaddingggState();
}

class _AnimatedPaddingggState extends State<AnimatedPaddinggg> {
  double inset = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Padding"),
      ),
      body: Center(
        child: AnimatedPadding(
            curve: Curves.easeInCubic,
            child: const Image(
                image: NetworkImage(
                    "https://images.pexels.com/photos/2365572/pexels-photo-2365572.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")),
            padding: EdgeInsets.all(inset),
            duration: const Duration(milliseconds: 500)),
      ),
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
          onPressed: () {
            setState(() {
              inset += 100;
            });
          },
          child: const Icon(Icons.zoom_in),
        ),
        FloatingActionButton(
          onPressed: () {
            setState(() {
              if (inset > 100) {
                inset -= 100;
              }
            });
          },
          child: const Icon(Icons.zoom_out),
        ),
      ]),
    );
  }
}
