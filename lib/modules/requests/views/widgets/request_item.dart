part of '../requests_view.dart';

class _RequestItem extends StatelessWidget {
  const _RequestItem({required this.msg});
  final String msg;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
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
                    'قبول',
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
                    'رفض',
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
              label: const Text('مراسلة'),
            ),
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
