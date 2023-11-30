function validateRegister() {
    let password = document.forms["register"]["password"].value;
    let confirmPassword = document.forms["register"]["confirmPassword"].value;

    return password == confirmPassword;
}