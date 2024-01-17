import 'package:flutter/material.dart';

import '../../data/constants.dart';

class BuyFromStoreScreen extends StatefulWidget {
  const BuyFromStoreScreen({super.key});

  @override
  State<BuyFromStoreScreen> createState() => _BuyFromStoreScreenState();
}

class _BuyFromStoreScreenState extends State<BuyFromStoreScreen> {
  final TextEditingController listController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    listController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // header
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Select From Keells',
                      style: TextStyle(
                        color: AppColors.secondary,
                        fontFamily: 'Roboto',
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Stock your kitchen, with a tap.',
                      style: TextStyle(
                        color: AppColors.secondary,
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),

              // body
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // stoer logo
                      Image.asset('assets/images/keells.png', height: 100),
                      const SizedBox(width: 25),
                      const Text(
                        'Your list from Keells Super',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.grey,
                          fontFamily: 'Roboto',
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      // list enter field
                      Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 3,
                        margin: const EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: const Color(0xFFF8F8F8),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: TextField(
                            textAlign: TextAlign.center,
                            controller: listController,
                            decoration: const InputDecoration(
                              hintText: 'Please Enter name and qty clearly',
                              hintStyle: TextStyle(
                                color: AppColors.grey,
                                fontFamily: 'Roboto',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),

                      // or
                      const Text(
                        'Or',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.grey,
                          fontFamily: 'Roboto',
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 12),

                      // btns
                      Column(
                        children: [
                          // attach list
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                //
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                backgroundColor: AppColors.primary,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 15),
                              ),
                              icon: const Icon(
                                Icons.image_rounded,
                                color: Colors.black87,
                              ),
                              label: const Text(
                                'Attach Handwritten List',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),

                          // send the list
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                //
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                backgroundColor: AppColors.primary,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 15),
                              ),
                              child: const Text(
                                'Send the List',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
