<% if (session.getAttribute("Etudiant") != null) { %>
<jsp:include page="Include/header.jsp" />
<jsp:include page="Include/navbarEtudiant.jsp" />


<div class="container utilisateurs" >

    <div class="row text-center">

        <div class="bloc col-lg-4">

            <a href="">
                <div class="admin">
                    <i class="fa fa-user"></i>

                    <span>
                        <b>Mon profil</b>
                    </span>
                </div>
            </a>

        </div>

        
 
    </div><hr class="uk-divider-icon">
 
</div>



<jsp:include page="Include/footer.jsp" />
<%
} else {%>

<b> Vous deves étre connecter pour accede à votre espace </b> <a href="index.jsp"W>Login</a>

<%
    }
%>

