<%@page import="services.servicePersonne"%>
<%@page import="services.serviceCategorie"%>
<%@page import="models.Categorie"%>
<%@page import="services.serviceLivre"%>
<%@page import="models.Livre"%>
<%@page import="java.util.ArrayList"%>
<%@page import="models.Personne"%>
<% Personne p = (Personne)session.getAttribute("personne"); 
if(p==null){
	response.sendRedirect("http://localhost:8081/khoumaniasma/authentification.jsp");

}else{

%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Espace Etudiant</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <meta name="keywords" content="bootstrap, bootstrap admin template, admin theme, admin dashboard, dashboard template, admin template, responsive" />
    <meta name="author" content="Codedthemes" />
    <!-- Favicon icon -->
    <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
    <!-- waves.css -->
    <link rel="stylesheet" href="assets/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- Required Fremwork -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap/css/bootstrap.min.css">
    <!-- waves.css -->
    <link rel="stylesheet" href="assets/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- themify icon -->
    <link rel="stylesheet" type="text/css" href="assets/icon/themify-icons/themify-icons.css">
    <!-- font-awesome-n -->
    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome-n.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css">
    <!-- scrollbar.css -->
    <link rel="stylesheet" type="text/css" href="assets/css/jquery.mCustomScrollbar.css">
    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
</head>

<body>

    <div id="pcoded" class="pcoded">
        <div class="pcoded-overlay-box"></div>
        <div class="pcoded-container navbar-wrapper">
            <nav class="navbar header-navbar pcoded-header">
                <div class="navbar-wrapper">
                    <div class="navbar-logo">
                        <a class="mobile-menu waves-effect waves-light" id="mobile-collapse" href="#!">
                            <i class="ti-menu"></i>
                        </a>
                        <div class="mobile-search waves-effect waves-light">
                            <div class="header-search">
                                <div class="main-search morphsearch-search">
                                    <div class="input-group">
                                        <span class="input-group-prepend search-close"><i class="ti-close input-group-text"></i></span>
                                        <input type="text" class="form-control" placeholder="Enter Keyword">
                                        <span class="input-group-append search-btn"><i class="ti-search input-group-text"></i></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a href="index.html">
                            <img class="img-fluid" src="assets/images/logo.png" alt="Theme-Logo" />
                        </a>
                        <a class="mobile-options waves-effect waves-light">
                            <i class="ti-more"></i>
                        </a>
                    </div>
                    <div class="navbar-container container-fluid">
                        <ul class="nav-left">
                            <li>
                                <div class="sidebar_toggle"><a href="javascript:void(0)"><i class="ti-menu"></i></a></div>
                            </li>
                            <li>
                                <a href="#!" onclick="javascript:toggleFullScreen()" class="waves-effect waves-light">
                                    <i class="ti-fullscreen"></i>
                                </a>
                            </li>
                        </ul>
                        <ul class="nav-right">
                            <li class="header-notification">
                             
                                <ul class="show-notification">
                                    <li>
                                        <h6>Notifications</h6>
                                        <label class="label label-danger">New</label>
                                    </li>
                                    <li class="waves-effect waves-light">
                                        <div class="media">
                                            <img class="d-flex align-self-center img-radius" src="assets/images/avatar-2.jpg" alt="Generic placeholder image">
                                            <div class="media-body">
                                                <h5 class="notification-user">John Doe</h5>
                                                <p class="notification-msg">Lorem ipsum dolor sit amet, consectetuer elit.</p>
                                                <span class="notification-time">30 minutes ago</span>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="waves-effect waves-light">
                                        <div class="media">
                                            <img class="d-flex align-self-center img-radius" src="assets/images/avatar-4.jpg" alt="Generic placeholder image">
                                            <div class="media-body">
                                                <h5 class="notification-user">Joseph William</h5>
                                                <p class="notification-msg">Lorem ipsum dolor sit amet, consectetuer elit.</p>
                                                <span class="notification-time">30 minutes ago</span>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="waves-effect waves-light">
                                        <div class="media">
                                            <img class="d-flex align-self-center img-radius" src="assets/images/avatar-3.jpg" alt="Generic placeholder image">
                                            <div class="media-body">
                                                <h5 class="notification-user">Sara Soudein</h5>
                                                <p class="notification-msg">Lorem ipsum dolor sit amet, consectetuer elit.</p>
                                                <span class="notification-time">30 minutes ago</span>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <li class="user-profile header-notification">
                                <a href="#!" class="waves-effect waves-light">
                                    <img src="assets/images/avatar-4.jpg" class="img-radius" alt="User-Profile-Image">
                                    <span><%=p.getNom()+" "+p.getPrenom() %></span>
                                    <i class="ti-angle-down"></i>
                                </a>
                                <ul class="show-notification profile-notification">
                                    <li class="waves-effect waves-light">
                                        <a href="#!">
                                            <i class="ti-settings"></i> Settings
                                        </a>
                                    </li>
                                    <li class="waves-effect waves-light">
                                        <a href="user-profile.html">
                                            <i class="ti-user"></i> Profile
                                        </a>
                                    </li>
                                    <li class="waves-effect waves-light">
                                        <a href="email-inbox.html">
                                            <i class="ti-email"></i> My Messages
                                        </a>
                                    </li>
                                    <li class="waves-effect waves-light">
                                        <a href="auth-lock-screen.html">
                                            <i class="ti-lock"></i> Lock Screen
                                        </a>
                                    </li>
                                    <li class="waves-effect waves-light">
                                        <a href="auth-normal-sign-in.html">
                                            <i class="ti-layout-sidebar-left"></i> Logout
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            <div class="pcoded-main-container">
                <div class="pcoded-wrapper">
                    <nav class="pcoded-navbar">
                        <div class="sidebar_toggle"><a href="#"><i class="icon-close icons"></i></a></div>
                        <div class="pcoded-inner-navbar main-menu">
                            <div class="">
                                <div class="main-menu-header">
                                    <img class="img-80 img-radius" src="assets/images/avatar-4.jpg" alt="User-Profile-Image">
                                    <div class="user-details">
                                        <span id="more-details"><%=p.getNom()+" "+p.getPrenom() %><i class="fa fa-caret-down"></i></span>
                                    </div>
                                </div>
                                <div class="main-menu-content">
                                    <ul>
                                        <li class="more-details">
                                            <a href="user-profile.html"><i class="ti-user"></i>View Profile</a>
                                            <a href="#!"><i class="ti-settings"></i>Settings</a>
                                            <a href="auth-normal-sign-in.html"><i class="ti-layout-sidebar-left"></i>Logout</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                       
                        
                          
                            <div class="pcoded-navigation-label">Fonctionnalités</div>
                            <ul class="pcoded-item pcoded-left-item">
                                <li class="">
                                    <a href="bs-basic-table.html" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-receipt"></i><b>B</b></span>
                                        <span class="pcoded-mtext">Ajouter Etudiant</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                </li>
                            </ul>
                               <ul class="pcoded-item pcoded-left-item">
                                <li class="">
                                    <a href="bs-basic-table.html" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-receipt"></i><b>B</b></span>
                                        <span class="pcoded-mtext">Ajouter livre</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                </li>
                            </ul>
                             <ul class="pcoded-item pcoded-left-item">
                                <li class="">
                                    <a href="bs-basic-table.html" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-receipt"></i><b>B</b></span>
                                        <span class="pcoded-mtext">Réserver livre</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                </li>
                            </ul>
                            
                            
                        </div>
                    </nav>
                    <div class="pcoded-content">
                        <!-- Page-header start -->
                        <div class="page-header">
                            <div class="page-block">
                                <div class="row align-items-center">
                                    <div class="col-md-8">
                                        <div class="page-header-title">
                                            <h5 class="m-b-10">Accueil</h5>
                                            <p class="m-b-0">Bienvenu dans votre espace Gestion des livres</p>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="breadcrumb">
                                            <li class="breadcrumb-item">
                                                <a href="index.html"> <i class="fa fa-home"></i> </a>
                                            </li>
                                            <li class="breadcrumb-item"><a href="#!">Accueil</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Page-header end -->
                        
                        
                        
                        
                        
                        <div class="pcoded-inner-content">
                            <!-- Main-body start -->
                            <div class="main-body">
                                <div class="page-wrapper">

                                    <!-- Page body start -->
                                    <div class="page-body">
                        <div class="row">
                        <div class="col-sm-12">
                        
                        <!--  **************************************  -->
                           <div class="card">
                                                    <div class="card-header">
                                                        <h5>Ajouter Etudiant</h5>
                                                    </div>
                                                    <div class="card-block">
                                                        <h4 class="sub-title">Veuillez saisir les donnees de votre Etudiant: </h4>
                                                        <form action="inscription" method="post">
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Nom</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" name="nom" class="form-control">
                                                                </div>
                                                            </div>
                                                            
                                                             <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Prenom</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" name="prenom" class="form-control">
                                                                </div>
                                                            </div>
                                                            
                                                             <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Email</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" name="email" class="form-control">
                                                                </div>
                                                            </div>
                                                            
                                                             <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Mot de passe</label>
                                                                <div class="col-sm-10">
                                                                    <input type="password" name="mdp" class="form-control">
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                          	  <div class="col-sm-10">
                                                          			<button type="submit" class="btn waves-effect waves-light btn-primary"><i class="icofont icofont-user-alt-3"></i>Ajouter Votre Etudiant</button>
                                                                </div></div>                               
                                                         </form>  
                                                    </div>
                                                </div>
                        
                       <!-- ***************** -->
                        
                       <!-- *************** -->
                       	  
                        <div class="card">
                                                    <div class="card-header">
                                                        <h5>Ajouter Livre</h5>
                                                    </div>
                                                    <div class="card-block">
                                                        <h4 class="sub-title">Veuillez saisir les donnees de votre Livre: </h4>
                                                        <form action="livre" method="post">
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">ISBN</label>
                                                                <div class="col-sm-10">
                                                                    <input type="number" name="isbn" class="form-control">
                                                                </div>
                                                            </div>
                                                            
                                                             <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Titre</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" name="titre" class="form-control">
                                                                </div>
                                                            </div>
                                                            
                                                             <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Genre</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" name="genre" class="form-control">
                                                                </div>
                                                            </div>
                                                            
                                                             <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Description</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" name="description" class="form-control">
                                                                </div>
                                                            </div>
                                                            
                                                             <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Annee Edition</label>
                                                                <div class="col-sm-10">
                                                                    <input type="number" name="ae" class="form-control">
                                                                </div>
                                                            </div>
                                                            
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Categorie</label>
                                                                <div class="col-sm-10">
                                                                	<%ArrayList<Categorie> categories = serviceCategorie.listeCategories();%>
                                                                    <select name="select" class="form-control">
                                                                    	<% for(Categorie c:categories){ %>
                                                                        <option value="opt1"><%=c.getNom() %></option>
                                                                        <%} %>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Auteur</label>
                                                                <div class="col-sm-10">
                                                                   <%ArrayList<Personne> auteurs = servicePersonne.listeAuteurs();%>
                                                                
                                                                    <select name="select" class="form-control">
                                                                     	<% for(Personne a:auteurs){ %>
                                                                        <option value="opt1"><%=a.getNom() %></option>
                                                                        <%} %>   
                                                                     </select>
                                                                </div>
                                                            </div>
                                                            
                                                            <div class="form-group row">
                                                          	  <div class="col-sm-10">
                                                          			<button type="submit" class="btn waves-effect waves-light btn-primary"><i class="icofont icofont-user-alt-3"></i>Ajouter Votre Etudiant</button>
                                                                </div></div>                               
                                                         </form>  
                                                    </div>
                                                </div>
                         <!-- *****************************  -->
                       <div class="card">
                                            <div class="card-header">
                                                <h5>Liste des livres</h5>
                                                <div class="card-header-right">
                                                    <ul class="list-unstyled card-option">
                                                        <li><i class="fa fa fa-wrench open-card-option"></i></li>
                                                        <li><i class="fa fa-window-maximize full-card"></i></li>
                                                        <li><i class="fa fa-minus minimize-card"></i></li>
                                                        <li><i class="fa fa-refresh reload-card"></i></li>
                                                        <li><i class="fa fa-trash close-card"></i></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="card-block table-border-style">
                                                <div class="table-responsive">
                                                <% ArrayList<Livre> livres = serviceLivre.listeLivres(); %>
                                                    <table class="table">
                                                        <thead>
                                                            <tr>
                                                                <th>#</th>
                                                                <th>ISBN</th>
                                                                <th>TITRE</th>
                                                                <th>GENRE</th>
                                                                <th>ANNEE EDITION</th>
                                                                <th>CATEGORIE</th>
                                                                <th>AUTEUR</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <%for(Livre l :livres){
                                                            	%>
                                                            <tr>
                                                                <th scope="row"><%=l.getId()%></th>
                                                                <td><%=l.getIsbn() %></td>
                                                                <td><%=l.getTitre() %></td>
                                                                <td><%=l.getGenre() %></td>
                                                                <td><%=l.getAnnee_edition() %></td>
                                                                <td><%=l.getCategorie().getNom() %></td>
                                                                <td><%=l.getAuteur().getNom()+" "+l.getAuteur().getPrenom() %></td>
                                                            </tr>
                                                            <%} %>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                       <!-- *****************************  -->
                        
                        </div></div>
                        </div></div>
                        </div></div>
                        
                        
                        
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Required Jquery -->
    <script type="text/javascript" src="assets/js/jquery/jquery.min.js "></script>
    <script type="text/javascript" src="assets/js/jquery-ui/jquery-ui.min.js "></script>
    <script type="text/javascript" src="assets/js/popper.js/popper.min.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap/js/bootstrap.min.js "></script>
    <!-- waves js -->
    <script src="assets/pages/waves/js/waves.min.js"></script>
    <!-- jquery slimscroll js -->
    <script type="text/javascript" src="assets/js/jquery-slimscroll/jquery.slimscroll.js"></script>

    <!-- slimscroll js -->
    <script src="assets/js/jquery.mCustomScrollbar.concat.min.js "></script>

    <!-- menu js -->
    <script src="assets/js/pcoded.min.js"></script>
    <script src="assets/js/vertical/vertical-layout.min.js "></script>

    <script type="text/javascript" src="assets/js/script.js "></script>
</body>

</html>
<%}%>