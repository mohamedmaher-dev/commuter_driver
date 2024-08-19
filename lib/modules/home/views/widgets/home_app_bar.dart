part of '../home_view.dart';

class _HomeAppBar extends StatelessWidget implements PreferredSize {
  const _HomeAppBar();

  @override
  Widget build(BuildContext context) {
    final homeBloc = BlocProvider.of<HomeBloc>(context);
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return AppBar(
          forceMaterialTransparency: true,
          leading: Icon(
            color: ColorManger.primary,
            homeBloc.currentPage == 0
                ? Icons.route_rounded
                : homeBloc.currentPage == 1
                    ? Icons.calendar_month_rounded
                    : homeBloc.currentPage == 2
                        ? Icons.group
                        : Icons.close,
          ),
          title: Text(
            style: TextStyles.tsP12B,
            homeBloc.currentPage == 0
                ? 'Commuter Profile'
                : homeBloc.currentPage == 1
                    ? 'My Scheduled Trips'
                    : homeBloc.currentPage == 2
                        ? 'My Requests'
                        : 'Unknown',
          ),
          actions: [
            badges.Badge(
              position: badges.BadgePosition.topStart(),
              badgeAnimation: const badges.BadgeAnimation.scale(),
              badgeContent: const Text('2'),
              child: IconButton.outlined(
                onPressed: () {
                  AppRouter.push(context: context, page: Pages.chats);
                },
                icon: Icon(
                  CupertinoIcons.chat_bubble_text_fill,
                  color: ColorManger.primary,
                ),
              ),
            ),
            badges.Badge(
              position: badges.BadgePosition.topStart(),
              badgeAnimation: const badges.BadgeAnimation.scale(),
              badgeContent: const Text('5'),
              child: IconButton.outlined(
                onPressed: () {
                  AppRouter.push(context: context, page: Pages.notifi);
                },
                icon: Icon(
                  CupertinoIcons.bell_solid,
                  color: ColorManger.primary,
                ),
              ),
            ),
            IconButton.outlined(
              onPressed: () {
                AppRouter.push(context: context, page: Pages.profile);
              },
              icon: Hero(
                tag: 'TAG-1',
                child: Icon(
                  CupertinoIcons.profile_circled,
                  color: ColorManger.primary,
                ),
              ),
            ),
            IconButton.outlined(
              onPressed: () {
                AppRouter.pushReplacement(
                    context: context, page: Pages.settings);
              },
              icon: Icon(
                Icons.settings,
                color: ColorManger.primary,
              ),
            ),
            SizedBox(width: 10.w),
          ],
        );
      },
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => Size(double.maxFinite, 35.h);
}
