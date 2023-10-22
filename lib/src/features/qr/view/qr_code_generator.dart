// qr_view_screen.dart
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fcpay/src/features/qr/qr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../ui/ui.dart';

class QRGenPage extends StatelessWidget {
  final String data;

  const QRGenPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QrCubit(
        context.read<SharedPreferences>(),
      ),
      child: QRGenView(data: data),
    );
  }
}

class QRGenView extends StatefulWidget {
  const QRGenView({
    super.key,
    required this.data,
  });

  final String data;

  @override
  State<QRGenView> createState() => _QRGenViewState();
}

class _QRGenViewState extends State<QRGenView> {
  @override
  void initState() {
    super.initState();
    context.read<QrCubit>().getForms();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.transparent),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 960),
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              children: [
                BlocBuilder<QrCubit, QrState>(
                  builder: (context, state) {
                    return Visibility(
                      visible: state.qrcode.isNotEmpty,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 32.0),
                        child: Text(
                          'Tu codigo ha sido generado!',
                          style: UITextStyle.headline3,
                        ),
                      ),
                    );
                  },
                ),
                BlocBuilder<QrCubit, QrState>(
                  builder: (context, state) {
                    return Visibility(
                      visible: state.qrcode.isEmpty,
                      child: const Icon(
                        Icons.qr_code_2_sharp,
                        size: 150.0,
                      ),
                    );
                  },
                ),
                BlocConsumer<QrCubit, QrState>(
                  listener: (context, state) {
                    if (state.message.isNotEmpty) {
                      _showMyDialog(state.message);
                    }
                  },
                  builder: (context, state) {
                    return Visibility(
                      visible: state.qrcode.isNotEmpty,
                      child: QrImageView(
                        data: state.qrcode,
                        version: QrVersions.auto,
                        size: 300.0,
                        backgroundColor: AppColors.white,
                        eyeStyle: const QrEyeStyle(color: Color(0xffA7E04B)),
                        dataModuleStyle: const QrDataModuleStyle(
                          color: Color(0xff279445),
                          dataModuleShape: QrDataModuleShape.square,
                        ),
                      ),
                    );
                  },
                ),
                BlocBuilder<QrCubit, QrState>(
                  builder: (context, state) {
                    return Visibility(
                      visible: state.qrcode.isEmpty,
                      child: const FormField(),
                    );
                  },
                ),
                BlocBuilder<QrCubit, QrState>(
                  builder: (context, state) {
                    return Visibility(
                      visible: state.qrcode.isEmpty,
                      child: const DocumentTextField(),
                    );
                  },
                ),
                BlocBuilder<QrCubit, QrState>(
                  builder: (context, state) {
                    return Visibility(
                      visible: state.qrcode.isEmpty,
                      child: const MontoTextField(),
                    );
                  },
                ),
                BlocBuilder<QrCubit, QrState>(
                  builder: (context, state) {
                    return Visibility(
                      visible: state.qrcode.isEmpty,
                      child: const DescriptionTextField(),
                    );
                  },
                ),
                BlocBuilder<QrCubit, QrState>(
                  builder: (context, state) {
                    return Visibility(
                      visible: state.qrcode.isEmpty,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: AppButton.green(
                          onPressed: () =>
                              context.read<QrCubit>().genQR(widget.data),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text('Generar Codigo QR')],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _showMyDialog(String message) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Apreciado ususario'),
          content: SingleChildScrollView(child: Text(message)),
          actions: <Widget>[
            TextButton(
              child: const Text('Aceptar'),
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

class FormField extends StatefulWidget {
  const FormField({super.key});

  @override
  State<FormField> createState() => _FormFieldState();
}

class _FormFieldState extends State<FormField> {
  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QrCubit, QrState>(
      builder: (context, state) {
        return DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: true,
            hint: Text(
              'Seleccione el tipo de formulario',
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).hintColor,
              ),
            ),
            items: state.forms
                .asMap()
                .entries
                .map((e) => e.value.nombre)
                .toList()
                .map((item) => DropdownMenuItem(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ))
                .toList(),
            value: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value;
                context
                    .read<QrCubit>()
                    .formIdChanged(state.forms.first.form_id.toString());
              });
            },
            buttonStyleData: const ButtonStyleData(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 100,
              width: 400,
            ),
            dropdownStyleData: const DropdownStyleData(
              maxHeight: 400,
            ),
            menuItemStyleData: const MenuItemStyleData(
              height: 40,
            ),
            dropdownSearchData: DropdownSearchData(
              searchController: textEditingController,
              searchInnerWidgetHeight: 50,
              searchInnerWidget: Container(
                height: 50,
                padding: const EdgeInsets.only(
                  top: 8,
                  bottom: 4,
                  right: 8,
                  left: 8,
                ),
                child: TextFormField(
                  expands: true,
                  maxLines: null,
                  controller: textEditingController,
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 8,
                    ),
                    hintText: 'Buscar formulario...',
                    hintStyle: const TextStyle(fontSize: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              searchMatchFn: (item, searchValue) {
                return item.value.toString().contains(searchValue);
              },
            ),
            //This to clear the search value when you close the menu
            onMenuStateChange: (isOpen) {
              if (!isOpen) {
                textEditingController.clear();
              }
            },
          ),
        );
      },
    );
  }
}

class DocumentTextField extends StatefulWidget {
  const DocumentTextField({super.key});

  @override
  State<DocumentTextField> createState() => _DocumentTextFieldState();
}

class _DocumentTextFieldState extends State<DocumentTextField> {
  final ValueNotifier<String?> text = ValueNotifier<String?>(null);
  final textFieldKey = GlobalKey<FormBuilderFieldState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: FormBuilderTextField(
        autovalidateMode: AutovalidateMode.always,
        name: 'Documento',
        key: textFieldKey,
        onChanged: (value) {
          text.value = value;
          context.read<QrCubit>().docChanged(value ?? '');
        },
        decoration: InputDecoration(
          labelText: 'Documento',
          suffixIcon: ValueListenableBuilder<String?>(
            valueListenable: text,
            child: IconButton(
              onPressed: () => textFieldKey.currentState?.didChange(null),
              tooltip: 'Clear',
              icon: const Icon(Icons.clear),
            ),
            builder: (context, value, child) =>
                (value?.isEmpty ?? true) ? const SizedBox() : child!,
          ),
        ),
      ),
    );
  }
}

class MontoTextField extends StatefulWidget {
  const MontoTextField({super.key});

  @override
  State<MontoTextField> createState() => _MontoTextFieldState();
}

class _MontoTextFieldState extends State<MontoTextField> {
  final ValueNotifier<String?> text = ValueNotifier<String?>(null);
  final textFieldKey = GlobalKey<FormBuilderFieldState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: FormBuilderTextField(
        autovalidateMode: AutovalidateMode.always,
        name: 'Monto',
        key: textFieldKey,
        onChanged: (value) {
          text.value = value;
          context.read<QrCubit>().montoChanged(value ?? '');
        },
        decoration: InputDecoration(
          labelText: 'Monto',
          suffixIcon: ValueListenableBuilder<String?>(
            valueListenable: text,
            child: IconButton(
              onPressed: () => textFieldKey.currentState?.didChange(null),
              tooltip: 'Clear',
              icon: const Icon(Icons.clear),
            ),
            builder: (context, value, child) =>
                (value?.isEmpty ?? true) ? const SizedBox() : child!,
          ),
        ),
      ),
    );
  }
}

class DescriptionTextField extends StatefulWidget {
  const DescriptionTextField({super.key});

  @override
  State<DescriptionTextField> createState() => _DescriptionTextFieldState();
}

class _DescriptionTextFieldState extends State<DescriptionTextField> {
  final ValueNotifier<String?> text = ValueNotifier<String?>(null);
  final textFieldKey = GlobalKey<FormBuilderFieldState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: FormBuilderTextField(
        autovalidateMode: AutovalidateMode.always,
        name: 'Descripcion',
        key: textFieldKey,
        onChanged: (value) {
          text.value = value;
          context.read<QrCubit>().descChanged(value ?? '');
        },
        decoration: InputDecoration(
          labelText: 'Descripcion',
          suffixIcon: ValueListenableBuilder<String?>(
            valueListenable: text,
            child: IconButton(
              onPressed: () => textFieldKey.currentState?.didChange(null),
              tooltip: 'Clear',
              icon: const Icon(Icons.clear),
            ),
            builder: (context, value, child) =>
                (value?.isEmpty ?? true) ? const SizedBox() : child!,
          ),
        ),
      ),
    );
  }
}
