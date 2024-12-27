import 'package:flutter/material.dart';
import 'package:restaurapp/models/menu_list.dart';
import 'package:restaurapp/widgets/image_card.dart';
import 'package:restaurapp/widgets/menu_item.dart';
import 'package:restaurapp/widgets/search_bar_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<MenuList> _filteredMenuList = menuList;

  void _handleSearch(String query) {
    setState(() {
      _filteredMenuList = menuList.where((menu) {
        return menu.menuName.toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }

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
            SearchBarWidget(onSearch: _handleSearch),
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
              itemCount: _filteredMenuList.length,
              itemBuilder: (context, index) {
                final menu = _filteredMenuList[index];
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
              itemCount: _filteredMenuList.length,
              itemBuilder: (context, index) {
                final menu = _filteredMenuList[index];
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
