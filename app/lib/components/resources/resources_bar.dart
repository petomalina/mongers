import 'dart:async';

import 'package:app/apis/world/v1/world_service.pb.dart';
import 'package:app/components/resources/bloc/resources_bloc.dart';
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
              children: state.resources.map((e) => SingleResourceStatus(e)).toList(),
            );
          }
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class SingleResourceStatus extends StatefulWidget {
  final Resource resource;

  SingleResourceStatus(this.resource);

  @override
  _SingleResourceStatusState createState() => _SingleResourceStatusState();
}

class _SingleResourceStatusState extends State<SingleResourceStatus> {
  Timer _updater;

  @override
  void initState() {
    super.initState();

    _updater = Timer.periodic(Duration(milliseconds: 1000), (timer) {
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
          _currentResource().toString(),
          style: TextStyle(
            color: Theme.of(context).accentColor,
          ),
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          widget.resource.id,
        ),
      ],
    ); 
  }

  _currentResource() {
    final diff = DateTime.now().difference(DateTime.fromMillisecondsSinceEpoch(widget.resource.timestamp.toInt() * 1000));

    // this creates an rpm diff in seconds and then makes minutes again, so we don't
    // need to wait a full minute for the RPM to pass. It also normalizes the number
    // so the player won't see thousands (every 1 resource has 1000 units).
    return ((widget.resource.value.toInt() + (diff.inSeconds * widget.resource.rpm.toInt()) / 60) / 1000).round();
  }
}
