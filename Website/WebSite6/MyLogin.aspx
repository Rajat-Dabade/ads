<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="MyLogin.aspx.cs" Inherits="MyLogin" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


 <div class="row">
        <div class="col-md-6">
            <section id="loginForm">
                <div class="form-horizontal">
                    <h1>Log In.</h1>
                    <h4>Use a local account to Sign in.</h4>
                     <hr />
                    <div style="margin-bottom:30px;margin-left:90px">
                        <h3>Login as</h3>
                        <asp:DropDownList ID="loginas" CssClass="dropdown" runat="server" Height="20px" Width="344px">
                            <asp:ListItem>Teacher</asp:ListItem>
                            <asp:ListItem>Student</asp:ListItem>
                            <asp:ListItem>Admin</asp:ListItem>
                        </asp:DropDownList>
                   </div>
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="username" CssClass="col-md-2 control-label">Name</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="username" CssClass="form-control" />
                            
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="password" TextMode="Password" CssClass="form-control" />
                            
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-success" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="error" runat="server"></asp:Label>
                        </div>
                    </div>
                </div>
                <p class="col-md-offset-2">
                    <asp:HyperLink  CssClass="btn btn-primary" runat="server" ID="RegisterHyperLink" NavigateUrl="~/MyRegister.aspx" ViewStateMode="Disabled">Register as a new user</asp:HyperLink>
                </p>
               
            </section>
        </div>
    </div>


</asp:Content>