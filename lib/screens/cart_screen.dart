// cart_screen.dart

import '../models/cart_model.dart'; // Import the cart model
import 'package:flutter/material.dart';
// Import the cart model

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
      ),
      body: userCart.items.isEmpty // Check if the cart is empty
          ? const Center(
              child: Text(
                "Your cart is empty!", // Show this message if the cart is empty
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              itemCount: userCart.items.length, // Number of items in the cart
              itemBuilder: (context, index) {
                final tool =
                    userCart.items[index]; // Get the current tool in the cart
                return ListTile(
                  leading: Image.asset(
                    tool.imageUrl, // Show the image for the tool
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => const Icon(
                        Icons.broken_image,
                        size: 50), // Handle image load errors
                  ),
                  title: Text(tool.name), // Show the name of the tool
                  subtitle: Text(
                      '\$${tool.price.toStringAsFixed(2)}'), // Show the price of the tool
                  trailing: IconButton(
                    icon: const Icon(Icons.remove_circle_outline),
                    onPressed: () {
                      // Call the removeFromCart method to remove the tool from the cart
                      userCart.removeFromCart(tool);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text(
                                '${tool.name} removed from cart!')), // Show a snack bar after removing
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
}

extension on Cart {
  void removeFromCart(Tool tool) {}
}
