import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:percent_indicator_toturial/pages/page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularPercentIndicator(
              animation: true,
              animationDuration: 10000,
              radius: 150,
              lineWidth: 40,
              percent: 1,
              progressColor: Colors.deepPurple,
              backgroundColor: Colors.deepPurple.shade300,
              circularStrokeCap: CircularStrokeCap.round,
              center: const Text(
                '40%',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),
            ),
            const SizedBox(height: 100),
            LinearPercentIndicator(
              animation: true,
              animationDuration: 10000,
              onAnimationEnd: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Page1(),
                ),
              ),
              lineHeight: 40,
              barRadius: const Radius.circular(12),
              percent: 1,
              progressColor: Colors.deepPurple,
              backgroundColor: Colors.deepPurple[300],
              center: const Text(
                '40%',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
