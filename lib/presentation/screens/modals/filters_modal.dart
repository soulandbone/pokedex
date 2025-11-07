import 'package:flutter/material.dart';
import 'package:pokedex/constants/app_lists.dart';
import 'package:pokedex/constants/app_strings.dart';

class FiltersModal extends StatefulWidget {
  const FiltersModal({super.key});

  @override
  State<FiltersModal> createState() => _FiltersModalState();
}

class _FiltersModalState extends State<FiltersModal> {
  List<bool> filters = List.filled(18, false);

  void toggleTile(int index) {
    setState(() {
      filters[index] = !filters[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.kFiltraPorPrefs,
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 1200, // This doesnt get solved by changing its height
          child: ListView.builder(
              itemCount: AppLists.tipos.length,
              itemBuilder: (context, index) => CheckboxListTile(
                  title: Text(AppLists.tipos[index]),
                  value: filters[index],
                  onChanged: (value) {})),
        )
      ],
    );
  }
}
