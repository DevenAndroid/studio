import 'package:flutter/material.dart';

import '../widgets/app_theme.dart';
class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
             child: Column(
               children: [

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
            child: SizedBox(
              height: 48,
              child: TextField(
                maxLines: 1,
                controller: searchController,
                style: const TextStyle(fontSize: 17),
                textAlignVertical: TextAlignVertical.center,
                textInputAction: TextInputAction.search,
                // onSubmitted: (value) => onTap(),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 2, color: AppTheme.primaryColor),
                    borderRadius: BorderRadius.circular(500)
                  ),
                  filled: true,
                  prefixIcon: InkWell(
                      // onTap: onTap,
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        child: Image.asset('assets/images/search_icon.png')
                      )),
                  border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(500))),
                  fillColor: const Color(0xFFF3F7FA),
                  contentPadding: EdgeInsets.only(left: 13),
                  hintText: 'Search here...',
                ),
              ),
            ),
          ),
               ],
             )
        ),

      ),
    );
  }
}
Widget searchView(BuildContext context, onTap, searchController) {
  return SizedBox(
    height: 44,
    child: TextField(
      maxLines: 1,
      controller: searchController,
      style: const TextStyle(fontSize: 17),
      textAlignVertical: TextAlignVertical.center,
      textInputAction: TextInputAction.search,
      onSubmitted: (value) => onTap(),
      decoration: InputDecoration(
        filled: true,
        // prefixIcon:
        //     Icon(Icons.search, color: Color(0xFFC33D18)),
        suffixIcon: InkWell(
            onTap: onTap,
            child: Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Color(0xFFC33D18),
                  borderRadius: BorderRadius.circular(5)),
              child: const Icon(
                Icons.search,
                size: 18,
                color: Colors.white,
              ),
            )),
        border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(8))),
        fillColor: Colors.white,
        contentPadding: EdgeInsets.only(left: 13),
        hintText: 'Search Your Products',
      ),
    ),
  );
}