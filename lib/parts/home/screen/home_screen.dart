part of '../home_part.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeBloc _home;

  @override
  void initState() {
    super.initState();
    _home = HomeBloc(ProcessScanner());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: const Text("Doc Engine"),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: ElevatedButton(
                  onPressed: () {
                    _home.add(HomeSwitchScanningEvent());
                  },
                  child: const Text('Start Scan'),
                ),
              ),
              SizedBox(
                height: double.infinity,
                width: MediaQuery.of(context).size.width / 2,
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (i, ctx) => Row(
                    children: [],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
