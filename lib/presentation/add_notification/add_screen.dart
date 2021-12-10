import 'package:firebase_tests/core/bloc/notification/notification_creation_bloc.dart';
import 'package:firebase_tests/presentation/utils/snackbar_presenter.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:intl/intl.dart';


class AddNotificationScreen extends StatefulWidget {
  const AddNotificationScreen({Key key}) : super(key: key);

  @override
  _AddNotificationScreenState createState() => _AddNotificationScreenState();
}

class _AddNotificationScreenState extends State<AddNotificationScreen> {
  GlobalKey<FormState> _formStateKey;
  GlobalKey<FormFieldState<String>> _titleKey;
  GlobalKey<FormFieldState<String>> _descriptionKey;
  GlobalKey<FormFieldState<DateTime>> _timeKey;
  final format = DateFormat("MM/dd/yyyy HH:mm");

  NotificationCreationBloc get _addBloc =>
      BlocProvider.of<NotificationCreationBloc>(context);

  @override
  void initState() {
    super.initState();
    _formStateKey = GlobalKey<FormState>();
    _titleKey = GlobalKey<FormFieldState<String>>();
    _descriptionKey = GlobalKey<FormFieldState<String>>();
    _timeKey = GlobalKey<FormFieldState<DateTime>>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "New notification",
        ),
      ),
      body: BlocConsumer<NotificationCreationBloc, NotificationCreationState>(
        listener: (context, state) => state.maybeMap(
          failure: (data) => SnackBarPresenter().showSnackbarWithMessage(
            context,
            message: data.errorMessage,
          ),
          orElse: () => null,
        ),
        builder: (context, state) => SingleChildScrollView(
          child: Form(
            key: _formStateKey,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    key: _titleKey,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Title',
                      hintText: 'Enter title',
                    ),
                    validator: MultiValidator(
                      [
                        RequiredValidator(
                          errorText: "Must be not empty",
                        ),
                        PatternValidator(
                          '[a-z]',
                          errorText: 'Use only english letters',
                        ),
                        MinLengthValidator(
                          2,
                          errorText: 'Min 2 characters',
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    key: _descriptionKey,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Description',
                      hintText: 'Enter description',
                    ),
                    validator: MultiValidator(
                      [
                        RequiredValidator(
                          errorText: "Must be not empty",
                        ),
                        PatternValidator(
                          '[a-z]',
                          errorText: 'Use only english letters',
                        ),
                        MinLengthValidator(
                          2,
                          errorText: 'Min 2 characters',
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: DateTimeField(
                    format: format,
                    key: _timeKey,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    onShowPicker: (context, currentValue) async {
                      final date = await showDatePicker(
                        context: context,
                        firstDate: DateTime(1900),
                        initialDate: currentValue ?? DateTime.now(),
                        lastDate: DateTime(2100),
                      );
                      if (date != null) {
                        final time = await showTimePicker(                          // ignore: use_build_context_synchronously
                        context: context,
                          initialTime: TimeOfDay.fromDateTime(
                            currentValue ?? DateTime.now(),
                          ),
                        );
                        return DateTimeField.combine(
                          date,
                          time,
                        );
                      } else {
                        return currentValue;
                      }
                    },
                    validator: (date) =>
                        date == null ? 'Date must be picked' : null,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: const Size(
                        double.infinity,
                        0,
                      ),
                    ),
                    onPressed: _onAddPressed,
                    child: state == const NotificationCreationState.loading()
                        ? const CircularProgressIndicator()
                        : const Text(
                            'Add',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onAddPressed() {
    if (_formStateKey.currentState?.validate() ?? false) {
      _addBloc.add(
        NotificationCreationEvent.notificationCreationEvent(
          title: _titleKey.currentState.value,
          description: _descriptionKey.currentState.value,
          time: _timeKey.currentState.value,
        ),
      );
    }
  }
}
