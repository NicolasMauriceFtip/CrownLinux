fetch('log/dump_list.txt')
.then(resp=> resp.blob())
.then(blob => blob.text())
.then(text=> {console.log(text)})
.catch((e) => console.error(e));

