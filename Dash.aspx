<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation_Layer/Forms/Patient/Patient.Master" AutoEventWireup="true" CodeBehind="Dash.aspx.cs" Inherits="My_Clinic_2024_IFS303E.Presentation_Layer.Forms.Patient.Dash" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .dashboard-container {
            display: flex;
            justify-content: space-between;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin: 20px auto;
            max-width: 1200px;
        }

        .summary, .profile {
            width: 48%;
        }

        .summary h2, .profile h2 {
            color: #2e7d32;
        }

        .summary div, .profile div {
            margin-bottom: 15px;
        }

        .summary label, .profile label {
            font-weight: bold;
        }

        .value {
            display: inline-block;
            margin-left: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dashboard-container">
        <div class="summary">
            <h2>Summary</h2>
            <div>
                <label>Upcoming Appointments:</label>
                <asp:Label ID="UpcomingAppointmentsLabel" runat="server"></asp:Label>
            </div>
            <div>
                <label>Total Bookings:</label>
                <asp:Label ID="TotalBookingsLabel" runat="server"></asp:Label>
            </div>
            <div>
                <label>Recent Activities:</label>
                <asp:Label ID="RecentActivitiesLabel" runat="server"></asp:Label>
            </div>
        </div>

        <div class="profile">
            <h2>Profile Information</h2>
            <div>
                <label>Name:</label>
                <asp:Label ID="ProfileNameLabel" runat="server"></asp:Label>
            </div>
            <div>
                <label>Email:</label>
                <asp:Label ID="ProfileEmailLabel" runat="server"></asp:Label>
            </div>
            <div>
                <label>Contact Number:</label>
                <asp:Label ID="ProfileContactLabel" runat="server"></asp:Label>
            </div>
            <div>
                <label>Gender:</label>
                <asp:Label ID="ProfileGenderLabel" runat="server"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
