<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Teacher.aspx.cs" Inherits="Teacher" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

       <div class="row">
    <br />
    <h1>Teacher Details</h1>
   <hr />
</div>
<div class="row">
    <div class="col-md-7">
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
                    <asp:Label runat="server" AssociatedControlID="salary" CssClass="col-md-2 control-label" Font-Size="Large">Salary</asp:Label>
                    <div class="col-md-4">
                            <asp:Label runat="server" ID="salary" CssClass="form-control" Font-Size="Large" />
                        </div>
                </div>
                
            </div>
        </section>
    </div>
    <div  class="col-md-5">
        <section>
            <asp:GridView  CssClass= "table table-bordered"  ID="courses" runat="server" CellPadding="3" GridLines="Vertical" Width="272px" Font-Size="Larger" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
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
    <hr />
<div class="row">
    <div class="col-md-7">
        <div class="form-horizontal">
            <div class="form-group">
                <asp:Label CssClass="col-md-2 control-label" Font-Size="Large" AssociatedControlID="exams"  runat="server" Text="Exam ID"></asp:Label>
                <div class="col-md-4">
                    <asp:TextBox ID="exams" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-2 col-md-3">
                    <asp:Button ID="addT" runat="server" CssClass="btn btn-success btn-block"  OnClick="GoToExam_Click" Text="View"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                </div>
                <div class="col-md-offset-2 col-md-3 ">
                    <asp:Label ID="error" style="font-size:15px;color:red;" runat="server"></asp:Label>
                </div>
            </div>
            <div class="form-group">
                <asp:Label CssClass="col-md-2 control-label" Font-Size="Large"  runat="server" Text=""><b>Exam</b></asp:Label>
                <div class="col-md-3">
                        
                    <asp:Button ID="Button1" runat="server" OnClick="AddExam" Text="Add" CssClass="btn btn-block btn-primary" />
                </div>
            </div>
    </div>
    </div>
    <div class="col-md-5">
        <section>
            <asp:GridView  CssClass= "table table-bordered"  ID="My_Exams" runat="server" CellPadding="3" GridLines="Vertical" Width="272px" Font-Size="Larger" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
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

</asp:Content>