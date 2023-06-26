import 'package:auto_route/auto_route.dart';
import 'package:bnav/home_page.dart';
import 'package:bnav/posts/posts_page.dart';
import 'package:bnav/posts/single_post_page.dart';
import 'package:bnav/users/users_page.dart';
import 'package:bnav/users/user_profile_page.dart';
import 'package:bnav/settings/settings_page.dart';

import 'package:bnav/routes/router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      path: '/',
      page: HomeRoute.page,
      children: [
        AutoRoute(
          path: 'posts',
          page: PostsRouter.page,
          children: [
            AutoRoute(
              path: '',
              page: PostsRoute.page,
            ),
            AutoRoute(
              path: ':postId',
              page: SinglePostRoute.page,
            ),
          ]
        ),
        AutoRoute(
          path: 'users',
          page: UsersRouter.page,
          children: [
            AutoRoute(
              path: '',
              page: UsersRoute.page,
            ),
            AutoRoute(
              path: 'userId',
              page: UserProfileRoute.page,
            ),
          ],
        ),
        AutoRoute(
          path: 'settings',
          page: SettingsRouter.page,
        ),
      ]
    ),
  ];
}
