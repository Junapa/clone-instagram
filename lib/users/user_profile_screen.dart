import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/contants/gaps.dart';
import 'package:tiktok_clone/contants/sizes.dart';
import 'package:tiktok_clone/users/widgets/numbers_detail.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              centerTitle: true,
              title: const Text("Jun"),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.gear,
                    size: Sizes.size20,
                  ),
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    foregroundImage: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/800px-Bitcoin.svg.png",
                    ),
                    child: Text("Jun"),
                  ),
                  Gaps.v20,
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "@Jun",
                        style: TextStyle(
                          fontSize: Sizes.size18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Gaps.h5,
                      FaIcon(
                        FontAwesomeIcons.solidCircleCheck,
                        size: Sizes.size16,
                        color: Color.fromARGB(255, 132, 184, 226),
                      ),
                    ],
                  ),
                  Gaps.v24,
                  SizedBox(
                    height: Sizes.size44,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const NumbersDetail(
                          number: "97",
                          numbersFor: "Following",
                        ),
                        VerticalDivider(
                          width: Sizes
                              .size40, // spaces each side from the vertical divider.
                          thickness: Sizes.size1,
                          color: Colors.grey.shade300,
                          indent: Sizes.size12,
                          endIndent: Sizes.size12,
                        ),
                        const NumbersDetail(
                          number: "10.5M",
                          numbersFor: "Followers",
                        ),
                        VerticalDivider(
                          width: Sizes
                              .size40, // spaces each side from the vertical divider.
                          thickness: Sizes.size1,
                          color: Colors.grey.shade300,
                          indent: Sizes.size12,
                          endIndent: Sizes.size12,
                        ),
                        const NumbersDetail(
                          number: "149.3M",
                          numbersFor: "Likes",
                        ),
                      ],
                    ),
                  ),
                  Gaps.v14,
                  FractionallySizedBox(
                    widthFactor: 0.33,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: Sizes.size12,
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(Sizes.size4),
                        ),
                      ),
                      child: const Text(
                        'Follw',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Gaps.v14,
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: Sizes.size32,
                    ),
                    child: Text(
                      "All highlights and where to watch live matches on FIFA+",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Gaps.v14,
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.link,
                        size: Sizes.size12,
                      ),
                      Gaps.h4,
                      Text(
                        "https://google.com",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Gaps.v20,
                  Container(
                    decoration: BoxDecoration(
                      border: Border.symmetric(
                        horizontal:
                            BorderSide(color: Colors.grey.shade200, width: 0.7),
                      ),
                    ),
                    child: const TabBar(
                      labelPadding: EdgeInsets.symmetric(
                        vertical: Sizes.size10,
                      ),
                      indicatorSize: TabBarIndicatorSize.label,
                      labelColor: Colors.black,
                      indicatorColor: Colors.black,
                      tabs: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: Sizes.size20,
                          ),
                          child: Icon(Icons.grid_view_outlined),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: Sizes.size20,
                          ),
                          child: FaIcon(FontAwesomeIcons.heart),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          children: [
            GridView.builder(
              padding: EdgeInsets.zero,
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              itemCount: 20,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: Sizes.size2,
                mainAxisSpacing: Sizes.size2,
                childAspectRatio: 9 / 16,
              ),
              itemBuilder: (context, index) => Column(
                children: [
                  Stack(
                    children: [
                      AspectRatio(
                        aspectRatio: 9 / 16, // give the ratio
                        child: FadeInImage.assetNetwork(
                          fit:
                              BoxFit.cover, // make it fit for the parent ratio.
                          placeholder: "assets/image/view.jpg",
                          image:
                              "https://images.unsplash.com/photo-1540483761890-a1f7be05d99f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=80 ",
                        ),
                      ),
                      Positioned(
                        left: 3,
                        top: 3,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Sizes.size3),
                            color: Theme.of(context).primaryColor,
                          ),
                          padding: const EdgeInsets.all(
                            Sizes.size4,
                          ),
                          child: const Text(
                            "Pinned",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: Sizes.size14,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        bottom: 2,
                        child: Row(
                          children: [
                            Icon(
                              Icons.play_arrow_outlined,
                              color: Colors.white,
                              size: Sizes.size20,
                            ),
                            Gaps.h3,
                            Text(
                              "4.1M",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: Sizes.size12,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Center(
              child: Text("page two"),
            ),
          ],
        ),
      ),
    );
  }
}
