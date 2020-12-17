
class Comanda {
  static final List<dynamic> _items = List<dynamic>();
  static final _comanda = Comanda._internal();
  
  factory Comanda() => _comanda;
  
  Comanda._internal();

  List<dynamic> get items {
    return _items;
  }

  void adicionar(dynamic item) {
    if (item != null) {
      _items.add(item);
    }
  }

  void remover(dynamic item) {
    if (item != null) {
      for (int i = 0; i < _items.length; i++) {
        if (_items.elementAt(i).id == item.id) {
          _items.removeAt(i);
        }
      }
    }
  }

  // ignore: unused_element
  void _fechar() {
    if (_items.isNotEmpty) {
      _items.clear();
    }
  }

  
}