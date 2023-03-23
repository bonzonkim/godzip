//-----------AD--------연결-//


const AD = document.getElementById("AD");

// 마우스 오버 이벤트 처리
AD.addEventListener("mouseover", () => {
  AD.style.color = "#ffcc00";
});

// 마우스 아웃 이벤트 처리
AD.addEventListener("mouseout", () => {
  AD.style.color = "#000000";
});

// 클릭 이벤트 처리
AD.addEventListener("click", () => {
  window.location.href = "http://example.com"; // 해당 페이지 URL로 변경해주세요.
});




// 1. 카테고리마다 마우스를 가져가면 색깔이 변하도록
var categoryList = document.querySelectorAll('.categoryTOP td');
categoryList.forEach(function(category) {
  var originalColor = category.style.backgroundColor;
  category.addEventListener('mouseover', function() {
    category.style.backgroundColor = '#f1f1f1';
  });
  category.addEventListener('mouseout', function() {
    category.style.backgroundColor = originalColor;
  });
});

// 2. 카테고리를 클릭 시 링크가 연결 되도록
var categoryLink = ['https://example.com/category1', 'https://example.com/category2', 'https://example.com/category3', 'https://example.com/category4'];
var categoryTitle = document.querySelectorAll('.categoryTOP td');
categoryTitle.forEach(function(title, index) {
  title.addEventListener('click', function() {
    window.location.href = categoryLink[index];
  });
});








// --------- 하단 페이지 연결


// 페이지 넘김 버튼 선택하기
var pageButtons = document.querySelectorAll('.listBox .listnum a');
var leftButton = document.querySelector('.listBox .leftButton a');
var rightButton = document.querySelector('.listBox .rightButton a');

// 페이지 넘김 버튼에 이벤트 핸들러 등록하기
pageButtons.forEach(function(button) {
  button.addEventListener('click', function(event) {
    event.preventDefault(); // a 태그의 기본 동작인 페이지 이동을 막음
    var pageNum = parseInt(button.querySelector('h5').textContent);
    window.location.href = 'page' + pageNum + '.html'; // 페이지 넘김 기능을 수행하는 페이지로 이동
  });
});

leftButton.addEventListener('click', function(event) {
  event.preventDefault();
  var currentPage = parseInt(document.querySelector('.listBox .active').querySelector('h5').textContent);
  if (currentPage > 1) {
    window.location.href = 'page' + (currentPage - 1) + '.html'; // 이전 페이지로 이동
  }
});

rightButton.addEventListener('click', function(event) {
  event.preventDefault();
  var currentPage = parseInt(document.querySelector('.listBox .active').querySelector('h5').textContent);
  if (currentPage < 5) {
    window.location.href = 'page' + (currentPage + 1) + '.html'; // 다음 페이지로 이동
  }
});


//-------------카테고리 내게시글 업로드 삭제 --------///

// 버튼 요소 가져오기
const uploadBtn = document.getElementById("uploadBtn");
const deleteBtn = document.getElementById("deleteBtn");

// 체크박스 요소들 가져오기
const checkboxes = document.querySelectorAll(".list input[type='checkbox']");

// uploadBtn 클릭 시 게시글 작성 페이지 링크로 이동
uploadBtn.addEventListener("click", function() {
  window.location.href = "게시글 작성 페이지 링크";
});

// deleteBtn 클릭 시 체크박스가 체크된 게시글 삭제
deleteBtn.addEventListener("click", function() {
  // 체크된 체크박스의 부모 요소(.list)를 삭제
  checkboxes.forEach(function(checkbox) {
    if (checkbox.checked) {
      checkbox.parentNode.parentNode.remove();
    }
  });
});







//------검색 시 게시글 검색

var searchList = document.querySelector('.searchBox .searchList select');
var searchBox = document.querySelector('.searchBox .searchbot input');
var searchIcon = document.querySelector('#searchIcon a');

// 검색 아이콘 클릭 시 검색 시작
searchIcon.addEventListener('click', function(event) {
  event.preventDefault();
  searchPosts(searchBox.value, searchList.value); // 검색어와 카테고리 값을 전달하여 검색 수행
});

// 검색어 입력란에서 Enter 키를 누를 때 검색 시작
searchBox.addEventListener('keydown', function(event) {
  if (event.key === 'Enter') {
    event.preventDefault();
    searchPosts(searchBox.value, searchList.value);
  }
});

// 검색 수행 함수 정의
function searchPosts(keyword, category) {
  // 서버에서 모든 게시글 데이터를 불러와 posts 배열에 저장
  var posts = [
    {title: '게시글 제목1', content: '게시글 내용1', category: 'Q&A'},
    {title: '게시글 제목2', content: '게시글 내용2', category: '공지사항'},
    {title: '게시글 제목3', content: '게시글 내용3', category: 'FAQ'},
    {title: '게시글 제목4', content: '게시글 내용4', category: '보도&채용'},
    {title: '게시글 제목5', content: '게시글 내용5', category: 'Q&A'},
    {title: '게시글 제목6', content: '게시글 내용6', category: '공지사항'},
    {title: '게시글 제목7', content: '게시글 내용7', category: 'FAQ'},
    {title: '게시글 제목8', content: '게시글 내용8', category: '보도&채용'}
  ];

  // 검색 결과를 저장할 배열
  var results = [];

  // 선택한 카테고리에 따라 게시글 데이터를 필터링
  if (category === '통합검색') {
    // 통합검색인 경우, 모든 게시글 데이터에서 검색어를 찾음
    results = posts.filter(function(post) {
      return post.title.includes(keyword) || post.content.includes(keyword);
    });
}
  }





//-----하단 회사위치 회사 소개 등 링크 연결-----------//

function goToPage(url) {
    location.href = url;
  }
  
  document.querySelector('.companyInfo a').addEventListener('click', function(event) {
    event.preventDefault();
    goToPage('회사소개.html');
  });
  
  document.querySelector('.companyLoc a').addEventListener('click', function(event) {
    event.preventDefault();
    goToPage('회사위치.html');
  });
  
  document.querySelector('.Press a').addEventListener('click', function(event) {
    event.preventDefault();
    goToPage('보도자료.html');
  });
  
  document.querySelector('.Help a').addEventListener('click', function(event) {
    event.preventDefault();
    goToPage('고객센터.html');
  });