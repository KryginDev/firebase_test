import 'package:auto_route/auto_route.dart';
import 'package:firebase_tests/core/bloc/registration/registration_bloc.dart';
import 'package:firebase_tests/presentation/routes/router.gr.dart';
import 'package:firebase_tests/presentation/utils/snackbar_presenter.dart';
import 'package:firebase_tests/presentation/widgets/text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_field_validator/form_field_validator.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  GlobalKey<FormState> formKey;
  GlobalKey<FormFieldState<String>> _emailKey;
  GlobalKey<FormFieldState<String>> _passwordKey;
  GlobalKey<FormFieldState<String>> _nameKey;
  GlobalKey<FormFieldState<String>> _surnameKey;

  @override
  void initState() {
    super.initState();
    formKey = GlobalKey<FormState>();
    _emailKey = GlobalKey<FormFieldState<String>>();
    _passwordKey = GlobalKey<FormFieldState<String>>();
    _nameKey = GlobalKey<FormFieldState<String>>();
    _surnameKey = GlobalKey<FormFieldState<String>>();
  }

  String password = '';
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return BlocConsumer<RegistrationBloc, RegistrationState>(
      listener: (context, state) => state.maybeMap(
        failure: (data) => SnackBarPresenter().showSnackbarWithMessage(
          context,
          message: data.errorMessage,
        ),
        loaded: (_) => ExtendedNavigator.root.push(Routes.loginScreen),
        orElse: () => null,
      ),
      builder: (context, state) => state.maybeMap(
        loading: (_) => _buildProgressIndicator(),
        orElse: () => _buildRegisterForm(),
      ),
    );
  }

  Widget _buildProgressIndicator() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildRegisterForm() {
    return Center(
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                TextInput(
                  child: _buildFirstNameField(),
                ),
                TextInput(
                  child: _buildLastNameField(),
                ),
                TextInput(
                  child: _buildEmailField(),
                ),
                TextInput(
                  child: _buildPasswordField(),
                ),
                TextInput(
                  child: _buildConfirmPasswordField(),
                ),
                TextInput(
                  child: _dateBirth(),
                ),
                _button(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFirstNameField() {
    return TextFormField(
      key: _nameKey,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'First name',
        hintText: 'Enter first name',
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
    );
  }

  Widget _buildLastNameField() {
    return TextFormField(
      key: _surnameKey,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Last name',
        hintText: 'Enter last name',
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
    );
  }

  Widget _buildEmailField() {
    return TextFormField(
      key: _emailKey,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Email',
        hintText: 'Enter valid email id as abc@gmail.com',
      ),
      validator: MultiValidator(
        [
          RequiredValidator(
            errorText: "* Required",
          ),
          EmailValidator(
            errorText: "Enter valid email id",
          ),
        ],
      ),
    );
  }

  Widget _buildPasswordField() {
    return TextFormField(
      key: _passwordKey,
      obscureText: true,
      onChanged: (val) => password = val,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Password',
        hintText: 'Enter secure password',
      ),
      validator: MultiValidator(
        [
          RequiredValidator(
            errorText: "* Required",
          ),
          MinLengthValidator(
            6,
            errorText: "Password should be at least 6 characters",
          ),
          MaxLengthValidator(
            15,
            errorText: "Password should not be greater than 15 characters",
          ),
        ],
      ),
    );
  }

  Widget _buildConfirmPasswordField() {
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Confirm password',
        hintText: 'Confirm password',
      ),
      validator: (val) => MatchValidator(
        errorText: 'passwords do not match',
      ).validateMatch(
        val,
        password,
      ),
    );
  }

  Widget _button() {
    return Container(
      height: 60,
      width: 260,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextButton(
        onPressed: () {    if (formKey.currentState.validate()) {
          BlocProvider.of<RegistrationBloc>(context).add(
            RegistrationEvent.createUser(
              email: _emailKey.currentState.value,
              password: _passwordKey.currentState.value,
              name: _nameKey.currentState.value,
              surname: _surnameKey.currentState.value,
            ),
          );
        }
        },
        child: const Text(
          'Register',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
    );
  }

  
  Widget _dateBirth() {
    return ElevatedButton(
      onPressed: () => _selectDate(context),
      child: const Text(
        'Select date',
      ),
    );
  }

}
