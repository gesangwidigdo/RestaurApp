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
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: Color(0xFFFF9800)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: Color(0xFFFF9800)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: Color(0xFFFF9800)),
          ),
          suffixIcon: IconButton(
            icon: const Icon(
              Icons.search,
              color: Color(0xFFFF9800),
            ),
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
