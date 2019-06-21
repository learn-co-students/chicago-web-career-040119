import React, { Component } from "react"
import PaintingCard from "./PaintingCard.js"
import SearchBar from "./SearchBar"
import {connect} from "react-redux"
class PaintingList extends Component {

  filterPaintings = () => {
    return this.props.paintings.filter(painting => painting.title.toLowerCase().includes(this.props.searchInput.toLowerCase()))
  }

  render(){
    const renderAllPaintings = this.filterPaintings().map(painting => {
      return <PaintingCard
      painting = {painting}
      key={painting.id}
      />
    })
    return(
      <div>
        <SearchBar />
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
