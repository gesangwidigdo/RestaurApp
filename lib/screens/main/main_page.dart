import 'package:flutter/material.dart';
import 'package:restaurapp/widgets/image_card.dart';
import 'package:restaurapp/widgets/search_bar_widget.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
          ],
        ),
      ),
    );
  }
}
