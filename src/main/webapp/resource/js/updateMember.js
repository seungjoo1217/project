const checkObj = {
    "inputId" : true,
    "inputPw" : false,
    "inputPwConfirm" : false,
    "inputName" : true,
    "inputEmail" : true,
    "inputAddress" : true,
    "inputRandomNum" : false
};

// 아이디 유효성 검사
const inputId = document.getElementById("inputId");
const confirmId = document.getElementById("confirmId");

inputId.addEventListener("change", function () {

    const regExp = /^[a-z][\w!@#$%^&*_-]{5,13}$/;

    if(regExp.test(this.value)) {
        confirmId.innerText = "아이디 사용 가능"
        confirmId.classList.add("confirm");
        confirmId.classList.remove("error");
        checkObj.inputId = true;
    } else {
        confirmId.innerText = "아이디 형식이 올바르지 않습니다."
        confirmId.classList.add("error");
        confirmId.classList.remove("confirm");
        checkObj.inputId = false;
    }
});


const inputPw = document.getElementById("inputPw");
const inputPwConfirm = document.getElementById("inputPw2");

inputPwConfirm.addEventListener("keyup", function() {

    if(inputPw.value.length == 0) {
        this.value = "";
        alert("비밀번호를 먼저 입력해주세요");
        inputPw.focus();
        checkObj.inputPw = false;
    }
});

const pwMessage = document.getElementById("pwMessage");

inputPw.addEventListener("keyup", function() {

    if( (inputPw.value == inputPwConfirm.value) && inputPw.value.length != 0) {
        pwMessage.innerText = "비밀번호 일치";
        pwMessage.classList.add("confirm");
        pwMessage.classList.remove("error");
        checkObj.inputPw = true;
        checkObj.inputPwConfirm = true;
    } else {
        pwMessage.innerText = "비밀번호 불일치";
        pwMessage.classList.add("error");
        pwMessage.classList.remove("confirm");
        checkObj.inputPwConfirm = false;
    }
});

inputPwConfirm.addEventListener("keyup", function() {

    if( (inputPw.value == inputPwConfirm.value) && inputPw.value.lenggth != 0) {
        pwMessage.innerText = "비밀번호 일치";
        pwMessage.classList.add("confirm");
        pwMessage.classList.remove("error");
        checkObj.inputPw = true;
        checkObj.inputPwConfirm = true;
    } else {
        pwMessage.innerText = "비밀번호 불일치";
        pwMessage.classList.add("error");
        pwMessage.classList.remove("confirm");
        checkObj.inputPwConfirm = false;
    }
});


const inputName = document.getElementById("inputName");

inputName.addEventListener("change", function() {
    const regExp = /^[가-힣]{2,10}$/;

    const nameMessage = document.getElementById("nameMessage");

    if(regExp.test(this.value)) {
        nameMessage.innerText = "정상입력";
        nameMessage.classList.add("confirm");
        nameMessage.classList.remove("error");
        checkObj.inputName = true;
    } else {
        nameMessage.innerText = "2글자에서 10글자 사이 한글만 입력하세요";
        nameMessage.classList.add("error");
        nameMessage.classList.remove("confirm");
        checkObj.inputName = false;
    }

});

const inputEmail = document.getElementById("inputEmail");
const emailTxt = document.getElementById("email2");
const emailSelect = document.getElementById("emailSelect");

emailSelect.addEventListener('change', (event) => {
    if(event.target.value !== "type") {
      emailTxt.value = event.target.value;
      emailTxt.disabled = true;

    } else {
      emailTxt.value = "";
      emailTxt.disabled = false;
    }
  });




const randomNumImage = document.getElementById("randomNumImage");
const inputRandomNum = document.getElementById("inputRandomNum");
const randomNumMessage = document.getElementById("randomNumMessage");

let randomNum = Math.floor(Math.random() * 5);

var imageArray = new Array();
imageArray[0] = "보안숫자-1.JPG";
imageArray[1] = "보안숫자-2.JPG";
imageArray[2] = "보안숫자-3.JPG";
imageArray[3] = "보안숫자-4.JPG";
imageArray[4] = "보안숫자-5.JPG";

randomNumImage.style.background = `url('/resource/images/${imageArray[randomNum]}') no-repeat`;
randomNumImage.style.backgroundSize = "contain";

var numArray = new Array();
numArray[0] = "56585533";
numArray[1] = "9546";
numArray[2] = "63386";
numArray[3] = "962264";
numArray[4] = "300551";

inputRandomNum.addEventListener("keyup", function() {
    if(this.value == numArray[randomNum]){
        randomNumMessage.innerText = "숫자 일치";
        randomNumMessage.classList.add("confirm");
        randomNumMessage.classList.remove("error");
        checkObj.inputRandomNum = true;
    } else {
        randomNumMessage.innerText = "숫자 불일치";
        randomNumMessage.classList.add("error");
        randomNumMessage.classList.remove("confirm");
        checkObj.inputRandomNum = false;
    }
});



function validate() {

    for(let key in checkObj) {
        if( !checkObj[key] ) {
            alert("유효성검사가 완료되지않았습니다");
            return false;
        }
    }
    inputEmail.value = `${inputEmail.value}@${emailTxt.value}`;
    return true;
}