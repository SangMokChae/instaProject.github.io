const loginForm = document.querySelector(".insta-loginForm"),
  loginId = loginForm.querySelector(".id"),
  password = loginForm.querySelector(".pass"),
  btn = loginForm.querySelector(".loginBtn");

$(loginId).on('input', checkLogin);
$(password).on('input', checkLogin);

function checkLogin() {
  let id = $(loginId).val();
  let pass = $(password).val();

  if(id !== '' && pass !== '') {
    $(btn).css('background-color', '#0195f7');
  } else {
    $(btn).css('background-color', '#b2dffc');
  }
}