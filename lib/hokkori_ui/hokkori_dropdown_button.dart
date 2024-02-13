
import 'package:flutter/material.dart';

class HokkoriDropdownButton<T> extends StatelessWidget {
  final T? selectedValue;
  final List<DropdownMenuItem<T>> items;
  final ValueChanged<T>? onChanged;

  const HokkoriDropdownButton({
    Key? key,
    required this.selectedValue,
    required this.items,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 1.0),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<T>(
            value: selectedValue,
            onChanged: (value){
              onChanged!(value as T);
            },
            items: items,
          ),
        ),
      ),
    );
  }
}
