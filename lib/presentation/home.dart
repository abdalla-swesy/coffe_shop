import 'package:coffe_shop/logic/cubit.dart';
import 'package:coffe_shop/logic/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);

    final List<String> items = ['Cappuccino', 'Machiato', 'Latte', 'Americano'];
    final List<String> images = [
      'assets/images/row2.png',
      'assets/images/row1.png',
      'assets/images/row4.png',
      'assets/images/row3.png',
    ];
    final List<String> prices = ['\$4.99', '\$5.49', '\$3.99', '\$6.99'];

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CoffeeCupit()),
        BlocProvider(create: (context) => SelectCubit()),
      ],
      child: BlocBuilder<CoffeeCupit, CoffeeState>(
        builder: (context, state) {
          return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: 0,
              backgroundColor: Colors.white,
              onTap: (value) {
                if (value == 3) {
                  context.read<ThemeCubit>().toggleTheme();
                }
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite_outlined,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_bag,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.brightness_6,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  label: '',
                ),
              ],
            ),
            body: Stack(
              children: [
                Container(color: Theme.of(context).colorScheme.surface),
                Container(
                  height: media.size.height * .3 + 20,
                  decoration: BoxDecoration(
                    color:
                        Theme.of(context).brightness == Brightness.light
                            ? const Color(0xFF121212)
                            : Colors.white,
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 60,
                    horizontal: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Location',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.surface,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Bilzen, Tanjungbalai',
                                    style: TextStyle(
                                      color:
                                          Theme.of(context).colorScheme.surface,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Image.asset(
                            'assets/images/aa118dea9cd4db42075547f8170c49b4da693767.png',
                            width: 60,
                            height: 60,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),

                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF1F1F1F),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                                decoration: const InputDecoration(
                                  hintText: "Search coffee",
                                  hintStyle: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 18,
                                  ),
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.white,
                                    size: 28,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              margin: const EdgeInsets.only(left: 5, right: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              child: const Icon(
                                Icons.tune,
                                color: Colors.white,
                                size: 28,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Positioned(
                  top: 150,
                  left: 50,
                  child: Image.asset(
                    'assets/images/Frame 8.png',
                    width: 300,
                    height: 300,
                  ),
                ),

                Positioned(
                  top: 350,
                  child: SizedBox(
                    width: media.size.width,
                    height: media.size.height * 0.1,
                    child: BlocBuilder<SelectCubit, int>(
                      builder: (context, selectedIndex) {
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            final isSelected = selectedIndex == index;
                            return GestureDetector(
                              onTap: () {
                                context.read<SelectCubit>().selectIndex(index);
                              },
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.only(
                                  left: 10,
                                  right: 10,
                                  top: 50,
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      isSelected
                                          ? Theme.of(
                                            context,
                                          ).colorScheme.primary
                                          : Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  items[index],
                                  style: TextStyle(
                                    color:
                                        isSelected
                                            ? Theme.of(
                                              context,
                                            ).colorScheme.onPrimary
                                            : Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
                Positioned(
                  top: 450,
                  child: SizedBox(
                    width: media.size.width,
                    height: media.size.height * 0.4,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            childAspectRatio: 0.6,
                          ),
                      itemCount: images.length,
                      itemBuilder:
                          (context, index) => InkWell(
                            onTap: () {
                              context.read<CoffeeCupit>().navigatetoorder(
                                context,
                              );
                            },
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    // ignore: deprecated_member_use
                                    color: Colors.grey.withOpacity(0.2),
                                    blurRadius: 10,
                                    offset: const Offset(0, 5),
                                  ),
                                ],
                                color: Theme.of(context).colorScheme.surface,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    images[index],
                                    width: double.infinity,
                                    height: media.size.height * 0.2,
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 10,
                                      right: 10,
                                    ),
                                    child: Text(
                                      items[index],
                                      style: TextStyle(
                                        color:
                                            Theme.of(
                                              context,
                                            ).colorScheme.onSurface,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      'with Chocolate',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          prices[index],
                                          style: TextStyle(
                                            color:
                                                Theme.of(
                                                  context,
                                                ).colorScheme.primary,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                            color:
                                                Theme.of(
                                                  context,
                                                ).colorScheme.primary,
                                          ),
                                          child: const Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
