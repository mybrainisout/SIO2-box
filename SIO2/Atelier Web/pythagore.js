/**
 * @author Michel GILLET
 */
var id1 = 0;
var id2 = 0;

function geneTablePythagoreHtml(){
	var script = '<table id="matable" style="border: solid 1px black;">';
	for (y=0; y<=10; y++){
		script += '<tr>';
		if (y==0){
			for (x=0; x<=10; x++){
				script += '<td style="border: solid 1px black; text-align: center" onclick="track(this)">' + x + '</td>';
			}
		}else{
			for (x=0; x<=10; x++){
				if (x==0){
					script += '<td style="border: solid 1px black; text-align: center" onclick="track(this)">' + y + '</td>';
				}else{
					script += '<td style="border: solid 1px black; text-align: center" onclick="track(this)">' + (x*y) + '</td>';	
				}		
			}		
		}
		script += '</tr>';	
	}
	script += '</table>';
	document.getElementById("conteneur").innerHTML = script;
}

function geneTablePythagoreDom(){
	document.getElementById("conteneur").innerHTML = "";
	var table = document.createElement("TABLE");
	table.id = "matable";
	table.style.border = "1px solid black";
	table.style.borderCollapse = "separate";
	table.style.cursor = 'default';
	var row, cell;
	var script = '<table>';
	for (y=0; y<=10; y++){
		row = table.insertRow(y);
		for (x=0; x<=10; x++){
			cell = row.insertCell(x);
			if (y==0){
				cell.innerHTML = x;	
			}else if (x==0){
				cell.innerHTML = y;
			}else{
				cell.innerHTML = x*y;
			}
			cell.style.border = "1px solid black";
			cell.style.textAlign = "center";
			cell.onclick = function() {
				track(this);
			};
			cell.addEventListener("onclick", track);
		}
	}
	document.getElementById("conteneur").appendChild(table);
}

function track(cellule){
	setSelectedIndex("opea", cellule.parentNode.rowIndex);
	setSelectedIndex("opeb", cellule.cellIndex);
	uncolorise(cellule.parentNode.parentNode.rows[id1].cells[id2]);
	colorise(cellule);
	id1 = getSelectedIndex('opea');
	id2 = getSelectedIndex('opeb');
}

function uncolorise(cell){
	cell.style.backgroundColor = "white";
}

function colorise(cell){
	cell.style.backgroundColor = "blue";
}

function setSelectedIndex(idListe, valeur){
	var combo = document.getElementById(idListe);
	combo.selectedIndex = valeur;
}

function getSelectedIndex(idListe){
	var combo = document.getElementById(idListe);
	return combo.selectedIndex;
}

function searchInTable(){
	var cba = document.getElementById("opea");
	var cbb = document.getElementById("opeb");

	var tb = document.getElementById("matable");

	uncolorise(tb.rows[id1].cells[id2]);

	id1 = parseInt(cba.value);
	id2 = parseInt(cbb.value);

	colorise(tb.rows[id1].cells[id2]);
}