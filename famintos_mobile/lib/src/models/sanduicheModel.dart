// Generated by https://quicktype.io

class SanduicheModel {
  int id;
  String nome;
  String createdAt;
  String updatedAt;
  String descricao;
  String valor;
  int categoria;

  SanduicheModel({
    this.id,
    this.nome,
    this.createdAt,
    this.updatedAt,
    this.descricao,
    this.valor,
    this.categoria,
  });

  SanduicheModel.fromJson(Map<String, dynamic> json) 
    : 
    id          = json["id"],
    nome        = json["nome"],
    descricao   = json["descricao"],
    valor       = json["valor"];
}
