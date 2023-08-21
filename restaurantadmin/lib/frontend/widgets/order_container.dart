import 'package:flutter/material.dart';
import 'package:youeat/frontend/widgets/texts/big_text.dart';
import 'package:youeat/frontend/widgets/texts/small_text.dart';

import 'on_top_container.dart';

class OrderCard extends StatelessWidget {
  final String customerName;
  final String foodImage;
  final String foodName;
  final int quantity;
  final double price;
  final int orderNumber;
  final String serve;
  const OrderCard({
    super.key,
    required this.customerName,
    required this.foodImage,
    required this.quantity,
    required this.price,
    required this.foodName,
    required this.orderNumber,
    required this.serve,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: MediaQuery.of(context).size.width - 20,
      child: Stack(
        children: [
          Positioned(
            top: 10,
            child: SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width - 20,
              child: Card(
                color: Colors.grey[300],
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 30),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 180,
                        child: SizedBox(
                          height: 210,
                          width: 210,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(foodImage),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 5,
                        child: BigText(
                          text: customerName,
                          bigTextSize: 25,
                        ),
                      ),
                      Positioned(
                        top: 35,
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: [
                            BigText(
                              text: foodName,
                              bigTextSize: 20,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 60,
                        child: Row(
                          children: [
                            const BigText(
                              text: 'Quantity: ',
                              bigTextSize: 15,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            AppSmallText(
                              text: quantity.toString(),
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 90,
                        child: Row(
                          children: [
                            BigText(
                              text: 'Order Number: ',
                              bigTextSize: 15,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            AppSmallText(
                              text: orderNumber.toString(),
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 125,
                        child: BigText(
                          text: 'GHC $price',
                          bigTextSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 40,
            child: InkWell(
              onTap: () {
                print('You just got served');
              },
              child: OnTopContainer(
                text: serve,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
