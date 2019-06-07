import React, { Component } from "react"

export default class PaintingCard extends Component {

  render(){
    const { title, artist, image, votes } = this.props.painting
    return <li>
      <h3>{title}</h3>
      <p>By {artist.name}</p>
      <img src={image}/>
      <br/>
      <button>Votes: {votes}</button>
    </li>
  }
}
