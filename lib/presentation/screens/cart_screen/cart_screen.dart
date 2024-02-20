import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maharah_course_project/application/cart_bloc.dart';
import 'package:maharah_course_project/application/cart_state.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Cart Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 16,
        ),
        child: CartItems(
          items: context.watch<CartCubit>().state.cartItems,
        ),
      ),
    );
  }
}

class CartItems extends StatelessWidget {
  const CartItems({super.key, required this.items});

  final List<Item> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return CartItem(
          onUpdateItem: (quantity) {
            context.read<CartCubit>().updateQuantity(
                  items[index].id,
                  quantity,
                );
          },
          onDeleteItem: () {
            context.read<CartCubit>().removeItem(index);
          },
          quantity: items[index].quantity,
          name: items[index].name,
          price: items[index].price,
        );
      },
      itemCount: items.length,
    );
  }
}

class CartItem extends StatefulWidget {
  const CartItem({
    super.key,
    required this.price,
    required this.name,
    required this.quantity,
    required this.onDeleteItem,
    required this.onUpdateItem,
  });

  final String name;
  final void Function()? onDeleteItem;
  final void Function(int quantity)? onUpdateItem;

  final double price;
  final int quantity;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: Text(
              widget.name,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            widget.price.toString(),
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Text(
            widget.quantity.toString(),
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _count = _count + 1;
                    widget.onUpdateItem?.call(_count);
                  });
                },
                icon: const Icon(Icons.add),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    if (_count == 0) {
                      return;
                    }
                    _count = _count - 1;
                    widget.onUpdateItem?.call(_count);
                  });
                },
                icon: const Icon(Icons.remove),
              )
            ],
          ),
          const SizedBox(
            width: 32,
          ),
          InkWell(
            onTap: widget.onDeleteItem,
            child: const Icon(
              Icons.delete,
              color: Colors.red,
              size: 24,
            ),
          )
        ],
      ),
    );
  }
}
