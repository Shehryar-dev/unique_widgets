import '../constants/screen_path.dart';

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
        title: 'Widget 18 - Date Picker Widget',
        subtitle: 'Select a date using Flutter’s built-in picker',
        icon: Icons.calendar_today,
        destination: const DatePickerExample(),
      ),
      _WidgetItem(
        title: 'Widget 19 - FutureBuilder Widget',
        subtitle: 'Handle and display async data',
        icon: Icons.hourglass_top_rounded,
        destination: const FutureBuilderExample(),
      ),
      _WidgetItem(
        title: 'Widget 20 - GridPaper Widget',
        subtitle: 'Draws a grid for debugging or layout design',
        icon: Icons.grid_4x4,
        destination: const GridPaperExample(),
      ),

      _WidgetItem(
        title: 'Tooltip Widget',
        subtitle: 'Shows message on hover or long-press',
        icon: Icons.info_outline,
        destination: const TooltipWidgetExample(),
      ),

      _WidgetItem(
        title: 'StreamBuilder Widget',
        subtitle: 'Updates UI based on stream of data',
        icon: Icons.stream,
        destination: const StreamBuilderExample(),
      ),
      _WidgetItem(
        title: 'Spacer Widget',
        subtitle: 'Adds flexible spacing between widgets in Row/Column',
        icon: Icons.space_bar_outlined,
        destination: const SpacerWidgetExample(),
      ),

      _WidgetItem(
        title: 'Best Adaptive Widgets',
        subtitle: 'Platform-aware widgets (Switch, Progress, Icons)',
        icon: Icons.devices_other_outlined,
        destination: const AdaptiveWidgetExample(),
      ),
      _WidgetItem(
        title: 'Table Widget',
        subtitle: 'Organize data in table layout with rows and columns',
        icon: Icons.table_chart_outlined,
        destination: const TableWidgetExample(),
      ),
      _WidgetItem(
        title: 'FittedBox Widget',
        subtitle: 'Scale child widget within available space',
        icon: Icons.fit_screen_outlined,
        destination: const FittedBoxExample(),
      ),
      _WidgetItem(
        title: 'Stack Widget',
        subtitle: 'Overlay multiple widgets with alignment and positioning',
        icon: Icons.layers_outlined,
        destination: const StackWidgetExample(),
      ),
      _WidgetItem(
        title: 'Positioned Widget',
        subtitle: 'Animate child inside a Stack',
        icon: Icons.place,
        destination: const PositionedWidget(),
      ),
      _WidgetItem(
        title: 'Visibility Widget',
        subtitle: 'Show or hide a widget with ease',
        icon: Icons.visibility,
        destination: const VisibilityWidgetExample(),
      ),
      _WidgetItem(
        title: 'Spread Operator',
        subtitle: 'Dynamically insert widget lists using `...`',
        icon: Icons.view_array,
        destination: const SpreadOperatorWidget(),
      ),
      _WidgetItem(
        title: 'AlertDialog Widget',
        subtitle: 'Custom confirmation popup with actions',
        icon: Icons.warning_amber,
        destination: const AlertDialogWidget(),
      ),
      _WidgetItem(
        title: 'SelectableText',
        subtitle: 'Selectable and copyable text for rich interaction',
        icon: Icons.text_fields,
        destination: const SelectableTextExample(),
      ),
      _WidgetItem(
        title: 'GestureDetector',
        subtitle: 'Detect taps, swipes, long presses and more',
        icon: Icons.gesture,
        destination: const GestureDetectorExample(),
      ),
      _WidgetItem(
        title: 'InteractiveViewer',
        subtitle: 'Enable zooming and panning for any widget',
        icon: Icons.zoom_in_map_rounded,
        destination: const InteractiveViewerExample(),
      ),

      _WidgetItem(
        title: 'Flexible',
        subtitle: 'Make child widgets adapt to available space',
        icon: Icons.view_week,
        destination: const FlexibleExample(),
      ),

      _WidgetItem(
        title: 'ClipRRect',
        subtitle: 'Clip child widgets with rounded corners',
        icon: Icons.crop_rounded,
        destination: const ClipRRectExample(),
      ),

      _WidgetItem(
        title: 'ClipRect',
        subtitle: 'Clip widgets to a rectangular portion',
        icon: Icons.crop_square,
        destination: const ClipRectExample(),
      ),
      _WidgetItem(
        title: 'TabBar & TabBarView',
        subtitle: 'Switch between multiple views with top tabs',
        icon: Icons.tab,
        destination: const TabBarExample(),
      ),

      _WidgetItem(
        title: 'DropdownButton',
        subtitle: 'Shows a list of items to select one option',
        icon: Icons.arrow_drop_down_circle_outlined,
        destination: const DropdownExample(),
      ),

      _WidgetItem(
        title: 'Form & TextFormField',
        subtitle: 'Form with validation using TextFormFields',
        icon: Icons.text_fields,
        destination: const FormExample(),
      ),

      _WidgetItem(
        title: 'Carousel Slider',
        subtitle: 'Image/content sliders with smooth animations',
        icon: Icons.slideshow,
        destination: const CarouselWidget(),
      ),


      _WidgetItem(
        title: 'Product Card',
        subtitle: 'Image, Price & Favorite icon in a beautiful card',
        icon: Icons.shopping_bag,
        destination: const ProductCardExample(),
      ),
      _WidgetItem(
        title: 'Breadcrumbs (Custom)',
        subtitle: 'Navigate with path hierarchy',
        icon: Icons.route,
        destination: const BreadcrumbsExample(),
      ),

      _WidgetItem(
        title: 'Drawer Widget',
        subtitle: 'Real-world app navigation drawer',
        icon: Icons.menu,
        destination: const DrawerExample(),
      ),

      _WidgetItem(
        title: 'Pagination Widget',
        subtitle: 'Paginated ListView with controls',
        icon: Icons.format_list_numbered,
        destination: const PaginationExample(),
      ),


      _WidgetItem(
        title: 'autocomplete',
        subtitle: 'Suggest list while typing with full customization.',
        icon: Icons.text_fields,
        destination: const AutocompleteExample(),
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
