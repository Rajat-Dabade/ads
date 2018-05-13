<%@ Page Title="Student" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="Student" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
    <br />
    <h1>Student Details</h1>
   <hr />
</div>
<div class="row">
    <div class="col-md-8">
        <section >
            <div class="form-horizontal">
                
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="id" CssClass="col-md-2 control-label" Font-Size="Large">ID</asp:Label>
                    <div class="col-md-4">
                            <asp:Label runat="server" ID="id" CssClass="form-control" Font-Size="Large" />
                        </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="name" CssClass="col-md-2 control-label" Font-Size="Large">Name</asp:Label>
                    <div class="col-md-4">
                            <asp:Label runat="server" ID="name" CssClass="form-control" Font-Size="Large" />
                        </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="dept" CssClass="col-md-2 control-label" Font-Size="Large">Department</asp:Label>
                    <div class="col-md-4">
                            <asp:Label runat="server" ID="dept" CssClass="form-control" Font-Size="Large" />
                        </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="credits" CssClass="col-md-2 control-label" Font-Size="Large">Total Credits</asp:Label>
                    <div class="col-md-4">
                            <asp:Label runat="server" ID="credits" CssClass="form-control" Font-Size="Large" />
                        </div>
                </div>
                
            </div>
        </section>
    </div>
    <div  class="col-md-4">
        <section>
            <h4>My Courses</h4>
            <asp:GridView  CssClass= "table table-bordered"  ID="mycourses" runat="server" CellPadding="3" GridLines="Vertical" Width="272px" Font-Size="Larger" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
        </section>
    </div>
</div>

<div class="row">
    <div class="col-md-6">
        <section >
            <div class="form-horizontal">
                <div class="form-group">
                    <asp:Label CssClass="col-md-3 control-label" Font-Size="Large" AssociatedControlID="course"  runat="server" Text="Course ID"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="course" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-2">
                    <asp:Button ID="addT" runat="server" CssClass="btn btn-success btn-block"  OnClick="Register_course" Text="Add"/>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label CssClass="col-md-3 control-label" Font-Size="Large" AssociatedControlID="EXAM_ID"  runat="server" Text="EXAM ID"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="EXAM_ID" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-2">
                    <asp:Button ID="Button1"  runat="server" CssClass="btn btn-success btn-block"  OnClick="attempt_exam" Text="Attempt"/>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <div class="col-md-3">
        <section >
            <h4>Available Courses</h4>
            <asp:GridView  CssClass= "table table-bordered"  ID="GridView2" runat="server" CellPadding="3" GridLines="Vertical" Width="272px" Font-Size="Larger" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
        </section>
    </div>
    <div class="col-md-3">
        <section >
            <h4>Exams</h4>
            <asp:GridView  CssClass= "table table-bordered"  ID="My_exams" runat="server" CellPadding="3" GridLines="Vertical" Width="272px" Font-Size="Larger" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
        </section>
    </div>
</div>

<div class="row">
    <div class="col-md-8">
        <section >
            <div class="form-horizontal">
                
            </div>
        </section>
    </div>
</div>
<asp:Label runat="server" ID="error" CssClass="col-md-2" Font-Size="Large"></asp:Label>
</asp:Content>