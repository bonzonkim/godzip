 //리뷰페이지 js
// 카테고리1 select 요소
const category1 = document.querySelector('#category1');
// 카테고리2 select 요소
const category2 = document.querySelector('#category2');

// 카테고리1 변경시 이벤트 리스너 등록
category1.addEventListener('change', () => {
  // 선택된 카테고리1의 값
  const category1Value = category1.value;
  
  // 카테고리2의 옵션들을 저장할 배열
  let category2Options = [];

  // 선택된 카테고리1 값에 따라 카테고리2 옵션 배열을 다르게 설정
  switch (category1Value) {
    case 'option1': // Car
      category2Options = [
        { value: 'option1', text: 'Carwash' },
        { value: 'option2', text: 'Component' },
        { value: 'option3', text: 'Exterior' },
        { value: 'option4', text: 'Interior' }
      ];
      break;
    case 'option2': // Digital
      category2Options = [
        { value: 'option1', text: 'Appliances' },
        { value: 'option2', text: 'Laptop&Computer' },
        { value: 'option3', text: 'Gadget' },
        { value: 'option4', text: 'Iot' },
        { value: 'option5', text: 'Mobile' },
        { value: 'option6', text: 'Wearable' }
      ];
      break;
    case 'option3': // Fashion
      category2Options = [
        { value: 'option1', text: 'Female' },
        { value: 'option2', text: 'Male' },
        { value: 'option3', text: 'Unisex' },
        { value: 'option4', text: 'Children' }
      ];
      break;
    case 'option4': // Home Interior
      category2Options = [
        { value: 'option1', text: 'Furniture' },
        { value: 'option2', text: 'Organize' },
        { value: 'option3', text: 'Light' },
        { value: 'option4', text: 'Bedding' },
        { value: 'option5', text: 'Bathroom' }
      ];
      break;
    case 'option5': // Sports
      category2Options = [
        { value: 'option1', text: 'Cycling' },
        { value: 'option2', text: 'Golf' },
        { value: 'option3', text: 'Skates' },
        { value: 'option4', text: 'Swimming' },
        { value: 'option5', text: 'Tennis' }
      ];
      break;
    case 'option6': // Toy
      category2Options = [
        { value: 'option1', text: 'Block' },
        { value: 'option2', text: 'Doll' },
        { value: 'option3', text: 'Figure' },
        { value: 'option4', text: 'Game' },
        { value: 'option5', text: 'Puzzle' },
        { value: 'option6', text: 'Robot' }
      ];
      break;
    default:
      break;
  }

  // 이벤트 핸들러의 인자로 event를 추가했습니다.
  // event.preventDefault()를 호출해서 폼 제출 이벤트를 막습니다.
  // window.location.href를 변경해서 reviewsForAnItem.html 페이지로 이동합니다. 
  // 상대 경로(./)를 사용하여 현재 페이지와 같은 디렉토리에 있는 파일에 접근할 수 있습니다.
  // 이벤트 핸들러에서 submitButton.removeEventListener('click', submitHandler)을 호출하여 이벤트 핸들러를 삭제합니다. 
  // 이는 필요한 경우에만 사용하세요.
  const submitButton = document.querySelector('button[type="submit"]');
const submitHandler = (event) => {
  event.preventDefault();
  alert('제출이 완료되었습니다!');
  window.location.href = './reviewsForAnItem.html';
  submitButton.removeEventListener('click', submitHandler);
};
submitButton.addEventListener('click', submitHandler);
  
  // 카테고리2의 옵션을 업데이트
  category2.innerHTML = category2Options.map(option => `<option value="${option.value}">${option.text}</option>`).join('');
});
