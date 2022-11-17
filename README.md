# counter_7
TUGAS 8
Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
    - Navigator.push menumpuk route teratas dengan widget baru, push tidak menghapus widget sebelumnya.
    - Navigator.pushReplacement menggantikan route teratas dengan widegt baru, pushReplacemnet menghapus & menggantikan widget sebelumnya dengan yang baru

Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya
    - Text : menampilkan text
    - Column : menampilkan widget secara vertikal
    - Row : menampilkan widget secara horizontal
    - Container : membungkus widget
    - Padding : jarak widget
    - DropDownButton : dropdown menu jenis
    - scaffold : landasan halaman

Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
    - onSaved, onPressed, onChange, onTap

Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
    -Menampilkan screen teratas dr route. BuildContext yg menyimpan widget akan diakses navigator dg method pop,push,pushreplacemnet.

Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
    -membuat new page tambah_budget & data_budget
    -membuat form di tambah_budget
    -membuat drawer untuk memasukan page counter,tambah_budget,data_budget
    -memebuat list di tambah_budget untuk bisa di map oleh data_budget







TUGAS 7
Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
    - Stateless widget adalah widget statis dimana seluruh konfigurasi yang dimuat didalamnya telah diinisiasi sejak awal. Contoh : button + -
    - Stateful widget berlaku sebaliknya dimana sifatnya adalah dinamis, sehingga widget ini dapat diperbaharui kapanpun dibutuhkan berdasarkan user actions atau ketika terjadinya perubahan data. Contoh : text ganjil genap, text angka counter

Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
    - Widget Text untuk menuliskan kata/kalimat genap,ganjil
    - Widget Floatting action button untuk membuat tombol +/-
    - Widget Padding untuk mengatur jarak antara widget
    - Widget Visibility untuk mengatur kemunculan widget.

Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
    -  setState() bertugas untuk memberitahu widget bahwa ada objek yang berubah pada State sehingga aplikasi akan memuat ulang widget tersebut dengan nilai yang sudah diubah. yang terdampak adalah stateful widget karena stateful widget tergantung pada perubahan, perubahannya ada pada text ganjil genap dan nilai counter serta button - jika counter 0

Jelaskan perbedaan antara const dengan final.
    - Const dapat digunakan untuk deklarasi variabel immutable yang nilainya bersifat konstan dan harus sudah diketahui pada saat waktu kompilasi (Compile time) berjalan, artinya adalah nilai dari variabel tersebut harus sudah di berikan value secara langsung.
    - Final (variabel yang menggunakan keyword final) diinialisasi pada saat pertama kali digunakan dan hanya disetel sekali. Dengan kata lain nilai final akan diketahui pada saat run-time.

Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
    - create new program counter_7
    - membuat method baru decrementCounter() untuk mengset nilai counter berkurang
    - Set text dengan if condition jika counter%2=0 genap, counter%2=1 ganjil
    - set visibility & align floating action button, untuk button decrement di set invisible jika counter 0. button + selalu visible jika memanggil incrementCounter()