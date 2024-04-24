import 'dart:async';

import 'package:imprime_mas/presentacion/home/widgets/custom_app_bar.dart';
import 'package:imprime_mas/screens/clientes.dart';
import 'package:imprime_mas/screens/dashboard.dart';
import 'package:fluent_ui/fluent_ui.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;
  late Timer _timer;
  DateTime dateTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        dateTime = DateTime.now();
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  List<NavigationPaneItem> items = [
    PaneItem(
      icon: const Icon(FluentIcons.home),
      title: const Text('Home'),
      body: const Dashboard(),
    ),
    PaneItemSeparator(),
    PaneItem(
      icon: const Icon(FluentIcons.issue_tracking),
      title: const Text('Track orders'),
      infoBadge: const InfoBadge(source: Text('8')),
      body: const Dashboard(),
      // body: const Dashboard(
      //   header: 'Badging',
      //   content: Text(
      //     'Badging is a non-intrusive and intuitive way to display '
      //     'notifications or bring focus to an area within an app - '
      //     'whether that be for notifications, indicating new content, '
      //     'or showing an alert. An InfoBadge is a small piece of UI '
      //     'that can be added into an app and customized to display a '
      //     'number, icon, or a simple dot.',
      //   ),
      // ),
    ),
    PaneItem(
      icon: const Icon(FluentIcons.disable_updates),
      title: const Text('Disabled Item'),
      body: const Dashboard(),
      enabled: false,
    ),
    PaneItemExpander(
      icon: const Icon(FluentIcons.account_management),
      title: const Text('Account'),
      body: const Dashboard(),
      // body: const Dashboard(
      //   header: 'PaneItemExpander',
      //   content: Text(
      //     'Some apps may have a more complex hierarchical structure '
      //     'that requires more than just a flat list of navigation '
      //     'items. You may want to use top-level navigation items to '
      //     'display categories of pages, with children items displaying '
      //     'specific pages. It is also useful if you have hub-style '
      //     'pages that only link to other pages. For these kinds of '
      //     'cases, you should create a hierarchical NavigationView.',
      //   ),
      // ),
      items: [
        PaneItemHeader(header: const Text('Apps')),
        PaneItem(
          icon: const Icon(FluentIcons.mail),
          title: const Text('Mail'),
          body: const Dashboard(),
        ),
        PaneItem(
          icon: const Icon(FluentIcons.calendar),
          title: const Text('Calendar'),
          body: const Dashboard(),
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      appBar: CustomAppBar().navigationAppBar(context, dateTime),
      pane: NavigationPane(
        selected: _currentIndex,
        onChanged: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        displayMode: PaneDisplayMode.top,
        items: items,
        footerItems: [
          PaneItem(
            icon: const Icon(FluentIcons.settings),
            title: const Text('Settings'),
            body: const Clintes(),
          ),
          PaneItemAction(
              icon: const Icon(FluentIcons.remove_content),
              title: const Text('Remove Last Item'),
              onTap: () {
                items.removeLast();
                setState(() {});
              }),
          PaneItemAction(
            icon: const Icon(FluentIcons.add),
            title: const Text('Add New Item'),
            onTap: () {
              // Your Logic to Add New `NavigationPaneItem`
              items.add(
                PaneItem(
                  icon: const Icon(FluentIcons.new_folder),
                  title: const Text('New Item'),
                  body: const Center(
                    child: Text(
                      'This is a newly added Item',
                    ),
                  ),
                ),
              );
              setState(() {});
            },
          ),
        ],
        // size: const NavigationPaneSize(openWidth: 78),
      ),
      // content: NavigationBar(
      //   selectedIndex: _currentIndex,
      //   destinations: const [
      //     Dashboard(),
      //     Clintes(),
      //   ],
      // ),
    );
  }

  
}
