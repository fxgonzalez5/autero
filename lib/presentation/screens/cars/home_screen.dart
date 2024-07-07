import 'package:autero/presentation/views/views.dart';
import 'package:autero/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  static const name = 'home_screen';
  final int pageIndex;

  const HomeScreen({super.key, required this.pageIndex});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with AutomaticKeepAliveClientMixin {
  late PageController pageController;
  final  viewRoutes =  [
    const HomeView(),
    // Agregar las demás vistas aquí, por ejemplo: SearchView(), ProfileView(), etc.
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      keepPage: true
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    if ( pageController.hasClients ) {
      pageController.animateToPage(
        widget.pageIndex,
        curve: Curves.easeInOut, 
        duration: const Duration(milliseconds: 350),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: viewRoutes,
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: widget.pageIndex,
      ),
   );
  }

  @override
  bool get wantKeepAlive => true;
}