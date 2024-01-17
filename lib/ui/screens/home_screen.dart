import 'package:flutter/material.dart';
import 'package:user_mobile/ui/screens/buy_now_screen.dart';

import '../../data/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // header
            const Text(
              'Welcome,',
              style: TextStyle(
                color: AppColors.secondary,
                fontFamily: 'Roboto',
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              '0767722XXX',
              style: TextStyle(
                color: AppColors.secondary,
                fontFamily: 'Roboto',
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 50),

            // body
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BuyNowScreen(),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.12),
                      offset: const Offset(0, 5),
                      blurRadius: 22,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/buy-now.jpg', height: 50),
                    const Text(
                      'Buy Now!',
                      style: TextStyle(
                        color: AppColors.secondary,
                        fontFamily: 'Roboto',
                        fontSize: 29,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
