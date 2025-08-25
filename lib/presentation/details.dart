import 'package:coffe_shop/logic/cubit.dart';
import 'package:coffe_shop/logic/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class details extends StatelessWidget {
  const details({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    return BlocProvider(
      create: (context) => CoffeeCupit(),
      child: BlocBuilder<CoffeeCupit, CoffeeState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'Detail',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
              leading: IconButton(
                onPressed: () {
                  context.read<CoffeeCupit>().navigatetohome(context);
                },
                icon: Icon(Icons.arrow_back_ios_new),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_outline_rounded),
                ),
              ],
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/6ef5d3ddf74a0912e6e3eef515b6450927558373 (1).png',
                      width: media.size.width,
                      height: media.size.height * .3,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cappucino',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'with Chocolate',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 15,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Row(
                              spacing: 10,
                              children: [
                                Icon(Icons.star, color: Colors.amber, size: 30),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '4.8',
                                        style: TextStyle(
                                          color:
                                              Theme.of(
                                                context,
                                              ).colorScheme.secondary,
                                          fontSize: 20,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '(230)',
                                        style: TextStyle(
                                          color:
                                              Theme.of(
                                                context,
                                              ).colorScheme.secondary,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        spacing: 15,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 240, 240, 1),
                              borderRadius: BorderRadius.circular(10),
                            ),

                            child: Center(
                              child: Image.asset(
                                'assets/images/beans1.png',
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                                color: Color.fromRGBO(198, 124, 78, 1),
                              ),
                            ),
                          ),

                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 240, 240, 1),
                              borderRadius: BorderRadius.circular(10),
                            ),

                            child: Center(
                              child: Image.asset(
                                'assets/images/milk1.png',
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                                color: Color.fromRGBO(198, 124, 78, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 40),
                  child: Text(
                    'Description',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 40),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text:
                              'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 15,
                          ),
                        ),
                        TextSpan(
                          text: 'Read More',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Size',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        spacing: 30,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 40,
                              vertical: 5,
                            ),
                            width: 100,
                            height: 45,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey[300] ?? Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              'S',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 40,
                              vertical: 5,
                            ),
                            width: 100,
                            height: 45,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(198, 124, 78, .1),
                              border: Border.all(
                                color: Theme.of(context).primaryColor,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              'M',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 40,
                              vertical: 5,
                            ),
                            width: 100,
                            height: 45,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey[300] ?? Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              'L',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  spacing: 80,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 40),
                          child: Text(
                            'Price',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text(
                            '\$4.99',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: TextButton(
                        onPressed: () {
                          context.read<CoffeeCupit>().navigatetomap(context);
                        },
                        style: ButtonStyle(
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          padding: WidgetStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                          ),
                          backgroundColor: WidgetStateProperty.all(
                            Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        child: Text(
                          'Buy Now',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
