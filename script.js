function removeLimit()
{
	if(document.cookie=="setLimit=false")
	{
		let id = document.getElementById("id");
		id.removeAttribute("maxlength");
	}
}

function remover()
{
	let id = document.getElementById("id");
        id.removeAttribute("maxlength");
        alert("AHH MULEQUE. LIMITE REMOVIDO :D");
        document.cookie = "setLimit=false";
}
