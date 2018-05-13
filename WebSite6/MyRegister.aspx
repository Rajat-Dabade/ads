<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="MyRegister.aspx.cs" Inherits="MyRegister" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
<div class="row">
    <div class="col-md-8">
        <section >
    <div class="form-horizontal">
        <h4>Create a new account</h4>
        <hr />

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="id" CssClass="col-md-2 control-label">ID</asp:Label>
            <div class="col-md-2">
                <asp:TextBox runat="server" ID="id" CssClass="form-control" OnTextChanged="id_TextChanged" />
                
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="name" CssClass="col-md-2 control-label">Name</asp:Label>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="name" CssClass="form-control" OnTextChanged="name_TextChanged" />
                
            </div>
        </div>
        
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="password" CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="password" TextMode="Password" CssClass="form-control" OnTextChanged="password_TextChanged" />
                
            </div>
        </div>
        <div class="form-group">
            <asp:Label CssClass="col-md-2 control-label" AssociatedControlID="dept"  runat="server" Text="Department"></asp:Label>
            <div class="col-md-3">
                <asp:DropDownList ID="dept" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="DEPT_NAME" DataValueField="DEPT_NAME" OnSelectedIndexChanged="dept_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;DEPT_NAME&quot; FROM &quot;DEPARTMENT&quot;"></asp:SqlDataSource>
            </div>
        </div>
        

        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-info" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="result" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </div>
      </section>
    </div>
</div>



 </asp:Content>