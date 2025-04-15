




import '../constants/screen_path.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_WidgetItem> widgetItems = [
      _WidgetItem(
        title: 'Hero Widget',
        subtitle: 'Smooth transition between screens',
        icon: Icons.animation,
        destination: const HeroWidget(),
      ),
      _WidgetItem(
        title: 'ChoiceChip Widget',
        subtitle: 'Select options with chips',
        icon: Icons.chair_alt_outlined,
        destination: const ChoiceChipWidget(),
      ),
      _WidgetItem(
        title: 'SliverAppBar Widget',
        subtitle: 'Scroll-based AppBar animation',
        icon: Icons.view_day_outlined,
        destination: const SilverAppbarWidget(),
      ),
      _WidgetItem(
        title: 'ExpansionTile Widget',
        subtitle: 'Expandable content sections',
        icon: Icons.expand_circle_down_outlined,
        destination: const ExpansionTileWidget(),
      ),
      _WidgetItem( title: 'Wrap Widget',
        subtitle: 'Responsive chips using Wrap',
        icon: Icons.wrap_text_rounded,
        destination: const WrapWidgetExample(),),
      _WidgetItem(
        title: 'Time Picker Widget',
        subtitle: 'Select time with Flutter\'s picker',
        icon: Icons.access_time_filled_outlined,
        destination: const TimePickerWidget(),
      ),
      _WidgetItem(
        title: 'RangeSlider Widget',
        subtitle: 'Select value between range using slider',
        icon: Icons.tune,
        destination: const RangeSliderWidget(),
      ),
      _WidgetItem(
        title: 'Widget 2 - PopupMenuButton',
        subtitle: 'Interactive menu with selectable actions',
        icon: Icons.more_vert,
        destination: PopupMenuScreen(),
      ),
      _WidgetItem(
        title: 'Widget 3 - PageView',
        subtitle: 'Swipeable screens with page indicator',
        icon: Icons.view_carousel,
        destination: const PageViewScreen(),
      ),
      _WidgetItem(
        title: 'Bottom Navigation App',
        subtitle: 'Persistent BottomNavigationBar with Page Switching',
        icon: Icons.navigation,
        destination: const BottomNavScreen(),
      ),
      _WidgetItem(
        title: 'Stepper Widget',
        subtitle: 'Multi-step input form with validation',
        icon: Icons.stacked_line_chart_rounded,
        destination: const StepperScreen(),
      ),
      _WidgetItem(
        title: 'Modal Bottom Sheet',
        subtitle: 'Shows profile action sheet using showModalBottomSheet',
        icon: Icons.keyboard_arrow_up_rounded,
        destination: const ModalBottomSheetExample(),
      ),
      _WidgetItem(
        title: 'Animated CrossFade',
        subtitle: 'Smooth transition between two widgets',
        icon: Icons.swap_horizontal_circle_outlined,
        destination: const AnimatedCrossFadeExample(),
      ),
      _WidgetItem(
        title: 'Search Bar',
        subtitle: 'Material 3 search bar with list filtering',
        icon: Icons.search,
        destination: const SearchBarExample(),
      ),


    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Unique Widgets'),
        centerTitle: true,
        backgroundColor: Colors.indigo.shade900,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: widgetItems.length,
        itemBuilder: (context, index) {
          final item = widgetItems[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10),
            elevation: 3,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              leading: Icon(item.icon, size: 30, color: Colors.indigo),
              title: Text(item.title, style: Theme.of(context).textTheme.titleMedium),
              subtitle: Text(item.subtitle),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => item.destination),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _WidgetItem {
  final String title;
  final String subtitle;
  final IconData icon;
  final Widget destination;

  _WidgetItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.destination,
  });
}
