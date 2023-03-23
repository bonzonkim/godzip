const navigateBtns = document.querySelectorAll(".faq-qna-notice");

navigateBtns.forEach((navigateBtns) => {
    navigateBtns.addEventListener('click', () => {let specificUrl = navigateBtns.innerText;
    let url = `https://${specificUrl}.com`;
    open(url);
    })
});


// console.log(navigateBtns);


const qnaWriteBtn = document.querySelector("#qna-write");

qnaWriteBtn.addEventListener('click', () => {
    location.href = "/"
    // open("https://www.google.com");
});
