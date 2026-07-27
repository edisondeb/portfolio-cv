/* ============================================
   MAIN.JS - JavaScript Interactions
   Portfolio CV - Edison Arellano Mamani
   ============================================ */

document.addEventListener('DOMContentLoaded', () => {
    initToggleDetails();
    initSmoothScroll();
    initActiveNav();
});

function toggleDetails(button) {
    const details = button.parentElement.querySelector('.list-more-details');
    if (!details) return;

    if (details.classList.contains('hidden')) {
        details.classList.remove('hidden');
        button.textContent = 'Ver menos...';
    } else {
        details.classList.add('hidden');
        button.textContent = 'Ver más...';
    }
}

function initToggleDetails() {
    const buttons = document.querySelectorAll('.toggle-button');
    buttons.forEach(btn => {
        btn.addEventListener('click', () => toggleDetails(btn));
    });
}

function initSmoothScroll() {
    const links = document.querySelectorAll('a[href^="#"]');
    links.forEach(link => {
        link.addEventListener('click', (e) => {
            const href = link.getAttribute('href');
            if (href === '#') return;
            const target = document.querySelector(href);
            if (target) {
                e.preventDefault();
                const navHeight = document.querySelector('.navigation-wrapper').offsetHeight;
                window.scrollTo({
                    top: target.offsetTop - navHeight - 20,
                    behavior: 'smooth'
                });
            }
        });
    });
}

function initActiveNav() {
    const sections = document.querySelectorAll('.category, .about-section');
    const navLinks = document.querySelectorAll('.top-navigation .nav a');

    window.addEventListener('scroll', () => {
        let current = '';
        sections.forEach(section => {
            const sectionTop = section.offsetTop;
            if (window.pageYOffset >= sectionTop - 150) {
                current = section.getAttribute('id') || '';
            }
        });

        navLinks.forEach(link => {
            link.classList.remove('active');
            if (link.getAttribute('href') === '#' + current) {
                link.classList.add('active');
            }
        });
    });
}
