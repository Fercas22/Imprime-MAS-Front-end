import 'package:fluent_ui/fluent_ui.dart';

class CustomerView extends StatefulWidget {
  const CustomerView({super.key});

  @override
  State<CustomerView> createState() => _CustomerViewState();
}

class _CustomerViewState extends State<CustomerView> {

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: const PageHeader(
        title: Text('Clientes'),
      ),
      content: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Table(
            border: TableBorder.all(),
            children: const [
              TableRow(
                children: [
                  TableCell(child: Center(child: Text('Celda 1'))),
                  TableCell(child: Center(child: Text('Celda 2'))),
                  TableCell(child: Center(child: Text('Celda 3'))),
                ],
              ),
              TableRow(
                children: [
                  TableCell(child: Center(child: Text('Celda 4'))),
                  TableCell(child: Center(child: Text('Celda 5'))),
                  TableCell(child: Center(child: Text('Celda 6'))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
