const movie1 = document.getElementById("movie-1");
const movie2 = document.getElementById("movie-2");
const movie3 = document.getElementById("movie-3");
const movie4 = document.getElementById("movie-4");
const movie5 = document.getElementById("movie-5");
const show = document.getElementById("showDetail");
const reservation = document.getElementById("reservationButton");



show.addEventListener("click", function() {
    location.href = "movie1";
});

reservation.addEventListener("click", function() {
    location.href = "/reservation";
});

movie1.addEventListener("click", function() {
    location.href = "movie1";
});

movie2.addEventListener("click", function() {
    location.href = "movie2";
});

movie3.addEventListener("click", function() {
    location.href = "movie3";
});

movie4.addEventListener("click", function() {
    location.href = "movie4";
});

movie5.addEventListener("click", function() {
    location.href = "movie5";
});