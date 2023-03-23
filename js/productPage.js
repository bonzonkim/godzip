//------혼합 필터 (EX. 남성 + 평점 + 최신순 등)--------//
// 연결 정보
const oracledb = require('oracledb');
const dbConfig = {
  user: 'user',
  password: 'password',
  connectString: 'localhost:1521/orcl',
};

// 평점 필터링 기능
const ratingCheckboxes = document.querySelectorAll('#ratingFilter input[name="score"]');
ratingCheckboxes.forEach(checkbox => {
  checkbox.addEventListener('click', async function() {
    const selectedScores = Array.from(ratingCheckboxes)
      .filter(checkbox => checkbox.checked)
      .map(checkbox => Number(checkbox.value));
    let reviews = document.querySelectorAll('.review');
    try {
      const conn = await oracledb.getConnection(dbConfig);
      const query = `
        SELECT *
        FROM reviews
        WHERE score IN (${selectedScores.join()})
      `;
      const result = await conn.execute(query);
      const reviewData = result.rows.map(row => ({
        score: row[0],
        content: row[1]
      }));
      reviews.forEach(review => {
        const score = getRating(review);
        if (selectedScores.length === 0 || selectedScores.includes(score)) {
          review.style.display = '';
        } else {
          review.style.display = 'none';
        }
      });
      await conn.close();
    } catch (error) {
      console.error(error.message);
    }
  });
});

// 그 외 필터링 기능
const sortRadios = document.querySelectorAll('#OthersFilter input[name="sort"]');
sortRadios.forEach(radio => {
  radio.addEventListener('click', async function() {
    let reviews = document.querySelectorAll('.review');
    const searchInput = document.querySelector('input[name="ctSearchBar"]');
    const searchString = searchInput.value.toLowerCase().trim();
    try {
      const conn = await oracledb.getConnection(dbConfig);
      let query = `
        SELECT *
        FROM reviews
      `;
      if (searchString) {
        query += `
          WHERE LOWER(content) LIKE '%${searchString}%'
        `;
      }
      if (this.value === 'review_count') {
        query += `
          ORDER BY review_count DESC
        `;
      } else if (this.value === 'recent') {
        query += `
          ORDER BY date DESC
        `;
      } else if (this.value === 'writer_grade') {
        query += `
          ORDER BY writer_grade DESC
        `;
      }
      const result = await conn.execute(query);
      const reviewData = result.rows.map(row => ({
        score: row[0],
        content: row[1],
        reviewCount: row[2],
        date: row[3],
        writerGrade: row[4]
      }));
      reviews.forEach(review => {
        if (selectedScores.length === 0 || selectedScores.includes(getRating(review))) {
          review.style.display = '';
        } else {
          review.style.display = 'none';
        }
      });
      await conn.close();
    } catch (error) {
      console.error(error.message);
    }
  });
});

//------끝 혼합 필터 (EX. 남성 + 평점 + 최신순 등)--------//





//--------- 남성 여성 필터---------////

const checkboxes = document.querySelectorAll('#categoryFilter input[name="category"]');
checkboxes.forEach(checkbox => {
  checkbox.addEventListener('click', function() {
    const selectedCategories = Array.from(checkboxes)
      .filter(checkbox => checkbox.checked)
      .map(checkbox => checkbox.value);
    const reviews = document.querySelectorAll('.review');
    reviews.forEach(review => {
      if (selectedCategories.length === 0 || selectedCategories.includes(getCategory(review))) {
        review.style.display = '';
      } else {
        review.style.display = 'none';
      }
    });
  });
});

function getCategory(review) {
    const title = review.querySelector('.nickname').textContent.toLowerCase();
    if (title.includes('여성') || title.includes('woman')) {
      return 'women';
    } else if (title.includes('남성') || title.includes('man')) {
      return 'men';
    } else if (title.includes('아동')) {
      return 'kids';
    } else if (title.includes('신발') || title.includes('구두')) {
      return 'shoes';
    } else if (title.includes('액세서리')) {
      return 'accessories';
    } else {
      const content = review.querySelector('.content').textContent.toLowerCase();
      if (content.includes('woman') || content.includes('man')) {
        return content.includes('woman') ? 'women' : 'men';
      } else {
        return '';
      }
    }
  }




//------------평점 필터----------///
// 데이터베이스 연결 설정
const oracledb = require('oracledb');
oracledb.autoCommit = true;

(async function() {
  let connection;
  try {
    connection = await oracledb.getConnection({
      user: 'your_username',
      password: 'your_password',
      connectString: 'your_connection_string'
    });
  } catch (error) {
    console.error(error.message);
    return;
  }

  // 평점 필터링 기능
  const ratingCheckboxes = document.querySelectorAll('#ratingFilter input[name="score"]');
  ratingCheckboxes.forEach(checkbox => {
    checkbox.addEventListener('click', async function() {
      const selectedScores = Array.from(ratingCheckboxes)
        .filter(checkbox => checkbox.checked)
        .map(checkbox => Number(checkbox.value));
      let reviews = document.querySelectorAll('.review');

      try {
        const query = `
          SELECT *
          FROM reviews
          WHERE score IN (${selectedScores.join()})
        `;
        const result = await connection.execute(query);
        const reviewData = result.rows.map(row => ({
          score: row[0],
          content: row[1]
        }));
        reviews.forEach(review => {
          const score = getRating(review);
          if (selectedScores.length === 0 || selectedScores.includes(score)) {
            review.style.display = '';
          } else {
            review.style.display = 'none';
          }
        });
      } catch (error) {
        console.error(error.message);
      }
    });
  });
})();



//-------조회수 / 날짜 / 등급 / 검색어 필터 ------//

// Highest number of reviews
const sortReviewCountRadio = document.querySelector('#sort_review_count');
sortReviewCountRadio.addEventListener('click', async function() {
  let reviews = document.querySelectorAll('.review');
  try {
    const query = `
      SELECT *
      FROM reviews
      ORDER BY review_count DESC
    `;
    const result = await connection.execute(query);
    const reviewData = result.rows.map(row => ({
      score: row[0],
      content: row[1],
      review_count: row[2]
    }));
    reviews.forEach(review => {
      review.style.display = 'none';
    });
    reviewData.forEach(review => {
      const element = document.querySelector(`[data-score="${review.score}"][data-review-count="${review.review_count}"]`);
      if (element) {
        element.style.display = '';
      }
    });
  } catch (error) {
    console.error(error.message);
  }
});


// Most recent reviews
const sortRecentRadio = document.querySelector('#sort_recent');
sortRecentRadio.addEventListener('click', async function() {
  let reviews = document.querySelectorAll('.review');
  try {
    const query = `
      SELECT *
      FROM reviews
      ORDER BY review_date DESC
    `;
    const result = await connection.execute(query);
    const reviewData = result.rows.map(row => ({
      score: row[0],
      content: row[1],
      review_count: row[2],
      review_date: row[3]
    }));
    reviews.forEach(review => {
      review.style.display = 'none';
    });
    reviewData.forEach(review => {
      const element = document.querySelector(`[data-score="${review.score}"][data-review-date="${review.review_date}"]`);
      if (element) {
        element.style.display = '';
      }
    });
  } catch (error) {
    console.error(error.message);
  }
});

//Reviewer's membership grade
const sortWriterGradeRadio = document.querySelector('#sort_writer_grade');
sortWriterGradeRadio.addEventListener('click', async function() {
  let reviews = document.querySelectorAll('.review');
  try {
    const query = `
      SELECT *
      FROM reviews
      ORDER BY writer_grade DESC
    `;
    const result = await connection.execute(query);
    const reviewData = result.rows.map(row => ({
      score: row[0],
      content: row[1],
      review_count: row[2],
      review_date: row[3],
      writer_grade: row[4]
    }));
    reviews.forEach(review => {
      review.style.display = 'none';
    });
    reviewData.forEach(review => {
      const element = document.querySelector(`[data-score="${review.score}"][data-writer-grade="${review.writer_grade}"]`);
      if (element) {
        element.style.display = '';
      }
    });
  } catch (error) {
    console.error(error.message);
  }
});

//검색
const searchButton = document.querySelector('.searchButton');
searchButton.addEventListener('click', function() {
  const searchInput = document.querySelector('input[name="ctSearchBar"]');
  const searchTerm = searchInput.value.toLowerCase().trim();
  const reviews = document.querySelectorAll('.review');
  reviews.forEach(review => {
    const content = review.querySelector('.content').textContent.toLowerCase();
    if (content.includes(searchTerm)) {
      review.style.display = '';
    } else {
      review.style.display = 'none';
    }
  });
});


//-------상품에 대한 평점(별점)을 오라클 데이터를 받아와 자동으로 입력하는 코드---//
// DB 연결
// DB 연결
/*const oracledb = require('oracledb');

(async function() {
  try {
    await oracledb.createPool({
      user: 'myuser',
      password: 'mypassword',
      connectString: 'localhost/XE'
    });
    console.log('Connection pool started');
  } catch (error) {
    console.error(error);
  }
})();

// 평점 필터링 기능
const ratingCheckboxes = document.querySelectorAll('#ratingFilter input[name="score"]');
ratingCheckboxes.forEach(checkbox => {
  checkbox.addEventListener('click', async function() {
    const selectedScores = Array.from(ratingCheckboxes)
      .filter(checkbox => checkbox.checked)
      .map(checkbox => Number(checkbox.value));
    let reviews = document.querySelectorAll('.review');

    try {
      const query = `
        SELECT *
        FROM reviews
        WHERE score IN (${selectedScores.join()})
      `;
      const result = await connection.execute(query);
      const reviewData = result.rows.map(row => ({
        score: row[0],
        content: row[1]
      }));
      reviews.forEach(review => {
        const score = getRating(review);
        if (selectedScores.length === 0 || selectedScores.includes(score)) {
          review.style.display = '';
        } else {
          review.style.display = 'none';
        }
      });
    } catch (error) {
      console.error(error.message);
    }
  });
});

// 별점 자동 입력 기능
const starRatingElements = document.querySelectorAll('.star-rating');
starRatingElements.forEach(starRatingElement => {
  const rating = getRating(starRatingElement.parentElement.parentElement);
  fillStars(starRatingElement, rating);
});

function getRating(reviewElement) {
  const ratingElement = reviewElement.querySelector('.star-rating input:checked');
  return ratingElement ? Number(ratingElement.value) : 0;
}

function fillStars(starRatingElement, rating) {
  const filledStars = Math.round(rating * 2) / 2;
  const stars = starRatingElement.querySelectorAll('.star');
  stars.forEach((star, index) => {
    if (index < filledStars) {
      star.classList.add('filled');
    } else {
      star.classList.remove('filled');
    }
  });
}
*/

/* 네, 맞습니다. 만약 여러 개의 상품이 있다면, 상품 정보를 동적으로 생성해주는 로직이 필요합니다. 
이를 위해서는 JavaScript를 사용하여 HTML 코드를 동적으로 생성하는 방법을 사용할 수 있습니다. 
이를 위해 HTML의 <template> 태그를 사용하거나, JavaScript의 createElement() 함수 등을 
사용하여 새로운 HTML 요소를 동적으로 생성할 수 있습니다.*/






//----오라클 연동 코드인데 DB 생성후 검토 필요--//

// (async function() {
//     const connection = await oracledb.getConnection({
//       user: "your_username",
//       password: "your_password",
//       connectString: "your_connection_string"
//     });
  
//     // 평점 필터링 기능
//     const ratingCheckboxes = document.querySelectorAll('#ratingFilter input[name="score"]');
//     ratingCheckboxes.forEach(checkbox => {
//       checkbox.addEventListener('click', async function() {
//         const selectedScores = Array.from(ratingCheckboxes)
//           .filter(checkbox => checkbox.checked)
//           .map(checkbox => Number(checkbox.value));
//         let reviews = document.querySelectorAll('.review');
  
//         try {
//           const query = `
//             SELECT *
//             FROM reviews
//             WHERE score IN (${selectedScores.join()})
//           `;
//           const result = await connection.execute(query);
//           const reviewData = result.rows.map(row => ({
//             score: row[0],
//             content: row[1]
//           }));
//           reviews.forEach(review => {
//             const score = getRating(review);
//             if (selectedScores.length === 0 || selectedScores.includes(score)) {
//               review.style.display = '';
//             } else {
//               review.style.display = 'none';
//             }
//           });
//         } catch (error) {
//           console.error(error.message);
//         }
//       });
//     });
  
//     // 기타 필터링 기능
//     const othersFieldset = document.querySelector('#OthersFilter');
//     const sortRadios = othersFieldset.querySelectorAll('input[name="sort"]');
//     const searchBar = othersFieldset.querySelector('input[name="ctSearchBar"]');
//     const searchButton = othersFieldset.querySelector('input[name="ctSearch"]');
  
//     sortRadios.forEach(radio => {
//       radio.addEventListener('click', async function() {
//         let reviews = document.querySelectorAll('.review');
//         const sortOrder = radio.value;
  
//         try {
//           let query;
//           if (sortOrder === 'review_count') {
//             query = `
//               SELECT *
//               FROM reviews
//               ORDER BY review_count DESC
//             `;
//           } else if (sortOrder === 'recent') {
//             query = `
//               SELECT *
//               FROM reviews
//               ORDER BY post_date DESC
//             `;
//           } else if (sortOrder === 'writer_grade') {
//             query = `
//               SELECT *
//               FROM reviews
//               ORDER BY writer_grade DESC
//             `;
//           }
//           const result = await connection.execute(query);
//           const reviewData = result.rows.map(row => ({
//             score: row[0],
//             content: row[1]
//           }));
//           reviews.forEach(review => {
//             reviewData.forEach(data => {
//               if (review.id === `review${data.score}`) {
//                 review.querySelector('.review-count').textContent = data.review_count;
//                 review.querySelector('.post-date').textContent = data.post_date;
//                 review.querySelector('.writer-grade').textContent = data.writer_grade;
//               }
//             });
//           });
//         } catch (error) {
//           console.error(error.message);
//         }
//       });
//     });
  
//     // 검색 기능
//     searchButton.addEventListener('click', async function() {
//       const keyword = searchBar.value.trim().toLowerCase();
//       let reviews = document.querySelectorAll('.review');
  
//       try {
//         const query = `
//           SELECT *
//           FROM reviews
//           WHERE LOWER(content) LIKE '%${keyword}%'
//         `;
//         const result = await connection.execute(query);
//         const reviewData = result.rows.map(row => ({
//           score:










