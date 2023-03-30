console.log("js js js")

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
        { value: 'option4', text: 'Chilly' }
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

  const submitButton = document.querySelector('button[type="submit"]');
  submitButton.addEventListener('click', () => {
    alert('제출이 완료되었습니다!');
  });

  // 카테고리2의 옵션을 업데이트
  category2.innerHTML = category2Options.map(option => `<option value="${option.value}">${option.text}</option>`).join('');
});
