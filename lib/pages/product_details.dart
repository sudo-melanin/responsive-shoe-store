import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe_app/models/cart_item.dart';
import 'package:shoe_app/providers/cart_provider.dart';

class ProductDetailsPage extends StatefulWidget {
  final Map<String, Object> product;
  const ProductDetailsPage({super.key, required this.product});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  int selectedSize = 0;

  void onTap() {
    if (selectedSize != 0) {
      final itemToAdd = CartItem.fromJson({
        ...widget.product,
        'image_url': widget.product['imageUrl'],
        'size': selectedSize,
      });
      context.read<CartProvider>().addProduct(itemToAdd);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Item added succesffully',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.green,
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Please Select a size',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details')),

      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    Text(
                      widget.product['title'] as String,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset(
                        widget.product['imageUrl'] as String,
                        height: 250,
                      ),
                    ),
                    const Spacer(flex: 2),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(245, 247, 249, 1),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      height: 250,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '\$${widget.product['price']}',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            height: 50,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount:
                                  (widget.product['sizes'] as List<int>).length,
                              itemBuilder: (context, index) {
                                final size =
                                    (widget.product['sizes']
                                        as List<int>)[index];
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedSize = size;
                                      });
                                    },
                                    child: Chip(
                                      backgroundColor: selectedSize == size
                                          ? Theme.of(
                                              context,
                                            ).colorScheme.primary
                                          : null,
                                      label: Text(size.toString()),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: ElevatedButton.icon(
                              icon: const Icon(Icons.shopping_cart),
                              label: const Text(
                                'Add to Cart',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                              onPressed: () => onTap(),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Theme.of(
                                  context,
                                ).colorScheme.primary,
                                minimumSize: Size(double.infinity, 50),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
