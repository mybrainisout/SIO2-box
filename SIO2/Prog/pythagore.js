function geneHTML() {
    var script = "<table id='tableau'>";
    var uneDiv = document.getElementById("conteneur");
    var i = 0;
    var j = 0;
    for (j = 0; j < 11; j++) {
        script += "<tr>";
        if (j==0) {
            for (i = 0; i <= 10; i++) {
                script += "<td>" + i + "</td>";
            }
        } else {
            for (i = 0; i < 11; i++) {
                if (i==0) {
                    script += "<td>" + j + "</td>";
                } else {
                    script += "<td>" + (i*j) +"</td>";
                }
            }
        } 
        script += "</tr>";
    }
    script += "</table>";
    uneDiv.innerHTML = script;
}

function geneDOM() {
    var matable = document.createElement("TABLE");
    for (var i = 0; i <= 10; i++){
        var uneligne = matable.insertRow();
        if (i==0) {       
        for (var j = 0; j <= 10; j++) {
            var unecellule = uneligne.insertCell();
            unecellule.innerHTML = j;
        }  
        }else {
            for (var j = 0; j <= 10; j++) {
                if (j == 0) {
                    var unecellule = uneligne.insertCell();
                    unecellule.innerHTML = i;
                } else {
                    var unecellule = uneligne.insertCell();
                    unecellule.innerHTML = i*j;
                }
            }
        }

    }
    
    var madiv = document.getElementById("conteneur");
    madiv.appendChild(matable);
}

var ligneSelect = 0;
var colonneSelect = 0;

function searchintable() {
    var tab = document.getElementById('tableau');
    var ligne2 = tab.rows;
    var colonne2 = ligne2[window.ligneSelect].cells;
    colonne2[window.colonneSelect].style.background = "white";
    
    
    var ligne = document.getElementById("cba");
    var colonne = document.getElementById("cbb");
    var ligneSelect = ligne.options[ligne.selectedIndex].value;
    var colonneSelect = colonne.options[colonne.selectedIndex].value;
    var ligne2 = tab.rows;
    var colonne2 = ligne2[ligneSelect].cells; 
    colonne2[colonneSelect].style.background = "blue";
    
    window.ligneSelect = ligneSelect;
    window.colonneSelect = colonneSelect;
}
