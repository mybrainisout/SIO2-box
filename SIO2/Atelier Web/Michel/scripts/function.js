function loadProfile(type){
	var url='';
	switch (type){
		case 'F':{
			url = 'https://www.facebook.com/Legacy33';
			window.open(url);						
			break;
		}
		case 'T':{
			url = 'https://twitter.com/The_Legacy33';
			window.open(url);						
			break;
		}
		case 'G':{
			url = 'https://plus.google.com/u/0/+MichelGILLET/posts';
			window.open(url);						
			break;
		}
		default:{
			alert("Le profil n'existe pas !");
		}
	}
}

function viewphoto(image, etudiant){
	var cadrephoto = document.getElementById('imgphoto');
	cadrephoto.src = image;
	cadrephoto.alt = 'Photo' + etudiant;
}

function viewarrow(idligne){
	var table = document.getElementById('tabPersonnes');
	table.rows[idligne].cells[0].firstChild.style.visibility = 'visible';
}

function hidearrow(idligne){
	var table = document.getElementById('tabPersonnes');
	table.rows[idligne].cells[0].firstChild.style.visibility = 'hidden';
}
