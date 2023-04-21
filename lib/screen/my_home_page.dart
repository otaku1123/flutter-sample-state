import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_management/main.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('MyHomePage build() called');
    return ProviderScope(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Providerパターン'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              WidgetA(),
              WidgetB(),
              WidgetC(),
            ],
          ),
        ),
      ),
    );
  }
}

class WidgetA extends StatelessWidget {
  const WidgetA({super.key});

  @override
  Widget build(BuildContext context) {
    print('WidgetA build() called');
    return const Text(
      'You have pushed the button this many times:',
    );
  }
}

class WidgetB extends ConsumerWidget {
  const WidgetB({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('WidgetB build() called');
    final int counter = ref.watch(myHomePageProvider).counter;
    // final int counter = context.select<MyHomePageState, int>((state) => state.counter);
    return Text(
      '$counter',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}

class WidgetC extends ConsumerWidget {
  const WidgetC({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('WidgetC build() called');
    // readでは、変更を監視しない（1回だけアクセスする）
    final Function increment =
        ref.read(myHomePageProvider.notifier).increment;

    return ElevatedButton(
      onPressed: () {
        increment();
      },
      child: const Text('カウント'),
    );
  }
}
