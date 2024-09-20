import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:imprime_mas/views/widgets/custom_header.dart';
import 'package:imprime_mas/views/pages/products_inventory/widgets/content_tab.dart';
import 'package:imprime_mas/views/widgets/custom_statistics_card.dart';
// import 'package:imprime_mas/theme/app_theme.dart';

@RoutePage()
class ProductsInventory extends StatefulWidget {
  const ProductsInventory({super.key});

  @override
  State<ProductsInventory> createState() => _ProductsInventoryState();
}

class _ProductsInventoryState extends State<ProductsInventory> {
  int currentIndex = 0;
  List<Tab> tabs = [
    Tab(
      icon: const Icon(
        FluentIcons.product_release,
        size: 20,
      ),
      text: const Text(
        'Productos',
        // style: ThemeClass.lightTheme.typography.body,
      ),
      body: const ContentTab(),
    ),
    Tab(
      icon: const Icon(
        FluentIcons.page_arrow_right,
        size: 20,
      ),
      text: const Text(
        'Movimientos',
        // style: ThemeClass.lightTheme.typography.body,
      ),
      body: Container(
        color:
            Colors.accentColors[Random().nextInt(Colors.accentColors.length)],
        child: const Center(
          child: Text('Contenido del panel de movimientos'),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: const CustomHeader(
        title: 'Productos e Inventario',
      ),
      content: Container(
        color: const Color(0xFF242424),
        child: Padding(
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
      ),
    );
  }

  Row _infoCard() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
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
