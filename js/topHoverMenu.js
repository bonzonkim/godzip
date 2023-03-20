const children = document.querySelectorAll('.child');

children.forEach(child => {
    const hidden = child.querySelector('.hidden');

    child.addEventListener('mouseenter', () => {
        hidden.style.display = 'block';

    });

    child.addEventListener('mouseleave', () => {
        hidden.style.display = 'none';
    });
});