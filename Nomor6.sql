SELECT
  kt.nama_lengkap AS "nama",
  concat(rumah.street_address, ', ', rumah.city)       AS alamat_rumah,
  concat(domisili.street_address, ', ', domisili.city) AS alamat_domisili,
  divisi.department_name AS 'nama_divisi',
  tugas.job_title AS 'sebagai'
FROM karyawan_tdi kt
JOIN departments divisi ON kt.bagian = divisi.department_id
JOIN jobs tugas ON kt.jabatan = tugas.job_id
JOIN locations rumah ON kt.alamat_rumah = rumah.location_id
JOIN locations domisili ON kt.alamat_domisili =  domisili.location_id
