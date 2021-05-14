import 'package:estaleiro/Controllers/UsersClient.dart';
import 'package:estaleiro/Models/User.dart';
import 'package:estaleiro/UIs/Dashboard/components/file_info_card.dart';
import 'package:estaleiro/UIs/GlobalWidgets/constants.dart';
import 'package:estaleiro/UIs/GlobalWidgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
        future: Provider.of<UsersClient>(context).users(context),
        builder: (context, AsyncSnapshot<List<User>?> projectSnap) {
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
                  debugPrint('$index');
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
