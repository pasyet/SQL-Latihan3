SELECT
  kt.nama_lengkap,
  concat(rumah.street_address, ', ', rumah.city),
  divisi.department_name,
  tugas.job_title
FROM karyawan_tdi kt
  JOIN locations rumah ON kt.alamat_rumah =rumah.location_id
  JOIN departments divisi ON kt.bagian = divisi.department_id
  JOIN jobs tugas ON  kt.jabatan = tugas.job_id
WHERE tugas.job_id ='IT_PROG'
UNION ALL
SELECT
  concat(employees.first_name, ' ', employees.last_name) AS nama_lengkap,
  concat(locations.street_address, ', ', locations.city) AS alamat_rumah,
  departments.department_name                            AS divisi,
  jobs.job_title                                         AS sebagai
FROM employees
  JOIN departments ON employees.department_id = departments.department_id
  JOIN jobs ON employees.job_id = jobs.job_id
  JOIN locations ON departments.location_id = locations.location_id
WHERE jobs.job_id = 'IT_PROG'