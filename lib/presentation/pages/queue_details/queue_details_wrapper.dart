import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/data.dart';
import '../../presentation.dart';

class QueueDetailsWrapperPage extends StatelessWidget
    implements AutoRouteWrapper {
  final int id;
  final QueueInfo? queueInfo;
  const QueueDetailsWrapperPage({
    @PathParam('id') required this.id,
    this.queueInfo,
    super.key,
  });

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => QueueDetailsBloc(queueInfo)
        ..add(
          QueueDetailsEvent.fetchQueue(id),
        ),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const EmptyRouterScreen();
  }
}
