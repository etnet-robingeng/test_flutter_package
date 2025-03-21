import 'package:app_family_materials/family_colors.dart';
import 'package:app_family_materials/spaceColumn.dart';
import 'package:flutter/material.dart';

class CustomInputTextField extends StatefulWidget {
  final String? header;
  final String? hint;
  final Icon? leadIcon;
  final Icon? actionIcon;
  final Function(String?) onChanged;
  final String? Function(String?) validator;
  final bool isEditable;

  const CustomInputTextField({
    super.key,
    this.header,
    this.hint,
    this.leadIcon,
    this.actionIcon,
    required this.onChanged,
    required this.validator,
    required this.isEditable,
  });

  @override
  CustomInputTextFieldState createState() => CustomInputTextFieldState();
}

class CustomInputTextFieldState extends State<CustomInputTextField> {
  String textValue = '';
  bool isValid = true;

  //GlobalKey
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  //FocusNodes
  final FocusNode _customFocusNode = FocusNode();

  //Form Controllers
  final TextEditingController _textOneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Color txtIconColor = widget.isEditable ? Theme.of(context).colorScheme.secondary : FamilyColors.neutral200;
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      key: _formKey,
      child: SpacingColumn(
        spacing: 15.0,
        children: [
          Visibility(visible: widget.header != null, child: Text(widget.header ?? '')),
          TextFormField(
            controller: _textOneController,
            focusNode: _customFocusNode,
            enabled: widget.isEditable,
            decoration: InputDecoration(
              filled: !widget.isEditable,
              fillColor: FamilyColors.neutral20,
              contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
              labelText: widget.hint,
              counterText: '',
              prefixIcon: widget.leadIcon ?? Icon(Icons.person, color: txtIconColor),
              suffixIcon: widget.actionIcon ?? Icon(Icons.remove_red_eye_sharp, color: txtIconColor),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.0),
                borderSide: BorderSide(color: Theme.of(context).canvasColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.0),
                borderSide: BorderSide(color: Theme.of(context).canvasColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.0),
                borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.0),
                borderSide: BorderSide(color: Theme.of(context).colorScheme.error),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.0),
                borderSide: BorderSide(color: Theme.of(context).colorScheme.error),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.0),
                borderSide: BorderSide(color: Theme.of(context).canvasColor),
              ),
            ),
            validator: widget.validator,
            onFieldSubmitted: (value) {
              if (_formKey.currentState!.validate()) {
                widget.onChanged(value);
              } else {
                widget.onChanged(null);
              }
            },
          ),
        ],
      ),
    );
  }
}
