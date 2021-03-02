const userinfo = document.querySelector(".userInfo");
const peNum = userinfo.querySelector(".peNumber"),
  userName = userinfo.querySelector(".username"),
  nickName = userinfo.querySelector(".user-nickname"),
  password = userinfo.querySelector(".pass");
const btn = userinfo.querySelector(".joinBtn");

$(peNum).on('input', checkJoin);
$(userName).on('input', checkJoin);
$(nickName).on('input', checkJoin);
$(password).on('input', checkJoin);

function checkJoin() {
  let num = $(peNum).val();
  let name = $(userName).val();
  let nick = $(nickName).val();
  let pass = $(password).val();

  if(num !== '' && name !== '' && nick !== '' && pass !== '') {
    $(btn).css('background-color', '#0195f7');
  } else {
    $(btn).css('background-color', '#b2dffc');
  }
}