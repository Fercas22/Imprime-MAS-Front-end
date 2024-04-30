import 'dart:math';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:imprime_mas/presentacion/product/content_tab.dart';
import 'package:imprime_mas/presentacion/widgets/custom_statistics_card.dart';

class ProductView extends StatefulWidget {
  const ProductView({super.key});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  int currentIndex = 0;
  List<Tab> tabs = [
    Tab(
      text: const Text('Productos'),
      body: const ContentTab()
    ),
    Tab(
      text: const Text('Movimientos'),
      body: Container(
        color:
            Colors.accentColors[Random().nextInt(Colors.accentColors.length)],
        child: const Center(
          child: Text('Content of Tab 2'),
        ),
      ),
    ),
    Tab(
      text: const Text('TabView 3'),
      body: Container(
        color:
            Colors.accentColors[Random().nextInt(Colors.accentColors.length)],
        child: const Center(
          child: Text('Content of Tab 3'),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: const PageHeader(
        title: Text('Productos e Inventario'),
      ),
      content: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _infoCard(),
            const SizedBox(height: 16),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: TabView(
                  tabs: tabs,
                  currentIndex: currentIndex,
                  onChanged: (index) => setState(() => currentIndex = index),
                  tabWidthBehavior: TabWidthBehavior.sizeToContent,
                  closeButtonVisibility: CloseButtonVisibilityMode.never,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row _infoCard() {
    return const Row(
      children: [
        CustomStatisticsCard(
          title: 'Cantidad de productos',
          statistics: '754',
        ),
        SizedBox(width: 24),
        CustomStatisticsCard(
          title: 'Variedad de productos',
          statistics: '235',
        ),
        SizedBox(width: 24),
        CustomStatisticsCard(
          title: 'Valor de inventario actual',
          statistics: '\$199,965.45 ',
        ),
      ],
    );
  }
}
