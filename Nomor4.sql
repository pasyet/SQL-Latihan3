CREATE TABLE karyawan_tdi(
  kode_karyawan SERIAL NOT NULL PRIMARY KEY,
  alamat_rumah INTEGER NOT NULL REFERENCES locations(location_id),
  alamat_domisili  INTEGER NOT NULL REFERENCES locations(location_id) ,
  jabatan varchar (10) NOT NULL REFERENCES jobs(job_id),
  bagian INTEGER NOT NULL REFERENCES departments(department_id)
);