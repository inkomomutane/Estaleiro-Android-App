import 'package:estaleiro/Api/ClientApi.dart';
import 'package:estaleiro/Models/Material.dart';
import 'package:estaleiro/Models/Materias.dart';
import 'package:flutter/cupertino.dart';

class MaterialsClient extends ClientApi with ChangeNotifier {
  
  Future<List<Materias>?>? materials(BuildContext context) async {
    final data = await this.all('material', context);
    if (data == null) {
      return <Materias>[];
    }
    return List<Materias>.generate(
        data.length, (index) => Materias(Material.fromJson(data[index]!)));
  }

  Future<Materias?> getMaterial(String id, BuildContext context) async {
    final material = await this.get('material/' + id, context);
    print(material);
    if (material != null) return Materias(Material.fromJson(material));
    return null;
  }

  Future<Materias?> createMaterial(
      String id, BuildContext context, Material materialToJson) async {
    final material =
        await this.create('material', context, materialToJson.toJson());
    print(material);
    if (material != null) return Materias(Material.fromJson(material));
    return null;
  }

  Future<Materias?> updateMaterial(
      String id, BuildContext context, Material materialToJson) async {
    final material = await this.update('material/' + id, context, materialToJson.toJson());
    print(material);
    if (material != null) return Materias(Material.fromJson(material));
    return null;
  }
}
