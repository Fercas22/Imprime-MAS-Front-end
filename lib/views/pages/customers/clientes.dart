import 'package:auto_route/auto_route.dart';
import 'package:fluent_ui/fluent_ui.dart';

@RoutePage()
class Clintes extends StatelessWidget {
  const Clintes({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScaffoldPage(
      header: PageHeader(
        title: Text('Cerrar sesion'),
      ),
      content: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 15),
            SizedBox(
              width: 250,
              child: TextBox(
                placeholder: 'Ingresa tu nombre',
              ),
            ),
            SizedBox(height: 15),
            CustomButton()
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Button(
      child: const Text('Abrir modal de prueba'),
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return ContentDialog(
              title: const Text('Primera modal de prueba'),
              content: const Text('Contenido de toda nuestra modal'),
              actions: [
                Button(
                  child: const Text('Cancelar'),
                  onPressed: () => Navigator.pop(context),
                ),
                Button(
                  child: const Text('Ok'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
