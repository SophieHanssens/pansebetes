console.log('connecté')

const icone = document.querySelector('.navbar-mobile i');
console.log("icone");

const modal = document.querySelector('.modal-navbar');
console.log(modal);

icone.addEventListener('click', function () {
  console.log("icone clikey");
  modal.classList.toggle('change-modal-navbar');
  console.log('modale changée')
  icone.classList.toggle('fa-times');
});
