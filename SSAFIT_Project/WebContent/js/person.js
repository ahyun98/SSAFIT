function saveInfo(saveData){
    load = localStorage.getItem("ranking");
    let loadData = [];
    if (!(load == null)){
        let ObjLoad = JSON.parse(load);
        for (let i = 0; i < ObjLoad.length; i++)
            loadData.push(ObjLoad[i]);
    }
    loadData.push(saveData);
    loadData.sort(function(a, b) {
        return b.Sscore - a.Sscore;
    })
    let ret = JSON.stringify(loadData);
    localStorage.setItem("ranking", ret);
}


let join_name = document.querySelector("#join_name")
let join_email = document.querySelector("#join_email")
let join_password = document.querySelector("#join_password")
document.querySelector("#join_submit").addEventListener("click", function(){
    saveInfo({name : join_name.value(), email : join_email.value(), password : join_password.value(), comment : ""});
})
