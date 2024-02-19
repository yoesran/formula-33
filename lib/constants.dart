import 'dart:math';

String getRandomFormula(String currentFormula) {
  var random = Random();
  String randomFormula;
  do {
    randomFormula = formulaList[random.nextInt(formulaList.length)];
  } while (randomFormula == currentFormula);
  return randomFormula;
}

List<String> jenisKalimatList = [
  "Verbal",
  "Nomina",
  "Pasif",
];

List<String> konsepWaktuList = [
  "Sekarang",
  "Lampau",
  "Akan Datang",
];

List<String> aspekList = [
  "ke-sedang-an",
  "ke-sudah-an",
  "ke-akandatang-an",
  "kosong",
];

List<String> formulaList = [
  "V1",
  "V2",
  "V3",
  "V4",
  "V5",
  "V6",
  "V7",
  "V8",
  "V9",
  "V10",
  "V11",
  "N1",
  "N2",
  "N3",
  "N4",
  "N5",
  "N6",
  "N7",
  "N8",
  "N9",
  "N10",
  "N11",
  "P1",
  "P2",
  "P3",
  "P4",
  "P5",
  "P6",
  "P7",
  "P8",
  "P9",
  "P10",
  "P11",
];

List<String> formulaDetailList = [
  "kerja",
  "will kerja",
  "is/am/are kerjaing",
  "kerjaed1",
  "have kerjaed2",
  "would kerja",
  "was/were kerjaing",
  "will be kerjaing",
  "had kerjaed2",
  "will have kerjaed2",
  "have been kerjaing",
  "is/am/are",
  "will be",
  "is/am/are",
  "was/were",
  "have been",
  "would be",
  "was/were",
  "will be",
  "had been",
  "will have been",
  "have been",
  "is/am/are kerjaed2",
  "will be kerjaed2",
  "is/am/are being kerjaed2",
  "was/were kerjaed2",
  "have been kerjaed2",
  "would be kerjaed2",
  "was/were being kerjaed2",
  "will be being kerjaed2",
  "had been kerjaed2",
  "will have been kerjaed2",
  "have been being kerjaed2"
];
