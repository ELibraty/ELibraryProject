<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ELibrary._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    

    <div class="py-5 bg-light site-section how-it-works" id="howitworks-section">
      <div class="container">
        <div class="row mb-5 justify-content-center">
          <div class="col-md-7 text-center">
            <h2 class="section-title mb-3">
                How It Works</h2>
              

<asp:RegularExpressionValidator ID="rev1" runat="server" 
ControlToValidate="txtPassword"
ErrorMessage="Password must contain: Minimum 8 and Maximum 10 characters atleast 1 UpperCase Alphabet, 1 LowerCase Alphabet, 1 Number and 1 Special Character"
ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,10}"/>
          </div>
        </div>
        <div class="row">
          <div class="col-md-4 text-center">
            <div class="pr-5">
              <span class="custom-icon flaticon-house text-primary"></span>
              <h3 class="text-dark">Find Property.</h3>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                
                
            </div>
          </div>

          <div class="col-md-4 text-center">
            <div class="pr-5">
              <span class="custom-icon flaticon-coin text-primary"></span>
              <h3 class="text-dark">Buy Property.</h3>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
            </div>
          </div>

          <div class="col-md-4 text-center">
            <div class="pr-5">
              <span class="custom-icon flaticon-home text-primary"></span>
              <h3 class="text-dark">Make Investment.</h3>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section" id="properties-section">
      <div class="container">
        <div class="row mb-5 align-items-center">
          <div class="col-md-7 text-left">
            <h2 class="section-title mb-3">Properties</h2>
          </div>
          <div class="col-md-5 text-left text-md-right">
            <div class="custom-nav1">
              <a href="#" class="custom-prev1">Previous</a><span class="mx-3">/</span><a href="#" class="custom-next1">Next</a>
            </div>
          </div>
        </div>

        <div class="owl-carousel nonloop-block-13 mb-5">

          <div class="property">
            <a href="property-single.html">
              <img src="images/property_1.jpg" alt="Image" class="img-fluid">
            </a>
            <div class="prop-details p-3">
              <div><strong class="price">$3,400,000</strong></div>
              <div class="mb-2 d-flex justify-content-between">
                <span class="w border-r">6 beds</span>
                <span class="w border-r">4 baths</span>
                <span class="w">4,250 sqft.</span>
              </div>
              <div>480 12th, Unit 14, San Francisco, CA</div>
            </div>
          </div>

          <div class="property">
            <a href="property-single.html">
              <img src="images/property_2.jpg" alt="Image" class="img-fluid">
            </a>
            <div class="prop-details p-3">
              <div><strong class="price">$3,400,000</strong></div>
              <div class="mb-2 d-flex justify-content-between">
                <span class="w border-r">6 beds</span>
                <span class="w border-r">4 baths</span>
                <span class="w">4,250 sqft.</span>
              </div>
              <div>480 12th, Unit 14, San Francisco, CA</div>
            </div>
          </div>

          <div class="property">
            <a href="property-single.html">
              <img src="images/property_3.jpg" alt="Image" class="img-fluid">
            </a>
            <div class="prop-details p-3">
              <div><strong class="price">$3,400,000</strong></div>
              <div class="mb-2 d-flex justify-content-between">
                <span class="w border-r">6 beds</span>
                <span class="w border-r">4 baths</span>
                <span class="w">4,250 sqft.</span>
              </div>
              <div>480 12th, Unit 14, San Francisco, CA</div>
            </div>
          </div>

          <div class="property">
            <a href="property-single.html">
              <img src="images/property_4.jpg" alt="Image" class="img-fluid">
            </a>
            <div class="prop-details p-3">
              <div><strong class="price">$3,400,000</strong></div>
              <div class="mb-2 d-flex justify-content-between">
                <span class="w border-r">6 beds</span>
                <span class="w border-r">4 baths</span>
                <span class="w">4,250 sqft.</span>
              </div>
              <div>480 12th, Unit 14, San Francisco, CA</div>
            </div>
          </div>

        </div>
        <div class="row justify-content-center">
          <div class="col-md-4">
            <a href="listings.html" class="btn btn-primary btn-block">View All Property Listings</a>
          </div>
        </div>
      </div>
    </div>

    <section class="site-section border-bottom" id="agents-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-7 text-left">
            <h2 class="section-title mb-3">Agents</h2>
            <p class="lead">Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus minima neque tempora reiciendis.</p>
          </div>
        </div>
        <div class="row">


          <div class="col-md-6 col-lg-4 mb-4">
            <div class="team-member">
              <figure>
                <ul class="social">
                  <li><a href="#"><span class="icon-facebook"></span></a></li>
                  <li><a href="#"><span class="icon-twitter"></span></a></li>
                  <li><a href="#"><span class="icon-linkedin"></span></a></li>
                  <li><a href="#"><span class="icon-instagram"></span></a></li>
                </ul>
                <img src="images/person_5.jpg" alt="Image" class="img-fluid">
              </figure>
              <div class="p-3">
                <h3 class="mb-2">Kaiara Spencer</h3>
                <span class="position">Real Estate Agent</span>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4">
            <div class="team-member">
              <figure>
                <ul class="social">
                  <li><a href="#"><span class="icon-facebook"></span></a></li>
                  <li><a href="#"><span class="icon-twitter"></span></a></li>
                  <li><a href="#"><span class="icon-linkedin"></span></a></li>
                  <li><a href="#"><span class="icon-instagram"></span></a></li>
                </ul>
                <img src="images/person_6.jpg" alt="Image" class="img-fluid">
              </figure>
              <div class="p-3">
                <h3 class="mb-2">Dave Simpson</h3>
                <span class="position">Real Estate Agent</span>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4">
            <div class="team-member">
              <figure>
                <ul class="social">
                  <li><a href="#"><span class="icon-facebook"></span></a></li>
                  <li><a href="#"><span class="icon-twitter"></span></a></li>
                  <li><a href="#"><span class="icon-linkedin"></span></a></li>
                  <li><a href="#"><span class="icon-instagram"></span></a></li>
                </ul>
                <img src="images/person_7.jpg" alt="Image" class="img-fluid">
              </figure>
              <div class="p-3">
                <h3 class="mb-2">Ben Thompson</h3>
                <span class="position">Real Estate Agent</span>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4">
            <div class="team-member">
              <figure>
                <ul class="social">
                  <li><a href="#"><span class="icon-facebook"></span></a></li>
                  <li><a href="#"><span class="icon-twitter"></span></a></li>
                  <li><a href="#"><span class="icon-linkedin"></span></a></li>
                  <li><a href="#"><span class="icon-instagram"></span></a></li>
                </ul>
                <img src="images/person_8.jpg" alt="Image" class="img-fluid">
              </figure>
              <div class="p-3">
                <h3 class="mb-2">Kyla Stewart</h3>
                <span class="position">Real Estate Agent</span>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4">
            <div class="team-member">
              <figure>
                <ul class="social">
                  <li><a href="#"><span class="icon-facebook"></span></a></li>
                  <li><a href="#"><span class="icon-twitter"></span></a></li>
                  <li><a href="#"><span class="icon-linkedin"></span></a></li>
                  <li><a href="#"><span class="icon-instagram"></span></a></li>
                </ul>
                <img src="images/person_5.jpg" alt="Image" class="img-fluid">
              </figure>
              <div class="p-3">
                <h3 class="mb-2">Kaiara Spencer</h3>
                <span class="position">Real Estate Agent</span>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4">
            <div class="team-member">
              <figure>
                <ul class="social">
                  <li><a href="#"><span class="icon-facebook"></span></a></li>
                  <li><a href="#"><span class="icon-twitter"></span></a></li>
                  <li><a href="#"><span class="icon-linkedin"></span></a></li>
                  <li><a href="#"><span class="icon-instagram"></span></a></li>
                </ul>
                <img src="images/person_6.jpg" alt="Image" class="img-fluid">
              </figure>
              <div class="p-3">
                <h3 class="mb-2">Dave Simpson</h3>
                <span class="position">Real Estate Agent</span>
              </div>
            </div>
          </div>


        </div>
      </div>
    </section>

      <section class="site-section" id="about-section">
      <div class="container">

        <div class="row">
          <div class="col-lg-6">

            <div class="owl-carousel slide-one-item-alt">
              <img src="images/property_1.jpg" alt="Image" class="img-fluid">
              <img src="images/property_2.jpg" alt="Image" class="img-fluid">
              <img src="images/property_3.jpg" alt="Image" class="img-fluid">
              <img src="images/property_4.jpg" alt="Image" class="img-fluid">
            </div>
            <div class="custom-direction">
              <a href="#" class="custom-prev">Prev</a><a href="#" class="custom-next">Next</a>
            </div>

          </div>
          <div class="col-lg-5 ml-auto">

            <h2 class="section-title mb-3">We Are The Best RealEstate Company</h2>
                <p class="lead">Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                <p>Est qui eos quasi ratione nostrum excepturi id recusandae fugit omnis ullam pariatur itaque nisi voluptas impedit  Quo suscipit omnis iste velit maxime.</p>

                <ul class="list-unstyled ul-check success">
                  <li>Placeat maxime animi minus</li>
                  <li>Dolore qui placeat maxime</li>
                  <li>Consectetur adipisicing</li>
                  <li>Lorem ipsum dolor</li>
                  <li>Placeat molestias animi</li>
                </ul>

                <p><a href="#" class="btn btn-primary mr-2 mb-2">Learn More</a></p>

          </div>
        </div>
      </div>
    </section>



    <section class="site-section border-bottom bg-light" id="services-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-12 text-center">
            <h2 class="section-title mb-3">Services</h2>
          </div>
        </div>
        <div class="row align-items-stretch">
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up">
            <div class="unit-4 d-flex">
              <div class="unit-4-icon mr-4"><span class="text-primary flaticon-house"></span></div>
              <div>
                <h3>Search Property</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p>
                <p><a href="#">Learn More</a></p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="100">
            <div class="unit-4 d-flex">
              <div class="unit-4-icon mr-4"><span class="text-primary flaticon-coin"></span></div>
              <div>
                <h3>Buy Property</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p>
                <p><a href="#">Learn More</a></p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="200">
            <div class="unit-4 d-flex">
              <div class="unit-4-icon mr-4"><span class="text-primary flaticon-home"></span></div>
              <div>
                <h3>Invest a Home</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p>
                <p><a href="#">Learn More</a></p>
              </div>
            </div>
          </div>


          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="300">
            <div class="unit-4 d-flex">
              <div class="unit-4-icon mr-4"><span class="text-primary flaticon-flat"></span></div>
              <div>
                <h3>Post Properties</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p>
                <p><a href="#">Learn More</a></p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="400">
            <div class="unit-4 d-flex">
              <div class="unit-4-icon mr-4"><span class="text-primary flaticon-location"></span></div>
              <div>
                <h3>Property Locator</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p>
                <p><a href="#">Learn More</a></p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up" data-aos-delay="500">
            <div class="unit-4 d-flex">
              <div class="unit-4-icon mr-4"><span class="text-primary flaticon-mobile-phone"></span></div>
              <div>
                <h3>Stated Apps</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p>
                <p><a href="#">Learn More</a></p>
              </div>
            </div>
          </div>

        </div>
      </div>
    </section>



    <section class="site-section testimonial-wrap" id="testimonials-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-12 text-center">
            <h2 class="section-title mb-3">People Says...</h2>
          </div>
        </div>
      </div>
      <div class="slide-one-item home-slider owl-carousel">
          <div>
            <div class="testimonial">

              <blockquote class="mb-5">
                <p>&ldquo;Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur unde reprehenderit aperiam quaerat fugiat repudiandae explicabo animi minima fuga beatae illum eligendi incidunt consequatur. Amet dolores excepturi earum unde iusto.&rdquo;</p>
              </blockquote>

              <figure class="mb-4 d-flex align-items-center justify-content-center">
                <div><img src="images/person_3.jpg" alt="Image" class="w-50 img-fluid mb-3"></div>
                <p>John Smith</p>
              </figure>
            </div>
          </div>
          <div>
            <div class="testimonial">

              <blockquote class="mb-5">
                <p>&ldquo;Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur unde reprehenderit aperiam quaerat fugiat repudiandae explicabo animi minima fuga beatae illum eligendi incidunt consequatur. Amet dolores excepturi earum unde iusto.&rdquo;</p>
              </blockquote>
              <figure class="mb-4 d-flex align-items-center justify-content-center">
                <div><img src="images/person_2.jpg" alt="Image" class="w-50 img-fluid mb-3"></div>
                <p>Christine Aguilar</p>
              </figure>

            </div>
          </div>

          <div>
            <div class="testimonial">

              <blockquote class="mb-5">
                <p>&ldquo;Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur unde reprehenderit aperiam quaerat fugiat repudiandae explicabo animi minima fuga beatae illum eligendi incidunt consequatur. Amet dolores excepturi earum unde iusto.&rdquo;</p>
              </blockquote>
              <figure class="mb-4 d-flex align-items-center justify-content-center">
                <div><img src="images/person_4.jpg" alt="Image" class="w-50 img-fluid mb-3"></div>
                <p>Robert Spears</p>
              </figure>


            </div>
          </div>

          <div>
            <div class="testimonial">

              <blockquote class="mb-5">
                <p>&ldquo;Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur unde reprehenderit aperiam quaerat fugiat repudiandae explicabo animi minima fuga beatae illum eligendi incidunt consequatur. Amet dolores excepturi earum unde iusto.&rdquo;</p>
              </blockquote>
              <figure class="mb-4 d-flex align-items-center justify-content-center">
                <div><img src="images/person_4.jpg" alt="Image" class="w-50 img-fluid mb-3"></div>
                <p>Bruce Rogers</p>
              </figure>

            </div>
          </div>

        </div>
    </section>


    <section class="site-section" id="news-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-12 text-center">
            <h2 class="section-title mb-3">News &amp; Events</h2>
          </div>
        </div>

        <div class="row">
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
            <div class="h-entry">
              <a href="single.html"><img src="images/property_1.jpg" alt="Image" class="img-fluid"></a>
              <h2 class="font-size-regular"><a href="single.html" class="text-dark">20+ Real Properties for Realtors</a></h2>
              <div class="meta mb-4">Ham Brook <span class="mx-2">&bullet;</span> Jan 18, 2019<span class="mx-2">&bullet;</span> <a href="single.html">News</a></div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
            <div class="h-entry">
              <a href="single.html"><img src="images/property_2.jpg" alt="Image" class="img-fluid"></a>
              <h2 class="font-size-regular"><a href="single.html" class="text-dark">20+ Real Properties for Realtors</a></h2>
              <div class="meta mb-4">James Phelps <span class="mx-2">&bullet;</span> Jan 18, 2019<span class="mx-2">&bullet;</span> <a href="single.html">News</a></div>

            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
            <div class="h-entry">
              <a href="single.html"><img src="images/property_3.jpg" alt="Image" class="img-fluid"></a>
              <h2 class="font-size-regular"><a href="single.html" class="text-dark">20+ Real Properties for Realtors</a></h2>
              <div class="meta mb-4">James Phelps <span class="mx-2">&bullet;</span> Jan 18, 2019<span class="mx-2">&bullet;</span> <a href="single.html">News</a></div>
            </div>
          </div>
                             

        </div>
      </div>
    </section>





    <div class="container">
        <div class="modal fade" id="appRegesterPerson" role="dialog">
           <asp:ScriptManager ID="ScriptManager1" runat="server"> </asp:ScriptManager>
           <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                  <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">
                                Регистиране на нов потребител
                            </h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

                        <div class="modal-body scroow">
                            <div class="form-group row">
                                <asp:Label id="lblFailedRegistrationMessage" runat="server" Text="" ForeColor="Red" Visible="false"></asp:Label>

                                <asp:Label  id="lblSuccessfulRegistrationMessage" runat="server" Text="" ForeColor="Green" Visible="false"></asp:Label>
                            </div>
                           
                            <div class="form-group row">
                                <label class="text-black col-md-3 control-label " for="email">Email:*</label>
                                <asp:TextBox id="txtEmailRegistartion"  type="text" class="form-control col-md-9" runat="server">dim_kolev2002@abv.bg</asp:TextBox>
                            </div>

                            <div class="form-group row">
                                <label class="text-black col-md-3 control-label" for="txtUserName">Потребителско име:*</label><br />
                                <asp:TextBox id="txtUserNameRegistartion"  type="text" class="form-control col-md-9" runat="server">sda</asp:TextBox>

                            </div>

                            <div class="form-group row">
                                <label class="text-black col-md-3 control-label" for="txtPassword">Парола:*</label><br />
                                <asp:TextBox id="txtPasswordRegistartion"  type="password" class="form-control col-md-9" runat="server">a</asp:TextBox>

                            </div>
                       
                            <div class="form-group row">
                                <label class="text-black col-md-3 control-label" for="txtPassword">Повтори парола:*</label><br />
                                <asp:TextBox id="txtConfirmPasswordRegistartion"  type="password" class="form-control col-md-9" runat="server">a</asp:TextBox>
                            </div>   

                            <div class="form-group row">
                                <label class="text-black col-md-3 control-label" for="chbRegistrationAs">Регистрирай ме като:</label><br />
                                <label class="switch col-md-9">
                                  <div class="form-group row">
                                      <label class="text-black col-md-3 control-label">Потребител</label>
                                      <div class="form-group col-md-1" style="height:35px;width:80px;">
                                        <asp:CheckBox ID="chbRegistrationAs" runat="server"/>
                                        <span class="round slider"></span>
                                      </div>
                                      <label class="text-black col-md-3 control-label">Библиотека</label>

                                  </div>
                                  
                                </label>
                            </div> 
                        </div>


                        <div class="modal-footer container">
                          <asp:Button ID="btnRegestrationPerson" runat="server" Text="Регистирай" class="btn btn-primary btn-block col-md-3" OnClick="btnRegestrationPerson_Click"/>
                        </div>
                    </div>                    
                </div>
              </ContentTemplate>
            </asp:UpdatePanel>
         </div>
    </div>

     <div class="container">
        <div class="modal fade" id="appLogInPerson" role="dialog">
           <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                  <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">
                                Влизане в профила
                            </h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

                        <div class="modal-body scroow">

                            <div class="form-group row">
                                <label class="text-black col-md-3 control-label " for="email">Email:</label>
                                <input id="txtEmailLogIn"  type="email" class="form-control col-md-9"/>
                            </div>                     
                        </div>


                        <div class="modal-footer container">
                       
                             <asp:Button ID="Button1" runat="server" Text="Регистирай" class="btn btn-primary btn-block col-md-3"/>

                        </div>
                    </div>                    
                </div>
              </ContentTemplate>
            </asp:UpdatePanel>
         </div>
    </div>

</asp:Content>
