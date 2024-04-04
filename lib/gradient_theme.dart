import 'package:flutter/material.dart';


//Custom widget for a gradiant container.
//Helps keep the app uniformed.
class GradientContainer extends StatelessWidget {
  final Widget? child;
  const GradientContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
       padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
          height: MediaQuery.of(context).size.height - 0,
          width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white,
            Color.fromARGB(211, 255, 4, 4),
          ],
          stops: [0.5, 0.9],
        ),
      ),
      child: child,
    );
  }
}