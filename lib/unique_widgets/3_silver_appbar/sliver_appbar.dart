import '../../constants/screen_path.dart';

class SilverAppbarWidget extends StatelessWidget {
  const SilverAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              floating: true, // Allows app bar to appear when you scroll up
              snap: true,     // Snaps into view quickly
              expandedHeight: 220,
              backgroundColor: Color(0xff316602),
              elevation: 4,
              leading: Icon(Icons.menu),
              actions: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
              ],
              flexibleSpace: FlexibleSpaceBar(
                title: const Text(
                  'Explore the Map',
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                centerTitle: true,
                background: Image.asset(
                  'assets/images/map_banner.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 20,
                    (context, index) {
                  return ListTile(
                    title: Text('Item ${index + 1}'),
                    leading: Icon(Icons.location_on),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
