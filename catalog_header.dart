// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/widgets/themes.dart';
// import 'package:velocity_x/velocity_x.dart';

// class CatalogHeader extends StatelessWidget {
//   const CatalogHeader({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         "Shopping App".text.xl5.bold.color(MyTheme.darkBluishColor).make(),
//         "Trending Products".text.xl2.make(),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App"
            .text
            .xl5
            .bold
            .color(context.theme.primaryColorDark)
            .make(),
        "Trending products".text.xl2.make(),
      ],
    );
  }
}
