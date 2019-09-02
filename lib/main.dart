import 'package:flutter/material.dart';
import 'package:flutter_widget/page/widget_demo_page.dart';
import 'package:flutter_widget/widget/container_widget.dart';
import 'package:flutter_widget/widget/cupertino/cupertino_activity_indicator_widget.dart';
import 'package:flutter_widget/widget/cupertino/cupertino_alert_dialog.dart';
import 'package:flutter_widget/widget/cupertino/cupertino_button.dart';
import 'package:flutter_widget/widget/cupertino/cupertino_nav.dart';
import 'package:flutter_widget/widget/form_widget.dart';
import 'package:flutter_widget/widget/grid_view_widget.dart';
import 'package:flutter_widget/widget/icon_btn_widget.dart';
import 'package:flutter_widget/widget/image_widget.dart';
import 'package:flutter_widget/widget/layout/align_layout.dart';
import 'package:flutter_widget/widget/layout/center_layout.dart';
import 'package:flutter_widget/widget/layout/column_layout.dart';
import 'package:flutter_widget/widget/layout/constrained_box_layout.dart';
import 'package:flutter_widget/widget/layout/fitted_box_layout.dart';
import 'package:flutter_widget/widget/layout/fractionally_size_box_layout.dart';
import 'package:flutter_widget/widget/layout/indexed_stack_layout.dart';
import 'package:flutter_widget/widget/layout/limited_box_layout.dart';
import 'package:flutter_widget/widget/layout/padding_layout.dart';
import 'package:flutter_widget/widget/layout/row_layout.dart';
import 'package:flutter_widget/widget/layout/sized_box_layout.dart';
import 'package:flutter_widget/widget/layout/stack_alignment_layout.dart';
import 'package:flutter_widget/widget/layout/stack_positioned_layout.dart';
import 'package:flutter_widget/widget/layout/table_layout.dart';
import 'package:flutter_widget/widget/layout/transform_layout.dart';
import 'package:flutter_widget/widget/layout/wrap_layout.dart';
import 'package:flutter_widget/widget/list_view_builder.dart';
import 'package:flutter_widget/widget/list_view_horizontal_widget.dart';
import 'package:flutter_widget/widget/list_view_widget.dart';
import 'package:flutter_widget/widget/material/appbar_widget.dart';
import 'package:flutter_widget/widget/material/bottom_navication_bar_widget.dart';
import 'package:flutter_widget/widget/material/card_widget.dart';
import 'package:flutter_widget/widget/material/dialog_widget.dart';
import 'package:flutter_widget/widget/material/drawer_widget.dart';
import 'package:flutter_widget/widget/material/flat_button_widget.dart';
import 'package:flutter_widget/widget/material/floating_action_btn_widget.dart';
import 'package:flutter_widget/widget/material/popup_menu_button_widget.dart';
import 'package:flutter_widget/widget/material/tab_bar_widget.dart';
import 'package:flutter_widget/widget/material/text_field_widget.dart';
import 'package:flutter_widget/widget/text_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget Demo', //任务管理器的程序快照名
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: ListView(
          children: createListItems(),
        ),
      ),
    );
  }

  /// 在这里新增要测试的 widget 集合
 final Map<String, Widget> widgetMap = {
    '常用组件':null,
    'Container': ContainerWidget(),
    'Image': ImageWidget(),
    'Text': TextWidget(),
    'Icon & Button': IconBtnWidget(),
    'ListView': ListViewWidget(),
    'ListView Horizontal': ListViewHorizontalWidget(),
    'ListView.builder': ListViewBuilder(),
    'GridView': GridViewWidget(),
    'Form & TextFormField': FormWidget(),

    'Material Design 风格组件':null,
   'AppBar': AppBarWidget(),
   'BottomNavigationBar' : BottomNavigationBarWidget(),
   'TabBar': TabBarWidget(),
   'Drawer': DrawerWidget(),
   'FloatingActionButton' : FloatingActionButtonWidget(),
   'FlatButton' : FlatButtonWidget(),
   'PopupMenuButton' : PopupMenuButtonWidget(),
   'Dialog': DialogWidget(),
   'TextField' : TextFieldWidget(),
   'Card' : CardWidget(),

   'Cupertino iOS 风格组件':null,
   'CupertinoActivityIndicator' : CupertinoActivityIndicatorWidget(),
   'CupertinoAlertDialog' : CupertinoAlertDialogWidget(),
   'CupertinoButton' : CupertinoButtonWidget(),
   'Cupertino 导航组件集' : CupertinoNavWidget(),

   '页面布局':null,
   'Center' : CenterLayout(),
   'Padding' : PaddingLayout(),
   'Align' : AlignLayout(),
   'Row' : RowLayout(),
   'Column' : ColumnLayout(),
   'FittedBox' : FittedBoxLayout(),
   'Stack & Alignment' : StackAlignmentLayout(),
   'Stack & Positioned' : StackPositionedLayout(),
   'IndexedStack' : IndexedStackLayout(),
   'SizedBox' : SizedBoxLayout(),
   'ConstrainedBox' : ConstrainedBoxLayout(),
   'LimitedBox' : LimitedBoxLayout(),
   'FractionallySizeBox' : FractionallySizeBoxLayout(),
   'Table' : TableLayout(),
   'Transform' : TransformLayout(),
   'Wrap' : WrapLayout(),
 };

  //自身就有 AppBar 的 widget
  final List selfHasTitle = ['AppBar','TabBar', 'Drawer', 'PopupMenuButton', 'Cupertino 导航组件集'];

  //列表的 item
  List<Widget> createListItems() {
    List<Widget> listItems = [];
    widgetMap.forEach((String title, Widget widget) {
      listItems.add(
        widget != null ?
          //按钮跳转到控件 demo 页
          RaisedButton(
            child: Text(title),
            onPressed: (){
              jump2WidgetDemo(title, widget);
            },
          ):
          //分割线
          _divider(title)
      );
    });

    return listItems;
  }

  //分割线
  Widget _divider(String title) {
    return Row(
      children: <Widget>[
        Flexible(
          child:Container(
            height: 1,
            color: Colors.grey,
          ),
        ),

        Text(title),

        Flexible(
          child:Container(
            height: 1,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  ///跳转到 widget 测试页面
  jump2WidgetDemo(String title, Widget widget) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WidgetDemoPage(title, widget, hideTitle: selfHasTitle.contains(title),);
    }));
  }
}
