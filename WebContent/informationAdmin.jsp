<% if (session.getAttribute("Administrateur") != null) { %>
<jsp:include page="Include/header.jsp" />
<jsp:include page="Include/navbarAdmin.jsp" />
<br><br><br>
<div class="container" >

    <div class="informationAdmin">

        <div class="uk-card uk-card-default uk-card-hover uk-card-body">
            <form class="uk-form-horizontal uk-margin-large">

                <%
                    String modifierMotDePasseAdmin = (String) request.getSession().getAttribute("modifierMotDePasseAdmin");
                    if (modifierMotDePasseAdmin != null) { %>
                <div class="uk-alert-success" uk-alert>
                    <a class="uk-alert-close" uk-close></a>
                    <p class="text-center"><%  out.print("<i class='fa  fa-check '></i> " + modifierMotDePasseAdmin); %></p>
                </div>
                <%}%>

                <%
                    String modifierNomDeUtilisateurAdmin = (String) request.getSession().getAttribute("modifierNomDeUtilisateurAdmin");
                    if (modifierNomDeUtilisateurAdmin != null) { %>
                <div class="uk-alert-success" uk-alert>
                    <a class="uk-alert-close" uk-close></a>
                    <p class="text-center"><%  out.print("<i class='fa  fa-check '></i> " + modifierNomDeUtilisateurAdmin); %></p>
                </div>
                <%}%>


                <%
                    String messageAdmin = (String) request.getSession().getAttribute("messageAdmin");
                    if (messageAdmin != null) { %>
                <div class="uk-alert-success" uk-alert>
                    <a class="uk-alert-close" uk-close></a>
                    <p class="text-center"><%  out.print("<i class='fa  fa-check '></i> " + messageAdmin); %></p>
                </div>
                <%}%>
                <a href="indexAdmin.utilisateur"><i class="fa fa-arrow-circle-left"></i> Retour à la page précédente</a>
                <div class="uk-grid-small" uk-grid>
                    <div class="uk-width-expand text-center" uk-leader>Ici vous avez trouvé tout les information pour ce compte</div>
                    <div ><b>Numéro de compte : </b><input   type="text" readonly="readonly" value="${utilisateur.id}" style="background-color: #FFF;color: #000;border: none">                <a href="informationAdmin.utilisateur?id=${utilisateur.id}" style="color: #000"><i class="fa fa-history fa-2x"></i></a>
                    </div>
                </div>
                <div class="uk-margin">
                    <label class="uk-form-label" for="form-horizontal-text"><b>Nom : </b></label>
                    <div class="uk-form-controls">
                        <input class="uk-input" id="form-horizontal-text" type="text" readonly="readonly" value="${utilisateur.nom}">
                    </div>
                </div>
                <div class="uk-margin">
                    <label class="uk-form-label" for="form-horizontal-text"><b>Prenom : </b></label>
                    <div class="uk-form-controls">
                        <input class="uk-input" id="form-horizontal-text" type="text" readonly="readonly" value="${utilisateur.prenom}">
                    </div>
                </div>
                <div class="uk-margin">
                    <label class="uk-form-label" for="form-horizontal-text"><b>E-mail : </b></label>
                    <div class="uk-form-controls">
                        <input class="uk-input" id="form-horizontal-text" type="text" readonly="readonly" value="${utilisateur.email}">
                    </div>
                </div>
                <div class="uk-margin">
                    <label class="uk-form-label" for="form-horizontal-text"><b>Téléphone : </b></label>
                    <div class="uk-form-controls">
                        <input class="uk-input" id="form-horizontal-text" type="text" readonly="readonly" value="${utilisateur.telephone}">
                    </div>
                </div><hr class="uk-divider-icon">
                <div class="uk-margin">
                    <label class="uk-form-label" for="form-horizontal-text"><b>Opération  : </b></label>

                    <div class="uk-form-controls">
                        <p uk-margin>
                            <a class="uk-button uk-button-default uk-button-small" href="#modifierMotDePasseAdmin" uk-toggle style="background-color: #512da8;color: #FFF"><i class="fa fa-key fa-fw"></i> modifier mot de passe</a>
                            <a class="uk-button uk-button-default uk-button-small" href="#modifierNomDeUtilisateurAdmin" uk-toggle style="background-color: #6a1b9a;color: #FFF"><i class="fa fa-briefcase fa-fw"></i> modifier nom d'utilisateur</a>
                            <!-- <a class="uk-button uk-button-default uk-button-small" href="#etatDeCompteAdmin" uk-toggle style="background-color: #0d47a1;color: #FFF"><i class="fa fa-user-circle-o"></i> état de compte</a>-->
                            <a class="uk-button uk-button-default uk-button-small" href="#messageAdmin" uk-toggle style="background-color: #00b8d4;color: #FFF"><i class="fa fa-plus fa-fw"></i> Nouveau message</a>

                        </p>
                    </div>
                </div>

            </form>
        </div>
    </div>


    <div id="modifierMotDePasseAdmin" uk-modal>
        <div class="uk-modal-dialog">
            <button class="uk-modal-close-default" type="button" uk-close></button>
            <div class="uk-modal-body">
                <div class="modifierMotDePasseAdmin">
                    <form method="POST" action="modifierMotDePasseAdmin.utilisateur?id=${utilisateur.id}" >
                        <div class="form-group">
                            <input type="password" name="motDePasse" id="motDePasse" class="form-control"  placeholder="Nouvelle mot de passer" autocomplete="off" />
                            <i class="fa fa-key fa-fw"></i>
                        </div>
                        <div class="form-group">
                            <input type="password" name="motDePasseConfirmer" id="motDePasseConfirmer" class="form-control"  placeholder="Confirmer le mot de passe" autocomplete="new-password" />
                            <i class="fa fa-key fa-fw"></i>
                        </div>
                        <input type="submit" class="btn btn-dark btn-block"   style="background-color: #6a1b9a;color: #FFF" onclick="return ValidationModifierMotDePasseAdmin();" value="Modifier">
                    </form>
                </div>
            </div>
            <div class="uk-modal-footer uk-text-right">
                <button class="uk-button uk-button-default uk-modal-close" type="button">annuler</button>
            </div>
        </div>
    </div>

    <div id="modifierNomDeUtilisateurAdmin" uk-modal>
        <div class="uk-modal-dialog">
            <button class="uk-modal-close-default" type="button" uk-close></button>
            <div class="uk-modal-body">
                <div class="modifierNomDeUtilisateur">
                    <form method="POST" action="modifierNomDeUtilisateurAdmin.utilisateur?id=${utilisateur.id}">
                        <div class="form-group">
                            <input type="text" name="nomDeUtilisateur" id="nomDeUtilisateur"  class="form-control"  placeholder="nouveau nom d'utilisateur " autocomplete="off" />
                            <i class="fa fa-briefcase fa-fw fa-5x"></i>
                        </div>
                        <div class="form-group">
                            <input type="text" name="nomDeUtilisateurConfirmer" id="nomDeUtilisateurConfirmer"   class="form-control"  placeholder="Confirmer le nom d'utilisateur" autocomplete="off" />
                            <i class="fa fa-briefcase fa-fw fa-5x"></i>
                        </div>
                        <input type="submit" class="btn btn-dark btn-block"   style="background-color: #512da8;color: #FFF" onclick="return ValidationModifierNomDeUtilisateur();" value="Modifier">
                    </form>
                </div>
            </div>
            <div class="uk-modal-footer uk-text-right">
                <button class="uk-button uk-button-default uk-modal-close" type="button">annuler</button>
            </div>
        </div>
    </div>



    <div id="messageAdmin" uk-modal>
        <div class="uk-modal-dialog">
            <button class="uk-modal-close-default" type="button" uk-close></button>
            <div class="uk-modal-body">
                <div class="messageAdmin">
                    <form method="POST" action="messageAdmin.message?id=${utilisateur.id}&nom=${utilisateur.nom}&prenom=${utilisateur.prenom}&role=${utilisateur.role}" >
                        <div class="form-group">
                            <input type="text"   class="form-control" name="objet" placeholder="Objet ..." autocomplete="off" />
                            <i class="fa fa-key fa-fw"></i>
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" id="exampleFormControlTextarea1" placeholder="Message ..." rows="3" style="border-radius: 0%" name="message"></textarea>
                            <i class="fa fa-send fa-fw"></i>
                        </div>
                        <button type="submit" class="btn btn-dark btn-block"   style="background-color: #00b8d4;color: #FFF"> Envoyer <i class="fa fa- a-sign-in"></i> </button>
                    </form>
                </div>
            </div>
            <div class="uk-modal-footer uk-text-right">
                <button class="uk-button uk-button-default uk-modal-close" type="button">annuler</button>
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

