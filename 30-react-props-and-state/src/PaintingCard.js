import React, { Component } from "react"

export default class PaintingCard extends Component {
  constructor(props){
    super(props)
    this.state = {
      votes: props.votes,
      title: props.title
    }
  }

  upVote = () => {
    this.setState({
      votes: this.state.votes + 1
    })
    if(this.state.votes >= 100) {
      console.log("Hello!")
    }
  }

  changeTitle = () => {
    this.setState({
      title: "Painty McPaintface"
    })
  }

  render(){
    return <li>
      <h3 onClick={this.changeTitle}>{this.state.title}</h3>
      <p>By {this.props.artistName}</p>
      <img src={this.props.image}/>
      <br/>
      <button onClick={this.upVote}>Votes: {this.state.votes}</button>
    </li>
  }
}
