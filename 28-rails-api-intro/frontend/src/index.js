const baseURL = 'http://localhost:3000/api/v1/animals/'

const getAnimals = () => get(baseURL)

const createAnimal = params => post(baseURL, params)

const get = url => fetch(url).then(res => res.json())

const post = (url, body) => {
  return fetch(url, {
    method: 'POST',
    body: JSON.stringify(body),
    headers: {
      'Content-Type': 'application/json',
      Accept: 'application/json'
    }
  })
  .then(res => res.json())
  .catch(error => console.log(error))
}

document.addEventListener('DOMContentLoaded', function(){
  const body = document.querySelector("body")
  const form = document.querySelector("form")

  getAnimals().then(json => {
    json.forEach(animalData => {
      const animal = new Animal(animalData)
      document.querySelector("tbody").innerHTML += animal.render()
    })
  })

  form.addEventListener('submit', function(event){
    event.preventDefault()
    let postBody = {}
    postBody.name = document.getElementById("animal-name").value
    postBody.gender = document.querySelector(".text").innerHTML
    postBody.species = document.getElementById("animal-species").value
    event.target.reset()
    post(baseURL, postBody)
    .then(data => {
      let newAnimal = new Animal(data)
      document.querySelector("tbody").innerHTML += newAnimal.render()
    }).catch(error => console.log(error.message))



  })
})
