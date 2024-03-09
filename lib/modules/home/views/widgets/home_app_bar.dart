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
            homeBloc.currentPage == 0
                ? Icons.route_rounded
                : homeBloc.currentPage == 1
                    ? Icons.calendar_month_rounded
                    : homeBloc.currentPage == 2
                        ? Icons.group
                        : Icons.close,
          ),
          title: Text(
            homeBloc.currentPage == 0
                ? 'ملف التنقل'
                : homeBloc.currentPage == 1
                    ? 'رحلاتي المجدولة'
                    : homeBloc.currentPage == 2
                        ? 'طلباتي'
                        : 'غير معروف',
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
                icon: const Icon(CupertinoIcons.chat_bubble_text_fill),
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
                icon: const Icon(CupertinoIcons.bell_solid),
              ),
            ),
            IconButton.outlined(
              onPressed: () {
                AppRouter.push(context: context, page: Pages.profile);
              },
              icon: const Hero(
                tag: 'TAG-1',
                child: Icon(CupertinoIcons.profile_circled),
              ),
            ),
            IconButton.outlined(
              onPressed: () {
                AppRouter.pushReplacement(
                    context: context, page: Pages.settings);
              },
              icon: const Icon(
                Icons.settings,
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
