using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace My_Clinic_2024_IFS303E.Presentation_Layer.Forms.Patient
{
    public partial class ProfileSettings : System.Web.UI.Page
    {
        private string connectionString = "Data Source=LAPTOP-FMQLGT3P\\SQLEXPRESS;Initial Catalog=MyClinic;Integrated Security=True"; // Update with your actual connection string

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadUserProfile();
            }
        }

        private void LoadUserProfile()
        {
            if (Session["UserId"] == null)
            {
                MessageLabel.Text = "User not logged in.";
                MessageLabel.CssClass = "error";
                return;
            }

            int userId = (int)Session["UserId"];

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();

                string query = @"SELECT p.FirstName, p.LastName, p.DateOfBirth, p.BloodGroup, p.Email, p.Mobile, 
                                 p.Address, p.City, p.Province, p.ZipCode, p.Sex, p.Country
                                 FROM Patients p
                                 INNER JOIN User_ u ON p.UserId = u.UserId
                                 WHERE u.UserId = @UserId";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@UserId", userId);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            FirstNameTextBox.Text = reader["FirstName"].ToString();
                            LastNameTextBox.Text = reader["LastName"].ToString();
                            DateOfBirthTextBox.Text = Convert.ToDateTime(reader["DateOfBirth"]).ToString("yyyy-MM-dd");
                            BloodGroupDropDownList.SelectedValue = reader["BloodGroup"].ToString();
                            EmailTextBox.Text = reader["Email"].ToString();
                            MobileTextBox.Text = reader["Mobile"].ToString();
                            AddressTextBox.Text = reader["Address"].ToString();
                            CityTextBox.Text = reader["City"].ToString();
                            ProvinceTextBox.Text = reader["Province"].ToString();
                            ZipCodeTextBox.Text = reader["ZipCode"].ToString();
                            CountryTextBox.Text = reader["Country"].ToString();
                            DropDownList1.SelectedValue = reader["Sex"].ToString();
                        }
                        else
                        {
                            MessageLabel.Text = "User profile not found. Please fill in your details.";
                            MessageLabel.CssClass = "error";
                        }
                    }
                }
            }
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                MessageLabel.Text = "User not logged in.";
                MessageLabel.CssClass = "error";
                return;
            }

            int userId = (int)Session["UserId"];

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();

                // Check if the user profile exists
                string checkQuery = @"SELECT COUNT(*) FROM Patients WHERE UserId = @UserId";
                using (SqlCommand checkCmd = new SqlCommand(checkQuery, conn))
                {
                    checkCmd.Parameters.AddWithValue("@UserId", userId);
                    int count = (int)checkCmd.ExecuteScalar();

                    string query;

                    if (count > 0)
                    {
                        // Update existing profile
                        query = @"UPDATE Patients
                                 SET FirstName = @FirstName, LastName = @LastName, DateOfBirth = @DateOfBirth, 
                                     BloodGroup = @BloodGroup, Email = @Email, Mobile = @Mobile, 
                                     Address = @Address, City = @City, Sex = @Sex, Province = @Province, 
                                     ZipCode = @ZipCode, Country = @Country
                                 WHERE UserId = @UserId";
                    }
                    else
                    {
                        // Insert new profile
                        query = @"INSERT INTO Patients (UserId, FirstName, LastName, DateOfBirth, BloodGroup, Email, Mobile, Address, City, Province, ZipCode, Sex, Country)
                                  VALUES (@UserId, @FirstName, @LastName, @DateOfBirth, @BloodGroup, @Email, @Mobile, @Address, @City, @Province, @ZipCode, @Sex, @Country)";
                    }

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@FirstName", FirstNameTextBox.Text);
                        cmd.Parameters.AddWithValue("@LastName", LastNameTextBox.Text);
                        cmd.Parameters.AddWithValue("@DateOfBirth", DateOfBirthTextBox.Text);
                        cmd.Parameters.AddWithValue("@BloodGroup", BloodGroupDropDownList.SelectedValue);
                        cmd.Parameters.AddWithValue("@Sex", DropDownList1.SelectedValue);
                        cmd.Parameters.AddWithValue("@Email", EmailTextBox.Text);
                        cmd.Parameters.AddWithValue("@Mobile", MobileTextBox.Text);
                        cmd.Parameters.AddWithValue("@Address", AddressTextBox.Text);
                        cmd.Parameters.AddWithValue("@City", CityTextBox.Text);
                        cmd.Parameters.AddWithValue("@Province", ProvinceTextBox.Text);
                        cmd.Parameters.AddWithValue("@ZipCode", ZipCodeTextBox.Text);
                        cmd.Parameters.AddWithValue("@Country", CountryTextBox.Text);
                        cmd.Parameters.AddWithValue("@UserId", userId);

                        int rowsAffected = cmd.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            MessageLabel.Text = "Profile updated successfully.";
                            MessageLabel.CssClass = "success";
                        }
                        else
                        {
                            MessageLabel.Text = "No changes were made.";
                            MessageLabel.CssClass = "error";
                        }
                    }
                }
            }
        }
    }
}
