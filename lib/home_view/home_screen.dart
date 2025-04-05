import '../constants/screen_path.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home View'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(padding:EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>HeroWidget())),
                  child: Text('Widget no 1: Hero', style: Theme.of(context).textTheme.headlineMedium,)),
              SizedBox(height: 16,),
              Divider(),
              SizedBox(height: 16,),
              InkWell(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>ChoiceChipWidget())),
                  child: Text('Widget no 2: ChoiceChip', style: Theme.of(context).textTheme.headlineMedium,)),
              SizedBox(height: 16,),
              Divider(),
              SizedBox(height: 16,),
              InkWell(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>ChoiceChipWidget())),
                  child: Text('Widget no 3: SilverAppBar', style: Theme.of(context).textTheme.headlineMedium,)),
              SizedBox(height: 16,),
              Divider(),
              SizedBox(height: 16,)

            ],
          ),
        ),
      ),
    );
  }
}
