function handleSearchInput(event, allPokemonData, pokemonContainer) {
  const filteredPokes = allPokemonData.filter(pokeObj => {
    return pokeObj.name.includes(event.target.value.toLowerCase())
  })
  const filteredPokeHTML = renderAllPokemon(filteredPokes)
  pokemonContainer.innerHTML = filteredPokeHTML ? filteredPokeHTML : `<p><center>There are no Pokémon here</center></p>`
}

function createPokemon(event, allPokemonData){
  event.preventDefault()
  let nameForm = document.getElementById("name-input")
  let spriteForm = document.getElementById("sprite-input")
  debugger;
  fetch("http://localhost:3000/pokemon",{
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      "Accept": "application/json"
    },
    body: JSON.stringify({
      name: nameForm.value,
      sprites: {
        front: spriteForm.value
      }
    })
  }).then(resp => resp.json())
  .then(parsedJson => {
    allPokemonData.unshift(parsedJson)
    let newPokemonData = renderAllPokemon(allPokemonData)
    document.getElementById("pokemon-container").innerHTML = newPokemonData
  })

}


function deletePokemon(pokemonId){
  fetch(`http://localhost:3000/pokemon/${pokemonId}`, {
    method: "DELETE"
  })
  // document.getElementById(`pokemon-#{pokemonId}`).remove()
  event.target.parentNode.remove()

}
/************************* Helper Fns for Producing HTML **********************/
function renderAllPokemon(pokemonArray) {
  return pokemonArray.map(renderSinglePokemon).join('')
}

function renderSinglePokemon(pokemon) {
  return (`
  <div class="pokemon-card" id=pokemon-${pokemon.id}>
    <div class="pokemon-frame">
      <h1 class="center-text">${pokemon.name}</h1>
      <div class="pokemon-image">
        <img src="${pokemon.sprites.front}">
      </div>
      <button data-action="delete" class="pokemon-button" onclick="deletePokemon(${pokemon.id})">Delete</button>
    </div>
  </div>`)

}
