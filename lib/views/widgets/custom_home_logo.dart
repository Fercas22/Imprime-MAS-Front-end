import 'package:imprime_mas/theme/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class CustomHomeLogo extends StatelessWidget {
  const CustomHomeLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: AppColors.strongBlack,
        height: double.infinity,
        child: Center(
          child: Stack(
            children: [
              _blur(),
              _logo(),
            ],
          ),
        ),
      ),
    );
  }

  Align _blur() {
    return Align(
      alignment: Alignment.center,
      child: Image.asset(
        'assets/greenBlur.png',
        height: double.infinity,
      ),
    );
  }

  Align _logo() {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/logotipo.png',
            width: 500,
          ),
          SvgPicture.asset(
            'assets/icons/pointSaleLetters.svg',
            height: 40,
          ),
        ],
      ),
    );
  }
}
