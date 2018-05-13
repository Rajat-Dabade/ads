<%@ Page Title="AddExam" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="AddExam.aspx.cs" Inherits="AddExam" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="row">
    <br />
    <h1>Add Exam</h1>
   <hr />
</div>
<div class="row">
    <div class="col-md-8">
        <section >
            <div class="form-horizontal">

                <div class="form-group">
                    <asp:Label AssociatedControlID="examid" CssClass="col-md-2 control-label" Font-Size="Large" runat="server" Text="Exam ID"></asp:Label>
                    <div class="col-md-4">
                           <asp:TextBox ID="examid" CssClass="form-control"  runat="server"></asp:TextBox>
                        </div>
                </div>

                
                
                <div class="form-group">
                    <asp:Label AssociatedControlID="courseid" CssClass="col-md-2 control-label" Font-Size="Large" runat="server" Text="Course ID"></asp:Label>
                    <div class="col-md-4">
                            <asp:DropDownList CssClass="form-control" ID="courseID" runat="server" DataSourceID="SqlDataSource1" DataTextField="COURSE_ID" DataValueField="COURSE_ID">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;COURSE_ID&quot; FROM &quot;COURSE&quot;"></asp:SqlDataSource>
                    </div>
                </div>

                
                <div class="form-group">
                    <div class="col-md-offset-1 col-md-2">
                        <asp:Button ID="add_exam" runat="server" OnClick="add_exam_Click" Text="Add" CssClass="btn btn-block btn-success" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="error" runat="server"></asp:Label>
                    </div>
                </div>

            </div>
        </section>
    </div>
</div>




</asp:Content>