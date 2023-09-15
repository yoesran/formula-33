const apiKey = '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';

Map<String, Map<String, Map<String, String>>> formulas = {
  "verbal": {
    "sekarang": {"ke-sedang-an": "is/am/are kerjaing", "ke-sudah-an": "have kerjaed2", "ke-akan-an": "will kerja", "kosong": "kerja"},
    "lampau": {"ke-sedang-an": "was/were kerjaing", "ke-sudah-an": "had kerjaed2", "ke-akan-an": "would kerja", "kosong": "kerjaed1"},
    "akan datang": {"ke-sedang-an": "will be kerjaing", "ke-sudah-an": "will have kerjaed2", "ke-akan-an": "", "kosong": "will kerja"}
  },
  "nominal": {
    "sekarang": {"ke-sedang-an": "is/am/are", "ke-sudah-an": "have been", "ke-akan-an": "would be", "kosong": "is/am/are"},
    "lampau": {"ke-sedang-an": "was/were", "ke-sudah-an": "had been", "ke-akan-an": "", "kosong": "was/were"},
    "akan datang": {"ke-sedang-an": "will be", "ke-sudah-an": "will have been", "ke-akan-an": "", "kosong": "will be"}
  },
  "pasif": {
    "sekarang": {
      "ke-sedang-an": "is/am/are being kerjaed2",
      "ke-sudah-an": "have been kerjaed2",
      "ke-akan-an": "would be kerjaed2",
      "kosong": "is/am/are kerjaed2"
    },
    "lampau": {
      "ke-sedang-an": "was/were being kerjaed2",
      "ke-sudah-an": "had been kerjaed2",
      "ke-akan-an": "",
      "kosong": "was/were kerjaed2"
    },
    "akan datang": {
      "ke-sedang-an": "will be being kerjaed2",
      "ke-sudah-an": "will have been kerjaed2",
      "ke-akan-an": "",
      "kosong": "will be kerjaed2"
    }
  }
};

String generateFormula(String jenisKalimat, String konsepWaktu, String aspek) {
  String formula = formulas[jenisKalimat.toLowerCase()]![konsepWaktu.toLowerCase()]![aspek.toLowerCase()]!;

  return formula == '' ? 'Formula tidak ditemukan' : formula;
}
