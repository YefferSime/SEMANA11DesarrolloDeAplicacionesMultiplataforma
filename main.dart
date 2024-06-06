//EJERCICIO02
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cupertino and Material Alerts',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cupertino and Material Alerts'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: ElevatedButton(
              child: Text('Show Material Alert'),
              onPressed: () {
                _showMaterialAlert(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: ElevatedButton(
              child: Text('Show Material Alert with Options'),
              onPressed: () {
                _showMaterialAlertWithOptions(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: CupertinoButton(
              child: Text('Show Cupertino Alert'),
              onPressed: () {
                _showCupertinoAlert(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: CupertinoButton(
              child: Text('Show Cupertino Alert with Options'),
              onPressed: () {
                _showCupertinoAlertWithOptions(context);
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showMaterialAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Material Alert'),
          content: Text('This is a simple Material alert.'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showMaterialAlertWithOptions(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Material Alert with Options'),
          content: Text('This is a Material alert with options.'),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showCupertinoAlert(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('Cupertino Alert'),
          content: Text('This is a simple Cupertino alert.'),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showCupertinoAlertWithOptions(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('Cupertino Alert with Options'),
          content: Text('This is a Cupertino alert with options.'),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            CupertinoDialogAction(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

//EJERCICIO02
//CUPERTINO
//import 'package:flutter/cupertino.dart';
//
//void main() => runApp(const DatePickerApp());
//
//class DatePickerApp extends StatelessWidget {
//  const DatePickerApp({Key? key}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return const CupertinoApp(
//      theme: CupertinoThemeData(brightness: Brightness.light),
//      home: DatePickerExample(),
//    );
//  }
//}
//
//class DatePickerExample extends StatefulWidget {
//  const DatePickerExample({Key? key}) : super(key: key);
//
//  @override
//  State<DatePickerExample> createState() => _DatePickerExampleState();
//}
//
//class _DatePickerExampleState extends State<DatePickerExample> {
//  DateTime date = DateTime(2016, 10, 26);
//  DateTime time = DateTime(2016, 5, 10, 22, 35);
//  DateTime dateTime = DateTime(2016, 8, 3, 17, 45);
//
//  // This function displays a CupertinoModalPopup with a reasonable fixed height
//  // which hosts CupertinoDatePicker.
//  void _showDialog(Widget child) {
//    showCupertinoModalPopup<void>(
//      context: context,
//      builder: (BuildContext context) => Container(
//        height: 216,
//        padding: const EdgeInsets.only(top: 6.0),
//        // The Bottom margin is provided to align the popup above the system
//        // navigation bar.
//        margin: EdgeInsets.only(
//          bottom: MediaQuery.of(context).viewInsets.bottom,
//          left: 16.0,
//          right: 16.0,
//        ),
//        // Provide a background color for the popup.
//        color: CupertinoColors.systemBackground.resolveFrom(context),
//        // Use a SafeArea widget to avoid system overlaps.
//        child: SafeArea(
//          top: false,
//          child: child,
//        ),
//      ),
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return CupertinoPageScaffold(
//      navigationBar: const CupertinoNavigationBar(
//        middle: Text('CupertinoDatePicker Sample'),
//      ),
//      child: DefaultTextStyle(
//        style: TextStyle(
//          color: CupertinoColors.label.resolveFrom(context),
//          fontSize: 22.0,
//        ),
//        child: Center(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              _DatePickerItem(
//                children: <Widget>[
//                  const Text('Date'),
//                  CupertinoButton(
//                    // Display a CupertinoDatePicker in date picker mode.
//                    onPressed: () => _showDialog(
//                      CupertinoDatePicker(
//                        initialDateTime: date,
//                        mode: CupertinoDatePickerMode.date,
//                        use24hFormat: true,
//                        // This shows day of week alongside day of month
//                        showDayOfWeek: true,
//                        // This is called when the user changes the date.
//                        onDateTimeChanged: (DateTime newDate) {
//                          setState(() => date = newDate);
//                        },
//                      ),
//                    ),
//                    // In this example, the date is formatted manually. You can
//                    // use the intl package to format the value based on the
//                    // user's locale settings.
//                    child: Text(
//                      '${date.month}-${date.day}-${date.year}',
//                      style: const TextStyle(
//                        fontSize: 22.0,
//                      ),
//                    ),
//                  ),
//                ],
//              ),
//              _DatePickerItem(
//                children: <Widget>[
//                  const Text('Time'),
//                  CupertinoButton(
//                    // Display a CupertinoDatePicker in time picker mode.
//                    onPressed: () => _showDialog(
//                      CupertinoDatePicker(
//                        initialDateTime: time,
//                        mode: CupertinoDatePickerMode.time,
//                        use24hFormat: true,
//                        // This is called when the user changes the time.
//                        onDateTimeChanged: (DateTime newTime) {
//                          setState(() => time = newTime);
//                        },
//                      ),
//                    ),
//                    // In this example, the time value is formatted manually.
//                    // You can use the intl package to format the value based on
//                    // the user's locale settings.
//                    child: Text(
//                      '${time.hour}:${time.minute}',
//                      style: const TextStyle(
//                        fontSize: 22.0,
//                      ),
//                    ),
//                  ),
//                ],
//              ),
//              _DatePickerItem(
//                children: <Widget>[
//                  const Text('DateTime'),
//                  CupertinoButton(
//                    // Display a CupertinoDatePicker in dateTime picker mode.
//                    onPressed: () => _showDialog(
//                      CupertinoDatePicker(
//                        initialDateTime: dateTime,
//                        use24hFormat: true,
//                        // This is called when the user changes the dateTime.
//                        onDateTimeChanged: (DateTime newDateTime) {
//                          setState(() => dateTime = newDateTime);
//                        },
//                      ),
//                    ),
//                    // In this example, the time value is formatted manually. You
//                    // can use the intl package to format the value based on the
//                    // user's locale settings.
//                    child: Text(
//                      '${dateTime.month}-${dateTime.day}-${dateTime.year} ${dateTime.hour}:${dateTime.minute}',
//                      style: const TextStyle(
//                        fontSize: 22.0,
//                      ),
//                    ),
//                  ),
//                ],
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}
//
//// This class simply decorates a row of widgets.
//class _DatePickerItem extends StatelessWidget {
//  const _DatePickerItem({required this.children});
//
//  final List<Widget> children;
//
//  @override
//  Widget build(BuildContext context) {
//    return DecoratedBox(
//      decoration: const BoxDecoration(
//        border: Border(
//          top: BorderSide(
//            color: CupertinoColors.inactiveGray,
//            width: 0.0,
//          ),
//          bottom: BorderSide(
//            color: CupertinoColors.inactiveGray,
//            width: 0.0,
//          ),
//        ),
//      ),
//      child: Padding(
//        padding: const EdgeInsets.symmetric(horizontal: 16.0),
//        child: Row(
//          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//          children: children,
//        ),
//      ),
//    );
//  }
//}



//MATERIAL:
//import 'package:flutter/material.dart';
//
//void main() {
//  runApp(const DatePickerApp());
//}
//
//class DatePickerApp extends StatelessWidget {
//  const DatePickerApp({Key? key}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Material DatePicker Sample',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: DatePickerExample(),
//    );
//  }
//}
//
//class DatePickerExample extends StatefulWidget {
//  const DatePickerExample({Key? key}) : super(key: key);
//
//  @override
//  State<DatePickerExample> createState() => _DatePickerExampleState();
//}
//
//class _DatePickerExampleState extends State<DatePickerExample> {
//  DateTime date = DateTime(2016, 10, 26);
//  TimeOfDay time = TimeOfDay(hour: 22, minute: 35);
//
//  Future<void> _selectDate(BuildContext context) async {
//    final DateTime? picked = await showDatePicker(
//      context: context,
//      initialDate: date,
//      firstDate: DateTime(2015, 8),
//      lastDate: DateTime(2101),
//    );
//    if (picked != null && picked != date) {
//      setState(() {
//        date = picked;
//      });
//    }
//  }
//
//  Future<void> _selectTime(BuildContext context) async {
//    final TimeOfDay? picked = await showTimePicker(
//      context: context,
//      initialTime: time,
//    );
//    if (picked != null && picked != time) {
//      setState(() {
//        time = picked;
//      });
//    }
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Material DatePicker Sample'),
//      ),
//      body: Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            SizedBox(height: 20),
//            _DatePickerItem(
//              label: 'Date',
//              value: '${date.month}-${date.day}-${date.year}',
//              onTap: () => _selectDate(context),
//            ),
//            SizedBox(height: 20),
//            _DatePickerItem(
//              label: 'Time',
//              value: '${time.hour}:${time.minute}',
//              onTap: () => _selectTime(context),
//            ),
//            SizedBox(height: 20),
//          ],
//        ),
//      ),
//    );
//  }
//}
//
//class _DatePickerItem extends StatelessWidget {
//  final String label;
//  final String value;
//  final VoidCallback onTap;
//
//  const _DatePickerItem({
//    required this.label,
//    required this.value,
//    required this.onTap,
//  });
//
//  @override
//  Widget build(BuildContext context) {
//    return GestureDetector(
//      onTap: onTap,
//      child: Container(
//        width: double.infinity,
//        padding: EdgeInsets.all(16),
//        margin: EdgeInsets.symmetric(horizontal: 20),
//        decoration: BoxDecoration(
//          border: Border.all(color: Colors.grey),
//          borderRadius: BorderRadius.circular(8),
//        ),
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.start,
//          children: <Widget>[
//            Text(
//              label,
//              style: TextStyle(
//                fontSize: 18,
//                fontWeight: FontWeight.bold,
//              ),
//            ),
//            SizedBox(height: 8),
//            Text(
//              value,
//              style: TextStyle(
//                fontSize: 20,
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}

