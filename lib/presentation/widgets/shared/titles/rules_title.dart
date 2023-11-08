import 'package:animate_do/animate_do.dart';
import 'package:boozy/config/theme/app_theme.dart';
import 'package:boozy/presentation/widgets/shared/titles/title_letter.dart';
import 'package:flutter/material.dart';

class RulesTitle extends StatelessWidget {
  const RulesTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return BounceInDown(
      delay: const Duration(milliseconds: 500),
      duration: const Duration(milliseconds: 1500),
      child: SizedBox(
        height: 200,
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Transform.translate(
                offset: const Offset(0, -50),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TitleLetter('R', rotation: 350),
                    TitleLetter('e'),
                    TitleLetter('g', color: AppColors.pink),
                    TitleLetter('l'),
                    TitleLetter('a', rotation: 15),
                    TitleLetter('s', rotation: 15, offset: Offset(0, 10)),
                  ],
                ),
              ),
              Transform.translate(
                offset: const Offset(-50, 0),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TitleLetter('d', size: TitleLetterSizes.xs),
                    TitleLetter('e', size: TitleLetterSizes.xs),
                    TitleLetter('l', size: TitleLetterSizes.xs),
                  ],
                ),
              ),
              Transform.translate(
                offset: const Offset(15, 30),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TitleLetter('J', rotation: 350),
                    TitleLetter('u'),
                    TitleLetter('e'),
                    TitleLetter('g', color: AppColors.pink),
                    TitleLetter('o', offset: Offset(0, -5)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// return SizedBox(
//       height: 200,
//       child: Center(
//         child: Stack(
//           alignment: Alignment.center,
//           children: [
//             Transform.translate(
//               offset: const Offset(0, -50),
//               child: const Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   TitleLetter('R', rotation: 350),
//                   TitleLetter('e'),
//                   TitleLetter('g', color: AppColors.pink),
//                   TitleLetter('l'),
//                   TitleLetter('a', rotation: 15),
//                   TitleLetter('s', rotation: 15, offset: Offset(0, 10)),
//                 ],
//               ),
//             ),
//             Transform.translate(
//               offset: const Offset(-50, 0),
//               child: const Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   TitleLetter('d', size: TitleLetterSizes.xs),
//                   TitleLetter('e', size: TitleLetterSizes.xs),
//                   TitleLetter('l', size: TitleLetterSizes.xs),
//                 ],
//               ),
//             ),
//             Transform.translate(
//               offset: const Offset(15, 30),
//               child: const Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   TitleLetter('J', rotation: 350),
//                   TitleLetter('u'),
//                   TitleLetter('e'),
//                   TitleLetter('g', color: AppColors.pink),
//                   TitleLetter('o', offset: Offset(0, -5)),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );

// return Container(
//       height: 250,
//       decoration: const BoxDecoration(
//         color: AppColors.purple,
//       ),
//       child: const Center(
//         child: Stack(
//           alignment: Alignment.center,
//           children: [
//             Padding(
//               padding: EdgeInsets.only(bottom: 100),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   TitleLetter('R', rotation: 350),
//                   TitleLetter('e'),
//                   TitleLetter('g', color: AppColors.pink),
//                   TitleLetter('l'),
//                   TitleLetter('a', rotation: 15),
//                   TitleLetter('s', rotation: 15, offset: Offset(0, 10)),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 0, right: 100),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   TitleLetter('d', size: TitleLetterSizes.xs),
//                   TitleLetter('e', size: TitleLetterSizes.xs),
//                   TitleLetter('l', size: TitleLetterSizes.xs),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 60, left: 30),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   TitleLetter('J', rotation: 350),
//                   TitleLetter('u'),
//                   TitleLetter('e'),
//                   TitleLetter('g', color: AppColors.pink),
//                   TitleLetter('o', offset: Offset(0, -5)),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
