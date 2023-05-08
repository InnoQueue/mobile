import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/domain.dart';
import '../../../presentation.dart';

class TaskList extends StatefulWidget {
  final List<TaskModel> tasks;
  const TaskList({
    super.key,
    required this.tasks,
  });

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  late final List<TaskModel> _tasks = widget.tasks.toList();

  @override
  void didUpdateWidget(covariant TaskList oldWidget) {
    super.didUpdateWidget(oldWidget);

    final List<TaskModel> removedTasks =
        _tasks.toSet().difference(widget.tasks.toSet()).toList();

    _completeTasks(removedTasks);

    final List<TaskModel> newTasks =
        widget.tasks.toSet().difference(oldWidget.tasks.toSet()).toList();

    final List<TaskModel> tasksToAdd =
        newTasks.toSet().difference(_tasks.toSet()).toList();

    int lengthBeforeAdding = _tasks.length;
    _tasks.addAll(tasksToAdd);

    for (int i = 0; i < tasksToAdd.length; i++) {
      listKey.currentState?.insertItem(lengthBeforeAdding + i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CompletionBloc(),
      child: BlocConsumer<CompletionBloc, CompletionState>(
        listener: (context, state) {
          _completeTasks(state.deletedTasks);
          _skipTask(state.skippedTask);
        },
        builder: (context, state) => AnimatedList(
          key: listKey,
          initialItemCount: _tasks.length,
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          itemBuilder: (context, index, animation) => TaskItem(
            task: _tasks[index],
            isTappedToComplete: state.selectedTasks.contains(_tasks[index]),
            disappearing: state.disappearingTasks.contains(_tasks[index]),
          ),
        ),
      ),
    );
  }

  void _completeTasks(List<TaskModel> tasks) {
    for (final task in tasks) {
      _completeTask(task);
    }
  }

  void _completeTask(TaskModel task) {
    var index = _tasks.indexOf(task);

    if (index != -1) {
      listKey.currentState?.removeItem(
        _tasks.indexOf(task),
        (_, animation) => SizeTransition(
          axis: Axis.vertical,
          sizeFactor: animation,
          child: const SizedBox(height: 65),
        ),
        duration: const Duration(milliseconds: 200),
      );
    }

    _tasks.remove(task);
  }

  void _skipTask(TaskModel? task) {
    if (task == null) return;
    var index = _tasks.indexOf(task);

    if (index != -1) {
      listKey.currentState?.removeItem(
        _tasks.indexOf(task),
        (_, animation) => const SizedBox(),
        duration: Duration.zero,
      );
    }

    _tasks.remove(task);
  }
}

class TaskItem extends StatefulWidget {
  final TaskModel task;
  final bool isTappedToComplete;
  final bool disappearing;

  const TaskItem({
    required this.task,
    required this.isTappedToComplete,
    required this.disappearing,
    super.key,
  });

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  @override
  void didUpdateWidget(covariant TaskItem oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (!oldWidget.disappearing && widget.disappearing) {}
  }

  @override
  Widget build(BuildContext context) {
    final bool isAnythingSelected =
        context.watch<SelectionBloc>().selectedIds.isNotEmpty;

    return AnimatedOpacity(
      opacity: widget.disappearing ? 0 : 1,
      duration: widget.disappearing
          ? context.read<CompletionBloc>().disappearingDuration
          : Duration.zero,
<<<<<<< HEAD
      child: Container(
        height: 65,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: context.watch<AppThemeCubit>().state.themeData.cardColor,
        ),
        child: Row(
          children: [
            SizedBox(
              width: 50,
              child:
                  widget.task.important ? const _ImportanceIndicator() : null,
=======
      child: SelectableItemBackground(
        id: widget.task.queueId,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CustomDismissible(
            key: Key(
              'dissmisible_task_${widget.task.hashCode.toString()}',
>>>>>>> 6a8f470 (Add selection (#58))
            ),
            dismissibleKey: Key(
              'task_${widget.task.hashCode.toString()}',
            ),
            onDismissed: () {
              context
                  .read<CompletionBloc>()
                  .add(CompletionEvent.skipTask(widget.task));
            },
            backgroundColor: Colors.deepOrange.shade300,
            icon: Icons.autorenew,
            isSelectionEnabled: isAnythingSelected,
            child: SelectableItemContent(
              id: widget.task.queueId,
              child: Row(
                children: [
                  SizedBox(
                    width: 50,
                    child: widget.task.important
                        ? const _ImportanceIndicator()
                        : null,
                  ),
                  _Avatar(color: colors[widget.task.queueColor]!),
                  const SizedBox(width: 20),
                  _TaskName(widget.task.queueName),
                  const Spacer(),
                  CompleteButton(
                    isTappedToComplete: widget.isTappedToComplete,
                    task: widget.task,
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ImportanceIndicator extends StatelessWidget {
  const _ImportanceIndicator();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 7,
        width: 7,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red,
        ),
      ),
    );
  }
}

class _Avatar extends StatelessWidget {
  final Color color;
  const _Avatar({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}

class _TaskName extends StatelessWidget {
  final String name;
  const _TaskName(this.name);

  @override
  Widget build(BuildContext context) {
    return QueueTitle(
      queueName: name,
      fontSize: 16,
    );
  }
}

class CompleteButton extends StatelessWidget {
  final TaskModel task;
  final bool isTappedToComplete;
  const CompleteButton({
    super.key,
    required this.isTappedToComplete,
    required this.task,
  });

  @override
  Widget build(BuildContext context) {
    final bool isAnythingSelected =
        context.watch<SelectionBloc>().selectedIds.isNotEmpty;

    return GestureDetector(
      onTap: () {
        if (isAnythingSelected) return;

        context.read<CompletionBloc>().add(
              isTappedToComplete
                  ? CompletionEvent.uncompleteTask(task)
                  : CompletionEvent.completeTask(task),
            );
      },
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 300),
        opacity: isAnythingSelected ? 0 : 1,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 23,
              width: 23,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: isTappedToComplete
                      ? Colors.orangeAccent.shade400
                      : Colors.grey.shade300,
                  width: 2,
                ),
              ),
            ),
            if (isTappedToComplete)
              Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.orangeAccent.shade400,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
