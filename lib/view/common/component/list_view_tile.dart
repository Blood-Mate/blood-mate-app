import 'package:flutter/material.dart';

class FriendsListViewTile extends StatelessWidget {
  FriendsListViewTile({super.key, required this.item});

  final item;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      title: Text(item.userID + '의 헌혈 요청글입니다.'),
      subtitle: Text(item.content),
    ));
  }
}

class LocalListViewTile extends StatelessWidget {
  const LocalListViewTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class ProtegeListTile extends StatelessWidget {
  ProtegeListTile({super.key, required this.item});

  final item;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      title: Text(item.name),
      subtitle: Text(item.phoneNumber),
    ));
  }
}

// checkbox data만 바뀌었지만 list view 전체가 rebuild 되어서 좋지 않음.
class StlContactListTile extends StatelessWidget {
  StlContactListTile({super.key, required this.item, required this.viewmodel});

  final item;
  final viewmodel;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      trailing: Checkbox(
        value: item.isSendingTarget,
        onChanged: (bool? value) async {
          int res = await viewmodel.changeIsSendingTarget(item.id, value!);
        },
      ),
      title: Text(item.name),
      subtitle: Text(item.phoneNumber),
    ));
  }
}

class ContactListTile extends StatefulWidget {
  ContactListTile({super.key, required this.item, required this.viewmodel});

  final item;
  final viewmodel;

  @override
  State<ContactListTile> createState() => _ContactListTileState();
}

class _ContactListTileState extends State<ContactListTile> {
  late bool isTarget;

  @override
  initState() {
    super.initState();
    isTarget = widget.item.isSendingTarget;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      trailing: Checkbox(
        value: isTarget,
        onChanged: (bool? value) async {
          // sending target 변경하는 API
          int res = await widget.viewmodel
              .changeIsSendingTarget(widget.item.id, value!);
          if (res == 200) {
            setState(() {
              isTarget = !isTarget;
            });
          }
        },
      ),
      title: Text(widget.item.name),
      subtitle: Text(widget.item.phoneNumber),
    ));
  }
}

class AppUserListTile extends StatefulWidget {
  AppUserListTile({super.key, required this.item, required this.viewmodel});

  final item;
  final viewmodel;

  @override
  State<AppUserListTile> createState() => _AppUserListTileState();
}

class _AppUserListTileState extends State<AppUserListTile> {
  late int isGuardian;
  late bool isTarget;

  @override
  initState() {
    super.initState();
    isGuardian = widget.item.guardianId ?? -1;
    isTarget = (isGuardian == -1) ? widget.item.isSendingTarget : true;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      trailing: (isGuardian == -1)
          ? Checkbox(
              value: isTarget,
              onChanged: (bool? value) async {
                // sending target 변경하는 API
                int res = await widget.viewmodel
                    .changeIsSendingTarget(widget.item.id, value!);
                if (res == 200) {
                  setState(() {
                    isTarget = !isTarget;
                  });
                }
              },
            )
          : Text("Guardian"),
      title: Text(widget.item.name),
      subtitle: Text(widget.item.phoneNumber),
      // long tap 할지 그냥 tap 할지 정하기
      onTap: () {
        (isGuardian == -1)
            ? showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Change to Guardian'),
                    content: Text('Are you sure you want to change this?'),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('No')),
                      TextButton(
                          onPressed: () async {
                            // Guardian Post
                            int state = await widget.viewmodel
                                .addGuardian(widget.item.phoneNumber);

                            print(state);

                            switch (state) {
                              case 201: // success
                                // Guardian 등록 시 isSendingTarget을 무조건 true로 전환
                                state = await widget.viewmodel
                                    .changeIsSendingTarget(
                                        widget.item.id, true);
                                break;
                              case 400: // exceed four or invalid phone number
                              // showDialog(
                              //     context: context,
                              //     builder: (context) {
                              //       return AlertDialog(
                              //         title:
                              //             Text("can't exceed four guardians"),
                              //       );
                              //     });
                              // await Future.delayed(Duration(seconds: 2));
                              // Navigator.of(context).pop();
                              // break;
                              case 401: // unauthorized
                            }
                            Navigator.of(context).pop();
                          },
                          child: Text('Yes'))
                    ],
                  );
                })
            : showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Delete Guardian'),
                    content: Text('Are you sure you want to change this?'),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('No')),
                      TextButton(
                          onPressed: () async {
                            // 200 성공 404 없는 guardian id
                            int state = await widget.viewmodel
                                .deleteGuardian(widget.item.guardianId);
                            Navigator.of(context).pop();
                          },
                          child: Text('Yes'))
                    ],
                  );
                });
      },
    ));
  }
}
