<jsp:include page="Include/header.jsp" />

<nav class="navbar-expand-lg navbar navbar-dark bg-dark" style="background-color: #000 !important">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">Système de gestion d'une école</a>
    </div>
</nav>
<% if (session.getAttribute("Administrateur") != null) {
        response.sendRedirect("EspaceAdmin.jsp");
    } else if (session.getAttribute("Etudiant") != null) {
        response.sendRedirect("EspaceEtudiant.jsp");
    } else {%>
        <div class="erreurAuthentification text-center">
        <%
            String message = (String) request.getAttribute("messageErreur");
            if (message != null) {
                out.print("<i class='fa  fa-info '></i> " + message);
            }
        %>
    </div>
<div class="container">


    <div class="authentification">
        <h1 class="text-center">ACCÈS COMPTES</h1>
        <form  method="POST" action="index.authentification">  
            <div class="form-group">
<input type="text" name="nomDeUtilisateur" id="nomDeUtilisateur" class="form-control"  placeholder="Nom d'utilisateur" autocomplete="off" />
                <i class="fa fa-briefcase fa-fw"></i>
            </div>
            <div class="form-group">
<input type="password" name="motDePasse" id="motDePasse" class="form-control"  placeholder="Mot de passe" autocomplete="new-password" />
                <i class="fa fa-key fa-fw"></i>
            </div>
 <button type="submit" class="btn btn-dark btn-block" onclick="return ValidationAuthentification();"> Connexion <span class="fa fa- a-sign-in"></span> </button>  
        </form>
    </div>
</div> 

<%}%>



<jsp:include page="Include/footer.jsp" />