






import '../constants/screen_path.dart';
import '../unique_widgets/18_date_picker/date_picker.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_WidgetItem> widgetItems = [
      _WidgetItem(
        title: 'Widget 1 - Hero Widget',
        subtitle: 'Smooth transition between screens',
        icon: Icons.animation,
        destination: const HeroWidget(),
      ),
      _WidgetItem(
        title: 'Widget 2 - ChoiceChip Widget',
        subtitle: 'Select options with chips',
        icon: Icons.chair_alt_outlined,
        destination: const ChoiceChipWidget(),
      ),
      _WidgetItem(
        title: 'Widget 3 - SliverAppBar Widget',
        subtitle: 'Scroll-based AppBar animation',
        icon: Icons.view_day_outlined,
        destination: const SilverAppbarWidget(),
      ),
      _WidgetItem(
        title: 'Widget 4 - ExpansionTile Widget',
        subtitle: 'Expandable content sections',
        icon: Icons.expand_circle_down_outlined,
        destination: const ExpansionTileWidget(),
      ),
      _WidgetItem(
        title: 'Widget 5 - Wrap Widget',
        subtitle: 'Responsive chips using Wrap',
        icon: Icons.wrap_text_rounded,
        destination: const WrapWidgetExample(),
      ),
      _WidgetItem(
        title: 'Widget 6 - Time Picker Widget',
        subtitle: 'Select time with Flutter\'s picker',
        icon: Icons.access_time_filled_outlined,
        destination: const TimePickerWidget(),
      ),
      _WidgetItem(
        title: 'Widget 7 - RangeSlider Widget',
        subtitle: 'Select value between range using slider',
        icon: Icons.tune,
        destination: const RangeSliderWidget(),
      ),
      _WidgetItem(
        title: 'Widget 8 - PopupMenuButton',
        subtitle: 'Interactive menu with selectable actions',
        icon: Icons.more_vert,
        destination: PopupMenuScreen(),
      ),
      _WidgetItem(
        title: 'Widget 9 - PageView',
        subtitle: 'Swipeable screens with page indicator',
        icon: Icons.view_carousel,
        destination: const PageViewScreen(),
      ),
      _WidgetItem(
        title: 'Widget 10 - Bottom Navigation App',
        subtitle: 'Persistent BottomNavigationBar with Page Switching',
        icon: Icons.navigation,
        destination: const BottomNavScreen(),
      ),
      _WidgetItem(
        title: 'Widget 11 - Stepper Widget',
        subtitle: 'Multi-step input form with validation',
        icon: Icons.stacked_line_chart_rounded,
        destination: const StepperScreen(),
      ),
      _WidgetItem(
        title: 'Widget 12 - Modal Bottom Sheet',
        subtitle: 'Shows profile action sheet using showModalBottomSheet',
        icon: Icons.keyboard_arrow_up_rounded,
        destination: const ModalBottomSheetExample(),
      ),
      _WidgetItem(
        title: 'Widget 13 - Animated CrossFade',
        subtitle: 'Smooth transition between two widgets',
        icon: Icons.swap_horizontal_circle_outlined,
        destination: const AnimatedCrossFadeExample(),
      ),
      _WidgetItem(
        title: 'Widget 14 - Search Bar',
        subtitle: 'Material 3 search bar with list filtering',
        icon: Icons.search,
        destination: const SearchBarExample(),
      ),
      _WidgetItem(
        title: 'Widget 15 - SimpleDialog',
        subtitle: 'Popup dialog with selectable options',
        icon: Icons.chat_bubble_outline,
        destination: SimpleDialogExample(),
      ),
      _WidgetItem(
        title: 'Widget 16 - Expanded Widget',
        subtitle: 'Use inside Column or Row for flexible layouts',
        icon: Icons.expand,
        destination: const ExpandedWidgetExample(),
      ),
      _WidgetItem(
        title: 'Widget 17 - WillPopScope Widget',
        subtitle: 'Intercept back navigation with custom logic',
        icon: Icons.exit_to_app,
        destination: const WillPopScopeExample(),
      ),
      _WidgetItem(
        title: 'Date Picker Widget',
        subtitle: 'Select a date using Flutter’s built-in picker',
        icon: Icons.calendar_today,
        destination: const DatePickerExample(),
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
