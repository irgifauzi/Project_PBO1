using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Tugas_Besar_PBO.Model;

namespace Tugas_Besar_PBO.Controller
{
    internal class Jasa
    {
        Koneksi koneksi = new Koneksi(); // Assuming Koneksi is a class for database connection

        // Method to insert data into the database
        public bool Insert(M_Jasa jasa)
        {
            bool status = false;
            try
            {
                koneksi.OpenConnection();
                // Execute the SQL query to insert data
                koneksi.ExecuteQuery("INSERT INTO t_jasa_joki (jenis_jasa, rank, jumlah_bintang, harga, total_harga, penjoki, metode_pembayaran, no_whatsapp, email, password, jenis_akun, status) VALUES('" + jasa.Jenis_jasa + "', '" + jasa.Rank + "', '" + jasa.Jumlah_bintang + "', '" + jasa.Harga + "', '" + jasa.Total_harga + "', '" + jasa.Penjoki + "', '" + jasa.Metode_pembayaran + "', '" + jasa.No_whatsapp + "','" + jasa.Email + "', '" + jasa.Password + "', '" + jasa.Jenis_akun + "','" + jasa.Status + "')");
                status = true;
                MessageBox.Show("Data berhasil ditambahkan", "Informasi", MessageBoxButtons.OK, MessageBoxIcon.Information);
                koneksi.CloseConnection();
            }
            catch (Exception e)
            {
                MessageBox.Show(e.Message, "Gagal", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            return status;
        }

        // Method to update data in the database
        public bool Update(M_Jasa jasa, string id_jasa)
        {
            bool status = false;
            try
            {
                // Open the database connection
                koneksi.OpenConnection();

                // Execute the SQL query to update data
                koneksi.ExecuteQuery("UPDATE t_jasa_joki SET status ='" + jasa.Status + "' WHERE id_jasa = '" + id_jasa + "'");

                // Set status to true, indicating successful update
                status = true;

                // Show a success message
                MessageBox.Show("Data berhasil diubah", "Informasi", MessageBoxButtons.OK, MessageBoxIcon.Information);

                // Close the database connection
                koneksi.CloseConnection();
            }
            catch (Exception e)
            {
                // Show an error message if an exception occurs
                MessageBox.Show(e.Message, "Gagal", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

            // Return the status, indicating whether the update was successful or not
            return status;
        }

    }
}

