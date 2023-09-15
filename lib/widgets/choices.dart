import 'package:flutter/material.dart';

import './choice.dart';
import './dialog_choice.dart';

class Choices extends StatefulWidget {
  const Choices({super.key, required this.choices});

  final Map<String, String> choices;

  @override
  State<Choices> createState() => _ChoicesState();
}

class _ChoicesState extends State<Choices> {
  String type = '';
  String time = '';
  String aspect = '';

  Widget buildTypeDialog() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 4.0),
            child: Text(
              'Pilih Jenis Kalimat',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Wrap(
            children: [
              DialogChoice(
                  choice: 'Verbal',
                  color: type == 'Verbal' ? const Color(0xFFD8D9DA) : Colors.white,
                  onTap: () {
                    setState(() {
                      type = 'Verbal';
                    });

                    widget.choices['type'] = 'Verbal';

                    Navigator.of(context).pop();
                  }),
              DialogChoice(
                  choice: 'Nominal',
                  color: type == 'Nominal' ? const Color(0xFFD8D9DA) : Colors.white,
                  onTap: () {
                    setState(() {
                      type = 'Nominal';
                    });

                    widget.choices['type'] = 'Nominal';

                    Navigator.of(context).pop();
                  }),
              DialogChoice(
                  choice: 'Pasif',
                  color: type == 'Pasif' ? const Color(0xFFD8D9DA) : Colors.white,
                  onTap: () {
                    setState(() {
                      type = 'Pasif';
                    });

                    widget.choices['type'] = 'Pasif';

                    Navigator.of(context).pop();
                  }),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildTimeDialog() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 4.0),
            child: Text(
              'Pilih Waktu',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Wrap(
            children: [
              DialogChoice(
                  choice: 'Sekarang',
                  color: time == 'Sekarang' ? const Color(0xFFD8D9DA) : Colors.white,
                  onTap: () {
                    setState(() {
                      time = 'Sekarang';
                    });

                    widget.choices['time'] = 'Sekarang';

                    Navigator.of(context).pop();
                  }),
              DialogChoice(
                  choice: 'Lampau',
                  color: time == 'Lampau' ? const Color(0xFFD8D9DA) : Colors.white,
                  onTap: () {
                    setState(() {
                      time = 'Lampau';
                    });

                    widget.choices['time'] = 'Lampau';

                    Navigator.of(context).pop();
                  }),
              DialogChoice(
                  choice: 'Akan Datang',
                  color: time == 'Akan Datang' ? const Color(0xFFD8D9DA) : Colors.white,
                  onTap: () {
                    setState(() {
                      time = 'Akan Datang';
                    });

                    widget.choices['time'] = 'Akan Datang';

                    Navigator.of(context).pop();
                  }),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildAspectDialog() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 4.0),
            child: Text(
              'Pilih Aspek',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Wrap(
            children: [
              DialogChoice(
                  choice: 'Ke-sedang-an',
                  color: aspect == 'Ke-sedang-an' ? const Color(0xFFD8D9DA) : Colors.white,
                  onTap: () {
                    setState(() {
                      aspect = 'Ke-sedang-an';
                    });

                    widget.choices['aspect'] = 'Ke-sedang-an';

                    Navigator.of(context).pop();
                  }),
              DialogChoice(
                  choice: 'Ke-sudah-an',
                  color: aspect == 'Ke-sudah-an' ? const Color(0xFFD8D9DA) : Colors.white,
                  onTap: () {
                    setState(() {
                      aspect = 'Ke-sudah-an';
                    });

                    widget.choices['aspect'] = 'Ke-sudah-an';

                    Navigator.of(context).pop();
                  }),
              DialogChoice(
                  choice: 'Ke-akan-an',
                  color: aspect == 'Ke-akan-an' ? const Color(0xFFD8D9DA) : Colors.white,
                  onTap: () {
                    setState(() {
                      aspect = 'Ke-akan-an';
                    });

                    widget.choices['aspect'] = 'Ke-akan-an';

                    Navigator.of(context).pop();
                  }),
              DialogChoice(
                  choice: 'Kosong',
                  color: aspect == 'Kosong' ? const Color(0xFFD8D9DA) : Colors.white,
                  onTap: () {
                    setState(() {
                      aspect = 'Kosong';
                    });

                    widget.choices['aspect'] = 'Kosong';

                    Navigator.of(context).pop();
                  }),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Choice(
          dialogContent: buildTypeDialog(),
          choice: type == '' ? 'Pilih jenis kalimat' : 'Jenis kalimat: $type',
          color: const Color(0xFFA7ECEE),
        ),
        Choice(
          dialogContent: buildTimeDialog(),
          choice: time == '' ? 'Pilih waktu' : 'Waktu: $time',
          color: const Color(0xFFFFB6D9),
        ),
        Choice(
          dialogContent: buildAspectDialog(),
          choice: aspect == '' ? 'Pilih aspek' : 'Aspek: $aspect',
          color: const Color(0xFFFEFFAC),
        ),
      ],
    );
  }
}
