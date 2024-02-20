class CartState {
  CartState({
    required this.cartItems,
    required this.showSnackBar,
  });

  final List<Item> cartItems;
  final bool showSnackBar;

  CartState copyWith({
    List<Item>? cartItems,
    bool? showSnackBar,
  }) {
    return CartState(
      cartItems: cartItems ?? this.cartItems,
      showSnackBar: showSnackBar ?? this.showSnackBar,
    );
  }
}

class Item {
  Item({
    required this.name,
    required this.image,
    required this.id,
    required this.price,
    required this.quantity,
  });

  final String name;
  final int id;
  final double price;
  final int quantity;
  final String image;

  Item copyWith({
    String? name,
    int? id,
    int? quantity,
    double? price,
    String? image,
  }) {
    return Item(
      name: name ?? this.name,
      id: id ?? this.id,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      image: image ?? this.image,
    );
  }
}
