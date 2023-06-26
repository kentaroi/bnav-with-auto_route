// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:bnav/home_page.dart' as _i6;
import 'package:bnav/posts/posts_page.dart' as _i2;
import 'package:bnav/posts/single_post_page.dart' as _i3;
import 'package:bnav/settings/settings_page.dart' as _i1;
import 'package:bnav/users/user_profile_page.dart' as _i4;
import 'package:bnav/users/users_page.dart' as _i5;
import 'package:flutter/material.dart' as _i8;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SettingsRouter.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.SettingsPage(),
      );
    },
    PostsRouter.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.PostsRouterPage(),
      );
    },
    PostsRoute.name: (routeData) {
      final args = routeData.argsAs<PostsRouteArgs>(
          orElse: () => const PostsRouteArgs());
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.PostsPage(key: args.key),
      );
    },
    SinglePostRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<SinglePostRouteArgs>(
          orElse: () =>
              SinglePostRouteArgs(postId: pathParams.getInt('postId')));
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.SinglePostPage(
          key: args.key,
          postId: args.postId,
        ),
      );
    },
    UserProfileRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<UserProfileRouteArgs>(
          orElse: () =>
              UserProfileRouteArgs(userId: pathParams.getInt('userId')));
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.UserProfilePage(
          key: args.key,
          userId: args.userId,
        ),
      );
    },
    UsersRouter.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.UsersRouterPage(),
      );
    },
    UsersRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.UsersPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.SettingsPage]
class SettingsRouter extends _i7.PageRouteInfo<void> {
  const SettingsRouter({List<_i7.PageRouteInfo>? children})
      : super(
          SettingsRouter.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRouter';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.PostsRouterPage]
class PostsRouter extends _i7.PageRouteInfo<void> {
  const PostsRouter({List<_i7.PageRouteInfo>? children})
      : super(
          PostsRouter.name,
          initialChildren: children,
        );

  static const String name = 'PostsRouter';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.PostsPage]
class PostsRoute extends _i7.PageRouteInfo<PostsRouteArgs> {
  PostsRoute({
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          PostsRoute.name,
          args: PostsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'PostsRoute';

  static const _i7.PageInfo<PostsRouteArgs> page =
      _i7.PageInfo<PostsRouteArgs>(name);
}

class PostsRouteArgs {
  const PostsRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'PostsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.SinglePostPage]
class SinglePostRoute extends _i7.PageRouteInfo<SinglePostRouteArgs> {
  SinglePostRoute({
    _i8.Key? key,
    required int postId,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          SinglePostRoute.name,
          args: SinglePostRouteArgs(
            key: key,
            postId: postId,
          ),
          rawPathParams: {'postId': postId},
          initialChildren: children,
        );

  static const String name = 'SinglePostRoute';

  static const _i7.PageInfo<SinglePostRouteArgs> page =
      _i7.PageInfo<SinglePostRouteArgs>(name);
}

class SinglePostRouteArgs {
  const SinglePostRouteArgs({
    this.key,
    required this.postId,
  });

  final _i8.Key? key;

  final int postId;

  @override
  String toString() {
    return 'SinglePostRouteArgs{key: $key, postId: $postId}';
  }
}

/// generated route for
/// [_i4.UserProfilePage]
class UserProfileRoute extends _i7.PageRouteInfo<UserProfileRouteArgs> {
  UserProfileRoute({
    _i8.Key? key,
    required int userId,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          UserProfileRoute.name,
          args: UserProfileRouteArgs(
            key: key,
            userId: userId,
          ),
          rawPathParams: {'userId': userId},
          initialChildren: children,
        );

  static const String name = 'UserProfileRoute';

  static const _i7.PageInfo<UserProfileRouteArgs> page =
      _i7.PageInfo<UserProfileRouteArgs>(name);
}

class UserProfileRouteArgs {
  const UserProfileRouteArgs({
    this.key,
    required this.userId,
  });

  final _i8.Key? key;

  final int userId;

  @override
  String toString() {
    return 'UserProfileRouteArgs{key: $key, userId: $userId}';
  }
}

/// generated route for
/// [_i5.UsersRouterPage]
class UsersRouter extends _i7.PageRouteInfo<void> {
  const UsersRouter({List<_i7.PageRouteInfo>? children})
      : super(
          UsersRouter.name,
          initialChildren: children,
        );

  static const String name = 'UsersRouter';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.UsersPage]
class UsersRoute extends _i7.PageRouteInfo<void> {
  const UsersRoute({List<_i7.PageRouteInfo>? children})
      : super(
          UsersRoute.name,
          initialChildren: children,
        );

  static const String name = 'UsersRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
