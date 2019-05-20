const addBtn = document.querySelector('#new-toy-btn')
const toyFormContainer = document.querySelector('.container')
let addToy = false
const toyForm = document.querySelector(".add-toy-form")
const toyContainer = document.getElementById("toy-collection")
// YOUR CODE HERE
let allToys = []
addBtn.addEventListener('click', () => {
  // hide & seek with the form
  addToy = !addToy
  if (addToy) {
    toyFormContainer.style.display = 'block'
    // submit listener here
  } else {
    toyFormContainer.style.display = 'none'
  }
})

toyForm.addEventListener('submit', postToy)

function postToy() {
  event.preventDefault()
  let toyName = event.target.querySelector("input[name='name']").value
  let toyImg = event.target.querySelector("input[name='image']").value
  fetch("http://localhost:3000/toys", {
    method: "POST",
    headers:{
      "Content-Type": "application/json",
      Accept: "application/json"
    },
    body: JSON.stringify ({
      name: toyName,
      image: toyImg,
      likes: 0
    })
  })
  .then(resp => resp.json())
  .then(toyData => {
    allToys.push(toyData)
    toyContainer.innerHTML = ""
    addDivsToDom(allToys)
  })
  event.target.reset()

}

function loadToys() {
  fetch("http://localhost:3000/toys")
  .then(resp => resp.json())
  .then(toyData => {
    allToys = toyData
    addDivsToDom(toyData)
  })
}

function addToyDiv(toy) {
  let toyDiv = document.createElement("div")
  toyDiv.className = "card"
  toyDiv = addToyDataToDiv(toy, toyDiv)
  return toyDiv
}

function likeOrLikes(number){
  return number !== 1 && number !== -1 ? `${number} Likes` : `${number} Like`
}

function addDivsToDom(array){
  array.forEach(toy => {
    newDiv = addToyDiv(toy)
    toyContainer.appendChild(newDiv)
  })
}

function addToyDataToDiv(toy, div){
  let name = document.createElement("h2")
  let img = document.createElement("img")
  let likes = document.createElement("p")
  let button = document.createElement("button")
  name.innerHTML = toy.name
  img.src = toy.image
  img.className = "toy-avatar"
  likes.innerHTML = likeOrLikes(toy.likes)
  button.className="like-btn"
  button.innerHTML = "Like <3"
  button.dataset.toyId = toy.id
  button.addEventListener("click", event => likeToy(toy, event))
  div.dataset.toyId = toy.id
  div.append(name, img, likes, button)
  return div
}

function likeToy(toy, event){
  let toyId = toy.id
  let likes = toy.likes
  fetch(`http://localhost:3000/toys/${toyId}`, {
    method: "PATCH",
    headers:
    {
      "Content-Type": "application/json",
      Accept: "application/json"
    },
    body: JSON.stringify({
      "likes": likes + 1
    })
  })
  .then(res => {
    toy.likes = likes+1
    event.target.previousSibling.innerHTML = likeOrLikes(likes+1)
  })
}
loadToys()
// toyContainer.addEventListener("click", () => {
//   if (event.target.className === "like-btn") {
//     console.log("button clicked method 2")
//   }
// })
// OR HERE!

class Rectangle {
  constructor(xheight, xwidth) {
    this.height = xheight
    this.width = xwidth
    this.area = function(){
      return this.height * this.width
    }
    this.element = document.createElement("div")
    this.element.addEventListener("click", function(){
      alert(`This div is ${this.style.height}x${this.style.width}`)
    })
  }

  // area() {
  //   return this.height * this.width
  // }

  render(){
    this.element.style.height = `${this.height}px`
    this.element.style.width = `${this.width}px`
    this.element.style.border = 'solid black 1px'
    return this.element
  }

  static largestOf(rectangles) {
    let largest = rectangles[0]
    rectangles.forEach(rectangle => {
      if (largest.area() < rectangle.area()) {
        largest = rectangle
      }
    })
    return largest

  }
}

let toys = []
class Toy {
  constructor(name, image){
    this.name = name
    this.image = image
    this.likes = 0
    this.element = document.createElement("div")
    this.element.className="card"
    toys.push(this)
  }


  static all(){
    return toys
  }

  static renderAll(){
    return toys.map(toy => toy.render())
  }

  render(){
    let name = document.createElement("h2")
    let img = document.createElement("img")
    let likes = document.createElement("p")
    let button = document.createElement("button")
    name.innerHTML = this.name
    img.src = this.image
    img.className = "toy-avatar"
    likes.innerHTML = likeOrLikes(this.likes)
    button.className="like-btn"
    button.innerHTML = "Like <3"
    // button.dataset.toyId = toy.id
    button.addEventListener("click", event => likeToy(toy, event))
    // div.dataset.toyId = toy.id
    this.element.append(name, img, likes, button)
    return this.element
  }
}
