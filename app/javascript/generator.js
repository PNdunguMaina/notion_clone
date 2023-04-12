// declare variables
const mainContainer = document.getElementById('container-wrapper');
const inputContainer = document.getElementById('container');
const inputText = document.getElementById('text-input');

// create header1 element
const createHeader1Element = (header) => {
  const h1 = document.createElement('h1');
  h1.setAttribute('name', 'input');
  h1.textContent = header;
  mainContainer.insertBefore(h1, inputContainer.nextSibling);
};

// create paragraph text element
const createParagraphElement = (text) => {
  const p = document.createElement('p');
  p.setAttribute('name', 'input');
  p.textContent = text;
  mainContainer.insertBefore(p, inputContainer.nextSibling.nextSibling);
};

const displayOptions = (cmd) => {
  let val = cmd;
  // when user types /1 display header field || when user types /+1 display paragraph field
  if (inputText.value === '/1') {
    inputText.value = '';
    inputText.setAttribute('name', 'input');
    inputText.setAttribute('placeholder', 'Heading 1');
  } else if (inputText.value === '/+1') {
    inputText.value = '';
    inputText.setAttribute('name', 'input');
    inputText.setAttribute('placeholder', 'Type your text');
  }

  // handle events
  document.addEventListener('keydown', (e) => {
    if (
      e.target.value !== '' &&
      e.key === 'Enter' &&
      e.target.name === 'input'
    ) {
      if (val === '/1') {
        createHeader1Element(e.target.value);
        inputText.value = '';
        val = '';
      } else if (val === '/+1') {
        createParagraphElement(e.target.value);
        inputText.value = '';
        val = '';
      }
      inputText.setAttribute(
        'placeholder',
        'Type / for block, @ to link docs or people',
      );
    }
  });
};

// event listener to display block with header and paragraph options
inputText.addEventListener('input', (e) => {
  displayOptions(e.target.value);

  // toggle options block depending on input
  if (creator.value === '/') {
    const model = document.createElement('div');
    model.classList.add('model');
    model.innerHTML = `
      <div class="model-content shadow-2xl w-2/5">
        <div class="flex items-center space-x-4">
          <img src="assets/text.png" class="opacity-60 w-16 h-16">
          <div class="model-header">
            <h1 class="text-2xl font-bold">Heading 1</h1>
            <p class="model-close opacity-70">Type 1 to create a header</p>
          </div>
        </div>
        <div class="flex items-center space-x-4 mt-2">
          <img src="assets/text.png" class="opacity-60 w-16 h-16">
          <div class="model-header">
            <h1 class="text-2xl font-bold">Text 1</h1>
            <p class="model-close opacity-70">Type +1 to create a text</p>
          </div>
        </div>
      </div>
        `;
    inputContainer.appendChild(model);
  } else {
    const model = document.querySelector('.model');
    if (model) {
      model.remove();
    }
  }
});
