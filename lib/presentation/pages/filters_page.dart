import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:innoq/application/application.dart';

import '../../domain/domain.dart';
import '../presentation.dart';

class FiltersPage extends StatefulWidget {
  const FiltersPage({super.key});

  @override
  State<FiltersPage> createState() => _FiltersPageState();
}

class _FiltersPageState extends State<FiltersPage> {
  var currentSort = getIt.get<SettingsRepository>().getPrefferedSort();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: MediaQuery.of(context).viewInsets.add(
            const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
          ),
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          const Text(
            'Sort',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          ...SortEnum.values
              .map((e) => SizedBox(
                    height: 50,
                    child: Row(
                      children: [
                        Text(
                          e.presentationName,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        const Spacer(),
                        _SelectionButton(
                          selected: currentSort == e,
                          onTap: () async {
                            currentSort = e;
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                  ))
              .toList(),
          const SizedBox(height: 10),
          CustomButton(
            onPressed: () async {
              context.router.pop();
              await getIt
                  .get<SettingsRepository>()
                  .setPrefferedSort(currentSort);
              getIt.get<QueuesBloc>().add(const QueuesEvent.loadData());
            },
            backgroundColor: Colors.grey.shade900,
            text: 'Apply sorting',
          ),
        ],
      ),
    );
  }
}

class _SelectionButton extends StatelessWidget {
  final void Function() onTap;
  final bool selected;
  const _SelectionButton({
    required this.onTap,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 23,
            width: 23,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: selected
                    ? Colors.orangeAccent.shade400
                    : Colors.grey.shade300,
                width: 2,
              ),
            ),
          ),
          if (selected)
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.orangeAccent.shade400,
              ),
            ),
        ],
      ),
    );
  }
}
