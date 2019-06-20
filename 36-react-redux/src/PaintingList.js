import React, { Component } from "react"
import PaintingCard from "./PaintingCard.js"
import SearchBar from "./SearchBar"
import {connect} from "react-redux"
class PaintingList extends Component {



  // onChangeInput = input => {
  //   this.setState({
  //     searchInput: input
  //   })
  // }

  // filterPaintings = () => {
  //   return this.state.paintings.filter(painting => painting.title.toLowerCase().includes(this.state.searchInput.toLowerCase()))
  // }

  // upvote = artId => {
  //   let paintingIndex = this.state.paintings.findIndex(painting => painting.id === artId)
  //   let newState = [...this.state.paintings]
  //   newState[paintingIndex].votes += 1
  //   this.setState(newState)
  // }

  render(){

    const renderAllPaintings = this.props.paintings.map(painting => {
      return <PaintingCard
      title={painting.title}
      artistName={painting.artist.name}
      image={painting.image}
      votes={painting.votes}
      id={painting.id}
      key={painting.id}
      />
    })
    console.log(this.props)
    return(
      <div>
        {renderAllPaintings}
      </div>
    )
  }
}

const mapStateToProps = state => {
  return {
    paintings: state.paintings,
    searchInput: state.searchInput
  }
}

export default connect(mapStateToProps)(PaintingList)
