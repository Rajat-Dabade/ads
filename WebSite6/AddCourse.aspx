<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="AddCourse.aspx.cs" Inherits="AddCourse" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
    <div class="col-md-8">
    <br />
    <h1 class="text-center">Add Course</h1>
   <hr />
        </div>

</div>
<div class="row">
    <div class="col-md-8">
        <section >
            <div class="form-horizontal">
                <div class="form-group">
                    <asp:Label CssClass="col-md-3 control-label" Font-Size="Large" AssociatedControlID="tcid" runat="server" Text="Course ID"></asp:Label>
                    <div class="col-md-2">
                        <asp:TextBox  CssClass="form-control" ID="tcid" runat="server" ></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label CssClass="col-md-3 control-label" Font-Size="Large" AssociatedControlID="ttitle"  runat="server" Text="Title"></asp:Label>
                    <div class="col-md-4">
                        <asp:TextBox   CssClass="form-control" ID="ttitle" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-3">
                        <asp:CheckBox CssClass="checkbox pull-right" Font-Size="Large" ID="t_pre" runat="server" Text="Pre-Requisites" />
                   
                     </div>
                    <div class="col-md-3">
                        <asp:DropDownList  CssClass="form-control" ID="t_precourse" runat="server" DataSourceID="SqlDataSource2" DataTextField="COURSE_ID" DataValueField="COURSE_ID" >
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;COURSE_ID&quot; FROM &quot;COURSE&quot;"></asp:SqlDataSource>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label CssClass="col-md-3 control-label" Font-Size="Large" AssociatedControlID="tdept"  runat="server" Text="Department"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList  CssClass="form-control" ID="tdept" runat="server" DataSourceID="SqlDataSource3" DataTextField="DEPT_NAME" DataValueField="DEPT_NAME">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;DEPT_NAME&quot; FROM &quot;DEPARTMENT&quot;"></asp:SqlDataSource>

                    </div>
                </div>
                <div class="form-group">
                    <asp:Label CssClass="col-md-3 control-label" Font-Size="Large" AssociatedControlID="t_tid"  runat="server" Text="Teacher ID"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList   CssClass="form-control" ID="t_tid" runat="server" DataSourceID="SqlDataSource1" DataTextField="ID" DataValueField="ID" >
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;ID&quot; FROM &quot;TEACHER&quot;"></asp:SqlDataSource>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label CssClass="col-md-3 control-label" Font-Size="Large" AssociatedControlID="tcredits"  runat="server" Text="Credits"></asp:Label>
                    <div class="col-md-1">
                       <asp:TextBox ID="tcredits"  CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-2 col-md-2">
                        <asp:Button ID="addcourse" runat="server"  CssClass="btn btn-success btn-block"  OnClick="Button1_Click" Text="Add" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                    </div>
                </div>
       </div>
      </section>
    </div>
</div>
</asp:Content>
