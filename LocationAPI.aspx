<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LocationAPI.aspx.cs" Inherits="WebApplication1.LocationAPI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- CSS FILES -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="css/light_theme.css" type="text/css" />

    <!-- JS FILES -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/light_theme.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

    <!-- GOOGLE FONT -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet" />

    <!-- MATERIAL ICONS -->
    <!--<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">-->
    <link href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp" rel="stylesheet" />

    <!-- FONT AWESOME ICONS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="side_menu">
            <div class="side_menu_top_bar">
                <span class="side_menu_top_bar_cap">Module Title</span>
                <a href="javascript:void(0)" class="close_side_menu"><i class="material-icons">close</i></a>
            </div>
            <div class="side_menu_inner">
                <div class="profile_intro">
                    <div class="photo" style="background-image: url(Images/photo-02.jpg)">
                        <span class="profile_intro_status"></span>
                    </div>
                    <div class="profile_intro_name">
                        Roger A Davis
                    </div>
                    <div class="profile_det">
                        <span>Emptrust Solutions</span>
                    </div>
                    <a href="#" class="edit_profile">
                        <i class="material-icons">settings</i>
                    </a>
                </div>
                <div class="quick_btn">
                    <a href="#" class="btn_item material_ico_base settings_ico">Button Title</a>
                </div>
                <div class="page_link_group">
                    <div class="page_link_group_title">
                        Quick Links
                    </div>
                    <div class="dropdown page_link_group_item">
                        <a href="javascript:void(0)" class="page_link_group_item_cap" data-toggle="dropdown" aria-expanded="false">
                            <i class="material-icons ico">supervisor_account</i>
                            Main Menu title
                        </a>
                        <ul class="dropdown-menu page_link_dropdown">
                            <li>
                                <a href="#">
                                    <i class="material-icons ico">library_books</i>
                                    Sub Menu 1
                                </a>
                            </li>
                            <li class="active">
                                <a href="#">
                                    <i class="material-icons ico">mail</i>
                                    Sub Menu 2
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="material-icons ico">circle_notifications</i>
                                    Sub Menu 3
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="footer_logo">
                    <img src="Images/logo.svg" />
                </div>
            </div>
        </div>
        <div class="light_theme_main_panel">
            <header>
                <div class="container-fluid-ad max_width_ad">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="logo">
                                <img src="Images/emptrust-header-logo.jpeg" />
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="header_search_box">
                                <i class="material-icons ico">keyboard</i>
                                <input type="text" placeholder="Search Applicants, Jobs, etc" />
                                <button type="submit"><i class="material-icons">search</i></button>
                            </div>
                            <ul class="header_nav">
                                <li>
                                    <a href="#" class="not_icon">
                                        <div class="user_panel">
                                            <div class="user_panel_photo" style="background-image: url(Images/photo-02.jpg)">
                                                <span class="user_panel_status"></span>
                                            </div>
                                            <div class="user_panel_details">
                                                <p class="user_panel_details_name">Roger A Davis</p>
                                                <p class="user_panel_details_org_name">Emptrust Solutions</p>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)"><i class="material-icons ico">exit_to_app</i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </header>
            <div class="quick_links">
                <div class="container-fluid-ad max_width_ad">
                    <div class="row">
                        <div class="col-md-10">
                            <ul class="quick_links_list">
                                <li><a href="javascript:void(0)" class="side_menu_trigger"><i class="material-icons ico">sort</i>Menu</a></li>
                                <li><a href="javascript:void(0)">
                                    <img src="Images/home.svg" class="qLink_ico">Home</a></li>
                                <li><a href="javascript:void(0)">
                                    <img src="Images/submit_query.svg" class="qLink_ico">Quick Invite</a></li>
                                <li><a href="javascript:void(0)">
                                    <img src="Images/case_status.svg" class="qLink_ico">View Status</a></li>
                                <li><a href="javascript:void(0)">
                                    <img src="Images/dashboard.svg" class="qLink_ico">Dashboard</a></li>
                                <li><a href="javascript:void(0)">
                                    <img src="Images/report.svg" class="qLink_ico">Reports</a></li>
                                <li><a href="javascript:void(0)">
                                    <img src="Images/folder.svg" class="qLink_ico">Resources</a></li>
                            </ul>
                        </div>
                        <div class="col-md-2">
                            <div class="module_navigation">
                                <select>
                                    <option>Talent Manager</option>
                                    <option>I-9 Forms</option>
                                    <option>E-Verify</option>
                                    <option selected="">EMP-Onboard</option>
                                    <option>HR Central</option>
                                    <option>System Settings</option>
                                    <option>User Administration</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="main_content">
                <div class="container-fluid-ad max_width_ad">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="toolbar_panel">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="toolbar_panel_btn_group">
                                            <a href="javascript:void(0)" class="toolbar_panel_btn material_ico_base back_ico cancel_btn">CANCEL</a>
                                            <div class="page_head pull-left">
                                                <i class="material-icons page_head_icon">library_books</i>
                                                Location Search
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="toolbar_panel_btn_group right">                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="box_panel general_box_shadow min_height">
                               <!-- Place your layout here -->
                                <asp:UpdatePanel ID="upLocations" runat="server" UpdateMode="Conditional">
                                    <ContentTemplate>
                                <div class="general_form_box with_bg with_gradient mar_btm_20">

    <div class="general_form_box_title">Basic Details</div>
                               
    <div class="row">
        <div class="col-md-6 ">
            <div class="general_form_box_element_set">
                <label class="general_form_box_label">Country</label>
                 <div class="select_container">
                <asp:DropDownList ID="ddlCountry" runat="server" CssClass="general_form_box_select_box" AppendDataBoundItems="true" AutoPostBack="true" DataTextField="name" DataValueField="iso2" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged">
                    <asp:ListItem Text="Select a country" Value="" Selected="True" Disabled="true"></asp:ListItem>
                  
                </asp:DropDownList>
                    </div>
            </div>
        </div>
        
                                                  
                               
                                        <div class="col-md-6">
                                            <div class="general_form_box_element_set">
                                                <label class="general_form_box_label">State</label>
                                                <div class="select_container">
                                                    <asp:DropDownList ID="ddlState" runat="server" CssClass="general_form_box_select_box" AppendDataBoundItems="true" AutoPostBack="true" DataTextField="name" DataValueField="iso2" OnSelectedIndexChanged="ddlState_SelectedIndexChanged1">
                                                        <asp:ListItem Text="Select a state" Value="" Selected="True" Disabled="true"></asp:ListItem>                                                
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                         
                                      
        </div>

               
                                    <div class="col-md-6 pad-adjust">
                                            <div class="general_form_box_element_set">
                                                <label class="general_form_box_label">City</label>
                                                <div class="select_container">
                                                    <asp:DropDownList ID="ddlCity" runat="server" CssClass="general_form_box_select_box" AppendDataBoundItems="true" AutoPostBack="true" DataTextField="name" DataValueField="id">
                                                        <asp:ListItem Text="Select a city" Value="" Selected="True" Disabled="true"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div> 
                                            </div>
                                        </div>    
                                                                                                                  </ContentTemplate>
                                    <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="ddlCountry" EventName ="SelectedIndexChanged"></asp:AsyncPostBackTrigger>
                     <asp:AsyncPostBackTrigger ControlID="ddlState" EventName="SelectedIndexChanged"></asp:AsyncPostBackTrigger>
                                        </Triggers>
</asp:UpdatePanel>           

</div>                                       
                           
                         
</div>
                            </div>
                        </div>
        </div>
        </div>
            <footer>
                <div class="container-fluid-ad max_width_ad">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="copyright_text">
                                © EMPTRUST Solutions 2008 - 2019 All Rights Reserved
                            </div>
                        </div>
                        <div class="col-md-4 text-center">
                            <div class="footer_logo">
                                <img src="Images/emp%20logo_transparent.png" width="130">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <ul class="footer_links">
                                <li><a href="#">Report a problem</a></li>
                                <li><a href="#">Customer Support</a></li>
                                <li><a href="#">Send a Feedback</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </footer>
      <%--  </div>--%>
    </form>
</body>
</html>


