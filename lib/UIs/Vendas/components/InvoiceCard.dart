import 'package:estaleiro/Controllers/InvoiceClient.dart';
import 'package:estaleiro/Models/Invoice.dart';
import 'package:estaleiro/UIs/GlobalWidgets/constants.dart';
import 'package:estaleiro/UIs/Vendas/components/file_info_card.dart';
import 'package:estaleiro/UIs/Vendas/components/my_fiels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class InvoiceCard extends StatelessWidget {
  const InvoiceCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Provider.of<InvoiceClient>(context).invoices(context),
        builder: (context, AsyncSnapshot<List<Invoice>?> projectSnap) {
          if (projectSnap.connectionState == ConnectionState.none &&
              projectSnap.hasData == null) {
            //print('project snapshot data is: ${projectSnap.data}');
            return Container();
          } else if (projectSnap.data != null) {
            var snapshot;
            return Container(
              padding: EdgeInsets.all(defaultPadding),
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Recent Files",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: DataTable(
                      horizontalMargin: 0,
                      columnSpacing: defaultPadding,
                      columns: [
                        DataColumn(
                          label: Text("File Name"),
                        ),
                        DataColumn(
                          label: Text("Date"),
                        ),
                        DataColumn(
                          label: Text("Size"),
                        ),
                      ],
                      rows: List.generate(
                        projectSnap.data!.length,
                        (index) => recentFileDataRow(projectSnap.data![index]),
                      ),
                    ),
                  ),
                ],
              ),
            );
            ;
          }
          return Container();
        });
  }

  DataRow recentFileDataRow(Invoice fileInfo) {
    return DataRow(
      cells: [
        DataCell(
          Row(
            children: [
              SvgPicture.asset(
                fileInfo.orderCode!,
                height: 30,
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Text("${fileInfo.totalPrice}"),
              ),
            ],
          ),
        ),
        DataCell(Text(fileInfo.clientName!)),
        DataCell(Text(fileInfo.createdAt.toString())),
      ],
    );
  }
}
