import 'package:flutter/material.dart';

import '../data/data.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/order_container.dart';
import '../widgets/texts/big_text.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Assuming all lists have at least 3 items before removing
    if (customerNames.length >= 3 &&
        foodImages.length >= 3 &&
        quantity.length >= 3 &&
        prices.length >= 3 &&
        foodNames.length >= 3 &&
        orderNumbers.length >= 3) {
      customerNames = customerNames.sublist(2);
      foodImages = foodImages.sublist(2);
      quantity = quantity.sublist(2);
      prices = prices.sublist(2);
      foodNames = foodNames.sublist(2);
      orderNumbers = orderNumbers.sublist(2);
    }

// Now, you can use the modified lists in your OrderCard widget

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
                        serve: 'served',
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
