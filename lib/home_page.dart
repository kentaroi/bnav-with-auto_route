import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:bnav/routes/router.gr.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (_, tabsRouter) => AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('FlutterBottomNav'),
        centerTitle: true,
        leading: const AutoLeadingButton(),
      ),
      backgroundColor: Colors.indigo,
      routes: const [
        PostsRouter(),
        UsersRouter(),
        SettingsRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return SalomonBottomBar(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 40,
          ),
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            SalomonBottomBarItem(
              selectedColor: Colors.amberAccent,
              icon: const Icon(
                Icons.post_add,
                size: 30
              ),
              title: const Text('Posts'),
            ),
            SalomonBottomBarItem(
              selectedColor: Colors.blue[200],
              icon: const Icon(
                Icons.person,
                size: 30
              ),
              title: const Text('Users'),
            ),
            SalomonBottomBarItem(
              selectedColor: Colors.pinkAccent[100],
              icon: const Icon(
                Icons.settings,
                size: 30
              ),
              title: const Text('Settings'),
            ),
          ],
        );
      },
    );
  }
}
