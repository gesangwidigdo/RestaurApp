import 'package:flutter/material.dart';
import 'package:restaurapp/models/menu_list.dart';
import 'package:restaurapp/widgets/image_card.dart';
import 'package:restaurapp/widgets/menu_item.dart';
import 'package:restaurapp/widgets/search_bar_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RestaurApp'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                Card(
                  child: Center(
                    child: ImageCard(
                      imagePath: 'lib/assets/food.jpg',
                      text: 'Food',
                    ),
                  ),
                ),
                Card(
                  child: Center(
                    child: ImageCard(
                      imagePath: 'lib/assets/beverages.jpg',
                      text: 'Beverages',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const SearchBarWidget(),
            const Padding(
              padding: EdgeInsets.only(
                top: 20,
                bottom: 20,
              ),
              child: Divider(
                color: Color(0xFFFF9800),
              ),
            ),
            const Text(
              'Food',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: menuList.length,
              itemBuilder: (context, index) {
                final menu = menuList[index];
                if (menu.category == 'food') {
                  return MenuItem(
                    imagePath: menu.imagePath,
                    menuName: menu.menuName,
                    price: menu.price,
                  );
                }
                return const SizedBox.shrink();
              },
            ),
            const SizedBox(height: 50),
            const Text(
              'Beverages',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: menuList.length,
              itemBuilder: (context, index) {
                final menu = menuList[index];
                if (menu.category == 'beverages') {
                  return MenuItem(
                    imagePath: menu.imagePath,
                    menuName: menu.menuName,
                    price: menu.price,
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }
}
