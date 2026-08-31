/**
* Template Name: MediNest
* Template URL: https://bootstrapmade.com/medinest-bootstrap-hospital-template/
* Updated: Aug 11 2025 with Bootstrap v5.3.7
* Author: BootstrapMade.com
* License: https://bootstrapmade.com/license/
*/

(function() {
  "use strict";

  /**
   * Apply .scrolled class to the body as the page is scrolled down
   */
  function toggleScrolled() {
    const selectBody = document.querySelector('body');
    const selectHeader = document.querySelector('#header');
    if (!selectHeader.classList.contains('scroll-up-sticky') && !selectHeader.classList.contains('sticky-top') && !selectHeader.classList.contains('fixed-top')) return;
    window.scrollY > 100 ? selectBody.classList.add('scrolled') : selectBody.classList.remove('scrolled');
  }

  let isScrolledTicking = false;
  document.addEventListener('scroll', () => {
    if (!isScrolledTicking) {
      window.requestAnimationFrame(() => {
        toggleScrolled();
        isScrolledTicking = false;
      });
      isScrolledTicking = true;
    }
  }, { passive: true });
  window.addEventListener('load', toggleScrolled);

  /**
   * Mobile nav toggle
   */
  const mobileNavToggleBtn = document.querySelector('.mobile-nav-toggle');

  function mobileNavToogle() {
    document.querySelector('body').classList.toggle('mobile-nav-active');
    mobileNavToggleBtn.classList.toggle('bi-list');
    mobileNavToggleBtn.classList.toggle('bi-x');
  }
  if (mobileNavToggleBtn) {
    mobileNavToggleBtn.addEventListener('click', mobileNavToogle);
  }

  /**
   * Hide mobile nav on same-page/hash links
   */
  document.querySelectorAll('#navmenu a').forEach(navmenu => {
    navmenu.addEventListener('click', () => {
      if (document.querySelector('.mobile-nav-active')) {
        mobileNavToogle();
      }
    });

  });

  /**
   * Toggle mobile nav dropdowns
   */
  document.querySelectorAll('.navmenu .toggle-dropdown').forEach(navmenu => {
    navmenu.addEventListener('click', function(e) {
      e.preventDefault();
      this.parentNode.classList.toggle('active');
      this.parentNode.nextElementSibling.classList.toggle('dropdown-active');
      e.stopImmediatePropagation();
    });
  });

  /**
   * Preloader
   */
  const preloader = document.querySelector('#preloader');
  if (preloader) {
    window.addEventListener('load', () => {
      preloader.remove();
    });
  }

  /**
   * Scroll top button
   */
  let scrollTop = document.querySelector('.scroll-top');

  function toggleScrollTop() {
    if (scrollTop) {
      window.scrollY > 100 ? scrollTop.classList.add('active') : scrollTop.classList.remove('active');
    }
  }
  scrollTop.addEventListener('click', (e) => {
    e.preventDefault();
    window.scrollTo({
      top: 0,
      behavior: 'smooth'
    });
  });

  window.addEventListener('load', toggleScrollTop);
  
  let isScrollTopTicking = false;
  document.addEventListener('scroll', () => {
    if (!isScrollTopTicking) {
      window.requestAnimationFrame(() => {
        toggleScrollTop();
        isScrollTopTicking = false;
      });
      isScrollTopTicking = true;
    }
  }, { passive: true });

  /**
   * Animation on scroll function and init
   */
  function aosInit() {
    AOS.init({
      duration: 600,
      easing: 'ease-in-out',
      once: true,
      mirror: false
    });
  }
  window.addEventListener('load', aosInit);

  /**
   * Initiate glightbox
   */
  window.addEventListener('load', () => {
    const glightbox = GLightbox({
      selector: '.glightbox'
    });
  });

  /**
   * Initiate Pure Counter
   */
  window.addEventListener('load', () => {
    new PureCounter();
  });

  /**
   * Init isotope layout and filters
   */
  window.addEventListener('load', () => {
    document.querySelectorAll('.isotope-layout').forEach(function(isotopeItem) {
      let layout = isotopeItem.getAttribute('data-layout') ?? 'masonry';
      let filter = isotopeItem.getAttribute('data-default-filter') ?? '*';
      let sort = isotopeItem.getAttribute('data-sort') ?? 'original-order';

      let initIsotope;
      imagesLoaded(isotopeItem.querySelector('.isotope-container'), function() {
        initIsotope = new Isotope(isotopeItem.querySelector('.isotope-container'), {
          itemSelector: '.isotope-item',
          layoutMode: layout,
          filter: filter,
          sortBy: sort
        });
      });

      isotopeItem.querySelectorAll('.isotope-filters li').forEach(function(filters) {
        filters.addEventListener('click', function() {
          isotopeItem.querySelector('.isotope-filters .filter-active').classList.remove('filter-active');
          this.classList.add('filter-active');
          initIsotope.arrange({
            filter: this.getAttribute('data-filter')
          });
          if (typeof aosInit === 'function') {
            aosInit();
          }
        }, false);
      });
    });
  });

  /**
   * Init swiper sliders
   */
  function initSwiper() {
    document.querySelectorAll(".init-swiper").forEach(function(swiperElement) {
      let config = JSON.parse(
        swiperElement.querySelector(".swiper-config").innerHTML.trim()
      );

      if (swiperElement.classList.contains("swiper-tab")) {
        initSwiperWithCustomPagination(swiperElement, config);
      } else {
        new Swiper(swiperElement, config);
      }
    });
  }

  window.addEventListener("load", initSwiper);

  /**
   * Frequently Asked Questions Toggle
   */
  document.querySelectorAll('.faq-item h3, .faq-item .faq-toggle, .faq-item .faq-header').forEach((faqItem) => {
    faqItem.addEventListener('click', () => {
      faqItem.parentNode.classList.toggle('faq-active');
    });
  });

})();

/**
 * Product Gallery Slider
 */
let currentImgIndex = 0;

window.setMainImage = function(thumb, index) {
  currentImgIndex = index;
  const mainImg = document.getElementById('mainProductImage');
  if (mainImg && thumb) mainImg.src = thumb.src;
  
  const thumbs = document.querySelectorAll('.gallery-thumb');
  thumbs.forEach(t => {
    t.classList.remove('border-primary');
    t.classList.add('border-white', 'opacity-75');
  });
  if (thumb) {
    thumb.classList.remove('border-white', 'opacity-75');
    thumb.classList.add('border-primary');
  }
};

window.changeImage = function(step) {
  const thumbs = document.querySelectorAll('.gallery-thumb');
  if (thumbs.length === 0) return;

  currentImgIndex += step;
  if (currentImgIndex < 0) currentImgIndex = thumbs.length - 1;
  if (currentImgIndex >= thumbs.length) currentImgIndex = 0;
  
  const thumbToActivate = document.querySelector(`.gallery-thumb[data-index="${currentImgIndex}"]`);
  if (thumbToActivate) {
    window.setMainImage(thumbToActivate, currentImgIndex);
  }
};