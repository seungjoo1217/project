const checkObj = {
    "inputRandomNum" : false
};


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