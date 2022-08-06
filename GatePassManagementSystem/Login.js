
const labels = document.querySelectorAll(".form-control label");

labels.forEach((label) => {
    label.innerHTML = label.innerText.split("").map((letter, idx) =>
        '<span style="transition-delay:${idx*50}ms">${letter}</span>').join("");
});

    function setCookie(cname, cvalue, exdays) {
           const d = new Date();
    d.setTime(d.getTime() + ( exdays * 24 * 60 * 60 * 1000));
    let expires = "expires=" + d.toUTCString();
    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
}

    function doProcess() {
           var un = document.getElementById("prn").value;
    var ulbl = document.getElementById("ulbl");
    var regexp = /^\d{16}$/;
    var t = regexp.test(un);        

        if (t == true) {
        setCookie("Username", un, 3);
    window.open("CreateGatePass.aspx");
           } else {

        ulbl.innerHTML = "Invalid PRN";
           }
           }