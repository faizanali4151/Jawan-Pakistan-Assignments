import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WhatsAppUiView extends StatefulWidget {
  final VoidCallback onToggleTheme;
  final bool isDarkMode;

  const WhatsAppUiView({
    super.key,
    required this.onToggleTheme,
    required this.isDarkMode,
  });

  @override
  State<WhatsAppUiView> createState() => _WhatsAppUiViewState();
}

class _WhatsAppUiViewState extends State<WhatsAppUiView>
    with SingleTickerProviderStateMixin {
  final List<Map<String, dynamic>> dataList = [
    {
      "title": "Faizan",
      "subtitle": "hello...",
      "time": "yesterday",
      "profile":
          "https://scontent.fkhi22-1.fna.fbcdn.net/v/t39.30808-6/505165770_4279970702230939_8773857589438517017_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeFqi1j6DT0Z5sBhDBqryMHgNdeRWs3sHlE115FazeweUeWKiVdF2elo0dFePFKQlgP180PVa4NWtP--7MRgRPV4&_nc_ohc=nT0IfGOJa0kQ7kNvwF79djF&_nc_oc=Adlp-8UkGzkqcqmN8K1dem97Rdkr8IUNCiTxvuqe4YI2Woj9nTQhvRfIaTx2D9PmA2s&_nc_zt=23&_nc_ht=scontent.fkhi22-1.fna&_nc_gid=r5MTjioFw7gZZI0TsFIpOg&oh=00_AfM4gv8sd_jjcmPZBH02oFq-vjcTBsGz7JbJLfAO6bUtdQ&oe=686634AA",
      "countMsg": "10",
      "isView": false,
      "isCalling": "incoming",
      "callingTime": "Yesterday, 01:29 AM"
    },
    {
      "title": "Aliyan",
      "subtitle": "HA KAHAN HO",
      "time": "01:00 pm",
      "profile":
          "https://scontent.fkhi22-1.fna.fbcdn.net/v/t39.30808-6/474935976_4181394645441205_2865841050634495806_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeGz5dm5oc_QX-sz1uJiNH5qJN6Algxkicok3oCWDGSJyh68jD8HaV8R5u2x6sOJPEYajuNd2b3wTK2Zra4Bi2AS&_nc_ohc=nrI4k7mlxn4Q7kNvwGi69iB&_nc_oc=AdmmdS6uDKSlAJyHRRfhAC0BmzEaLlqXy01kzNSavUPk_tdx5Sq6xx5ORm5QqQfy3Q0&_nc_zt=23&_nc_ht=scontent.fkhi22-1.fna&_nc_gid=diyxCT0EBNK4RMZDIx0u0Q&oh=00_AfPQ6lmTvDRwmerfABQW7JD9wE9oR55qLrusQCp9W05eZQ&oe=68662933",
      "countMsg": "",
      "isView": true,
      "isStatus": [
        {
          "status":
              "https://sherbrotherpakistan.com/wp-content/uploads/2024/01/rent-a-car-karachi-1536x1152.jpeg",
          "statusTime": "01:00 pm"
        }
      ]
    },
    {
      "title": "Basit",
      "subtitle": "Arhy ho",
      "time": "11:00 pm",
      "profile":
          "https://scontent.fkhi22-1.fna.fbcdn.net/v/t39.30808-6/491952134_9691090447674309_7562359734230904189_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeGDcLBuxz9BLwAGCqC13dHMekCTTA8rjyN6QJNMDyuPI_8zAtjyVMm65IHD_gsGmA8eHdJVUDXwvBUJEcnSsMm9&_nc_ohc=qKPCXBCKVvEQ7kNvwHHjI99&_nc_oc=AdmcbRbMmGXJbso-Ix7hSzVzVnSkY9AJd36p_CNCABR3HyrYVZ2OE2xTCXGQjSuYLmA&_nc_zt=23&_nc_ht=scontent.fkhi22-1.fna&_nc_gid=SFQWn9x1J15HtZ-BXfyxfw&oh=00_AfOsPOSA8uLQR-_-NtwMG34hSYKam0ZEOEcA4OIQUxO9lQ&oe=686632E6",
      "countMsg": "20",
      "isView": false,
      "isCalling": "outgoing",
      "callingTime": "Today, 07:29 AM"
    },
    {
      "title": "Haris",
      "subtitle": "class m hun",
      "time": "yesterday",
      "profile":
          "https://scontent.fkhi22-1.fna.fbcdn.net/v/t39.30808-6/480819516_3900380706895576_4596751870671677915_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeFSfAl5DQ453-YH6X_ZPf3nP1O0s3x8GcI_U7SzfHwZwg6aVEpLXB5szSqJZMIawgdJVEZQhqiKcVquYeZG7-kc&_nc_ohc=jljsHxUAvO4Q7kNvwEWfoK3&_nc_oc=Adl4_Vw1PkRjFQsDmuNySEVQOP9Cnql49ZeESfmAkC-FJeslwi5c_Uf_HAf-UCm48Nw&_nc_zt=23&_nc_ht=scontent.fkhi22-1.fna&_nc_gid=11MJhzfDVn1aV0KkF_qCdw&oh=00_AfO_TLNmgv1Uru5unHbK6xywUKPWNVA3UutzKFOZj1ll-w&oe=68664B6E",
      "countMsg": "",
      "isView": false
    },
    {
      "title": "Ameen Isb",
      "subtitle": "on the way",
      "time": "03:00 pm",
      "profile":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzCW8ayM9K_iNzX81NSjgpGcl30jDvsTSiIg&s",
      "countMsg": "1",
      "isView": false
    },
    {
      "title": "Jahanzaib",
      "subtitle": "checked linkedIn",
      "time": "11:00 pm",
      "profile":
          "https://scontent.fkhi22-1.fna.fbcdn.net/v/t39.30808-6/472679213_3829110174070256_1241630775038956797_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeEhKGSzcazDPBOiMEUJOPsW9uVHeWhj2lL25Ud5aGPaUl1GJ-i5YB-PvooRaFUY2W10B_UxwzH-HCdXDTpvVILZ&_nc_ohc=h1WJT1ddPvgQ7kNvwFkB5LB&_nc_oc=Adm7WRnJVWc00pxMPnkOC3lenza5rzRbvrSziFoxn859jCeHGZFzZOmbIaH2n0YTQio&_nc_zt=23&_nc_ht=scontent.fkhi22-1.fna&_nc_gid=q99YKwZpBWJyE3mUJtpWSA&oh=00_AfMnjG9GhZjZ0TJU0xTXLvbIqJWhrZtIjS8xYltesx7SSw&oe=68664E61",
      "countMsg": "",
      "isView": true,
      "isCalling": "incoming",
    },
    {
      "title": "Hassan jff",
      "subtitle": "class m hun",
      "time": "yesterday",
      "profile":
          "https://images.pexels.com/photos/31034565/pexels-photo-31034565.jpeg?_gl=1*1xdmsh3*_ga*OTI5NDUyMjQuMTY5NzQ4NTk5Ng..*_ga_8JE65Q40S6*czE3NTExNTMwNzkkbzE3JGcxJHQxNzUxMTUzMTkxJGo1MiRsMCRoMA..",
      "countMsg": "",
      "isView": false,
      "isCalling": "incoming",
      "callingTime": "Today , 01:29 AM",
      "isStatus": [
        {
          "status":
              "https://m.media-amazon.com/images/I/81FSS+MhhdL._AC_SL1500_.jpg",
          "statusTime": "yesterday"
        }
      ]
    },
    {
      "title": "Aman",
      "subtitle": "code push krdia ha",
      "time": "11:00 pm",
      "profile": "https://cdn.mos.cms.futurecdn.net/ZbXQ28h5XuqBss7sGnVFsm.jpg",
      "countMsg": "",
      "isView": true,
      "isCalling": "outgoing",
      "isStatus": [
        {
          "status":
              "https://images.pexels.com/photos/32489809/pexels-photo-32489809.jpeg?_gl=1*1h7tmrr*_ga*OTI5NDUyMjQuMTY5NzQ4NTk5Ng..*_ga_8JE65Q40S6*czE3NTExNTMwNzkkbzE3JGcxJHQxNzUxMTUzMTA2JGozMyRsMCRoMA..",
          "statusTime": "06:12 pm"
        }
      ]
    },
    {
      "title": "Asif",
      "subtitle": "hogya ha kam",
      "time": "03:20 pm",
      "profile":
          "https://scontent.fkhi22-1.fna.fbcdn.net/v/t39.30808-6/455965736_2485737954951143_7296077189428946578_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeEULcTHAmZEzJcRci-LnI00U7hOihLn-JNTuE6KEuf4k7VS1bem5D1WcfrSC0W9OFMTHc3MvAY7HIRabaddPs4e&_nc_ohc=66n_pggZv8MQ7kNvwGfFKUl&_nc_oc=AdmC0HEi26bUrClmFx-wnc1BuS1sMwHqt2mjx65KfHD-i12SgFFGyXRPM9NvAc3Bdpk&_nc_zt=23&_nc_ht=scontent.fkhi22-1.fna&_nc_gid=A1JezLhOk4ODIgdif9vdNw&oh=00_AfNmfGOWEZvd54cOOjdRx5PkIbzlIz3fxly_YiZOgog5Ng&oe=68662891",
      "countMsg": "16",
      "isView": false,
      "isCalling": "incoming",
      "callingTime": "June 27, 01:29 AM",
      "isStatus": [
        {
          "status":
              "https://images.pexels.com/photos/31034565/pexels-photo-31034565.jpeg?_gl=1*1xdmsh3*_ga*OTI5NDUyMjQuMTY5NzQ4NTk5Ng..*_ga_8JE65Q40S6*czE3NTExNTMwNzkkbzE3JGcxJHQxNzUxMTUzMTkxJGo1MiRsMCRoMA..",
          "statusTime": "09:12 pm"
        }
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    final isDark = widget.isDarkMode;

    final backgroundColor =
        isDark ? const Color(0xFF111B21) : const Color(0xFFFFFFFF);
    final appBarColor = isDark ? const Color(0xFF111B21) : Colors.white;
    final titleColor =
        isDark ? const Color(0xFFE9EDEF) : const Color(0xFF111B21);
    final subtitleColor =
        isDark ? const Color(0xFF8696A0) : const Color(0xFF667781);
    final timeColor =
        isDark ? const Color(0xFF667781) : const Color(0xFF8696A0);
    final iconColor =
        isDark ? const Color(0xFFE9EDEF) : const Color(0xFF54656F);
    const greenColor = Color(0xFF1FC15A); // WhatsApp recent green

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: appBarColor,
          title: const Text(
            "WhatsApp",
            style: TextStyle(
              color: greenColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          centerTitle: false,
          actions: [
            IconButton(
              icon: Icon(
                isDark ? Icons.light_mode : Icons.dark_mode,
                color: iconColor,
              ),
              onPressed: widget.onToggleTheme,
              tooltip: 'Toggle Theme',
            ),
            IconButton(
              icon: Icon(Icons.camera_alt, color: iconColor),
              onPressed: () {},
              splashRadius: 24,
            ),
            PopupMenuButton<String>(
              icon: Icon(Icons.more_vert, color: iconColor),
              splashRadius: 24,
              onSelected: (value) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('$value tapped')),
                );
              },
              itemBuilder: (context) => const [
                PopupMenuItem(value: 'New Group', child: Text('New Group')),
                PopupMenuItem(
                    value: 'New Community',
                    child: Text('New Community Devices')),
                PopupMenuItem(
                    value: 'Linked Devices', child: Text('Linked Devices')),
                PopupMenuItem(
                    value: 'Broadcast list', child: Text('Broadcast list')),
                PopupMenuItem(value: 'Starred', child: Text('Starred')),
                PopupMenuItem(value: 'Read all', child: Text('Read all')),
                PopupMenuItem(value: 'Settings', child: Text('Settings')),
              ],
            ),
          ],
          bottom: TabBar(
            labelColor: greenColor,
            unselectedLabelColor: subtitleColor,
            indicatorColor: greenColor,
            tabs: const [
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            /// CHATS TAB
            ListView.builder(
              itemCount: dataList.length,
              itemBuilder: (context, index) {
                final item = dataList[index];
                final hasCount = item['countMsg'].toString().isNotEmpty;
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(item['profile']),
                  ),
                  title: Text(
                    item['title'],
                    style: TextStyle(
                        color: titleColor, fontWeight: FontWeight.w500),
                  ),
                  subtitle: Row(
                    children: [
                      if (!hasCount) ...[
                        Icon(
                          Icons.done_all,
                          size: 16,
                          color: item['isView'] == true
                              ? greenColor
                              : const Color(0xFF8696A0),
                        ),
                        const SizedBox(width: 4),
                      ],
                      Expanded(
                        child: Text(
                          item['subtitle'],
                          style: TextStyle(color: subtitleColor),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        item['time'],
                        style: TextStyle(
                            color: hasCount ? greenColor : timeColor,
                            fontSize: 12),
                      ),
                      const SizedBox(height: 5),
                      if (hasCount)
                        Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: greenColor,
                          ),
                          child: Center(
                            child: Text(
                              item['countMsg'],
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ),
                    ],
                  ),
                );
              },
            ),

            /// STATUS TAB
            _buildStatusTab(statusList: dataList),

            /// CALLS TAB
            _buildCallsTab(callsList: dataList)
          ],
        ),
      ),
    );
  }
}

Widget _buildStatusTab({required List statusList}) {
  const greenColor = Color(0xFF1FC15A);

  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(
        height: 6,
      ),
      ListTile(
        leading: Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.shade300,
          ),
          padding: const EdgeInsets.all(3),
          child: const CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              'https://images.stockcake.com/public/8/9/4/89401a76-9b15-4d43-ab21-08cafe02cf40_large/sunset-seaside-serenity-stockcake.jpg',
            ),
          ),
        ),
        title: const Text(
          'My Status',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: const Text('2 hour ago'),
        trailing: const Icon(Icons.more_horiz, color: greenColor),
      ),
      const SizedBox(
        height: 16,
      ),
      const Padding(
        padding: EdgeInsets.only(left: 24.0),
        child: Text(
          'Recent Updates',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: greenColor,
          ),
        ),
      ),
      const SizedBox(
        height: 16,
      ),
      Expanded(
        child: ListView.builder(
          itemCount: statusList.length,
          itemBuilder: (context, index) {
            final item = statusList[index];
            final hasStatus = item['isStatus'] != null &&
                item['isStatus'] is List &&
                (item['isStatus'] as List).isNotEmpty;
            return hasStatus
                ? ListTile(
                    title: Text(item['title']),
                    leading: Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: item['isStatus'][0]['statusTime'] == "yesterday"
                            ? Colors.grey.shade300
                            : greenColor,
                      ),
                      padding: const EdgeInsets.all(3),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          item['isStatus'][0]['status'],
                        ),
                      ),
                    ),
                    subtitle: Text(
                      item['isStatus'][0]['statusTime'],
                    ),
                  )
                : const SizedBox.shrink();
          },
        ),
      )
    ],
  );
}

Widget _buildCallsTab({required List callsList}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(
        height: 10,
      ),
      const Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: Text(
          'Calls',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      const Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: Text(
          'Favourites',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
        child: Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: const BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.favorite,
                color: Colors.white,
                size: 24,
              ),
            ),
            const SizedBox(width: 12),
            const Text(
              'Add favorite',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      Expanded(
        child: ListView.builder(
          itemCount: callsList.length,
          itemBuilder: (context, index) {
            final item = callsList[index];
            final isIncoming = item['isCalling'] == 'incoming' ||
                item['isCalling'] == 'outgoing';

            return isIncoming
                ? ListTile(
                    trailing: const Icon(Icons.phone, color: Colors.black),
                    title: Text(
                      item['title'],
                      style: TextStyle(
                        color: item['isCalling'] == 'incoming'
                            ? Colors.red
                            : Colors.black,
                      ),
                    ),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(item['profile']),
                    ),
                    subtitle: Row(
                      children: [
                        Icon(
                          item['isCalling'] == 'incoming'
                              ? Icons.call_received
                              : Icons.call_made,
                          size: 16,
                          color: item['isCalling'] == 'incoming'
                              ? Colors.red
                              : Colors.green,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          item['callingTime'] ??
                              '', 
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  )
                : const SizedBox.shrink();
          },
        ),
      )
    ],
  );
}
