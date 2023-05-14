import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../application/application.dart';
import '../../domain/domain.dart';
import '../presentation.dart';

class FiltersPage extends StatefulWidget {
  const FiltersPage({super.key});

  @override
  State<FiltersPage> createState() => _FiltersPageState();
}

class _FiltersPageState extends State<FiltersPage> {
  var currentSort = getIt.get<SettingsRepository>().getPrefferedSort();

  int? get selectedIndex =>
      currentSort == null ? null : SortEnum.values.indexOf(currentSort!);

  @override
  Widget build(BuildContext context) {
    return SelectionList(
      title: S.of(context).sort,
      selectedIndex: selectedIndex,
      nameBuilder: (index) {
        switch (SortEnum.values[index]) {
          case SortEnum.byQueueName:
            return S.of(context).byQueueName;
          case SortEnum.byParticipantName:
            return S.of(context).byParticipantName;
          case SortEnum.byDateJoined:
            return S.of(context).byDateJoined;
          case SortEnum.byDueDate:
            return S.of(context).byDueDate;
          default:
            throw UnimplementedError();
        }
      },
      onTap: (index) {
        currentSort = SortEnum.values[index];
        setState(() {});
      },
      length: SortEnum.values.length,
      applyButtonPresent: true,
      onApplyButtonPressed: () async {
        context.router.pop();
        await getIt.get<SettingsRepository>().setPrefferedSort(currentSort);
        getIt.get<QueuesBloc>().add(const QueuesEvent.loadData());
        getIt
            .get<AnalyticsRepository>()
            .logSortSettingsSaved(preferredSort: currentSort);
      },
    );
  }
}
