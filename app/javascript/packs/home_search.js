export function homeSearch() {
  console.log("connecté");
  const rechercher = document.querySelector('.button-search');
  const modal = document.querySelector('.modal-search');
  rechercher.addEventListener('click', function () {
    console.log("bouton cliqué");
    modal.style.display = "block";
    rechercher.style.display = "none";
  });
};
