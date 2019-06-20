import React, { Component } from "react"

export default class NavBar extends Component {
  render(){
    return(
      <div>
        <h3>
          <span className="navbutton">Home</span>
          <span className="navbutton"> Nav </span>
          <span className="navbutton"> Sign In </span>
        </h3>
      </div>
    )
  }
}
