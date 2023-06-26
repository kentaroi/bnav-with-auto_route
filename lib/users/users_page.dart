import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bnav/data/app_data.dart';
import 'package:bnav/widgets.dart';
import 'package:bnav/routes/router.gr.dart';

@RoutePage(name: 'UsersRouter')
class UsersRouterPage extends AutoRouter {}

@RoutePage()
class UsersPage extends StatelessWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final users = User.users;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < users.length; i++)
            UserAvatar(
              avatarColor: users[i].color,
              username: 'user${users[i].id}',
              onAvatarTap: () => context.router.push(
                UserProfileRoute(
                  userId: users[i].id,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
