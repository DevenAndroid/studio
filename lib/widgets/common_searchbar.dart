import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'app_theme.dart';
import 'dimentions.dart';

class SearchBar extends StatelessWidget {
  final String? title;
  final GestureTapCallback? onPressed;
  final ValueChanged<String>? onFieldSubmit;
  const SearchBar({
    Key? key,
    this.title,
    this.onPressed,
    this.onFieldSubmit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: AddSize.size10,
        right: AddSize.size10,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AddSize.size40),
          boxShadow: blurBoxShadow),
      height: AddSize.size50,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          SizedBox(width: AddSize.size16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AddSize.size10 * .2),
            // child:
            //     Icon(Icons.search, color: Theme.of(context).iconTheme.color),
          ),
          GestureDetector(
            onTap: onPressed,
            child: Image.asset(
              'assets/images/searchnormal.png',
              width: AddSize.size20,
              height: AddSize.size20,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: AddSize.size12,
          ),
          Expanded(
            child: TextFormField(
              maxLines: 1,
              onFieldSubmitted: onFieldSubmit,
              style: TextStyle(fontSize: AddSize.font16),
              decoration: InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius:
                        BorderRadius.all(Radius.circular(AddSize.size10))),
                fillColor: Colors.white,
                contentPadding: EdgeInsets.zero,
                hintText: title,
              ),
            ),
          ),
          SizedBox(
            width: AddSize.size10,
          ),
        ],
      ),
    );
  }
}
