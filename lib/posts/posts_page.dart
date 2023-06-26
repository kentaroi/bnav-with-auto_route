import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bnav/data/app_data.dart';
import 'package:bnav/widgets.dart';
import 'package:bnav/routes/router.gr.dart';

@RoutePage(name: 'PostsRouter')
class PostsRouterPage extends AutoRouter {}

@RoutePage()
class PostsPage extends StatelessWidget {
  PostsPage({Key? key}) : super(key: key);
  final posts = Post.posts;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    for (int i = 0; i < posts.length; i++)
      PostTile(
        tileColor: posts[i].color,
        postTitle: posts[i].title,
        onTileTap: () => context.router.push(SinglePostRoute(
            postId: posts[i].id,
        )),
      ),
  ],
),
      ),
    );
  }
}
