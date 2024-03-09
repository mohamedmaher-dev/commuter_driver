part of '../requests_view.dart';

class _ActionBTNS extends StatelessWidget {
  const _ActionBTNS({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          style: const ButtonStyle(
            foregroundColor: MaterialStatePropertyAll(
              Colors.green,
            ),
          ),
          onPressed: () {},
          child: const Text(
            'قبول الكل',
          ),
        ),
        SizedBox(width: 10.w),
        ElevatedButton(
          style: const ButtonStyle(
            foregroundColor: MaterialStatePropertyAll(
              Colors.red,
            ),
          ),
          onPressed: () {},
          child: const Text(
            'رفض الكل',
          ),
        ),
        const Spacer(),
        IconButton.filled(
          onPressed: () {},
          icon: const Icon(
            Icons.tune_rounded,
          ),
        ),
        IconButton.filled(
          onPressed: () {},
          icon: const Icon(
            Icons.sort_rounded,
          ),
        )
      ],
    );
  }
}
