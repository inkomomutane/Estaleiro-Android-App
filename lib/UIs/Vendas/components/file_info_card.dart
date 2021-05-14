import 'package:estaleiro/UIs/GlobalWidgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:estaleiro/Models/Materias.dart';

class FileInfoCard extends StatelessWidget {
  const FileInfoCard({Key? key, required this.info}) : super(key: key);

  final Materias info;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        // border: Border.all(width: 2, color: secondaryColor)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'assets/icons/Materias.svg',
            height: 40,
            alignment: Alignment.center,
          ),
          Text(
            info.material.name!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text('Preco: ${info.material.buyPrice!} MZN'),
          Text(
            'Cat: ${info.material.category!.name}',
            style: Theme.of(context)
                .textTheme
                .caption!
                .copyWith(color: Colors.black),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [],
          )
        ],
      ),
    );
  }
}

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    Key? key,
    this.color = primaryColor,
    required this.percentage,
  }) : super(key: key);

  final Color color;
  final int percentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) => Container(
            width: constraints.maxWidth * (percentage / 100),
            height: 5,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
      ],
    );
  }
}
