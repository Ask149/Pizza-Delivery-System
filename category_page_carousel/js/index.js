var carousel = $(".carousel"),
    currdeg  = 0;
var selId = 1;      
$(".next").on("click", { d: "n" }, rotate);
$(".prev").on("click", { d: "p" }, rotate);
console.log(selId);    
function rotate(e){
  if(e.data.d=="n"){
    currdeg = currdeg - 60;
  }
  if(e.data.d=="p"){
    currdeg = currdeg + 60;
  }
  if(currdeg>0){
    selId = ((currdeg/60)%6)+1;
  }
  else if (currdeg<0) {
    selId = (-1*(currdeg/60)%6)+1;
  }
  else{
    selId = 1;
  }
  /*  for(var i = 0; i < 6; i++){
    var chr = String.fromCharCode(97 + i); // where n is 0, 1, 2 ...
    console.log(i);  
    if(selId != (i+1)){
      chr = '.'+(i);
      var temp = $(chr).css({
        "width" : "250px",
        "height" : "250px"
      });
    }
  }
  */
  console.log(selId);
  carousel.css({
    "-webkit-transform": "rotateY("+currdeg+"deg)",
    "-moz-transform": "rotateY("+currdeg+"deg)",
    "-o-transform": "rotateY("+currdeg+"deg)",
    "transform": "rotateY("+currdeg+"deg)"
  });
}
$(".a").on("click",{d:1},function(){
  var url = 'C:/xampp/htdocs/WTL/menu_page/list.html?name=' + 1;
  window.location.href = url;
});
$(".b").on("click",{d:2},function(){
  var url = 'C:/xampp/htdocs/WTL/menu_page/list.html?name=' + 2;
  window.location.href = url;
});
$(".c").on("click",{d:3},function(){
  var url = 'C:/xampp/htdocs/WTL/menu_page/list.html?name=' + 3;
  window.location.href = url;
});
$(".d").on("click",{d:4},function(){
  var url = 'C:/xampp/htdocs/WTL/menu_page/list.html?name=' + 4;
  window.location.href = url;
});
$(".e").on("click",{d:5},function(){
  var url = 'C:/xampp/htdocs/WTL/menu_page/list.html?name=' + 5;
  window.location.href = url;
});
$(".f").on("click",{d:6},function(){
  var url = 'C:/xampp/htdocs/WTL/menu_page/list.html?name=' + 6;
  window.location.href = url;
});