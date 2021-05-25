<%@page import="models.Personne"%>
 <%Personne P = (Personne)session.getAttribute("Personne");  
if(P!=null){
	
    if(models.Role.ADMIN.equals(P.getRole())) {
		response.sendRedirect("http://localhost:8081/khoumaniasma/admin");
	}else if(models.Role.ETUDIANT.equals(P.getRole())) {
		response.sendRedirect("http://localhost:8081/khoumaniasma/etudiant");}
		}
else{  %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>S'inscrire</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <div class="main">

        <section class="signup">
            <!-- <img src="images/bilbio.jpg" alt=""> -->
            <div class="container">
                <div class="signup-content">
                    <form method="POST" id="signup-form" class="signup-form" action="authentification">
                        <h2 class="form-title">Authentification</h2>
               
                        <div class="form-group">
                            <input type="email" class="form-input" name="email" id="email" placeholder="Adresse mail"/>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-input" name="mdp" id="password" placeholder="mot de passe"/>
                            <span toggle="#password" class="zmdi zmdi-eye field-icon toggle-password"></span>
                        </div>
                     
                        <div class="form-group">
                            <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                        </div>
                        <div class="form-group">
                            <input type="submit" name="submit" id="submit" class="form-submit" value="Sign up"/>
                        </div>
                    </form>
                 
                </div>
            </div>
        </section>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
<%}%>