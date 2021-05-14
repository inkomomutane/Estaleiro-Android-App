import 'package:estaleiro/Api/ClientApi.dart';
import 'package:estaleiro/Models/Material.dart';
import 'package:estaleiro/Models/Invoice.dart';
import 'package:flutter/cupertino.dart';

class InvoiceClient extends ClientApi with ChangeNotifier {
  Future<List<Invoice>?>? invoices(BuildContext context) async {
    final data = await this.all('invoice', context);
    if (data == null) {
      return <Invoice>[];
    }
    return List<Invoice>.generate(
        data.length, (index) => Invoice.fromJson(data[index]!));
  }

  Future<Invoice?> getInvoice(String id, BuildContext context) async {
    final invoice = await this.get('invoice/' + id, context);
    print(invoice);
    if (invoice != null) return Invoice.fromJson(invoice);
    return null;
  }

  Future<Invoice?> createInvoice(
      String id, BuildContext context, Material invoiceToJson) async {
    final invoice =
        await this.create('invoice', context, invoiceToJson.toJson());
    print(invoice);
    if (invoice != null) return Invoice.fromJson(invoice);
    return null;
  }

  Future<Invoice?> updateInvoice(
      String id, BuildContext context, Invoice invoiceToJson) async {
    final invoice =
        await this.update('invoice/' + id, context, invoiceToJson.toJson());
    print(invoice);
    if (invoice != null) return Invoice.fromJson(invoice);
    return null;
  }
}
