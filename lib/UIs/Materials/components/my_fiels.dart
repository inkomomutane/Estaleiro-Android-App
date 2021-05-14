import 'package:estaleiro/Controllers/MaterialsClient.dart';
import 'package:estaleiro/Models/Materias.dart';
import 'package:estaleiro/UIs/GlobalWidgets/constants.dart';
import 'package:estaleiro/UIs/GlobalWidgets/responsive.dart';
import 'package:estaleiro/UIs/Materials/components/MaterialView.dart';
import 'package:estaleiro/UIs/Materials/components/file_info_card.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class MyFiels extends StatelessWidget {
  const MyFiels({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: defaultPadding),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [],
        ),
        SizedBox(height: defaultPadding * 2),
        Responsive(
          mobile: FileInfoCardGridView(
            crossAxisCount: _size.width < 650 ? 2 : 4,
            childAspectRatio: _size.width < 650 ? 1.3 : 1,
          ),
          tablet: FileInfoCardGridView(),
          desktop: FileInfoCardGridView(
            childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
          ),
        ),
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Provider.of<MaterialsClient>(context).materials(context),
        builder: (context, AsyncSnapshot<List<Materias>?> projectSnap) {
          if (projectSnap.connectionState == ConnectionState.none &&
              projectSnap.hasData == null) {
            //print('project snapshot data is: ${projectSnap.data}');
            return Container();
          } else if (projectSnap.data != null) {
            return GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: projectSnap.data!.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: defaultPadding,
                mainAxisSpacing: defaultPadding,
                childAspectRatio: childAspectRatio,
              ),
              itemBuilder: (context, index) => GestureDetector(
                child: FileInfoCard(info: projectSnap.data![index]),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) =>
                              MaterialData(info: projectSnap.data![index])));
                },
              ),
            );
          }
          return Container();
        });
    /** return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 8,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => Card(child: Text('Cont'),),
    ); */
  }
}

class MaterialData extends StatelessWidget {
  final Materias info;

  const MaterialData({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: bgColor,
          leading: GestureDetector(
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.of(context).pop();
              }),
          elevation: 0,
          foregroundColor: Colors.black,
        ),
        body: Padding(
            padding: EdgeInsets.all(defaultPadding),
            child: MaterialView(
              info: info,
            )));
  }
}
