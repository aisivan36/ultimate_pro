import 'package:flutter/material.dart';
import 'package:imaging/FlexHome/labeled_container.dart';

class FlexScreen extends StatelessWidget {
  const FlexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flexibel & Expanded Widgets'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ..._header(context, 'Expanded'),
            _buildExpanded(context),
            ..._header(context, 'Flexible'),
            _buildFlexible(context),
            Expanded(
              child: Container(),
            ),
            _buildFooter(context),

            /// This is how the [Spread] operator works. For Instance.
            // for (Widget thewidget in _theWidgetBody()) thewidget,
            // ..._theWidgetBody(),
          ],
        ),
      ),
    );
  }

  /// Nothing just for Showing how the Spread operator work
  // List<Widget> _theWidgetBody() {
  //   return [
  //     SizedBox(
  //       height: 20.0,
  //     ),
  //     Text(
  //       'text',
  //     )
  //   ];
  // }

  Iterable<Widget> _header(BuildContext context, String text) {
    return [
      SizedBox(
        height: 20.0,
      ),
      Text(
        text,
        style: Theme.of(context).textTheme.headline5,
      )
    ];
  }
}

Widget _buildExpanded(BuildContext context) {
  return SizedBox(
    height: 100,
    child: Row(
      children: [
        LabeledContainer(
          text: '100',
          color: Colors.green,
          width: 100,
        ),
        Expanded(
          child: LabeledContainer(
            text: 'The remainder',
            color: Colors.purpleAccent,
            textColor: Colors.white12,
          ),
        ),
        LabeledContainer(
          text: '40',
          color: Colors.green,
          width: 40,
        )
      ],
    ),
  );
}

Widget _buildFlexible(BuildContext context) {
  return SizedBox(
    height: 100,
    child: Row(
      children: [
        Flexible(
          flex: 1,
          child: LabeledContainer(
            text: '25%',
            color: Colors.orange,
          ),
        ),
        Flexible(
          child: LabeledContainer(
            text: '25%',
            color: Colors.deepOrange,
          ),
          flex: 1,
        ),
        Flexible(
          flex: 2,
          child: LabeledContainer(
            color: Colors.blue,
            text: '50%',
          ),
        ),
      ],
    ),
  );
}

Widget _buildFooter(BuildContext context) {
  return Center(
    child: Container(
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 30,
        ),
        child: Text(
          'Where is in the bottom',
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ),
    ),
  );
}
