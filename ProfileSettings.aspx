<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation_Layer/Forms/Patient/Patient.Master" AutoEventWireup="true" CodeBehind="ProfileSettings.aspx.cs" Inherits="My_Clinic_2024_IFS303E.Presentation_Layer.Forms.Patient.ProfileSettings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <style>
        .form-container {
            max-width: 900px;
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

        .form-row {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            margin-bottom: 15px;
        }

        .form-row > div {
            flex: 1 1 calc(50% - 20px);
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .input-field {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
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

        .message {
            text-align: center;
            margin-top: 20px;
            font-size: 16px;
        }

        .error {
            color: red;
        }

        .success {
            color: green;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-container">
        <h2>Profile Settings</h2>
        <div id="profileForm" runat="server">
            <div class="form-row">
                <div>
                    <asp:Label ID="FirstNameLabel" runat="server" Text="First Name:"></asp:Label>
                    <asp:TextBox ID="FirstNameTextBox" runat="server" CssClass="input-field"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="LastNameLabel" runat="server" Text="Last Name:"></asp:Label>
                    <asp:TextBox ID="LastNameTextBox" runat="server" CssClass="input-field"></asp:TextBox>
                </div>
            </div>
            <div class="form-row">
                <div>
                    <asp:Label ID="DateOfBirthLabel" runat="server" Text="Date of Birth:"></asp:Label>
                    <asp:TextBox ID="DateOfBirthTextBox" runat="server" TextMode="Date" CssClass="input-field"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="BloodGroupLabel" runat="server" Text="Blood Group:"></asp:Label>
                    <asp:DropDownList ID="BloodGroupDropDownList" runat="server" CssClass="input-field">
                        <asp:ListItem Text="Select Blood Group" Value="" />
                        <asp:ListItem Text="A+" Value="A+" />
                        <asp:ListItem Text="A-" Value="A-" />
                        <asp:ListItem Text="B+" Value="B+" />
                        <asp:ListItem Text="B-" Value="B-" />
                        <asp:ListItem Text="AB+" Value="AB+" />
                        <asp:ListItem Text="AB-" Value="AB-" />
                        <asp:ListItem Text="O+" Value="O+" />
                        <asp:ListItem Text="O-" Value="O-" />
                    </asp:DropDownList>
                </div>
            </div>
            <div class="form-row">
                <div>
                    <asp:Label ID="EmailLabel" runat="server" Text="Email Address:"></asp:Label>
                    <asp:TextBox ID="EmailTextBox" runat="server" CssClass="input-field"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="MobileLabel" runat="server" Text="Mobile Number:"></asp:Label>
                    <asp:TextBox ID="MobileTextBox" runat="server" CssClass="input-field"></asp:TextBox>
                </div>
            </div>
            <div class="form-row">
                <div>
                    <asp:Label ID="AddressLabel" runat="server" Text="Address:"></asp:Label>
                    <asp:TextBox ID="AddressTextBox" runat="server" CssClass="input-field"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="CityLabel" runat="server" Text="City:"></asp:Label>
                    <asp:TextBox ID="CityTextBox" runat="server" CssClass="input-field"></asp:TextBox>
                </div>
            </div>
            <div class="form-row">
                <div>
                    <asp:Label ID="ProvinceLabel" runat="server" Text="Province:"></asp:Label>
                    <asp:TextBox ID="ProvinceTextBox" runat="server" CssClass="input-field"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="ZipCodeLabel" runat="server" Text="Zip Code:"></asp:Label>
                    <asp:TextBox ID="ZipCodeTextBox" runat="server" CssClass="input-field"></asp:TextBox>
                </div>
            </div>
            <div class="form-row">
                <div>
                    <asp:Label ID="CountryLabel" runat="server" Text="Country:"></asp:Label>
                    <asp:TextBox ID="CountryTextBox" runat="server" CssClass="input-field"></asp:TextBox>
                </div>
            </div>
             <div>
                    <asp:Label ID="Label1" runat="server" Text="Sex:"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="input-field">
                        <asp:ListItem Text="Select Sex" Value="" />
                        <asp:ListItem Text="Male" Value="Male" />
                        <asp:ListItem Text="Female" Value="Female" />
                        <asp:ListItem Text="Other" Value="Other" />
                        
                    </asp:DropDownList>
                </div>
            <div>
                <asp:Button ID="SaveButton" runat="server" Text="Save Changes" OnClick="SaveButton_Click" CssClass="button" />
            </div>
            <div>
                <asp:Label ID="MessageLabel" runat="server" CssClass="message"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
