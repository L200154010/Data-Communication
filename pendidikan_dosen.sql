/****** Script for SelectTopNRows command from SSMS  ******/
SELECT a.[NamaPerguruanTinggi], a.[Status], a.[JumlahDosenTetap], a.[JumlahMahasiswa], b.Pendidikan, b.Jumlah
FROM [PDptm_Default_v1].[pp].[FPerguruanTinggi] a 
LEFT JOIN (SELECT [Kodept],[Pendidikan], count(*) as Jumlah
      FROM [PDptm_Default_v1].[pp].[FDosen]
	  GROUP BY Kodept, Pendidikan
	  HAVING Pendidikan = 'D3') b
ON a.Kodept = b.Kodept
ORDER BY a.NamaPerguruanTinggi;
