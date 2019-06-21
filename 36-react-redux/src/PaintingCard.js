import React, {Component} from "react"
import {upvote} from "./actions"
import {connect} from "react-redux"
class PaintingCard extends Component {

  render(){
    let {id, title, artist, image} = this.props.painting
    return (
      <li>
        <h3 >{title}</h3>
        <p>By {artist.name}</p>
        <img src={image}/>
        <br/>
        <button onClick={() => this.props.dispatchUpvote(id)}>Votes: {this.props.votes}</button>
      </li>
    )
  }
}

const mapDispatchToProps = dispatch => {
  return {
    dispatchUpvote: id => dispatch(upvote(id))
  }
}

export default connect(null,mapDispatchToProps)(PaintingCard)
