const checkObj = {
    "day" : false,
    "movie" : false,
    "location" : false,
    "time" : false
};

const rsvDate = document.querySelector("#rsvDate");
const movie = document.querySelector("#movie");
const lc = document.querySelector("#location");
const time = document.getElementsByClassName("times")

console.log(movie);
console.log(time);

const now = new Date();

let day = now.getDate();

let fullDateOfLast = new Date(now.getFullYear(), now.getMonth() + 1, 0);

let lastDay = fullDateOfLast.getDate();



for(let i = 0; i < 10; i++){
    let date = day + i

    if (date > lastDay){
        date = date-lastDay
    }

    rsvDate.children[i].innerHTML = date;  

    if(date == day){
        rsvDate.children[i].innerHTML += "(오늘)";
    }
};



for(let i = 0; i < 10; i++){
    rsvDate.children[i].addEventListener("click", function() {
        checkObj.day = true;
        if(document.querySelector("#inputDate") != null){
            var deletedate = document.querySelector("#inputDate");
            rsvDate.removeChild(deletedate);
        }
        for(let j = 0; j < 10; j++){
            rsvDate.children[j].style.backgroundColor = "rgb(241, 241, 241)"
        };
        rsvDate.children[i].style.backgroundColor = "rgb(163, 163, 163)";
        var inputDate = document.createElement('input');
        inputDate.type = 'hidden';
        inputDate.name = 'inputDate';
        inputDate.id = 'inputDate'
        inputDate.value = `${now.getMonth()}월 ${rsvDate.children[i].innerHTML}일`;
        document.querySelector('#rsvDate').appendChild(inputDate);
    });
    
};


for(let i = 1; i < 17; i++){
    movie.children[i].addEventListener("click", function() {
        checkObj.movie = true;
        if(document.querySelector("#inputMovie") != null){
            var deletemovie = document.querySelector("#inputMovie");
            movie.removeChild(deletemovie);
        }

        for(let j = 1; j < 17; j++){
            movie.children[j].style.backgroundColor = "rgb(241, 241, 241)"
        };
        movie.children[i].style.backgroundColor = "rgb(163, 163, 163)";
        var inputMovie = document.createElement('input');
        inputMovie.type = 'hidden';
        inputMovie.name = 'inputMovie';
        inputMovie.id = 'inputMovie'
        inputMovie.value = `${movie.children[i].innerHTML}`;
        document.querySelector('#movie').appendChild(inputMovie);

        const movieTitle = document.querySelector("#movieTitle");
        movieTitle.innerHTML = `${movie.children[i].innerHTML}`;
    });
    
};



for(let i = 1; i < 20; i++){
    lc.children[i].addEventListener("click", function() {
        checkObj.location = true;
        if(document.querySelector("#inputLc") != null){
            var deletelc = document.querySelector("#inputLc");
            lc.removeChild(deletelc);
        }
        for(let j = 1; j < 20; j++){
            lc.children[j].style.backgroundColor = "rgb(241, 241, 241)"
        };
        lc.children[i].style.backgroundColor = "rgb(163, 163, 163)";
        var inputLc = document.createElement('input');
        inputLc.type = 'hidden';
        inputLc.name = 'inputLc';
        inputLc.id = 'inputLc'
        inputLc.value = `${lc.children[i].innerHTML}`;
        document.querySelector('#location').appendChild(inputLc);
    });
};

const box = document.querySelector("#time");


for(let i = 0; i < 10; i++){
    time[i].addEventListener("click", function() {
        checkObj.time = true;
        if(document.querySelector("#inputTime") != null){
            var deletetime = document.querySelector("#inputTime");
            box.removeChild(deletetime);
        }
        for(let j = 0; j < 10; j++){
            time[j].style.backgroundColor = "rgb(150, 150, 150)"
        };
        time[i].style.border = "2px black solid";
        var inputTime = document.createElement('input');
        inputTime.type = 'hidden';
        inputTime.name = 'inputTime';
        inputTime.id = 'inputTime'
        inputTime.value = `${time[i].id}`;
        document.querySelector('#time').appendChild(inputTime);
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
