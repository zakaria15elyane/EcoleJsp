<% if (session.getAttribute("Professeur") != null) { %>
<jsp:include page="Include/header.jsp" />
<jsp:include page="Include/navbarProfesseur.jsp" />
<div class="espacaAdmin">
    <div class="container text-center">
        <div class="uk-card uk-card-default uk-card-hover uk-card-body">
            <h3 class="uk-card-title">Syst�me de gestion d'�cole</h3>
            <p><i class="fa fa-mortar-board fa-4x"></i></p>
        </div>
    </div>
</div>
<jsp:include page="Include/footer.jsp" />
<%
} else {%>

<b> Vous deves �tre connecter pour accede � votre espace </b> <a href="index.jsp">Login</a>

<%
    }
%>

