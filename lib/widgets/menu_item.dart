import 'package:flutter/material.dart';

class MenuItem extends StatefulWidget {
  final String imagePath;
  final String menuName;
  final String price;

  final int itemCount;

  const MenuItem({
    required this.imagePath,
    required this.menuName,
    required this.price,
    this.itemCount = 0,
    super.key,
  });

  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  int itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(widget.imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10),
            // Nama menu dan harga
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        widget.menuName,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                        softWrap: true,
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: () {
                              setState(() {
                                if (itemCount > 0) {
                                  itemCount--;
                                }
                              });
                            },
                          ),
                          // Jumlah pesanan
                          Text(
                            '$itemCount',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              setState(() {
                                itemCount++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        widget.price,
                        style: const TextStyle(
                          fontSize: 10,
                          color: Color(0xFFFF9800),
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.add_box,
                        color: Color(0xFFFF9800),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
