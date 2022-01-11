export function homeSearch() {
  const rechercher = document.querySelector('#search-animal');
  const modal = document.querySelector('.modal-search');

  if (rechercher) {
    rechercher.addEventListener('click', function () {
      modal.style.display = "block";
      rechercher.style.display = "none";
    });
  }

};
