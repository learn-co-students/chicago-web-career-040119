import React, { Component } from "react"
import artwork from "./artwork.js"
import PaintingCard from "./PaintingCard.js"
export default class PaintingList extends Component {
  render(){
    const allPaintings = artwork.map(painting => {
      return <PaintingCard
      title={painting.title}
      artistName={painting.artist.name}
      image={painting.image}
      votes={painting.votes}/>
    })
    return(
      <ul>
        {allPaintings}
      </ul>
    )
  }
}
