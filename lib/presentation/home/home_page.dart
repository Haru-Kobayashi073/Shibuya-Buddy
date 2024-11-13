import 'components/complicated_image_carousel.dart';
import '../setting/change_language.dart';
import 'popular_topics.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ComplicatedImageCarousel(),
            PopularTopics(),
            TextButton(
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const ChangeLanguage(),
                  ),
                );
              },
              child: const Text('遷移'),
            ),
          ],
        ),
      ),
    );
  }
}
