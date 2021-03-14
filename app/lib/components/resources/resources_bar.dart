import 'dart:async';

import 'package:app/apis/world/v1/world_service.pb.dart';
import 'package:app/components/resources/resources_util.dart';
import 'package:app/state/resources/resources_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResourcesBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const ResourcesBar({
    @required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Theme.of(context).primaryColor),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 16),
        child: BlocBuilder<ResourcesBloc, ResourcesState>(
            builder: (context, state) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:
                state.resources.map((e) => SingleResourceStatus(e)).toList(),
          );
        }),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class SingleResourceStatus extends StatelessWidget {
  final ResourceState resourceState;

  SingleResourceStatus(this.resourceState);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(Duration(seconds: 1)),
      builder: (context, snapshot) {
        return Row(
          children: [
            Text(
              calculateCurrentResourceValue(resourceState).toString(),
              style: TextStyle(
                color: Theme.of(context).accentColor,
              ),
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              getResourceCategory(resourceState.resource.category),
            ),
          ],
        );
      },
    );
  }
}
