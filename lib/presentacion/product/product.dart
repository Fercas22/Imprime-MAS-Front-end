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
        icon: const Icon(
          FluentIcons.product_release,
          size: 20,
        ),
        text: const Text(
          'Productos',
          style: TextStyle(
            fontFamily: 'Microsoft Sans Serif',
            fontSize: 16,
            color: Color(0xFFFFFFFF),
          ),
        ),
        body: const ContentTab()),
    Tab(
      icon: const Icon(
        FluentIcons.page_arrow_right,
        size: 20,
      ),
      text: const Text(
        'Movimientos',
        style: TextStyle(
          fontFamily: 'Microsoft Sans Serif',
          fontSize: 16,
          color: Color(0xFFFFFFFF),
        ),
      ),
      body: Container(
        color:
            Colors.accentColors[Random().nextInt(Colors.accentColors.length)],
        child: const Center(
          child: Text('Content of Tab 2'),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: const PageHeader(
        title: Text(
          'Productos e Inventario',
          style: TextStyle(
            fontFamily: 'Microsoft Tai Le',
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
      content: Padding(
        padding: const EdgeInsets.only(
          left: 25,
          right: 25,
          bottom: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _infoCard(),
            const SizedBox(height: 15),
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
          title: 'Categoría de productos',
          statistics: '754',
        ),
        SizedBox(width: 24),
        CustomStatisticsCard(
          title: 'Variedad de productos',
          statistics: '234',
        ),
        SizedBox(width: 24),
        CustomStatisticsCard(
          title: 'Valor del inventario actual',
          statisticColor: Color(0xFF218052),
          statistics: '\$199,434.00',
        ),
        SizedBox(width: 24),
        CustomStatisticsCard(
          title: 'Valor del inventario en venta',
          statisticColor: Color(0xFF218052),
          statistics: '\$235,043.00',
        ),
        // SizedBox(width: 24),
        // CustomStatisticsCard(
        //   title: 'Prueba Clientes',
        //   subtitle: 'Fernando Miguel Espinosa Trujillo',
        //   statisticColor: Color(0xFF218052),
        //   statistics: '\$235,043.00',
        // ),
      ],
    );
  }
}
