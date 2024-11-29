import 'package:flutter/material.dart';
import '../models/tool_model.dart';
import '../widgets/tool_card.dart';

class ToolsScreen extends StatelessWidget {
  final List<Tool> tools = [
    Tool(
      id: '1',
      name: 'Shovel',
      description: 'A sturdy garden shovel.',
      price: 15.99,
      imageUrl: 'assets/images/shovel.jpg',
    ),
    Tool(
      id: '2',
      name: 'Rake',
      description: 'A lightweight garden rake.',
      price: 12.49,
      imageUrl: 'assets/images/rake.jpg',
    ),
    Tool(
      id: '3',
      name: 'Wheelbarrow',
      description: 'A durable wheelbarrow for heavy loads.',
      price: 45.99,
      imageUrl: 'assets/images/wheelbarrow.jpg',
    ),
    Tool(
      id: '4',
      name: 'Chainsaw',
      description: 'A powerful chainsaw for cutting trees.',
      price: 120.00,
      imageUrl: 'assets/images/chainsaw.jpg',
    ),
    Tool(
      id: '5',
      name: 'Chicken Tray',
      description: 'An essential tray for feeding chickens.',
      price: 8.99,
      imageUrl: 'assets/images/chickentray.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tools'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 3 / 4,
        ),
        itemCount: tools.length,
        itemBuilder: (ctx, index) {
          return ToolCard(tool: tools[index]);
        },
      ),
    );
  }
}
