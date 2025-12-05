import 'package:booklyapp/core/utils/AssetsData.dart';
import 'package:booklyapp/feature/splash/presentation/views/Widgets/SlidingText.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class Booklyhomeview extends StatefulWidget {
  const Booklyhomeview({super.key});

  @override
  State<Booklyhomeview> createState() => _BooklyhomeviewState();
}

class _BooklyhomeviewState extends State<Booklyhomeview>
    with SingleTickerProviderStateMixin {
  late AnimationController? animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    GotoHomePage();
  }

  void GotoHomePage() {
    Future.delayed(const Duration(seconds: 4), () {
      // Get.to(()=>HomeView(),transition: Transition.fade , duration: KtransitionDuration);
      // },);
      GoRouter.of(context).pushReplacement('/HomeScreen');
    });
  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 4),
        Slidingtext(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 2),
      end: const Offset(0, 0),
    ).animate(animationController!);
    animationController!.forward();
  }
}
