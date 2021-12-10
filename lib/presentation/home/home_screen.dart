import 'package:auto_route/auto_route.dart';
import 'package:firebase_tests/core/bloc/home/home_bloc.dart';
import 'package:firebase_tests/core/domain/models/notification/notification.dart';
import 'package:firebase_tests/core/domain/service_locator/injection.dart';
import 'package:firebase_tests/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To do list'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add,
              size: 29,
            ),
            onPressed: () {
              ExtendedNavigator.root.push(Routes.addNotificationScreen);
            },
          )
        ],
      ),
      body: BlocProvider<HomeBloc>(
        create: (BuildContext context) => getIt<HomeBloc>()
          ..add(
            const HomeEvent.watchNotifications(),
          )
          ..add(
            const HomeEvent.requestPermission(),
          ),
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() => BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) => state.maybeMap(orElse: () => null),
        builder: (context, state) => state.maybeMap(
          initial: (_) => Container(),
          loading: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (data) => NotificationsList(
            notifications: data.notifications,
          ),
          orElse: () => Container(),
        ),
      );
}

class NotificationsList extends StatelessWidget {
  final List<NotificationModel> notifications;

  const NotificationsList({Key key, this.notifications}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (notifications?.isEmpty ?? false) {
      return const Center(
        child: Text(
          'Nothing to show',
        ),
      );
    } else {
      return ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) => NotificationTile(
          model: notifications.elementAt(index),
        ),
      );
    }
  }
}

class NotificationTile extends StatelessWidget {
  final NotificationModel model;

  const NotificationTile({this.model});

  @override
  Widget build(BuildContext context) {
    if (model != null) {
      final formatter = DateFormat('MM/dd HH:mm');

      final formattedDate = formatter.format(
        model.time,
      );
      return Card(
        child: ListTile(
          title: Text(model.title),
          subtitle: Text(model.description),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(formattedDate),
              Flexible(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(
                      child: IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () => null,
                      ),
                    ),
                    Flexible(
                      child: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () => null,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Container();
    }
  }
}
