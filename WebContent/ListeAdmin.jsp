<% if (session.getAttribute("Administrateur") != null) { %>
<jsp:include page="Include/header.jsp" />
<jsp:include page="Include/navbarAdmin.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="container" >

    <div class="ListeAdmin ">
        <div class="recherche">
            <form class="form-inline" method="GET" action="rechercheAdmin.utilisateur">
                <a href="indexAdmin.utilisateur" style="color: #FFF"><i class="fa fa-history fa-2x"></i></a> &nbsp;&nbsp;&nbsp;
                <div class="form-group">
     <label>  Recherche par nom :</label>
<input type="text" placeholder="Saisir le nom" value="${recherche}" id="recherche" class="form-control mx-sm-3"  name="recherche">
                    <button class="uk-button uk-button-default" style="color: #FFF"  type="submit" onclick="return recherche();"><i class="fa fa-refresh" aria-hidden="true"></i> Recherche ... </button>
                </div>
            </form>
        </div>

        <table class="table table-bordered">
            <thead  style="background-color: #000 !important;color: #FFF">
                <tr class="text-center ">
                    <th>#ID</th>
                    <th>Nom</th>
                    <th>Prenom</th>
                    <th>Téléphone</th>
                    <th>Email</th>
                    <th>Etat</th>
                    <th>Role</th>
                    <th>Action</th>
                    <td></td>
                </tr>
            </thead>
            <tbody class="text-center">
                <tr>
                    <c:forEach items="${utilisateur}" var="utilisateur">
                    <tr>
                        <td>${utilisateur.id}</td>
                        <td>${utilisateur.nom}</td>
                        <td>${utilisateur.prenom}</td>
                        <td>${utilisateur.telephone}</td>
                        <td>${utilisateur.email}</td>
                        <td>${utilisateur.etat}</td>
                        <td>${utilisateur.role}</td>
                        <td>
                            <a href = "modifier.utilisateur?id=${utilisateur.id}" onclick="return confirm('vous avez vraiment modifier cet utilisateur !!')"><button class="uk-button uk-button-primary uk-button-small"><i class="fa fa-edit"></i>   </button></a>
                            <a href = "supprimer.utilisateur?id=${utilisateur.id}" onclick="return confirm('vous avez vraiment supprimer cet utilisateur !!')"><button class="uk-button uk-button-danger uk-button-small"><i class="fa fa-close"></i>   </button> </a>
                            <a href = "supprimer.utilisateur?id=${utilisateur.id}" onclick="return confirm('vous avez vraiment supprimer cet utilisateur !!')"><button class="uk-button uk-button-default uk-button-small" style="background-color: green;color: #FFF"><i class="fa fa-file-pdf-o"></i></button> </a>
                        </td>
                        <td><a href = "informationAdmin.utilisateur?id=${utilisateur.id}"><i class="fa fa-cogs  fa-fw"></i></a></td>
                    </tr>
                </c:forEach>
                </tr>
            </tbody>

        </table>
        <ul class="uk-pagination" uk-margin>
            <li><a href="#"><span uk-pagination-previous></span></a></li>
            <li><a href="#">1</a></li>
            <li class="uk-disabled"><span>...</span></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li><a href="#">6</a></li>
            <li class="uk-active"><span>7</span></li>
            <li><a href="#">8</a></li>
            <li><a href="#">9</a></li>
            <li><a href="#">10</a></li>
            <li class="uk-disabled"><span>...</span></li>
            <li><a href="#">20</a></li>
            <li><a href="#"><span uk-pagination-next></span></a></li>
        </ul>
        <hr class="uk-divider-icon">            
        <!-- This is a button toggling the modal with the default close button -->
        <button class="uk-button uk-button-secondary uk-margin-small-right uk-button-small" type="button" uk-toggle="target: #modal-close-default"><i class="fa fa-user-plus"></i> Ajouter nouvel utilisateur</button>
        <button class="uk-button uk-button-default uk-margin-small-right uk-button-small" type="button" uk-toggle="target: #modal-close-default"><i class="fa fa-download"></i> Exportation Excle</button>
        <button class="uk-button uk-button-default uk-margin-small-right uk-button-small" type="button" uk-toggle="target: #modal-close-default"><i class="fa fa-upload"></i> Importation Excle</button><br><br>
        <a href="TableauDeBordAdmin.jsp"><i class="fa fa-arrow-circle-left"></i> Retour à la page précédente</a>

        <!-- This is the modal with the default close button -->
        <div id="modal-close-default" uk-modal  >
            <div class="uk-modal-dialog uk-modal-body" style="width: 500px">
                <button class="uk-modal-close-default" type="button" uk-close></button>

                <div class="formAjoute">
                    <form method="POST" action="ajouteAdmin.utilisateur" >
                        <div class="form-group">
                            <input type="text" name="nom" id="nom" class="form-control"  placeholder=" Votre Nom" autocomplete="off" />
                            <i class="fa fa-user  fa-fw"></i>
                        </div>
                        <div class="form-group">
                            <input type="text" name="prenom" id="prenom" class="form-control"  placeholder="Votre Prenom" autocomplete="off" />
                            <i class="fa fa-user  fa-fw"></i>
                        </div>
                        <div class="form-group">
                            <input type="email" name="email" id="email" class="form-control"  placeholder="Votre Adrese Email" autocomplete="off" />
                            <i class="fa fa-envelope fa-fw"></i>
                        </div>
                        <div class="form-group">
                            <input type="text" name="telephone" id="telephone" class="form-control"  placeholder="Votre Téléphone" autocomplete="off" />
                            <i class="fa fa-phone fa-fw"></i>
                        </div>
                        <div class="form-group">
                            <input type="text" name="nomDeUtilisateur" id="nomDeUtilisateur" class="form-control"  placeholder="Nom d'utilisateur" autocomplete="off" />
                            <i class="fa fa-briefcase fa-fw fa-5x"></i>
                        </div>
                        <div class="form-group">
                            <input type="password" name="motDePasse" id="motDePasse" class="form-control"  placeholder="Mot de passe " autocomplete="off" />
                            <i class="fa fa-key fa-fw"></i>
                        </div>
                        <div class="form-group">
                            <input type="password" name="motDePasseConfirmer" id="motDePasseConfirmer" class="form-control"  placeholder="Confirmer votre mot de passe" autocomplete="off" />
                            <i class="fa fa-key fa-fw"></i>
                        </div>
                        <select name="role" class="form-control" id="role">
                            <option value="0"> Choisir son role..</option>
                            <option value="Administrateur"> Administrateur </option>
                            <option value="Professeur"> Professeur </option>
                            <option value="Etudiant">   Etudiant </option>
                        </select>
                        <div class="uk-margin" >
                            Etat de compte  :
                            <label><input class="uk-radio" type="radio" name="etat" value='1' id="etatActive" style="height: 20px;width: 25px"> Activé</label> |
                            <label><input class="uk-radio" type="radio" name="etat" value="0" id="etatDesactive" style="height: 20px;width: 25px"> Désactivé</label>
                        </div>
                        <div class="uk-margin">
                            <input class="uk-input uk-form-small uk-button-secondary" type="submit" onclick="return ValidationAjouteUtilisateur();">
                        </div>
                    </form>
                </div>
            </div>
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

