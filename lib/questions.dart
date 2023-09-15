const questions = [
  {
    "kalimat": "Saya makan nasi",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Sekarang",
    "aspek": "ke-sedang-an",
    "bahasa_inggris": "I am eating rice"
  },
  {
    "kalimat": "Rumah dibangun tahun lalu",
    "jenis_kalimat": "Pasif",
    "konsep_waktu": "Lampau",
    "aspek": "ke-sudah-an",
    "bahasa_inggris": "The house was built last year"
  },
  {
    "kalimat": "Belajar adalah kunci kesuksesan",
    "jenis_kalimat": "Nominal",
    "konsep_waktu": "Kosong",
    "aspek": "kosong",
    "bahasa_inggris": "Learning is the key to success"
  },
  {
    "kalimat": "Mereka akan pergi ke pantai besok",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Akan Datang",
    "aspek": "ke-akan-an",
    "bahasa_inggris": "They will go to the beach tomorrow"
  },
  {
    "kalimat": "Bukunya sudah saya baca",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Sekarang",
    "aspek": "ke-sudah-an",
    "bahasa_inggris": "I have already read the book"
  },
  {
    "kalimat": "Piala dunia akan diadakan tahun depan",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Akan Datang",
    "aspek": "ke-akan-an",
    "bahasa_inggris": "The World Cup will be held next year"
  },
  {
    "kalimat": "Kucing itu sedang tidur",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Sekarang",
    "aspek": "ke-sedang-an",
    "bahasa_inggris": "The cat is sleeping"
  },
  {
    "kalimat": "Ponselnya telah rusak sejak kemarin",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Lampau",
    "aspek": "ke-sedang-an",
    "bahasa_inggris": "Her phone has been broken since yesterday"
  },
  {
    "kalimat": "Kejujuran dihargai oleh semua orang",
    "jenis_kalimat": "Nominal",
    "konsep_waktu": "Kosong",
    "aspek": "kosong",
    "bahasa_inggris": "Honesty is valued by everyone"
  },
  {
    "kalimat": "Pekerjaan selesai dilakukan",
    "jenis_kalimat": "Pasif",
    "konsep_waktu": "Sekarang",
    "aspek": "ke-sedang-an",
    "bahasa_inggris": "The work is being done"
  },
  {
    "kalimat": "Mereka akan mengadakan pesta ulang tahun besok",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Akan Datang",
    "aspek": "ke-akan-an",
    "bahasa_inggris": "They will throw a birthday party tomorrow"
  },
  {
    "kalimat": "Buku itu sudah saya beli minggu lalu",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Lampau",
    "aspek": "ke-sudah-an",
    "bahasa_inggris": "I already bought the book last week"
  },
  {
    "kalimat": "Pameran seni akan diadakan di galeri ini bulan depan",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Akan Datang",
    "aspek": "ke-akan-an",
    "bahasa_inggris": "The art exhibition will be held at this gallery next month"
  },
  {
    "kalimat": "Dia sedang menonton film favoritnya",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Sekarang",
    "aspek": "ke-sedang-an",
    "bahasa_inggris": "She is currently watching her favorite movie"
  },
  {
    "kalimat": "Rumah itu telah dijual beberapa bulan yang lalu",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Lampau",
    "aspek": "ke-sudah-an",
    "bahasa_inggris": "The house was sold a few months ago"
  },
  {
    "kalimat": "Kesuksesan adalah hasil dari kerja keras",
    "jenis_kalimat": "Nominal",
    "konsep_waktu": "Kosong",
    "aspek": "kosong",
    "bahasa_inggris": "Success is the result of hard work"
  },
  {
    "kalimat": "Mobil itu sedang diperbaiki di bengkel",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Sekarang",
    "aspek": "ke-sedang-an",
    "bahasa_inggris": "The car is being repaired at the garage"
  },
  {
    "kalimat": "Ia akan bertemu dengan klien penting besok",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Akan Datang",
    "aspek": "ke-akan-an",
    "bahasa_inggris": "He will meet with an important client tomorrow"
  },
  {
    "kalimat": "Pakaian itu sudah dicuci kemarin",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Lampau",
    "aspek": "ke-sudah-an",
    "bahasa_inggris": "The clothes were washed yesterday"
  },
  {
    "kalimat": "Acara musik akan diadakan di taman itu malam ini",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Akan Datang",
    "aspek": "ke-akan-an",
    "bahasa_inggris": "The music event will be held at the park tonight"
  },
  {
    "kalimat": "Anjing itu sedang berlari di taman",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Sekarang",
    "aspek": "ke-sedang-an",
    "bahasa_inggris": "The dog is running in the park"
  },
  {
    "kalimat": "Paket sudah dikirimkan kemarin oleh kurir",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Lampau",
    "aspek": "ke-sudah-an",
    "bahasa_inggris": "The package was sent by the courier yesterday"
  },
  {
    "kalimat": "Ketulusan hati sangat dihargai dalam persahabatan",
    "jenis_kalimat": "Nominal",
    "konsep_waktu": "Kosong",
    "aspek": "kosong",
    "bahasa_inggris": "Sincerity of heart is highly valued in friendship"
  },
  {
    "kalimat": "Laporan sedang disusun oleh tim kami",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Sekarang",
    "aspek": "ke-sedang-an",
    "bahasa_inggris": "The report is currently being prepared by our team"
  },
  {
    "kalimat": "Perusahaan akan meluncurkan produk baru bulan depan",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Akan Datang",
    "aspek": "ke-akan-an",
    "bahasa_inggris": "The company will launch a new product next month"
  },
  {
    "kalimat": "Ia sedang memasak makan malam",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Sekarang",
    "aspek": "ke-sedang-an",
    "bahasa_inggris": "She is currently cooking dinner"
  },
  {
    "kalimat": "Rencana perjalanan sudah disusun sejak minggu lalu",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Lampau",
    "aspek": "ke-sudah-an",
    "bahasa_inggris": "The travel plan was prepared since last week"
  },
  {
    "kalimat": "Pesta ulang tahun akan diadakan di rumahnya malam ini",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Akan Datang",
    "aspek": "ke-akan-an",
    "bahasa_inggris": "The birthday party will be held at her house tonight"
  },
  {
    "kalimat": "Dia sedang membaca buku di perpustakaan",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Sekarang",
    "aspek": "ke-sedang-an",
    "bahasa_inggris": "He is currently reading a book at the library"
  },
  {
    "kalimat": "Paket itu telah diterima oleh saya tadi pagi",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Lampau",
    "aspek": "ke-sudah-an",
    "bahasa_inggris": "The package was received by me this morning"
  },
  {
    "kalimat": "Konferensi internasional akan diadakan di kota ini tahun depan",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Akan Datang",
    "aspek": "ke-akan-an",
    "bahasa_inggris": "The international conference will be held in this city next year"
  },
  {
    "kalimat": "Saat ini, dia sedang belajar bahasa Prancis",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Sekarang",
    "aspek": "ke-sedang-an",
    "bahasa_inggris": "Currently, she is studying French"
  },
  {
    "kalimat": "Proyek itu sudah selesai dikerjakan oleh tim kami",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Lampau",
    "aspek": "ke-sudah-an",
    "bahasa_inggris": "The project has been completed by our team"
  },
  {
    "kalimat": "Pameran seni rupa akan dibuka di galeri seni ini besok",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Akan Datang",
    "aspek": "ke-akan-an",
    "bahasa_inggris": "The art exhibition will be inaugurated at this art gallery tomorrow"
  },
  {
    "kalimat": "Anjing-anjing itu sedang bermain di halaman belakang",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Sekarang",
    "aspek": "ke-sedang-an",
    "bahasa_inggris": "Those dogs are currently playing in the backyard"
  },
  {
    "kalimat": "Surat itu telah dikirimkan oleh pos tadi sore",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Lampau",
    "aspek": "ke-sudah-an",
    "bahasa_inggris": "The letter was sent by mail this afternoon"
  },
  {
    "kalimat": "Penelitian baru akan diterbitkan dalam jurnal ilmiah bulan depan",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Akan Datang",
    "aspek": "ke-akan-an",
    "bahasa_inggris": "The new research will be published in a scientific journal next month"
  },
  {
    "kalimat": "Siswa-siswa itu sedang mengikuti ujian akhir semester",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Sekarang",
    "aspek": "ke-sedang-an",
    "bahasa_inggris": "Those students are currently taking their final semester exams"
  },
  {
    "kalimat": "Sertifikat itu sudah diberikan kepada pemenang kompetisi",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Lampau",
    "aspek": "ke-sudah-an",
    "bahasa_inggris": "The certificate was given to the competition winner"
  },
  {
    "kalimat": "Rencana perjalanan bisnis akan dibahas besok",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Akan Datang",
    "aspek": "ke-akan-an",
    "bahasa_inggris": "The business travel plan will be discussed tomorrow"
  },
  {
    "kalimat": "Dia sedang mengejar mimpinya menjadi seorang penulis terkenal",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Sekarang",
    "aspek": "ke-sedang-an",
    "bahasa_inggris": "He is currently pursuing his dream of becoming a famous writer"
  },
  {
    "kalimat": "Buku-buku itu telah dipinjamkan kepada teman-teman saya",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Lampau",
    "aspek": "ke-sudah-an",
    "bahasa_inggris": "The books were lent to my friends"
  },
  {
    "kalimat": "Acara musik akan dimulai di stadion besar ini malam ini",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Akan Datang",
    "aspek": "ke-akan-an",
    "bahasa_inggris": "The music event will commence at this large stadium tonight"
  },
  {
    "kalimat": "Dia sedang merenung di tepi danau",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Sekarang",
    "aspek": "ke-sedang-an",
    "bahasa_inggris": "She is currently contemplating by the lake"
  },
  {
    "kalimat": "Rumah itu telah direnovasi oleh pemiliknya beberapa bulan yang lalu",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Lampau",
    "aspek": "ke-sudah-an",
    "bahasa_inggris": "The house was renovated by its owner a few months ago"
  },
  {
    "kalimat": "Kemajuan teknologi adalah kunci untuk masa depan yang cerah",
    "jenis_kalimat": "Nominal",
    "konsep_waktu": "Kosong",
    "aspek": "kosong",
    "bahasa_inggris": "Technological advancement is the key to a bright future"
  },
  {
    "kalimat": "Rencana proyek sedang dikerjakan oleh tim insinyur",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Sekarang",
    "aspek": "ke-sedang-an",
    "bahasa_inggris": "The project plan is currently being worked on by the engineering team"
  },
  {
    "kalimat": "Festival musik akan diselenggarakan di kota ini tahun depan",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Akan Datang",
    "aspek": "ke-akan-an",
    "bahasa_inggris": "A music festival will be held in this city next year"
  },
  {
    "kalimat": "Dia sedang memotret pemandangan indah di pegunungan",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Sekarang",
    "aspek": "ke-sedang-an",
    "bahasa_inggris": "He is currently taking photos of the beautiful mountain scenery"
  },
  {
    "kalimat": "Kesepakatan itu sudah dicapai oleh kedua belah pihak",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Lampau",
    "aspek": "ke-sudah-an",
    "bahasa_inggris": "The agreement was reached by both parties"
  },
  {
    "kalimat": "Peluncuran produk baru akan dilakukan dalam waktu dekat",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Akan Datang",
    "aspek": "ke-akan-an",
    "bahasa_inggris": "The launch of the new product will take place soon"
  },
  {
    "kalimat": "Mereka sedang berkumpul untuk rapat penting ini",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Sekarang",
    "aspek": "ke-sedang-an",
    "bahasa_inggris": "They are currently gathering for this important meeting"
  },
  {
    "kalimat": "Sertifikat prestasi sudah diterima oleh siswa-siswa berprestasi",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Lampau",
    "aspek": "ke-sudah-an",
    "bahasa_inggris": "The achievement certificates were received by the high-achieving students"
  },
  {
    "kalimat": "Pengumuman resmi akan dibuat dalam waktu dekat",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Akan Datang",
    "aspek": "ke-akan-an",
    "bahasa_inggris": "The official announcement will be made soon"
  },
  {
    "kalimat": "Mereka sedang menikmati liburan musim panas di pantai",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Sekarang",
    "aspek": "ke-sedang-an",
    "bahasa_inggris": "They are currently enjoying a summer vacation at the beach"
  },
  {
    "kalimat": "Makanan itu sudah dimasak oleh koki profesional",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Lampau",
    "aspek": "ke-sudah-an",
    "bahasa_inggris": "The food was cooked by a professional chef"
  },
  {
    "kalimat": "Rapat besar akan diadakan di hotel ini bulan depan",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Akan Datang",
    "aspek": "ke-akan-an",
    "bahasa_inggris": "A large meeting will be held at this hotel next month"
  },
  {
    "kalimat": "Dia sedang menjalani pelatihan intensif untuk pertandingan olahraga",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Sekarang",
    "aspek": "ke-sedang-an",
    "bahasa_inggris": "He is currently undergoing intensive training for the sports competition"
  },
  {
    "kalimat": "Proposal itu sudah disetujui oleh manajemen perusahaan",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Lampau",
    "aspek": "ke-sudah-an",
    "bahasa_inggris": "The proposal was approved by the company's management"
  },
  {
    "kalimat": "Perkawinan mereka akan dirayakan dalam upacara besar besok",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Akan Datang",
    "aspek": "ke-akan-an",
    "bahasa_inggris": "Their wedding will be celebrated in a grand ceremony tomorrow"
  },
  {
    "kalimat": "Dia sedang mengajar pelajaran matematika di sekolah",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Sekarang",
    "aspek": "ke-sedang-an",
    "bahasa_inggris": "She is currently teaching mathematics at the school"
  },
  {
    "kalimat": "Rencana bisnis itu sudah dirancang dengan matang oleh tim manajemen",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Lampau",
    "aspek": "ke-sudah-an",
    "bahasa_inggris": "The business plan was carefully crafted by the management team"
  },
  {
    "kalimat": "Konser musik akan diselenggarakan di stadion ini malam ini",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Akan Datang",
    "aspek": "ke-akan-an",
    "bahasa_inggris": "A music concert will be held at this stadium tonight"
  },
  {
    "kalimat": "Dia sedang membantu temannya dengan pekerjaan rumah",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Sekarang",
    "aspek": "ke-sedang-an",
    "bahasa_inggris": "He is currently helping his friend with homework"
  },
  {
    "kalimat": "Sertifikat penghargaan telah diberikan kepada guru-guru yang berprestasi",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Lampau",
    "aspek": "ke-sudah-an",
    "bahasa_inggris": "The certificates of appreciation were awarded to the high-achieving teachers"
  },
  {
    "kalimat": "Peluncuran produk baru akan diumumkan dalam waktu dekat",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Akan Datang",
    "aspek": "ke-akan-an",
    "bahasa_inggris": "The launch of the new product will be announced soon"
  },
  {
    "kalimat": "Mereka sedang menjelajahi hutan belantara di ekspedisi ini",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Sekarang",
    "aspek": "ke-sedang-an",
    "bahasa_inggris": "They are currently exploring the wilderness in this expedition"
  },
  {
    "kalimat": "Kerja kerasnya telah diakui oleh perusahaan dengan kenaikan gaji",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Lampau",
    "aspek": "ke-sudah-an",
    "bahasa_inggris": "His hard work was acknowledged by the company with a salary increase"
  },
  {
    "kalimat": "Pesta pernikahan akan diselenggarakan di hotel mewah ini bulan depan",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Akan Datang",
    "aspek": "ke-akan-an",
    "bahasa_inggris": "The wedding party will be held at this luxurious hotel next month"
  },
  {
    "kalimat": "Dia sedang merancang desain logo untuk perusahaan baru",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Sekarang",
    "aspek": "ke-sedang-an",
    "bahasa_inggris": "She is currently designing a logo for the new company"
  },
  {
    "kalimat": "Proyek tersebut telah selesai dikerjakan oleh tim ahli",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Lampau",
    "aspek": "ke-sudah-an",
    "bahasa_inggris": "The project has been completed by the expert team"
  },
  {
    "kalimat": "Konferensi internasional akan diadakan di kota ini tahun depan",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Akan Datang",
    "aspek": "ke-akan-an",
    "bahasa_inggris": "The international conference will be held in this city next year"
  },
  {
    "kalimat": "Mereka sedang mengejar impian mereka untuk meraih gelar doktor",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Sekarang",
    "aspek": "ke-sedang-an",
    "bahasa_inggris": "They are currently pursuing their dream of obtaining a doctoral degree"
  },
  {
    "kalimat": "Sertifikat prestasi sudah diberikan kepada siswa-siswa berprestasi",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Lampau",
    "aspek": "ke-sudah-an",
    "bahasa_inggris": "The certificates of achievement were given to the high-achieving students"
  },
  {
    "kalimat": "Rencana bisnis akan disusun dengan cermat oleh tim manajemen",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Akan Datang",
    "aspek": "ke-akan-an",
    "bahasa_inggris": "The business plan will be carefully crafted by the management team"
  },
  {
    "kalimat": "Dia sedang melakukan perjalanan keliling dunia untuk penelitian",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Sekarang",
    "aspek": "ke-sedang-an",
    "bahasa_inggris": "He is currently traveling around the world for research"
  },
  {
    "kalimat": "Karya seni itu sudah dipamerkan di galeri seni selama beberapa minggu",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Lampau",
    "aspek": "ke-sudah-an",
    "bahasa_inggris": "The artwork was exhibited at the art gallery for several weeks"
  },
  {
    "kalimat": "Peluncuran produk baru akan dilakukan dalam waktu dekat",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Akan Datang",
    "aspek": "ke-akan-an",
    "bahasa_inggris": "The launch of the new product will take place soon"
  },
  {
    "kalimat": "Mereka sedang menikmati liburan musim panas di pantai",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Sekarang",
    "aspek": "ke-sedang-an",
    "bahasa_inggris": "They are currently enjoying a summer vacation at the beach"
  },
  {
    "kalimat": "Makanan itu sudah dimasak oleh koki profesional",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Lampau",
    "aspek": "ke-sudah-an",
    "bahasa_inggris": "The food was cooked by a professional chef"
  },
  {
    "kalimat": "Rapat besar akan diadakan di hotel ini bulan depan",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Akan Datang",
    "aspek": "ke-akan-an",
    "bahasa_inggris": "A large meeting will be held at this hotel next month"
  },
  {
    "kalimat": "Dia sedang menjalani pelatihan intensif untuk pertandingan olahraga",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Sekarang",
    "aspek": "ke-sedang-an",
    "bahasa_inggris": "He is currently undergoing intensive training for the sports competition"
  },
  {
    "kalimat": "Proposal itu sudah disetujui oleh manajemen perusahaan",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Lampau",
    "aspek": "ke-sudah-an",
    "bahasa_inggris": "The proposal was approved by the company's management"
  },
  {
    "kalimat": "Perkawinan mereka akan dirayakan dalam upacara besar besok",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Akan Datang",
    "aspek": "ke-akan-an",
    "bahasa_inggris": "Their wedding will be celebrated in a grand ceremony tomorrow"
  },
  {
    "kalimat": "Dia sedang mengajar pelajaran matematika di sekolah",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Sekarang",
    "aspek": "ke-sedang-an",
    "bahasa_inggris": "She is currently teaching mathematics at the school"
  },
  {
    "kalimat": "Rencana bisnis itu sudah dirancang dengan matang oleh tim manajemen",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Lampau",
    "aspek": "ke-sudah-an",
    "bahasa_inggris": "The business plan was carefully crafted by the management team"
  },
  {
    "kalimat": "Konser musik akan diselenggarakan di stadion ini malam ini",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Akan Datang",
    "aspek": "ke-akan-an",
    "bahasa_inggris": "A music concert will be held at this stadium tonight"
  },
  {
    "kalimat": "Dia sedang merancang desain logo untuk perusahaan baru",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Sekarang",
    "aspek": "ke-sedang-an",
    "bahasa_inggris": "She is currently designing a logo for the new company"
  },
  {
    "kalimat": "Proyek tersebut telah selesai dikerjakan oleh tim ahli",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Lampau",
    "aspek": "ke-sudah-an",
    "bahasa_inggris": "The project has been completed by the expert team"
  },
  {
    "kalimat": "Konferensi internasional akan diadakan di kota ini tahun depan",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Akan Datang",
    "aspek": "ke-akan-an",
    "bahasa_inggris": "The international conference will be held in this city next year"
  },
  {
    "kalimat": "Mereka sedang mengejar impian mereka untuk meraih gelar doktor",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Sekarang",
    "aspek": "ke-sedang-an",
    "bahasa_inggris": "They are currently pursuing their dream of obtaining a doctoral degree"
  },
  {
    "kalimat": "Sertifikat prestasi sudah diberikan kepada siswa-siswa berprestasi",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Lampau",
    "aspek": "ke-sudah-an",
    "bahasa_inggris": "The certificates of achievement were given to the high-achieving students"
  },
  {
    "kalimat": "Rencana bisnis akan disusun dengan cermat oleh tim manajemen",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Akan Datang",
    "aspek": "ke-akan-an",
    "bahasa_inggris": "The business plan will be carefully crafted by the management team"
  },
  {
    "kalimat": "Dia sedang melakukan perjalanan keliling dunia untuk penelitian",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Sekarang",
    "aspek": "ke-sedang-an",
    "bahasa_inggris": "He is currently traveling around the world for research"
  },
  {
    "kalimat": "Karya seni itu sudah dipamerkan di galeri seni selama beberapa minggu",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Lampau",
    "aspek": "ke-sudah-an",
    "bahasa_inggris": "The artwork was exhibited at the art gallery for several weeks"
  },
  {
    "kalimat": "Peluncuran produk baru akan diumumkan dalam waktu dekat",
    "jenis_kalimat": "Verbal",
    "konsep_waktu": "Akan Datang",
    "aspek": "ke-akan-an",
    "bahasa_inggris": "The launch of the new product will be announced soon"
  }
];
