import 'package:fluent_ui/fluent_ui.dart';

class CustomFilterType extends StatelessWidget {
  final String title;
  final String? placeHolderOne;
  final ValueChanged<String>? onChangedOne;
  final String? placeHolderTwo;
  final ValueChanged<String>? onChangedTwo;

  const CustomFilterType({
    super.key,
    required this.title,
    this.placeHolderOne = '',
    this.onChangedOne,
    this.placeHolderTwo = '',
    this.onChangedTwo,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  width: 190,
                  child: TextBox(
                    placeholder: placeHolderOne,
                    onChanged: onChangedOne,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: SizedBox(
                  width: 190,
                  child: TextBox(
                    placeholder: placeHolderTwo,
                    onChanged: onChangedTwo,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
