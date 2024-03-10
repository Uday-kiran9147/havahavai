// import 'package:flutter/material.dart';
// import 'package:havahavai/utils/custom_svg.dart';

// class FindSvgs extends StatelessWidget {
//   const FindSvgs({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Find SVGs'),
//         ),
//         body: ListView.builder(
//           physics: AlwaysScrollableScrollPhysics(),
//           itemCount: 27,
//           itemBuilder: (context, index) {
//             final String assetName = 'assets/icons/${index}.svg';
//             return ListTile(
//               title: Text(assetName),
//               leading: CustomSvg(url: assetName,),
//             );
//           },
//         ));
//   }
// }
