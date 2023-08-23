import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 90),
      child: Container(
        height: 50,
        width: (MediaQuery.of(context).size.width - 10) / 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  context.goNamed('home');
                },
                child: Icon(
                  Icons.dashboard,
                  color: Colors.white,
                ),
              ),
              InkWell(
                onTap: () {
                  context.goNamed('orders');
                },
                child: Icon(
                  Icons.food_bank,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
