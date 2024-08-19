part of '../requests_view.dart';

class _RequestItem extends StatelessWidget {
  const _RequestItem({required this.msg, required this.name});
  final String msg;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              CupertinoIcons.person_fill,
              color: ColorManger.primary,
            ),
            title: Text(
              name,
              style: TextStyles.tsP12B,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.w),
            child: Text(
              msg,
              style: TextStyles.tsP12B,
            ),
          ),
          Divider(
            indent: 10.w,
            endIndent: 10.w,
          ),
          Row(
            children: [
              SizedBox(width: 10.w),
              Expanded(
                child: ElevatedButton.icon(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.green,
                    ),
                    foregroundColor: MaterialStatePropertyAll(
                      Colors.white,
                    ),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.done),
                  label: const Text(
                    'Accept',
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: ElevatedButton.icon(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.red,
                    ),
                    foregroundColor: MaterialStatePropertyAll(
                      Colors.white,
                    ),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.close),
                  label: const Text(
                    'Reject',
                  ),
                ),
              ),
              SizedBox(width: 10.w),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10.w),
            child: OutlinedButton.icon(
              style: ButtonStyle(
                minimumSize: MaterialStatePropertyAll(
                  Size(
                    double.infinity,
                    35.h,
                  ),
                ),
              ),
              onPressed: () {},
              icon: const Icon(CupertinoIcons.chat_bubble_2_fill),
              label: const Text('Chat'),
            ),
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
