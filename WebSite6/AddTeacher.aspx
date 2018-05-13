<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="AddTeacher.aspx.cs" Inherits="AddTeacher" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
     <div class="col-md-8">
    <br />
    <h1 class="text-center">Add Teacher</h1>
   <hr />
         </div>
</div>
<div class="row">
    <div class="col-md-8">
        <section >
            <div class="form-horizontal">
                <div class="form-group">
                    <asp:Label CssClass="col-md-2 control-label" Font-Size="Large" AssociatedControlID="t_id"  runat="server" Text="Teacher ID"></asp:Label>
                    <div class="col-md-2">
                        <asp:TextBox ID="t_id" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label CssClass="col-md-2 control-label" Font-Size="Large" AssociatedControlID="t_name"  runat="server" Text="Name"></asp:Label>
                    <div class="col-md-4">
                        <asp:TextBox ID="t_name" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>



                <div class="form-group">
                    <asp:Label CssClass="col-md-2 control-label" Font-Size="Large" AssociatedControlID="t_pass"  runat="server" Text="Password"></asp:Label>
                    <div class="col-md-4">
                        <asp:TextBox ID="t_pass" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>



                <div class="form-group">
                    <asp:Label CssClass="col-md-2 control-label" Font-Size="Large" AssociatedControlID="t_dept"  runat="server" Text="Department"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="t_dept" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="DEPT_NAME" DataValueField="DEPT_NAME">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;DEPT_NAME&quot; FROM &quot;DEPARTMENT&quot;"></asp:SqlDataSource>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label CssClass="col-md-2 control-label" Font-Size="Large" AssociatedControlID="t_salary"  runat="server" Text="Salary"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="t_salary" CssClass="form-control"  runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-2 col-md-2">
                        <asp:Button ID="addT" runat="server" CssClass="btn btn-success btn-block"  OnClick="addT_Click" Text="Add"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                    </div>
                </div>
        </div>
      </section>
    </div>
</div>

</asp:Content>