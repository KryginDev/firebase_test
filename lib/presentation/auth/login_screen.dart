import 'package:auto_route/auto_route.dart';
import 'package:firebase_tests/core/bloc/login/login_bloc.dart';
import 'package:firebase_tests/presentation/routes/router.gr.dart';
import 'package:firebase_tests/presentation/utils/snackbar_presenter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formKey;
  GlobalKey<FormFieldState<String>> _emailKey;
  GlobalKey<FormFieldState<String>> _passwordKey;
  @override
  void initState() {
    super.initState();
    formKey = GlobalKey<FormState>();
    _emailKey = GlobalKey<FormFieldState<String>>();
    _passwordKey = GlobalKey<FormFieldState<String>>();
  }

  String validatePassword(String value) {
    if (value.isEmpty) {
      return "* Required";
    } else if (value.length < 6) {
      return "Password should be at least 6 characters";
    } else if (value.length > 15) {
      return "Password should not be greater than 15 characters";
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Login Page",
        ),
        automaticallyImplyLeading: false,
      ),
      body: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          state.maybeMap(
            failure: (data) => SnackBarPresenter().showSnackbarWithMessage(
              context,
              message: data.errorMessage,
            ),
            loaded: (_) => ExtendedNavigator.root.push(Routes.homeScreen),
            orElse: () => null,
          );
        },
        builder: (context, state) => state.maybeMap(
          loading: (_) => _buildProgressIndicator(),
          orElse: () => _buildBody(context),
        ),
      ),
    );
  }

  Widget _buildProgressIndicator() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                right: 15.0,
                top: 15,
              ),
              child: TextFormField(
                key: _passwordKey,
                obscureText: true,
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
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Forgot Password',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                onPressed: () {
                  if (formKey.currentState?.validate() ?? false) {
                    BlocProvider.of<LoginBloc>(context).add(
                    LoginEvent.getUser(
                      email: _emailKey.currentState.value,
                      password: _passwordKey.currentState.value,
                    ),
                  );
                  }
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.005,
            ),
            TextButton(
              onPressed: () {
                ExtendedNavigator.root.push(Routes.registerScreen);
              },
              child: const Text(
                'New User? Create Account',
              ),
            )
          ],
        ),
      ),
    );
  }
}
