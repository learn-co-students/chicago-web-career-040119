import React, {Component} from "react"
import {upvote} from "./actions"
import {connect} from "react-redux"
class PaintingCard extends Component {



  render(){
    console.log(this.props)
    return (
      <li>
        <h3 >{this.props.title}</h3>
        <p>By {this.props.artistName}</p>
        <img src={this.props.image}/>
        <br/>
        <button onClick={() => this.props.dispatchUpvote(this.props.id)}>Votes: {this.props.votes}</button>
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
