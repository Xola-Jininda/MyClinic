<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation_Layer/Forms/Patient/Patient.Master" AutoEventWireup="true" CodeBehind="Book.aspx.cs" Inherits="My_Clinic_2024_IFS303E.Presentation_Layer.Forms.Patient.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f4f8;
            margin: 0;
            padding: 0;
        }

        .form-container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #2e7d32;
        }

        form div {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"], input[type="date"], select, textarea {
            width: calc(100% - 22px);
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="text"]:focus, input[type="date"]:focus, select:focus, textarea:focus {
            border-color: #007bff;
            outline: none;
        }

        button {
            display: inline-block;
            padding: 10px 20px;
            color: #fff;
            background-color: #007bff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        .error {
            color: red;
            font-size: 12px;
        }

        .success {
            color: green;
            font-size: 12px;
        }
    </style>
     <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#AppointmentDateTextBox').change(function () {
                $('#SubmitButton').prop('disabled', false);
                $('#MessageLabel').text('');
            });
        });
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-container">
        <h2>Book an Appointment</h2>
        <div id="appointmentForm" runat="server">
            <div>
                <asp:Label ID="Label1" runat="server" Text="Select Date:"></asp:Label>
                <asp:TextBox ID="AppointmentDateTextBox" runat="server" TextMode="Date"></asp:TextBox>
            </div>

            <div>
                <asp:Label ID="Label2" runat="server" Text="Select Time:"></asp:Label>
                <asp:DropDownList ID="AppointmentTimeDropDownList" runat="server" Width="100%"></asp:DropDownList>
            </div>

            <div>
                <asp:Label ID="Label3" runat="server" Text="Patient Name:"></asp:Label>
                <asp:TextBox ID="PatientNameTextBox" runat="server"></asp:TextBox>
            </div>

            <div>
                <asp:Label ID="Label4" runat="server" Text="Gender:"></asp:Label>
                <asp:DropDownList ID="GenderDropDownList" runat="server" Width="100%">
                    <asp:ListItem Text="Select Gender" Value="" />
                    <asp:ListItem Text="Male" Value="Male" />
                    <asp:ListItem Text="Female" Value="Female" />
                    <asp:ListItem Text="Other" Value="Other" />
                </asp:DropDownList>
            </div>

            <div>
                <asp:Label ID="Label5" runat="server" Text="Contact Number:"></asp:Label>
                <asp:TextBox ID="ContactNumberTextBox" runat="server"></asp:TextBox>
            </div>

            <div>
                <asp:Label ID="Label6" runat="server" Text="Email Address:"></asp:Label>
                <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
            </div>

            <div>
                <asp:Label ID="Label7" runat="server" Text="Reason for Visit:"></asp:Label>
                <asp:TextBox ID="ReasonTextBox" runat="server" TextMode="MultiLine" Rows="4"></asp:TextBox>
            </div>

            <div>
                <asp:Button ID="SubmitButton" runat="server" Text="Book Appointment" OnClick="SubmitButton_Click" CssClass="button" />
            </div>

            <div>
                <asp:Label ID="MessageLabel" runat="server" CssClass=""></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
