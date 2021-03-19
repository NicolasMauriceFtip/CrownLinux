fetch('./log/json_list.txt')
.then(resp=> resp.blob())
.then(blob => blob.text())
.then(text=> {appendData(text)})
.catch((e) => console.error(e));



function appendData(text) {
    
    text.replace("/var/www/html","")
    var res = text.split("\n");

    var mainContainer = document.getElementById("log_info");

    for (var i = 0; i < res.length; i++) {

        var div = document.createElement("div");
        div.innerHTML =  '<a href=' + res[i] +'" download>' + res[i] + '</a>'
        mainContainer.appendChild(div);

        var ul = document.createElement("ul");
        div.appendChild(ul);

    }
}