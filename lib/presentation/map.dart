import 'package:coffe_shop/logic/cubit.dart';
import 'package:coffe_shop/logic/state.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    return BlocProvider(
      create: (context) => CoffeeCupit(),
      child: BlocBuilder<CoffeeCupit, CoffeeState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.surface,
            body: SafeArea(
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/map.png',
                    fit: BoxFit.cover,
                    width: media.size.width,
                    height: media.size.height,
                  ),
                  Positioned(
                    top: media.size.height * 0.05,
                    left: media.size.width * 0.1,
                    child: Container(
                      width: media.size.width * 0.15,
                      height: media.size.width * 0.15,
                      padding: EdgeInsets.symmetric(
                        horizontal: media.size.width * 0.06,
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surface,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                      child: GestureDetector(
                        onTap: () {
                          context.read<CoffeeCupit>().navigatetohome(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Theme.of(context).colorScheme.secondary,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: media.size.height * 0.05,
                    right: media.size.width * 0.1,
                    child: Container(
                      width: media.size.width * 0.15,
                      height: media.size.width * 0.15,
                      padding: EdgeInsets.symmetric(
                        horizontal: media.size.width * 0.04,
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surface,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.my_location,
                        color: Theme.of(context).colorScheme.secondary,
                        size: 25,
                      ),
                    ),
                  ),
                  Positioned(
                    top: media.size.height * .61,
                    child: Container(
                      width: media.size.width,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surface,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 10,
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: media.size.height * 0.01,
                            ),
                            width: 50,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Text(
                            'Map',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Delivery to',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey[600],
                                  ),
                                ),
                                TextSpan(
                                  text: ' on the map.',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 10,
                            ),
                            child: Row(
                              spacing: 10,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    top: media.size.height * 0.01,
                                  ),
                                  width: 90,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    top: media.size.height * 0.01,
                                  ),
                                  width: 90,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    top: media.size.height * 0.01,
                                  ),
                                  width: 90,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    top: media.size.height * 0.01,
                                  ),
                                  width: 90,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: media.size.height * 0.01,
                            ),
                            width: media.size.width * 0.9,
                            height: 80,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey[300]!,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Row(
                                spacing: 20,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(
                                      media.size.width * 0.02,
                                    ),
                                    child: Icon(
                                      Icons.location_on,
                                      color:
                                          Theme.of(
                                            context,
                                          ).colorScheme.secondary,
                                      size: 30,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Delivered your order',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Theme.of(
                                                context,
                                              ).colorScheme.secondary,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "We deliver your goods to you in\nthe shortes possible time.",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: media.size.height * 0.02),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                              bottom: 30,
                            ),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/images/10a22f7363fa24249a2d5cfc576fd05ebbcffa09.png',
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Johan Hawn',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(
                                        'Personal Courier',
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.surface,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.grey[300]!,
                                      width: 1,
                                    ),
                                  ),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.call,
                                      color: Colors.grey[600],
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
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
        },
      ),
    );
  }
}
