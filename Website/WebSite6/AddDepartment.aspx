<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="AddDepartment.aspx.cs" Inherits="AddDepartment" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="row">
    <div class="col-md-8">
    <br />
    <h1 class="text-center">Add Department</h1>
   <hr />
        </div>
</div>
<div class="row">
    <div class="col-md-8">
        <section >
            <div class="form-horizontal">
                <div class="form-group">
                    <asp:Label CssClass="col-md-2 control-label" Font-Size="Large" AssociatedControlID="deptname" runat="server" Text="Name"></asp:Label>
                    <div class="col-md-2">
                        <asp:TextBox ID="deptname" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label CssClass="col-md-2 control-label" Font-Size="Large" AssociatedControlID="est" runat="server" Text="Established"></asp:Label>
                    <div class="col-md-2">
                        <asp:TextBox ID="est" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label CssClass="col-md-2 control-label" Font-Size="Large" AssociatedControlID="budget" runat="server" Text="Budget"></asp:Label>
                    <div class="col-md-2">
                        <asp:TextBox ID="budget" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-1 col-md-2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" CssClass="btn btn-block btn-success" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                    </div>
                </div>
            </div>
      </section>
    </div>
</div>

</asp:Content>