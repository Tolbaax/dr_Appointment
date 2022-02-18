
import 'package:de_appointment/Model/CategoryModel.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  final CategoryModel? category;
  const CategoryWidget({Key? key, this.category}) : super(key: key);
  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25, top: 20),
      height: 120,
      width: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.teal.shade600,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            widget.category!.categoryImageUrl!,
            fit: BoxFit.fill,
            width: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 5),
            child: Text(
              widget.category!.categoryNames!,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
          Container(
              width: 70,
              height: 25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.teal.shade400),
              child: Center(
                  child: Text(
                widget.category!.drNumber!,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              )))
        ],
      ),
    );
  }
}
