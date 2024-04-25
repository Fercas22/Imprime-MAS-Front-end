import 'package:fluent_ui/fluent_ui.dart';

class CustomAppBar {
  NavigationAppBar navigationAppBar(BuildContext context, DateTime dateTime) {
    return NavigationAppBar(
      automaticallyImplyLeading: false,
      actions: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _clock(dateTime),
            const SizedBox(width: 16),
            _exitPanel(context),
          ],
        ),
      ),
    );
  }

  Container _clock(DateTime dateTime) {
    final String hour = dateTime.hour.toString().padLeft(2, '0');
    final String minutes = dateTime.minute.toString().padLeft(2, '0');
    final String seconds = dateTime.second.toString().padLeft(2, '0');

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 11),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFFD9D9D9),
      ),
      child: Row(
        children: [
          _circle(),
          const SizedBox(width: 16),
          _clockTime(hour, minutes, seconds),
        ],
      ),
    );
  }

  Container _circle() {
    return Container(
      width: 21,
      height: 21,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFB3B3B3),
      ),
    );
  }

  Text _clockTime(String hour, String minutes, String seconds) {
    return Text(
      '$hour : $minutes : $seconds',
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  GestureDetector _exitPanel(BuildContext context) {
    return GestureDetector(
      child: Row(
        children: [
          Container(
            width: 21,
            height: 21,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFFFFFFF),
            ),
          ),
          const SizedBox(width: 6),
          const Text('Salir del panel'),
        ],
      ),
      onTap: () => _showExitDialog(context),
    );
  }

  Future<Object?> _showExitDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return ContentDialog(
          title: const Text('¿Seguro que desea salir del panel?'),
          content: _bodyDialog(),
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
  }

  Column _bodyDialog() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.network(
          'https://w7.pngwing.com/pngs/965/683/png-transparent-close-delete-deny-no-out-sign-out-x-ui-navigation-icon-thumbnail.png',
        ),
        const SizedBox(height: 10),
        const Text(
          'Esta a punto de salir del panel, si no ha giardado sus cambios es recomendable que lo hag antes de salir del panel',
        ),
      ],
    );
  }
}
