import React, { Component } from "react"
import artwork from "./artwork.js"
import PaintingCard from "./PaintingCard.js"
import Filter from "./Filter.js"
export default class PaintingList extends Component {
  constructor(){
    super()
    this.state = {
      search: "",
      artwork: artwork
    }
  }
  getSearchInput = event => {
    this.setState({
      search: event.target.value
    })
  }

  filterArtworkByTitle = () => {
    const filteredArtwork = this.state.artwork.filter(painting => painting.title.toLowerCase().includes(this.state.search))
    return filteredArtwork.map(painting => <PaintingCard painting = {painting}/>)
  }

  render(){
    return(

      <div>

      {/* const func = () => {
      console.log(dog)
    } */}
        <Filter getSearchInput={this.getSearchInput} search = {this.state.search}/>
        <ul>
          {this.filterArtworkByTitle()}
        </ul>
      </div>
    )
  }
}
