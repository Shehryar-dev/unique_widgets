import '../../constants/screen_path.dart';

class ChoiceChipWidget extends StatefulWidget {
  const ChoiceChipWidget({super.key});

  @override
  State<ChoiceChipWidget> createState() => _ChoiceChipWidgetState();
}

class _ChoiceChipWidgetState extends State<ChoiceChipWidget> {
   bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choice Chip Widget'),
        centerTitle: true,
      ),
      
      body: Center(
        child: ChoiceChip(
          selectedColor: Colors.blue,
          avatar: Icon(Icons.media_bluetooth_off),
          label: Text('Choice Chip'), selected: _isSelected, onSelected: (value){
          setState(() {
            _isSelected = value;
          });
        },),
      ),
    );
  }
}
