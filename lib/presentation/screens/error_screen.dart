import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/constants/app_strings.dart';
import 'package:pokedex/providers/providers.dart';

class ErrorScreen extends ConsumerWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 300, child: Image.asset('assets/magikarp.png')),
        Text(
          textAlign: TextAlign.center,
          AppStrings.kAlgoSalioMal,
          style: GoogleFonts.poppins(
            fontSize: 26,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          AppStrings.kNoPudimosCargar,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                print('Button pressed');
                ref.refresh(fetchPokemonFullProvider(offSet: 0, limit: 125));
              },
              child: Text(AppStrings.kReintentar),
            ))
      ],
    );
  }
}
