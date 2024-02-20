import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maharah_course_project/application/cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit(super.initialState);

  void addItem(Item item) {
    List<Item> updateItems = [
      ...state.cartItems,
    ];
    bool itemIsExist =
        updateItems.where((element) => element.id == item.id).isNotEmpty;

    if (itemIsExist) {
      updateItems = updateItems.map((cartItem) {
        return item.id == cartItem.id
            ? cartItem.copyWith(
                quantity: item.quantity + 1,
              )
            : cartItem;
      }).toList();
    } else {
      updateItems.add(item);
    }

    emit(
      state.copyWith(
        cartItems: updateItems,
        showSnackBar: true,
      ),
    );
  }

  void updateQuantity(int id, int quantity) {
    List<Item> updatedItems = [...state.cartItems];
    updatedItems = updatedItems.map((item) {
      return item.id == id ? item.copyWith(quantity: quantity) : item;
    }).toList();
    emit(
      state.copyWith(
        cartItems: updatedItems,
        showSnackBar: false,
      ),
    );
  }

  void removeItem(int index) {
    final List<Item> updateItems = [...state.cartItems];
    updateItems.removeAt(index);
    emit(
      state.copyWith(
        cartItems: updateItems,
      ),
    );
  }
}
