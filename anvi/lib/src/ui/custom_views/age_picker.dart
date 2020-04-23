import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/blocs/age_bloc.dart';
import 'package:anvi/src/utils/data_supporter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_picker/Picker.dart';

class AgePicker extends StatelessWidget {
  final _bloc = AgeBloc();
  final ScaffoldState state;
  AgePicker({Key key, @required this.state}) : super(key: key);

  showPicker(ScaffoldState state, initValue) {
    Picker(
      adapter: NumberPickerAdapter(
        data: DataSupporter.getAgeData(initValue),
      ),
      onConfirm: (picker, selecteds) {
        print(selecteds.toString());
        print(picker.getSelectedValues());
        _bloc.selectAge(picker.getSelectedValues()[0]);
      },
    ).show(state);
  }

  @override
  Widget build(BuildContext context) {
    var currentAge = 20;
    _bloc.selectAge(-1); // init value
    return GestureDetector(
      onTap: () {
        print('Show age picker');
        showPicker(state, currentAge);
      },
      child: Padding(
        padding: const EdgeInsets.all(Dimens.marginSmall),
        child: Center(
          child: StreamBuilder(
              stream: _bloc.getStream,
              builder: (context, snapshot) {
                if (snapshot.data == -1) {
                  return Text('-----');
                }
                currentAge = snapshot.data;
                return Text(currentAge.toString());
              }),
        ),
      ),
    );
  }
}
