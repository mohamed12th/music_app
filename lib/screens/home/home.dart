import 'package:flutter/material.dart';
import 'package:music_app/screens/song/model.dart';
import 'package:music_app/screens/widget/section.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  List<Song> songs = Song.songs;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors:[
            Colors.deepPurple.shade800.withOpacity(0.8),
            Colors.deepPurple.shade200.withOpacity(0.8),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor:Colors.transparent,
        appBar: const _CustomAppBar(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.deepPurple.shade800,
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined),label: "Favorites"),
          BottomNavigationBarItem(icon: Icon(Icons.play_circle_fill_outlined),label: "Play"),
          BottomNavigationBarItem(icon: Icon(Icons.people_alt_outlined),label: "Profile"),
        ]),
        body: SingleChildScrollView(
          child: Column(

            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome", style: Theme.of(context).textTheme.bodyLarge),
                    const SizedBox(height: 5,),
                    Text("Enjoy You Favorite Music", style: Theme.of(context).textTheme.headline6!
                        .copyWith(fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    TextFormField(decoration: InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Search",
                      hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey.shade400),
                      prefixIcon: Icon(Icons.search,color: Colors.grey.shade400,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      )
                    ),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 20, bottom: 20),
                child: Column(children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: SectionHeader(title: "Trending Music",),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    height:,
                  )
                  

                ],
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
class _CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const _CustomAppBar ({
    Key? key ,
}): super (key: key) ;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: const Icon(Icons.grid_view_rounded),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20),
          child: const CircleAvatar(
            backgroundImage: NetworkImage("https://th.bing.com/th/id/R.0ab27bc78ab0ccb849492fe6cb0e9397?rik=UcrjTdmKzPUrbQ&riu=http%3a%2f%2fimages.unsplash.com%2fphoto-1557098168-47dc193d2c85%3fixlib%3drb-1.2.1%26q%3d80%26fm%3djpg%26crop%3dentropy%26cs%3dtinysrgb%26w%3d1080%26fit%3dmax%26ixid%3deyJhcHBfaWQiOjEyMDd9&ehk=gB2RNnCGftFk9rWwzUTE24hU%2ftQWNXlmvzo5BqtmfTw%3d&risl=&pid=ImgRaw&r=0"),
          ),
        )
      ],

    );
  }

  @override

  Size get preferredSize => const Size.fromHeight(56.0);

}
