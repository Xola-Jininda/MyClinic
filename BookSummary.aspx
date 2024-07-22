<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation_Layer/Forms/Patient/Patient.Master" AutoEventWireup="true" CodeBehind="BookSummary.aspx.cs" Inherits="My_Clinic_2024_IFS303E.Presentation_Layer.Forms.Patient.BookSummary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .summary-container {
            width: 50%;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        .summary-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #2e7d32; /* Match your navbar color */
        }

        .summary-container div {
            margin-bottom: 15px;
        }

        label {
            font-weight: bold;
        }

        .value {
            display: inline-block;
            margin-left: 10px;
        }

        .button {
            display: block;
            width: 100px;
            margin: 20px auto;
            padding: 10px 20px;
            color: #fff;
            background-color: lightgreen;
            text-align: center;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
        }

        .button:hover {
            background-color: green;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="summary-container">
        <h2>Booking Summary</h2>
        <div>
            <label>Date:</label>
            <span class="value"><%= Session["AppointmentDate"] %></span>
        </div>
        <div>
            <label>Time:</label>
            <span class="value"><%= Session["AppointmentTime"] %></span>
        </div>
        <div>
            <label>Patient Name:</label>
            <span class="value"><%= Session["PatientName"] %></span>
        </div>
        <div>
            <label>Gender:</label>
            <span class="value"><%= Session["Gender"] %></span>
        </div>
        <div>
            <label>Contact Number:</label>
            <span class="value"><%= Session["ContactNumber"] %></span>
        </div>
        <div>
            <label>Email:</label>
            <span class="value"><%= Session["Email"] %></span>
        </div>
        <div>
            <label>Reason for Visit:</label>
            <span class="value"><%= Session["Reason"] %></span>
        </div>
        <a href="Book.aspx" class="button">New Booking</a>
    </div>
</asp:Content>
