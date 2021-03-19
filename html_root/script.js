fetch('./log/json_list.txt')
.then(resp=> resp.blob())
.then(blob => blob.text())
.then(text=> {appendData(text)})
.catch((e) => console.error(e));



function appendData(text) {

    var res = text.split("\n");
    res[res.length-2].slice(0,-1);
    var mainContainer = document.getElementById("log_info");

    for (var i = 0; i < res.length; i++) {
	var res2 = res[i].replace("/var/www/html","");
        var div = document.createElement("div");
        div.innerHTML =  '<a href="' + res2 +'" download>' + res2 + '</a>'
        mainContainer.appendChild(div);

        var ul = document.createElement("ul");
        div.appendChild(ul);

    }
}
