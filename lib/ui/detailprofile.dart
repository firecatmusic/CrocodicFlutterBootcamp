import 'package:flutter/material.dart';
import 'package:flutter_hw/model/Profile.dart';
import 'package:google_fonts/google_fonts.dart';
import '../helper/HexColor.dart';

class DetailProfile extends StatelessWidget {
  const DetailProfile({Key? key, required this.data}) : super(key: key);

  final Profile data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                  child: Container(
                width: double.infinity,
                height: 400,
                decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/img_1.png"), fit: BoxFit.fitWidth)),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 100,
                        margin: const EdgeInsets.all(8),
                        width: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(16)), image: DecorationImage(image: AssetImage(data.image), fit: BoxFit.fitWidth)),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(data.name, style: const TextStyle(letterSpacing: 1.5, color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
                                    const SizedBox(height: 8),
                                    Text(data.role, style: const TextStyle(letterSpacing: 1.5, color: Colors.white, fontWeight: FontWeight.normal, fontSize: 14))
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )),
              SliverPadding(
                padding: const EdgeInsets.all(16),
                sliver: SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    children: [
                      Text(
                        "About Us",
                        style: GoogleFonts.openSans(textStyle: TextStyle(fontSize: 32, letterSpacing: 1.2, wordSpacing: 4, fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(height: 16),
                      Text(
                          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit, quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam",
                          style: GoogleFonts.openSans(textStyle: TextStyle(fontSize: 14, letterSpacing: 1.2, wordSpacing: 4, fontStyle: FontStyle.normal)),
                          softWrap: true),
                      SizedBox(height: 32),
                      SizedBox(
                          width: double.infinity, // <-- match_parent
                          height: 50, // <-- match-parent
                          child: ElevatedButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.all(16),
                              backgroundColor: HexColor.fromHex("#59C3FF"),
                            ),
                            child: Text(
                              'Add to Favorite',
                              style: TextStyle(fontSize: 20.0),
                            ),
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text("Berhasil menambahkan ke favorite"),
                              ));
                              Navigator.of(context).pop();
                            },
                          ))
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: AppBar().preferredSize.height,
            child: AppBar(backgroundColor: Colors.black26),
          )
        ],
      ),
    );
  }
}
