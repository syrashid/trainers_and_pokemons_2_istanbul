const toggleForm = () => {
  const button = document.querySelector('.js-toggle-form');
  const form = document.querySelector('#new_pokemon');
  button.addEventListener('click', () =>  {
    form.classList.toggle('d-none');
  })
}

export { toggleForm };
