const selectAllCheckbox = document.querySelector('.select-all');
const selectMemberCheckboxes = document.querySelectorAll('.select-member');

selectAllCheckbox.addEventListener('click', () => {
  selectMemberCheckboxes.forEach(checkbox => {
    checkbox.checked = selectAllCheckbox.checked;
  });
});
