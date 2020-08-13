function ValidationAuthentification() {
    var nomDeUtilisateur = document.getElementById('nomDeUtilisateur');
    var motDePasse = document.getElementById('motDePasse');
    if (nomDeUtilisateur.value.trim() === "" && motDePasse.value.trim() === "") {
        alert("Pour accéder à ce service, merci de vous identifier. ");
        return false;
    }
    if (nomDeUtilisateur.value.trim() === "") {
        alert("Merci d'entrer votre nom d'utilisateur !!! ");
        return false;
    }
    if (motDePasse.value.trim() === "") {
        alert("Merci d'entrer votre mot de passe !!!");
        return false;
    }

}
 
function ValidationModifierMotDePasseAdmin(){
    var motDePasse = document.getElementById('motDePasse');
    var motDePasseConfirmer = document.getElementById('motDePasseConfirmer');
    if (motDePasse.value.trim() === "") {
        alert("Merci d'entrer la nouvelle mot de passe  !!!");
        return false;
    } 
    if (motDePasseConfirmer.value.trim() == "") {
        alert("Merci de comfirme le mot de passe !!!");
        return false;
    }
    if (motDePasseConfirmer.value.trim() !== motDePasse.value.trim()) {
        alert("Les deux mots de passe ne sont pas identiques   !!!");
        return false;
    }
}
function ValidationModifierNomDeUtilisateur(){
    var nomDeUtilisateur = document.getElementById('nomDeUtilisateur');
    var nomDeUtilisateurConfirmer = document.getElementById('nomDeUtilisateurConfirmer');
    
    if (nomDeUtilisateur.value.trim() === "") {
        alert("Merci d'entrer la nomDeUtilisateur !!!");
        return false;
    } 
    if (nomDeUtilisateurConfirmer.value.trim() === "") {
        alert("Merci de comfirme le nomDeUtilisateurConfirmer !!!");
        return false;
    }
    if (nomDeUtilisateur.value.trim() !== nomDeUtilisateurConfirmer.value.trim()) {
        alert("Les deux mots de passe ne sont pas identiques 0 !!!");
        return false;
    }
}

function ValidationAjouteUtilisateur() {
    var nom = document.getElementById('nom');
    var prenom = document.getElementById('prenom');
    var nomDeUtilisateur = document.getElementById('nomDeUtilisateur');
    var motDePasse = document.getElementById('motDePasse');
    var email = document.getElementById('email');
    var motDePasseConfirmer = document.getElementById('motDePasseConfirmer');
    var nomDeUtilisateur = document.getElementById('nomDeUtilisateur');
    var motDePasse = document.getElementById('motDePasse');
    var telephone = document.getElementById('telephone');
    var role = document.getElementById('role');
    var etatActive = document.getElementById('etatActive');
    var etatDesactive = document.getElementById('etatDesactive');


    if (nom.value.trim() === "") {
        alert("Merci d'entrer votre nom   !!! ");
        nom.focus();
        return false;
    }
    if (prenom.value.trim() === "") {
        alert("Merci d'entrer votre prenom !!!");
        prenom.focus();
        return false;
    }
    if (email.value.trim() === "") {
        alert("Merci d'entrer votre adresse email !!!");
        email.focus();
        return false;
    }
    if (telephone.value.trim() === "") {
        alert("Merci d'entrer votre téléphone !!!");
        telephone.focus();
        return false;
    }
    if (telephone.value.trim().length < 10) {
        alert("Le format du numÃ©ro de tÃ©lÃ©phone est invalide !");
        return false;
    }

    if (telephone.value.trim().length > 10) {
        alert("Le format du numÃ©ro de tÃ©lÃ©phone est invalide !");
        return false;
    }
    if (nomDeUtilisateur.value.trim() === "") {
        alert("Merci d'entrer votre nom d'utilisateur !!! ");
        nomDeUtilisateur.focus();
        return false;
    }
    if (motDePasse.value.trim() === "") {
        alert("Merci d'entrer votre mot de passe !!!");
        motDePasse.focus();
        return false;
    }
    if (motDePasseConfirmer.value.trim() === "") {
        alert("Merci de confirmer votre mot de passe  !!!");
        motDePasseConfirmer.focus();
        return false;
    }
    if (role.selectedIndex === 0) {
        alert("Merci de choisir le type de compte Administrateur/Professeur/Etudiant !!!");
        role.focus();
        return false;
    }
    if (etatActive.checked === false && etatDesactive.checked === false) {
        alert("Merci de choisir l'état de compte activé ou bien désactive ");
        return false;
    }



}