<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryAccount/LibraryAccount.Master" AutoEventWireup="true" CodeBehind="GetAndReturnBookPage.aspx.cs" Inherits="ELibrary2.LibraryAccount.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <asp:ScriptManager ID="ScriptManager1" runat="server"> </asp:ScriptManager>

    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
        <!-- ***** Search Area Start ***** -->
        <section class="dentist-area section-padding-100-0">
        <div class="container">
            <div class="row">
            <!-- Section Heading -->
                <div class="col-12">
                    <div class="section-heading text-center">
                    <h4>Предоставяне и връщане на книги:<br/><br/></h4>
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
                        <asp:TextBox ID="txtBookNameSearch" runat="server" class="col-3 col-sm-3 col-md-3" placeholder = "Име на книгата"></asp:TextBox>
                        <asp:Label Text="" runat="server" class="col-1 col-sm-1 col-md-1"/>
                        <asp:TextBox ID="txtAutcorNameSearch" runat="server" class="col-3 col-sm-3 col-md-3" placeholder = "Име на автора"></asp:TextBox>
                        <asp:Label Text="" runat="server" class="col-1 col-sm-1 col-md-1"/>
                        <asp:DropDownList ID="ddlGenreSearch" runat="server" class="col-3 col-sm-3 col-md-3">
                        </asp:DropDownList>
                    </div>
                    <div class="row ">
                        <asp:TextBox ID="txtBookCodeSearch" runat="server" class="col-3 col-sm-3 col-md-3" placeholder = "Код на книгата"></asp:TextBox>
                      
                        
                    </div>
                    <div class="form-group row">
                        <label class="text-black col-md-2 control-label ">Сортирай по:*</label>
                        <asp:DropDownList ID="ddlSortAddedBook" runat="server" class="col-3 col-sm-3 col-md-3">
                            <asp:ListItem Enabled="true" Text="Име на книгата А-Я"></asp:ListItem>
                            <asp:ListItem Enabled="true" Text="Име на книгата Я-А"></asp:ListItem>

                            <asp:ListItem Enabled="true" Text="Име на автора А-Я"></asp:ListItem>
                            <asp:ListItem Enabled="true" Text="Име на автора Я-А"></asp:ListItem>

                            <asp:ListItem Enabled="true" Text="Код на книгата А-Я"></asp:ListItem>
                            <asp:ListItem Enabled="true" Text="Код на книгата Я-А"></asp:ListItem>
                            
                            <asp:ListItem Enabled="true" Text="Жанр А-Я"></asp:ListItem>
                            <asp:ListItem Enabled="true" Text="Жанр Я-А"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group row">
                        <label class="text-black col-md-3 control-label ">Брой книги на станица:*</label>
                        <asp:DropDownList ID="ddlCountBookAtPage" runat="server" class="col-3 col-sm-3 col-md-3">
                            <asp:ListItem Enabled="true" Text="10"></asp:ListItem>
                            <asp:ListItem Enabled="true" Text="15"></asp:ListItem>
                            <asp:ListItem Enabled="true" Text="20"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="row ">
                        <asp:Button ID="btnSearch" runat="server" Text="Tърсене" class="btn btn-primary btn-block col-md-3"/>
                 
                        <button type="button" class="btn btn-primary btn-block col-md-3"  data-toggle="modal"  data-target="#appGetBookForReading">Предоставяне на книга за четене</button>
                    </div>                      
                 </div>
            </div>
         </div>
         </section>
         <!-- ***** Search Area End ***** --> 

         <!-- ***** View Added Book Area Start ***** --
         <section class="dentist-area section-padding-100-0">
         <div class="container">
            <div class="row ">
                <asp:Label Text="text" runat="server" id="lblMyLabel"/>
                <div class="col-12 col-sm-12 col-md-12" style="border-radius:20px;">        
                    <asp:GridView  ID="gdvAddedBook" runat="server" 

                        AutoGenerateColumns="False" CellPadding="8" ForeColor="#333333" Width="100%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField HeaderText="№" DataField="counter">
                            <FooterStyle Width="10%" />
                            <HeaderStyle Width="10%" />
                            <ItemStyle Width="10%" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="Код на книгата" DataField="book_code"/>
                            <asp:BoundField HeaderText="Име на книгата" DataField="book_name"/>
                            <asp:BoundField HeaderText="Автор" DataField="author"/>
                            <asp:BoundField HeaderText="Жанр" DataField="genre"/>
                            <asp:TemplateField  HeaderText="Редактиране">
                                <ItemTemplate>
                                      <asp:LinkButton  runat="server" CommandName="EditBook" UseSubmitBehavior="false" 
                                        Text="Редактирай" CommandArgument='<%# Eval("id") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField  HeaderText="Изтрий книгата">
                                <ItemTemplate>
                                    <asp:LinkButton  runat="server" CommandName="DeleteBook" UseSubmitBehavior="false" 
                                        Text="Изтрий" CommandArgument='<%# Eval("id") %>' />
                                 </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <HeaderStyle Width="100px" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#007bff" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </div>
                

            </div>
            <br/>
            <div class="row ">
                <div class="col-1 col-sm-1 col-md-1">
                   
                </div>
                <div class="col-2 col-sm-2 col-md-2 ">
                    <asp:Button Text="<Назад" runat="server" class="btn btn-primary btn-block"/>
                </div>
                <div class="col-6 col-sm-6 col-md-6 ">
                    <div class="row">
                        <asp:PlaceHolder runat="server" ID="pnhPages">

                        </asp:PlaceHolder>
                    </div>                   
                </div>
               
                <div class="col-2 col-sm-2 col-md-2">
                    <asp:Button Text="Напред>" runat="server" class="btn btn-primary btn-block" />
                </div>
            </div>
          </div>
          </section>
          <!-- ***** View Added Book Area End ***** -->
        </ContentTemplate>
    </asp:UpdatePanel>

    <!-- ***** Blog Message Start ***** -->
    <!-- ***** Get Book for Reading***** -->
    <div class="container">
    <div class="modal fade" id="appGetBookForReading" role="dialog">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">
                            Предоставяне на книга за четене
                        </h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <div class="modal-body scroow">
                        <div class="form-group row">
                            <asp:Label class="col-md-12" id="lblFailedGetBookMessage" runat="server" Text="" ForeColor="Red" Visible="false"></asp:Label>
                            <asp:Label class="col-md-12" id="lblSuccessfulGetBookMessage" runat="server" Text="" ForeColor="Green" Visible="false"></asp:Label>
                        </div>

                        <div class="form-group row">
                            <label class="text-black col-md-3 control-label ">Потребителско име на читетеля:*</label>
                            <asp:TextBox id="txtUserReaderName"  type="text" class="form-control col-md-8" runat="server"></asp:TextBox>
                        </div>
                           
                        <div class="form-group row">
                            <label class="text-black col-md-3 control-label ">Име на книгата:*</label>
                            <asp:TextBox id="txtBookReaderName"  type="text" class="form-control col-md-8" runat="server"></asp:TextBox>
                        </div>                           
                    </div>

                    <div class="modal-footer container">
                        <asp:Button ID="GetBook" runat="server" Text="Добавяне" class="btn btn-primary btn-block col-md-3" OnClick="GetBook_Click" />
                    </div>
                </div>                    
            </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        </div>
    </div>
    <!-- ***** Get Book for Reading END***** -->
</asp:Content>
