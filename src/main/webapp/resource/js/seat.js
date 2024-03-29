const seats = document.getElementsByClassName("white");

const seatNum = document.querySelector("#seatNum");
const price = document.querySelector("#price");



const checkObj = {
    "seat" : false,
};


for(let i = 0; i < 112; i++){
    seats[i].addEventListener("click", function() {
        checkObj.seat = true;
        if(document.querySelector("#seatNumber") != null){
            var deleteseat = document.querySelector("#seatNumber");
            document.querySelector('#here').removeChild(deleteseat);
        }
        for(let j = 0; j < 112; j++){
            seats[j].style.backgroundColor = "rgb(255, 255, 255)"
        };
        seats[i].style.backgroundColor = "brown";
        var seatNumber = document.createElement('input');
        seatNumber.type = 'hidden';
        seatNumber.name = 'seatNumber';
        seatNumber.id = 'seatNumber'
        seatNumber.value = `${seats[i].id}`;
        document.querySelector('#here').appendChild(seatNumber);
        seatNum.innerHTML = `${seats[i].id}`;
        price.innerHTML = "13,000원";
    });
};


function validate() {

    for(let key in checkObj) {
        if( !checkObj[key] ) {
            alert("선택이 완료되지않았습니다");
            return false;
        }
    }

    return true;
}
