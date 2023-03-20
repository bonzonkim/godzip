//신고페이지 js
   // Report 버튼을 클릭하면 새로운 창을 엽니다.
   document.getElementById("report-link").addEventListener("click", function() {
    // 새로운 창을 엽니다.
    var reportWindow = window.open("", "reportWindow", "width=500,height=500");

    // 창 내부에 HTML 코드를 추가합니다.
    reportWindow.document.write(`
  <h3>신고 옵션</h3>
  <h6>신고하시기 전에 신중하게 선택하시고 신고해주세요. (신고하시고 나면 다른 옵션으로 고칠 수 없습니다.)</h6>
  <form id="report-form" style="display: flex; flex-direction: column;">
    <label>
      <input type="radio" name="report-type" value="spam">
      부적절한 언어사용
    </label>
    <label>
      <input type="radio" name="report-type" value="abuse">
      카테고리 관련 내용과 불일치
    </label>
    <label>
      <input type="radio" name="report-type" value="hate">
      인종, 사회적 차별
    </label>
    <label>
      <input type="radio" name="report-type" value="hate">
      실제의 사실과 다른내용
    </label>
    <label>
      <input type="radio" name="report-type" value="hate">
      광고, 상업적 내용
    </label>
    <br>
    <button type="submit">신고</button>
  </form>
`);

    // 신고 폼 제출 시 창을 닫음
    reportWindow.document.getElementById("report-form").addEventListener("submit", function(event) {
      event.preventDefault(); // 폼 제출 기본 동작 취소
      reportWindow.close(); // 창 닫기
    });
  });
  //신고페이지 js 끝