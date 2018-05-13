<%@ Page Title="AddQuestions" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="AddQuestions.aspx.cs" Inherits="AddQuestions" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
    <div class="col-md-8">
    <br />
    <h1 class="text-center">Add Question</h1>
   <hr />
        </div>
</div>
<div class="row">
    <div class="col-md-8">
        <section >
            <div class="form-horizontal">

                <div class="form-group">
                    <asp:Label  AssociatedControlID="examid" CssClass="col-md-2 control-label" Font-Size="Large" runat="server" Text="Question ID"></asp:Label>
                
                    <div class="col-md-4">
                           <asp:TextBox ID="q_id" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label  AssociatedControlID="examid" CssClass="col-md-2 control-label" Font-Size="Large" runat="server" Text="ExamID"></asp:Label>
                
                    <div class="col-md-4">
                           <asp:Label ID="examid" CssClass="form-control" runat="server"></asp:Label>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label  AssociatedControlID="question" CssClass="col-md-2 control-label" Font-Size="Large" runat="server" Text="Question"></asp:Label>
                
                    <div class="col-md-4">
                           <asp:TextBox ID="question" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label  AssociatedControlID="oA" CssClass="col-md-2 control-label" Font-Size="Large" runat="server" Text="Option A"></asp:Label>
                
                    <div class="col-md-4">
                           <asp:TextBox ID="oA" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label  AssociatedControlID="oB" CssClass="col-md-2 control-label" Font-Size="Large" runat="server" Text="Option B"></asp:Label>
                
                    <div class="col-md-4">
                           <asp:TextBox ID="oB" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label  AssociatedControlID="oC" CssClass="col-md-2 control-label" Font-Size="Large" runat="server" Text="Option C"></asp:Label>
                
                    <div class="col-md-4">
                           <asp:TextBox ID="oC" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                




                <div class="form-group">
                    <asp:Label  AssociatedControlID="corec" CssClass="col-md-2 control-label" Font-Size="Large" runat="server" Text="Correct"></asp:Label>
                
                    <div class="col-md-4">
                           <asp:TextBox ID="corec" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                




               <div class="form-group">
                    <div class="col-md-offset-1 col-md-2">
                        <asp:Button ID="add_q" runat="server"  Text="Add" CssClass="btn btn-block btn-success" OnClick="add_q_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Label ID="error" runat="server"></asp:Label>
                    </div>
                </div>
                
               


        </div>
      </section>
    </div>
</div>

</asp:Content>