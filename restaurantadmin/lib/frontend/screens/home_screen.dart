import 'package:flutter/material.dart';

import '../data/data.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/order_container.dart';
import '../widgets/stat_container.dart';
import '../widgets/texts/big_text.dart';
import '../widgets/texts/small_text.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int overallOrders = 0;

    double overallRevenue = 0.0;
    for (var i = 0; i < foodNames.length; i++) {
      overallRevenue += prices[i];
      overallOrders++;
    }
    int todayOrders = overallOrders ~/ 4;
    double todayRevenue = overallRevenue / 4;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.only(top: 80, left: 10, right: 10),
        child: Stack(
          children: [
            const Positioned(
              top: 0,
              child: BigText(
                text: 'Fyne Kuuk Restaurant',
              ),
            ),
            const Positioned(
              top: 50,
              child: AppSmallText(
                text: 'DashBoard',
                size: 25,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
            Positioned(
              top: 100,
              child: Row(
                children: [
                  StatContainer(
                    day: 'Today',
                    number: todayOrders.toString(),
                    name: 'Total Orders',
                  ),
                  SizedBox(width: 20),
                  StatContainer(
                    day: 'Overall',
                    number: overallOrders.toString(),
                    name: 'Total Orders',
                    color: Color(0xffe0e0e0),
                    textColor: Colors.black,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 250,
              child: Row(
                children: [
                  StatContainer(
                    day: 'Overall',
                    number: 'GHC${overallRevenue.toStringAsFixed(2)}',
                    name: 'Revenue',
                    color: Color(0xffe0e0e0),
                    textColor: Colors.black,
                    size: 25,
                  ),
                  SizedBox(width: 20),
                  StatContainer(
                    day: 'Today',
                    number: 'GHC${(todayRevenue.toStringAsFixed(2))}',
                    name: 'Revenue',
                    size: 25.0,
                  ),
                ],
              ),
            ),
            const Positioned(
              top: 400,
              child: AppSmallText(
                text: 'Active orders',
                size: 25,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
            Positioned(
              top: 450,
              child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width - 10,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return OrderCard(
                        customerName: customerNames[index],
                        foodImage: foodNames[index],
                        quantity: quantity[index],
                        price: prices[index],
                        foodName: foodNames[index],
                        orderNumber: orderNumbers[index],
                        serve: 'serve',
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                    itemCount: 3),
              ),
            ),
            const Positioned(
              bottom: 2,
              child: BottomContainer(),
            )
          ],
        ),
      ),
    );
  }
}
