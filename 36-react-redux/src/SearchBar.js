import React, {Component} from "react"
import {updateSearch} from "./actions"
import {connect} from "react-redux"

class SearchBar extends Component {
  render(){
    return(
      <div>
        <input
        onChange={event => this.props.updateSearch(event.target.value)}
        value={this.props.searchInput}
        placeholder="search" />
      </div>
    )
  }
}

const mapStateToProps = state => {
  return {
    searchInput: state.searchInput
  }
}

const mapDispatchToProps = dispatch => {
  return {
    updateSearch: query => dispatch(updateSearch(query))
  }
}

export default connect(null,mapDispatchToProps)(SearchBar)
