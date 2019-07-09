<%@ Page Title="Добавяни на книги" Language="C#" MasterPageFile="~/LibraryAccount/LibraryAccount.Master" AutoEventWireup="true" CodeBehind="AddedBookPage.aspx.cs" Inherits="ELibrary2.LibraryAccount.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 
            <!-- ***** Dento Dentist Area Start ***** -->
            <section class="dentist-area section-padding-100-0">
            <div class="container">
                <div class="row">
                <!-- Section Heading -->
                <div class="col-12">
                    <div class="section-heading text-center">
                    <h4>Добавяни на книги:<br/><br/></h4>
                    <div class="line"></div>
                    </div>
                </div>
                </div>

                <div class="row ">
                    <!-- Single Dentist Area -->
                    <div class="col-12 col-sm-12 col-md-12" style="border-radius:20px;">
                        <!-- Search Aria-->
                         <div class="row ">
                            <h4 class="col-12 col-sm-12 col-md-12">Търсене на книга:</h4>
                  
                         </div>
                         <div class="row ">
                            <asp:TextBox ID="txtSearchBookName" runat="server" class="col-3 col-sm-3 col-md-3" placeholder = "Име на книгата"></asp:TextBox>
                            <asp:Label Text="" runat="server" class="col-1 col-sm-1 col-md-1"/>
                            <asp:TextBox ID="txtSearchAuthorName" runat="server" class="col-3 col-sm-3 col-md-3" placeholder = "Име на автора"></asp:TextBox>
                            <asp:Label Text="" runat="server" class="col-1 col-sm-1 col-md-1"/>
                            <asp:DropDownList ID="ddlGenre" runat="server" class="col-3 col-sm-3 col-md-3">
                                 <asp:ListItem Enabled="true" Text="Жанр" Value="-1"></asp:ListItem>
                            </asp:DropDownList>
                         </div>
                        <div class="row ">
                            <button type="button" class="btn dento-btn mx-2"  data-toggle="modal"  data-target="#appAddNewBook">Добавяна на нова книга</button>
                
                         </div>
                        <!-- Search Aria End-->
                    </div>           
                </div>
            </div>
            </section>
            <!-- ***** Dento Dentist Area End ***** --> 

        <!-- ***** Blog Message Start ***** -->


     <!-- ***** Blog Message Start ***** -->
     <div class="container">
        <div class="modal fade" id="appAddNewBook" role="dialog">
           <asp:ScriptManager ID="ScriptManager1" runat="server"> </asp:ScriptManager>
           <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                  <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">
                               Добавяне на нов потребител
                            </h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

                        <div class="modal-body scroow">
                             <div class="form-group row">
                                    <asp:Label class="col-md-12" id="lblFailedAddBookMessage" runat="server" Text="" ForeColor="Red" Visible="false"></asp:Label>
                                    <asp:Label class="col-md-12" id="lblSuccessfulAddBookMessage" runat="server" Text="" ForeColor="Green" Visible="false"></asp:Label>
                                </div>
                           
                                <div class="form-group row">
                                    <label class="text-black col-md-3 control-label ">Име на книгата:*</label>
                                    <asp:TextBox id="txtBookName"  type="text" class="form-control col-md-8" runat="server"></asp:TextBox>
                                </div>

                                <div class="form-group row">
                                    <label class="text-black col-md-3 control-label ">Име на автора:*</label>
                                    <asp:TextBox id="txtAuthorName"  type="text" class="form-control col-md-8" runat="server"></asp:TextBox>
                                </div>

                                 <div class="form-group row">
                                    <label class="text-black col-md-3 control-label ">Код на книгата:*</label>
                                    <asp:TextBox id="txtBookCode"  type="text" class="form-control col-md-8" runat="server"></asp:TextBox>
                                </div>

                                <div class="form-group row">
                                    <label class="text-black col-md-3 control-label " for="email">Жанр:*</label>
                                    <asp:DropDownList ID="ddlGenreAddBook" runat="server" class="col-3 col-sm-3 col-md-3">
                                        <asp:ListItem Enabled="true" Text="Жанр" Value="-1"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>                               
                        </div>


                        <div class="modal-footer container">
                            <asp:Button ID="addNewBook" runat="server" Text="Добави книгата" class="btn btn-primary btn-block col-md-3" OnClick="addNewBook_Click"/>
                        </div>
                    </div>                    
                </div>
              </ContentTemplate>
            </asp:UpdatePanel>
         </div>
      </div>
</asp:Content>
