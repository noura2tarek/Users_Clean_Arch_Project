import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks_clean_arch_project/users_feature/presentation_layer/users_cubit/users_cubit.dart';
import '../../../core/services/services_locator.dart';
import '../../domain_layer/entities/user_entity.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<UsersCubit>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Users data',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.teal,
          elevation: 1.0,
        ),
        body: BlocBuilder<UsersCubit, UsersState>(
          builder: (context, state) {
            final usersCubit = UsersCubit.get(context);
            List<User> users = usersCubit.users;
            if (state is UsersLoadingState && users.isEmpty) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (users.isEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'No users data found',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    // Fetch data button
                    // (Call get users data from cubit)
                    OutlinedButton.icon(
                      onPressed: () {
                        usersCubit.getUsersData();
                      },
                      label: const Text('Fetch Data'),
                      icon: const Icon(Icons.download),
                    ),
                  ],
                ),
              );
            }
            //---- Users List view ----//
            return Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ListView.separated(
                itemBuilder: (context, index) {
                  var user = users[index];
                  return ListTile(
                    title: Text(user.name),
                    subtitle: Text(user.email),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemCount: users.length,
              ),
            );
          },
        ),
      ),
    );
  }
}
