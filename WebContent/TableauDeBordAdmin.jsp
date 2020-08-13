<% if (session.getAttribute("Administrateur") != null) { %>
<jsp:include page="Include/header.jsp" />
<jsp:include page="Include/navbarAdmin.jsp" />


<div class="container utilisateurs" >

    <div class="row text-center">

        <div class="bloc col-lg-4">

            <a href="indexAdmin.utilisateur">
                <div class="admin">
                    <i class="fa fa-home"></i>

                    <span>
                        <b>Administrateur</b>
                    </span>
                </div>
            </a>

        </div>

        <div class="col-lg-4">
            <a href="index.utilisateur">
                <div class="professeur">
                    <i class="fa fa-users"></i>

                    <span>
                        <b>Professeur</b> 
                    </span>
                </div>
            </a>
        </div>

        <div class="col-lg-4">
            <a href="index.utilisateur"> 
                <div class="etudiant">
                    <i class="fa fa-mortar-board"></i>

                    <span>
                        <b>Etudiant</b>
                    </span>
                </div>
            </a>
        </div>
    </div><hr class="uk-divider-icon">
    <div class="row text-center">

        <div class="col-lg-4">
            <a href="indexAdmin.utilisateur"> 
                <div class="evenement">
                    <i class="fa  fa-thumbs-up"></i>

                    <span>
                        <b>Evénement</b>
                    </span>
                </div>
            </a>
        </div>

        <div class="col-lg-4">
            <a href="index.utilisateur"> 
                <div class="activite">
                    <i class="fa fa-trophy"></i>

                    <span>
                        <b>Activité </b>
                    </span>
                </div>
            </a>
        </div>

        <div class="col-lg-4">
            <a href="index.utilisateur"> 
                <div class="emploisDeTemps">
                    <i class="fa fa-calendar "></i>

                    <span>
                        <b>Emplois de temps</b> 
                    </span>
                </div>
            </a>
        </div>
    </div><hr class="uk-divider-icon">
    <div class="row text-center">

        <div class="col-lg-4">
            <a href="indexAdmin.utilisateur"> 
                <div class="LesVacances">
                    <i class="fa fa-gg"></i>

                    <span>
                        <b>Les vacances</b>
                    </span>
                </div>
            </a>
        </div>

        <div class="col-lg-4">
            <a href="index.utilisateur">
                <div class="filieres">
                    <i class="fa fa-database "></i>

                    <span>
                        <b>Filières</b> 
                    </span>
                </div>
            </a>
        </div>

        <div class="col-lg-4">
            <a href="index.utilisateur">
                <div class="autre">
                    <i class="fa  fa-gears"></i>

                    <span>
                        <b> Autre</b>
                    </span>
                </div>
            </a>
        </div>
    </div>
</div>



<jsp:include page="Include/footer.jsp" />
<%
} else {%>

<b> Vous deves étre connecter pour accede à votre espace </b> <a href="index.jsp"W>Login</a>

<%
    }
%>

