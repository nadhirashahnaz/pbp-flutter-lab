# counter_7

Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
    - Stateless widget adalah widget statis dimana seluruh konfigurasi yang dimuat didalamnya telah diinisiasi sejak awal. Contoh : button + -
    - Stateful widget berlaku sebaliknya dimana sifatnya adalah dinamis, sehingga widget ini dapat diperbaharui kapanpun dibutuhkan berdasarkan user actions atau ketika terjadinya perubahan data. Contoh : text ganjil genap, text angka counter

Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
    - Text untuk meuliskan kata/kalimat

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