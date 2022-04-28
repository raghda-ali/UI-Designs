import 'package:flutter/material.dart';
import 'package:ui_design/presentation/screens/challenge3/widgets/filter_list.dart';
import 'package:ui_design/widgets/custom_text_field.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    FocusNode focusNode = FocusNode();
    void showOverlay(BuildContext context) {
      OverlayEntry? entry = OverlayEntry(
        builder: (context) => const FilterList(),
      );
      final overlay = Overlay.of(context);
      overlay?.insert(entry);
      // await Future.delayed(Duration(seconds: 2));
      // entry.remove();
    }

    return Padding(
      padding: const EdgeInsets.only(
        top: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: CustomTextField(
              controller: searchController,
              labelText: "Search any course",
              prefixIcon: const Icon(Icons.search_outlined),
              fillColor: Colors.grey[50],
              focusNode: focusNode,
              focusedBorderRadius: 30,
              enabledBorderRadius: 30,
            ),
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.grey[300]!,
                )),
            child: GestureDetector(
              onTap: () {
                showOverlay(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: const Icon(
                  Icons.filter,
                  size: 22,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
