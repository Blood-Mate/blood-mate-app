import 'package:flutter/material.dart';

import 'package:bloodmate_app/view/common/route_animation.dart';
import 'package:bloodmate_app/view/main/acquaintance_page/write_private_post_page.dart';

class ProtegeListTile extends StatelessWidget {
  ProtegeListTile({super.key, required this.item, required this.viewModel});

  final item;
  final viewModel;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      title: Text(item.name),
      subtitle: Text(item.phoneNumber),
      trailing: IconButton(
          onPressed: (() {
            viewModel.focusProtege(item);
            PageRouteWithAnimation pageRouteWithAnimation =
                PageRouteWithAnimation(
                    WritePrivatePostPage(viewModel: viewModel));
            Navigator.push(context, pageRouteWithAnimation.slideRitghtToLeft());
          }),
          icon: Icon(Icons.add_comment)),
    ));
  }
}

class ContactListTile extends StatelessWidget {
  ContactListTile({super.key, required this.item, required this.viewModel});

  final item;
  final viewModel;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      onLongPress: () async {
        // delete contact
      },
      trailing: Checkbox(
        value: item.isSendingTarget,
        onChanged: (bool? value) async {
          int res = await viewModel.changeIsSendingTarget(item.id, value!);
        },
      ),
      title: Text(item.name),
      subtitle: Text(item.phoneNumber),
    ));
  }
}

// tile 내부에서 checkbox를 바로 변환할 수 있어서 적용이 빠름
class StfContactListTile extends StatefulWidget {
  StfContactListTile({super.key, required this.item, required this.viewModel});

  final item;
  final viewModel;

  @override
  State<StfContactListTile> createState() => _StfContactListTile();
}

class _StfContactListTile extends State<StfContactListTile> {
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
          int res = await widget.viewModel
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
  AppUserListTile({super.key, required this.item, required this.viewModel});

  final item;
  final viewModel;

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
                int res = await widget.viewModel
                    .changeIsSendingTarget(widget.item.id, value!);
                if (res == 200) {
                  setState(() {
                    isTarget = !isTarget;
                  });
                }
              },
            )
          : Text('Guardian'),
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
                            int state = await widget.viewModel
                                .addGuardian(widget.item.phoneNumber);

                            print(state);

                            switch (state) {
                              case 201: // success
                                // Guardian 등록 시 isSendingTarget을 무조건 true로 전환
                                state = await widget.viewModel
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
                            int state = await widget.viewModel
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
