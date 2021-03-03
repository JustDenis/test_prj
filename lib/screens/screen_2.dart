import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import '../providers/horizontal_items.dart';
import '../providers/vertical_items.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key key}) : super(key: key);

  static const routeName = '/screen_2';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Roboto'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child: Image.asset('assets/icons/Close.png'),
                  ),
                ),
              ),
              Consumer<HorizontalItemsProvider>(
                builder: (context, value, child) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildTitle(1, value.itemsCount),
                      const SizedBox(height: 16),
                      Container(
                        height: 170,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: value.itemsCount,
                          itemBuilder: (context, index) {
                            return _buildListItem(value.itemAt(index));
                          },
                        ),
                      ),
                    ],
                  );
                },
              ),
              Consumer<VerticalItemsProvider>(
                builder: (context, value, child) {
                  return Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildTitle(2, value.itemsCount),
                        const SizedBox(height: 16),
                        Expanded(
                          child: ListView.builder(
                            itemCount: value.itemsCount,
                            itemBuilder: (context, index) {
                              return _buildListItem(value.itemAt(index));
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding _buildListItem(String itemText) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 79, vertical: 57),
        decoration: BoxDecoration(
          color: const Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.17),
              spreadRadius: 5,
              blurRadius: 7,
            )
          ],
        ),
        child: Center(
          child: Text(
            itemText,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle(int section, int itemCount) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Text(
        'Section $section ($itemCount)',
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
