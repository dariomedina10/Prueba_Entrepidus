$(document).ready(function () {
    $('#nick').focus();
});

function Finalizar() {
    window.close();
}



// Generate Submit event  form our form
$("#index").submit(function (e) {
    e.preventDefault();
    //We assign the value to the SessionStorage object
    sessionStorage.setItem('user', $('#nick').val());
    
    localStorage.setItem('pass', $('#pass').val());
    window.location = 'Employees.aspx';
});