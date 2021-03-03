import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key key}) : super(key: key);

  static const routeName = '/screen_1';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Roboto'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffB9B9B9),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                constraints: const BoxConstraints(
                  minHeight: 530,
                  maxHeight: 605,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(),
                          const Text(
                            'Title',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          InkWell(
                            onTap: () => Navigator.of(context).pop(),
                            child: Image.asset('assets/icons/Close.png'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis justo non nisi placerat maximus.""",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      padding: const EdgeInsets.only(right: 3),
                      constraints: const BoxConstraints(
                        maxHeight: 400,
                        minHeight: 308,
                      ),
                      decoration: const BoxDecoration(
                        color: Color(0xffDFDEDE),
                      ),
                      child: const Scrollbar(
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Text(""" 
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis justo non nisi placerat maximus. Praesent tincidunt ut dui fermentum aliquam. Donec nec sodales mi. Proin ultrices dignissim ullamcorper. Nam eu consectetur nunc. Vivamus facilisis fermentum varius. Integer rutrum, ligula ac tempus maximus, erat justo molestie mauris, tempor porta tellus elit egestas ante. Proin ac leo quis felis posuere dapibus id et felis. Aenean id mattis nulla. Sed at nibh et tortor tempor malesuada. Quisque egestas urna tellus, in tristique risus ultricies laoreet. Donec fringilla, est non dapibus tempor, nulla metus lacinia arcu, at mattis ex dui nec massa. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Cras consequat id purus consectetur malesuada.

Vestibulum eu varius orci. Nunc ornare neque sit amet volutpat tempus. Aenean et magna nisl. Integer ornare nulla eget odio rutrum tincidunt. Proin imperdiet in sapien id euismod. Sed interdum enim non euismod pulvinar. Quisque imperdiet eros lectus, vel tempus nibh tristique eu. Pellentesque nisi ex, fringilla varius nibh et, porta mollis sapien. Donec quis pulvinar nulla. In tempor a massa et venenatis. Pellentesque scelerisque tempus tellus at venenatis. Aliquam sed nunc vel purus ultrices porttitor pharetra fringilla arcu.

Vestibulum ut dui id quam feugiat viverra at ut dui. Ut placerat consequat iaculis. Fusce at urna quis libero vulputate sollicitudin et maximus est. Pellentesque in massa id enim laoreet vehicula nec eu velit. Aliquam vestibulum dolor eu felis feugiat bibendum. Praesent maximus rhoncus elit in finibus. Interdum et malesuada fames ac ante ipsum primis in faucibus.
                            """),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 24,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xffDB00FF),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const FlatButton(
                        padding: EdgeInsets.zero,
                        onPressed: null,
                        child: Text(
                          'TEST BUTTON',
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
