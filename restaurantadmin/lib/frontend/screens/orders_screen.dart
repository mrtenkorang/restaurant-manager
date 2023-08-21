import 'package:flutter/material.dart';
import 'package:youeat/backend/data/data.dart';

import '../widgets/bottom_nav_bar.dart';
import '../widgets/order_container.dart';
import '../widgets/texts/big_text.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 50,
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Center(child: BigText(text: 'All Orders')),
            ),
          ),
          Positioned(
            top: 100,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 180,
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return OrderCard(
                        customerName: customerNames[index],
                        foodImage: foodNames[index],
                        quantity: quantity[index],
                        price: prices[index],
                        foodName: foodNames[index],
                        orderNumber: orderNumbers[index],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 5,
                      );
                    },
                    itemCount: customerNames.length),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            child: BottomContainer(),
          ),
        ],
      ),
    );
  }
}
