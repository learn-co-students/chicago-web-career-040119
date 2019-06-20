import React, {Component} from "react"

export default class SearchBar extends Component {


  render(){
    return(
      <div>
        <input
        onChange={event => this.props.onChangeInput(event.target.value)}
        value={this.props.searchInput}
        placeholder="search" />
      </div>
    )
  }
}
