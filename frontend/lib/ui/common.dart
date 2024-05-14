import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/message/message_bloc.dart';
import '../bloc/message/message_state.dart';

class Header extends StatelessWidget {
  final String data;
  const Header(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 48.0, bottom: 16),
      child: Text(data, style: Theme.of(context).textTheme.headlineMedium),
    );
  }
}


class ErrorMessageWrapper extends StatelessWidget {
  const ErrorMessageWrapper({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<MessageBloc, BaseMessageState>(
      listener: (context, state) {
        if (state is MessageState) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.message)));
        }
      },
      child: child,
    );
  }
}