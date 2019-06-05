import React from 'react'

import Filters from './Filters'
import PetBrowser from './PetBrowser'

class App extends React.Component {
  constructor() {
    super()

    this.state = {
      pets: [],
      filters: {
        type: 'all'
      }
    }
  }

  onAdoptPet = petId => {
    let petList = [...this.state.pets]
    let adoptee = petList.find(pet => pet.id === petId)
    adoptee.isAdopted = true
    this.setState({
      pets: petList
    })
  }

  onChangeType = type => {
    this.setState({
      filters: {
        type: type
      }
    })
  }

  onFindPetsClick = () => {
    let url = "/api/pets"
    if (this.state.filters.type !== "all") { url += `?type=${this.state.filters.type}`}
    //this.state.filters.type === "all" ? fetch("/api/pets") : fetch("/api/pets?type=" + this.state.filters.type)
    fetch(url)
    .then(resp => resp.json())
    .then(petData => {
      this.setState({
        pets: petData
      })
    })
  }

  render() {
    return (
      <div className="ui container">
        <header>
          <h1 className="ui dividing header">React Animal Shelter</h1>
        </header>
        <div className="ui container">
          <div className="ui grid">
            <div className="four wide column">
              <Filters onChangeType={this.onChangeType}
              onFindPetsClick={this.onFindPetsClick}/>
            </div>
            <div className="twelve wide column">
              <PetBrowser pets={this.state.pets} onAdoptPet={this.onAdoptPet}/>
            </div>
          </div>
        </div>
      </div>
    )
  }
}

export default App
