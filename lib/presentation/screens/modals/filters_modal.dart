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
        SizedBox(
          height: 25,
        ),
        Text(
          AppStrings.kFiltraPorPrefs,
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 20),
            child: Text(
              'Tipo',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            )),
        Divider(),
        SizedBox(
          height: 200,
          child: ListView.builder(
              itemCount: AppLists.tipos.length,
              itemBuilder: (context, index) => CheckboxListTile(
                  title: Text(AppLists.tipos[index]),
                  value: filters[index],
                  onChanged: (value) {
                    toggleTile(index);
                  })),
        ),
        Divider(),
        Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
              ),
              onPressed: () {},
              child: Text(AppStrings.kAplicar),
            )),
        Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
              ),
              onPressed: () {},
              child: Text(AppStrings.kCancelar),
            )),
      ],
    );
  }
}
