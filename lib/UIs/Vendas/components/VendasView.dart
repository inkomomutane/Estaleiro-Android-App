import 'package:estaleiro/Models/Materias.dart';
import 'package:estaleiro/UIs/GlobalWidgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'storage_info_card.dart';

class MaterialView extends StatelessWidget {
  const MaterialView({
    Key? key,
    required this.info,
  }) : super(key: key);
  final Materias info;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
          color: secondaryColor,
          border: Border.all(width: 2, color: Colors.black.withOpacity(0.10)),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: ListView(
          children: [
            SvgPicture.asset('assets/icons/Materias.svg'),
            SizedBox(height: defaultPadding),
            Text(
              "${info.material.name}",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: defaultPadding),
            StorageInfoCard(
              svgSrc: "assets/icons/Materias.svg",
              title: "Preco :",
              amountOfFiles: "  ${info.material.buyPrice} MZN",
              numOfFiles: 1328,
            ),
            StorageInfoCard(
              svgSrc: "assets/icons/Materias.svg",
              title: "Categoria: ",
              amountOfFiles: "{ ${info.material.category!.name} }",
              numOfFiles: 1328,
            ),
            StorageInfoCard(
              svgSrc: "assets/icons/Materias.svg",
              title: "Medida: ",
              amountOfFiles: " { ${info.material.measure!.name} }",
              numOfFiles: 1328,
            ),
            StorageInfoCard(
              svgSrc: "assets/icons/Materias.svg",
              title: "Quantidade : ",
              amountOfFiles: "${info.material.quantity!.toInt()}",
              numOfFiles: 140,
            ),
          ],
        ));
  }
}
/** Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Storage Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),     
          StorageInfoCard(
            svgSrc: "assets/icons/twitter.svg",
            title: "Documents Files",
            amountOfFiles: "1.3GB",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/twitter.svg",
            title: "Media Files",
            amountOfFiles: "15.3GB",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/twitter.svg",
            title: "Other Files",
            amountOfFiles: "1.3GB",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/twitter.svg",
            title: "Unknown",
            amountOfFiles: "1.3GB",
            numOfFiles: 140,
          ),
        ],
      ), */