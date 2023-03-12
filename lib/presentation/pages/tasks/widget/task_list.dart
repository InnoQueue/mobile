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
  Widget build(BuildContext context) {
    return BlocProvider<CompletionBloc>(
      create: (context) => CompletionBloc(),
      child: BlocConsumer<CompletionBloc, CompletionState>(
        listener: (context, state) {
          _removeTasks(state.deletedTasks);
        },
        builder: (context, state) => AnimatedList(
          key: listKey,
          initialItemCount: _tasks.length,
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          itemBuilder: (context, index, animation) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: TaskItem(
              task: _tasks[index],
              selected: state.selectedTasks.contains(_tasks[index]),
              disappearing: state.disappearingTasks.contains(_tasks[index]),
            ),
          ),
        ),
      ),
    );
  }

  void _removeTasks(List<TaskModel> tasks) {
    for (final task in tasks) {
      _removeTask(task);
    }
  }

  void _removeTask(TaskModel task) {
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
}

class TaskItem extends StatefulWidget {
  final TaskModel task;
  final bool selected;
  final bool disappearing;
  const TaskItem({
    required this.task,
    required this.selected,
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
    return AnimatedOpacity(
      opacity: widget.disappearing ? 0 : 1,
      duration: widget.disappearing
          ? context.read<CompletionBloc>().disappearingDuration
          : Duration.zero,
      child: Container(
        height: 65,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Row(
          children: [
            SizedBox(
              width: 50,
              child:
                  widget.task.important ? const _ImportanceIndicator() : null,
            ),
            _Avatar(color: colors[widget.task.queueColor]!),
            const SizedBox(width: 20),
            _TaskName(widget.task.queueName),
            const Spacer(),
            CompleteButton(
              selected: widget.selected,
              task: widget.task,
            ),
            const SizedBox(width: 20),
          ],
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
    return Text(
      name,
      style: const TextStyle(
        fontSize: 16,
      ),
    );
  }
}

class CompleteButton extends StatelessWidget {
  final TaskModel task;
  final bool selected;
  const CompleteButton({
    super.key,
    required this.selected,
    required this.task,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<CompletionBloc>().add(
              selected
                  ? CompletionEvent.uncompleteTask(task)
                  : CompletionEvent.completeTask(task),
            );
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 23,
            width: 23,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
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
                borderRadius: BorderRadius.circular(4),
                color: Colors.orangeAccent.shade400,
              ),
            ),
        ],
      ),
    );
  }
}
