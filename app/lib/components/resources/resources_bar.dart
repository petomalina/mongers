import 'dart:async';

import 'package:app/apis/world/v1/world_service.pb.dart';
import 'package:app/components/resources/bloc/resources_bloc.dart';
import 'package:app/components/resources/resources_util.dart';
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

class SingleResourceStatus extends StatefulWidget {
  final ResourceState resourceState;

  SingleResourceStatus(this.resourceState);

  @override
  _SingleResourceStatusState createState() => _SingleResourceStatusState();
}

class _SingleResourceStatusState extends State<SingleResourceStatus> {
  Timer _updater;

  @override
  void initState() {
    super.initState();

    _updater = Timer.periodic(Duration(milliseconds: 5000), (timer) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _updater.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          calculateCurrentResourceValue(widget.resourceState).toString(),
          style: TextStyle(
            color: Theme.of(context).accentColor,
          ),
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          getResourceCategory(widget.resourceState.resource.category),
        ),
      ],
    );
  }
}
