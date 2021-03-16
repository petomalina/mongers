import 'dart:async';

import 'package:app/state/models/models.dart';
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
        padding: const EdgeInsets.only(top: 8),
        child: BlocBuilder<ResourcesBloc, ResourcesState>(
            builder: (context, state) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SingleResourceStatus(state.getResource(ResourceCategory.RESOURCE_CATEGORY_POWER)),
              SingleResourceStatus(state.getResource(ResourceCategory.RESOURCE_CATEGORY_IRON)),
              SingleResourceStatus(state.getResource(ResourceCategory.RESOURCE_CATEGORY_CLAY)),
              SingleResourceStatus(state.getResource(ResourceCategory.RESOURCE_CATEGORY_OIL)),
            ]
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
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  resourceState.currentValue().toString(),
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  resourceState.resource.category.nice,
                ),
              ],
            ),
            // Text(
            //   '+' + resourceState.niceRPM(),
            // )
          ],
        );
      },
    );
  }
}
