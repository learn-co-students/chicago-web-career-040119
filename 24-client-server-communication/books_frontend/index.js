const bookForm = document.querySelector("form")
bookForm.addEventListener("submit", getFormInput)

function getFormInput(){
  event.preventDefault()
  let bookTitle = document.querySelector("input[name='title']")
  let bookAuthor = document.getElementsByName("author")[0]
  let bookCover = document.getElementsByName("cover")[0]
  let bookBody = JSON.stringify({
    title: bookTitle.value,
    author: bookAuthor.value,
    img: bookCover.value
  })
  postBook(bookBody)
}

function postBook(bookBody){
  fetch("http://localhost:3000/books", {
    method: "POST",
    headers: {
      "Content-Type": "application/json"
    },
    body: bookBody
  })
  .catch(errors => console.log("Try a different URL endpoint"))
}

function addBook(book) {
  const book_list = document.querySelector("#book-list");
  const div = makeBookCard(book);
  book_list.appendChild(div);
}

function makeBookCard(book) {
  const div = document.createElement("div");
  div.className = "card";

  const img = document.createElement("img");
  img.src = book.img;

  const h3 = document.createElement("h3");
  h3.textContent = book.title;

  const p = document.createElement("p");
  p.textContent = book.author;

  //add all elements to div
  div.appendChild(img);
  div.appendChild(h3);
  div.appendChild(p);

  return div;
}

function showBooks(bookArray) {
  bookArray.map(book => addBook(book));
}
fetch("http://localhost:3000/books")
.then(resp => resp.json())
.then(books => showBooks(books))


// .then(function(books){
//   showBooks(books)
// })
// what happens when books isn't defined?
