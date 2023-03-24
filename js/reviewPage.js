//리뷰 report버튼 클릭시 신고페이지로 이동

const reportBtns = document.querySelectorAll('.review .review-header .reportBtn');
reportBtns.forEach(btn => {
  btn.addEventListener('click', () => {
    window.location.href = 'report.html';
  });
});


//showMore버튼 누르면 숨겨져있던 리뷰들 3개씩 아래에 나옴(현재 12개만들어놓음).
//마지막리뷰 나오면 alert뜨면서 버튼 사라짐 

const showMoreBtn = document.querySelector('#showMore button');
const reviewList = document.querySelectorAll('.review');

showMoreBtn.addEventListener('click', function() {
  let visibleCount = 0;

  reviewList.forEach(function(review) {
    if (getComputedStyle(review).display === 'none') {
      if (visibleCount < 3) {
        review.style.display = 'block';
        visibleCount++;
      } else {
        return;
      }
    }
  });

  if (visibleCount < 3) {
    alert("마지막 리뷰입니다.");
    showMoreBtn.style.display = 'none';
  }
});

//좋아요,싫어요,코멘트 갯수 증가
const likeBtns = document.querySelectorAll('.likeBtn');
const dislikeBtns = document.querySelectorAll('.dislikeBtn');
const commentBtns = document.querySelectorAll('.commentBtn');

likeBtns.forEach((btn) => {
  const countEl = btn.nextElementSibling;
  let count = parseInt(btn.dataset.count);
  
  btn.addEventListener('click', () => {
    count++;
    countEl.textContent = count;
    btn.dataset.count = count.toString();
  });
});

dislikeBtns.forEach((btn) => {
  const countEl = btn.nextElementSibling;
  let count = parseInt(btn.dataset.count);

  btn.addEventListener('click', () => {
    count++;
    countEl.textContent = count;
    btn.dataset.count = count.toString();
  });
});

commentBtns.forEach((btn) => {
  const countEl = btn.nextElementSibling;
  let count = parseInt(btn.dataset.count);
  
  btn.addEventListener('click', () => {
    count++;
    countEl.textContent = count;
    btn.dataset.count = count.toString();
  });
});

// HTML 파일에서 comment 버튼의 id를 comment-btn으로 설정한 경우
const commentButton = document.getElementById('comment-btn');
const reviewContents = document.querySelector('.content');
commentButton.addEventListener('click', () => {
  const reviewContent = reviewContents; // 리뷰 내용을 저장한 변수
  
  // 새로운 페이지 URL 생성
  const newPageUrl = `comment.html?review=${reviewContent}`;

  // 새로운 페이지 열기
  window.open(newPageUrl);
});

const stars = document.querySelectorAll('.star-rating input');
const starLabels = document.querySelectorAll('.star-rating label');

// 별점을 선택하면 이벤트 리스너가 실행됩니다.
for (let i = 0; i < stars.length; i++) {
  stars[i].addEventListener('change', () => {
    // 선택된 별점의 점수 값을 가져옵니다.
    const score = parseInt(stars[i].value);
    // 이전에 선택한 별점들을 모두 채웁니다.
    for (let j = 0; j < i; j++) {
      starLabels[j].classList.add('checked');
    }
    // 선택한 별점을 채우고, 나머지 별점을 비웁니다.
    starLabels[i].classList.add('checked');
    for (let j = i + 1; j < starLabels.length; j++) {
      starLabels[j].classList.remove('checked');
    }
  });
}

// 각 별점의 개수를 계산
const ratings = [5, 4, 3, 2, 1];
const ratingCounts = {};
ratings.forEach(rating => {
  const count = document.querySelectorAll(`[data-rating="${rating}"]`).length;
  ratingCounts[rating] = count;
});

// 별점에 해당하는 input range의 value 값을 계산하여 바를 채움
ratings.forEach(rating => {
  const input = document.querySelector(`input[name="${rating}"]`);
  const value = ratingCounts[rating] || 0;
  input.value = value;
  input.max = Object.values(ratingCounts).reduce((a, b) => Math.max(a, b), 0);
});