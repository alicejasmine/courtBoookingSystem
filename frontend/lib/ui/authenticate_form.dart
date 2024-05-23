import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/auth/auth_bloc.dart';
import 'common.dart';




class AuthenticateForm extends StatefulWidget {
  const AuthenticateForm({super.key});

  @override
  State<AuthenticateForm> createState() => _AuthenticateFormState();
}

class _AuthenticateFormState extends State<AuthenticateForm> {
  final _authFormKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  _onSignIn() {
    if (!_authFormKey.currentState!.validate()) return;
    context.read<AuthBloc>().signIn(
        password: _passwordController.text, email: _usernameController.text);
  }


  _onRegister() {
    if (!_authFormKey.currentState!.validate()) return;
    context.read<AuthBloc>().register(
        password: _passwordController.text, email: _usernameController.text);
  }

  @override
  Widget build(BuildContext context) {
    return ErrorMessageWrapper(
    child: Form(
      key: _authFormKey,
      child: Column(
        children: [
          TextFormField(
            key: const Key('email_field'),
            decoration: const InputDecoration(border: OutlineInputBorder()),
            controller: _usernameController,
            validator: (value) =>
            (value ?? "").contains("@") ? null : "Must be a valid email",
            onChanged: (value) => _authFormKey.currentState!.validate(),
          ),
          const SizedBox(height: 8),
          TextFormField(
            key: const Key('password_field'),
            decoration: const InputDecoration(border: OutlineInputBorder()),
            controller: _passwordController,
            obscureText: true,
            validator: (value) => (value ?? "").length >= 6
                ? null
                : "Must be at least 6 in length",
            onChanged: (value) => _authFormKey.currentState!.validate(),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              OutlinedButton(

                  onPressed: _onRegister, child: const Text("Register")),
              const SizedBox(width: 8),OutlinedButton(
                  key: const Key ('signIn_button'),
                  onPressed: _onSignIn, child: const Text("Sign in")),
            ],
          )
        ],
      ),
    ),
    );
  }
}


