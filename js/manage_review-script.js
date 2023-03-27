const boxlist = document.querySelectorAll("input[type=checkbox]");
boxlist[0].addEventListener("click",(box)=>{
  const status = box.target.checked;

  for(let checkbox of boxlist){
    checkbox.checked = status;
  }
})