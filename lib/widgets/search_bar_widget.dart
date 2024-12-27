import 'package:flutter/material.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  _SearchBarWidgetState createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          hintText: 'Search',
          suffixIcon: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Implement search logic here
            },
          ),
        ),
        onChanged: (String value) {
          // Implement onChanged logic here
        },
      ),
    );
  }
}