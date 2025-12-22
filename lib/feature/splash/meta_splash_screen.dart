import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MetaSplashScreen extends StatefulWidget {
  const MetaSplashScreen({super.key});

  @override
  State<MetaSplashScreen> createState() => _MetaSplashScreenState();
}

class _MetaSplashScreenState extends State<MetaSplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkAuthAndNavigate();
  }

  Future<void> _checkAuthAndNavigate() async {
    await Future.delayed(const Duration(seconds: 3));

    final user = FirebaseAuth.instance.currentUser;

    if (!mounted) return;

    if (user == null) {
     
      context.go('/login');
    } else {
     
      context.go('/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF18191A),
      body: Stack(
        children: [
          Center(
            child: Image.asset('assets/icon/fblogo.png', width: 80, height: 80),
          ),
          const Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  'from',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.all_inclusive, color: Colors.white, size: 22),
                    SizedBox(width: 6),
                    Text(
                      'Meta',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
