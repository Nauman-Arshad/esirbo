const menuBtn = document.querySelector('[data-collapse-toggle="mobile-menu-2"]');
const mobileMenu = document.querySelector('#mobile-menu-2');
menuBtn.addEventListener('click', function() {
    mobileMenu.classList.toggle('hidden');
    if (mobileMenu.classList.contains('hidden')) {
        menuBtn.firstElementChild.classList.remove('hidden');
        menuBtn.lastElementChild.classList.add('hidden');
    } else {
        menuBtn.firstElementChild.classList.add('hidden');
        menuBtn.lastElementChild.classList.remove('hidden');
    }
    document.body.classList.toggle('fixed');
});