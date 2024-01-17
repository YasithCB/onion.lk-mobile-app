import 'package:flutter/material.dart';
import 'package:user_mobile/ui/screens/buy_from_any_store_screen.dart';
import 'package:user_mobile/ui/screens/select_stores_screen.dart';

import '../../data/constants.dart';

class BuyNowScreen extends StatefulWidget {
  const BuyNowScreen({super.key});

  @override
  State<BuyNowScreen> createState() => _BuyNowScreenState();
}

class _BuyNowScreenState extends State<BuyNowScreen> {
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
              'Buy Now!',
              style: TextStyle(
                color: AppColors.secondary,
                fontFamily: 'Roboto',
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              'Stock your kitchen, with a tap.',
              style: TextStyle(
                color: AppColors.secondary,
                fontFamily: 'Roboto',
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 50),

            // body
            const Text(
              'Do you have specific shop to buy goods?',
              style: TextStyle(
                color: AppColors.grey,
                fontFamily: 'Roboto',
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20),

            // btn 1
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SelectStoresScreen(),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                height: 130,
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.primary,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.12),
                      offset: const Offset(0, 5),
                      blurRadius: 22,
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Yes, I need to select the shop!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.secondary,
                      fontFamily: 'Roboto',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // btn 2
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BuyFromAnyStoreScreen(),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                height: 62,
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.primary,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.12),
                      offset: const Offset(0, 5),
                      blurRadius: 22,
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    'No',
                    style: TextStyle(
                      color: AppColors.secondary,
                      fontFamily: 'Roboto',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
