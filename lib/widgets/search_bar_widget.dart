import 'package:flutter/material.dart';

class SearchBarWidget extends StatefulWidget {
  final Function(String) onSearch;

  const SearchBarWidget({Key? key, required this.onSearch}) : super(key: key);

  @override
  _SearchBarWidgetState createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  final TextEditingController _controller = TextEditingController();

  void _handleSearch() {
    widget.onSearch(_controller.text);
  }

  void _clearSearch() {
    _controller.clear();
    widget.onSearch('');
    setState(() {});
  }

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
          suffixIcon: _controller.text.isEmpty
              ? IconButton(
                  icon: const Icon(
                    Icons.search,
                    color: Color(0xFFFF9800),
                  ),
                  onPressed: _handleSearch,
                )
              : IconButton(
                  icon: const Icon(
                    Icons.clear,
                    color: Color(0xFFFF9800),
                  ),
                  onPressed: _clearSearch,
                ),
        ),
        onChanged: (String value) {
          _handleSearch();
          setState(() {});
        },
      ),
    );
  }
}
