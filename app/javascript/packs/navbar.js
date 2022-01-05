// console.log('connecté')


// console.log("icone");


// console.log(modal);

// icone.addEventListener('click', function () {
//   console.log("icone clikey");
//   modal.classList.toggle('change-modal-navbar');
//   console.log('modale changée')
//   icone.classList.toggle('fa-times');
// });

export function playNavbar(){
  const icone = document.querySelector('.navbar-mobile .burger');
  const modal = document.querySelector('.modal-navbar');
  icone.addEventListener('click', function () {
    console.log("icone clikey");
    modal.classList.toggle('change-modal-navbar');
    console.log('modale changée')
    icone.classList.toggle('fa-times');
    icone.classList.toggle('change-burger');
  });
};
