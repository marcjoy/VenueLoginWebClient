<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register Your Venue</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Register your venue</h1>
    <table>
        <tr>
            <td>Venue Name</td>
            <td>
                <asp:TextBox ID="venueNameTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                    runat="server" 
                    ErrorMessage="Venue name is required" 
                    ControlToValidate="venueNameTextBox"></asp:RequiredFieldValidator>
            </td>
        </tr>
       
        <tr>
            <td>Street Address</td>
            <td>
                <asp:TextBox ID="venueAddressTextBox" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td>City</td>
            <td>
                <asp:TextBox ID="venueCityTextBox" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td>State</td>
            <td>
                <asp:TextBox ID="venueStateTextBox" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td>Zip Code</td>
            <td>
                <asp:TextBox ID="venueZipCodeTextBox" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td>Venue Age Restriction</td>
            <td>
                <asp:TextBox ID="venueAgeRestrictionTextBox" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>
         
        <tr>
            <td>Phone</td>
            <td>
                <asp:TextBox ID="venuePhoneTextBox" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td>Website</td>
            <td>
                <asp:TextBox ID="venueWebPageTextBox" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>
         <tr>
            <td>Primary Email Contact</td>
            <td>
                <asp:TextBox ID="venueEmailContactTextBox" 
                    runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                    runat="server" 
                    ErrorMessage="Email is required!" 
                    ControlToValidate="venueEmailContactTextBox"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                    runat="server" 
                    ErrorMessage="Not a vaild email!" 
                    ControlToValidate="venueEmailContactTextBox" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
             </td>
        </tr>
        <tr>
            <td>Choose UserName</td>
            <td>
                <asp:TextBox ID="venueUserNameRegistrationTextBox" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="venueRegistionPasswordTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="venueRegistionPasswordTextBox" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Confirm Password</td>
            <td>
                <asp:TextBox ID="venueRegistrationPasswordConfirmationTextBox" runat="server"></asp:TextBox></td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="venueRegistionPasswordTextBox" ControlToValidate="venueRegistrationPasswordConfirmationTextBox" ErrorMessage="Passwords must match"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="submitButton_Click" /></td>
            <td>
                <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label></td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
