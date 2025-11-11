import 'package:flutter/material.dart';
import 'package:pokedex/constants/app_maps.dart';

class WeaknessesGrid extends StatelessWidget {
  const WeaknessesGrid({required this.types, super.key});

  final List<String> types;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true, // Constrain height to content
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 3,
        crossAxisCount: 3, // Number of columns
        crossAxisSpacing: 5, // Horizontal spacing between grid items
        mainAxisSpacing: 0, // Vertical spacing between grid items
      ),
      itemCount: types.length, // The number of icons you want to display
      itemBuilder: (context, index) {
        final typeName = types[index];
        return Center(
          child: SizedBox(
            height: 90,
            width: 90,
            child: AppMaps.typeIconMapSmall[typeName] ?? SizedBox(),
          ),
        );
      },
    );
  }
}
