<% if (session.getAttribute("Administrateur") != null) { %>

<div class="container" >
    <div class="modifierUtilisateur" style="font-size: 12px">
        <form  method="POST" action="updateAdmin.utilisateur">  
            
                <div class="form-group">
                    <input type="hidden" name="id"   value="${utilisateur.id}" readonly=""/>
                </div>
                <div class="form-group">
                    <input type="text" name="nom" id="nom" value="${utilisateur.nom}" class="form-control"  placeholder=" Votre Nom" autocomplete="off" />
                    <i class="fa fa-user  fa-fw"></i> 
                </div>
                <div class="form-group">
                    <input type="text" name="prenom" id="prenom" value="${utilisateur.prenom}" class="form-control"  placeholder="Votre Prenom" autocomplete="off" />
                    <i class="fa fa-user  fa-fw"></i> 
                </div>
                <div class="form-group">
                    <input type="email" name="email" id="email" value="${utilisateur.email}" class="form-control"  placeholder="Votre Adrese Email" autocomplete="off" />
                    <i class="fa fa-envelope fa-fw"></i>
                </div>
                <div class="form-group">
                    <input type="text" name="telephone" id="telephone" value="${utilisateur.telephone}" class="form-control"  placeholder="Votre Téléphone" autocomplete="off" />
                    <i class="fa fa-phone fa-fw"></i> 
                </div>
                
                <div class="uk-margin">
                    <input class="uk-input uk-form-small uk-button-secondary" type="submit" value="Modifier" onclick="return ValidationAjouteUtilisateur();" >
                </div> 

            </form>

    </div>
</div>

<%
} else {%>

<b> Vous deves étre connecter pour accede à votre espace </b> <a href="index.jsp"W>Login</a>

<%
    }
%>

