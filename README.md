# uts-so-09011382530162

## 1. identitas
- **Nama**: [M. ADIB SATRIYO WIBOWO]
- **NIM**: 09011382530162
- **Kelas**: [SKU3B]

## 2. Deskripsi
Script ini dibuat untuk melakukan backup otomatis terhadap file-file catatan praktikum berformat `.txt` yang berada di direktori sumber (`~/data_09011382530162`), mengarsipkan dan mengompresnya menjadi format `.tar.gz` dengan penamaan berdasarkan tanggal dan waktu sistem, serta mencatat riwayat setiap proses backup ke dalam file log secara otomatis[cite: 2, 3].

## 3. Cara Menjalankan
- Menjalankan script backup utama:
  ```bash
  bash script/backup.sh
Menjalankan script backup berulang di background:Bashbash script/backup_loop.sh &
Menggunakan alias yang telah dikonfigurasi:Bashbk162
4. Fitur PengembanganFitur yang dipilih: [Sebutkan fitur pengembangan yang Anda buat, misal: Rotasi arsip / Menu interaktif / Restore / Parameter].   Cara mencobanya: [Tuliskan perintah singkat untuk menjalankan fitur tersebut].   5. Bukti Job ControlPlaintextadib@adeeeeb:~/uts-so-09011382530162$ ./script/backup_loop.sh &
[1] 14250
adib@adeeeeb:~/uts-so-09011382530162$ jobs
[1]+  Running                 ./script/backup_loop.sh &
adib@adeeeeb:~/uts-so-09011382530162$ fg %1
./script/backup_loop.sh
^Z
[1]+  Stopped                 ./script/backup_loop.sh
adib@adeeeeb:~/uts-so-09011382530162$ bg %1
[1]+ ./script/backup_loop.sh &
adib@adeeeeb:~/uts-so-09011382530162$ ps x
 14250 pts/1    Sl     0:00 /bin/bash ./script/backup_loop.sh
adib@adeeeeb:~/uts-so-09011382530162$ kill 14250
6. KendalaKendala: Sempat mengalami error izin akses eksekusi script dan perbedaan format baris karena penyuntingan.   Cara mengatasi: Menggunakan perintah chmod +x script/*.sh serta memastikan eksekusi dilakukan langsung di lingkungan terminal Linux.   
---

### Langkah Penyimpanan di Editor Nano:
1. Setelah teks di atas Anda tempel (*paste*) ke dalam terminal `nano`, simpan dengan menekan tombol **`Ctrl + O`**, lalu tekan **`Enter`**[cite: 12].
2. Keluar dari editor dengan menekan tombol **`Ctrl + X`**[cite: 12].
3. Setelah itu, kirim perubahan tersebut ke GitHub dengan perintah berikut di terminal[cite: 6]:
   ```bash
   chmod +x script/*.sh
   git status
   git add .
   git commit -m "Mengisi lengkap README.md dan script pendukung"
   git push
