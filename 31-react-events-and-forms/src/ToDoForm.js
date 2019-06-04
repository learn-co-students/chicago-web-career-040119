import React, { Component } from 'react'

export default class ToDoForm extends Component {
  constructor(props){
    super(props)
    this.state = {
      priority: "",
      description: "",
      completed: false
    }
  }

  handleChange = event => {
    this.setState({
      description: event.target.value
    })
  }

  handleSelect = event => {

    this.setState({
      priority: event.target.value
    })
  }

  onSubmitHandler = event => {
    event.preventDefault()
    const newTask = {description: this.state.description,
    priority: this.state.priority}
    this.props.makeNewTask(newTask)
  }
  render(){
    return(
      <form onSubmit={this.onSubmitHandler}>
        <input value={this.state.description} type="text" placeholder= "description" onChange={this.handleChange}/>
        <select onChange={this.handleSelect}>
          <option disabled selected>Choose priority</option>
          <option>high</option>
          <option>medium</option>
          <option>low</option>
        </select>
        <input type="submit"/>
      </form>
    )
  }
}
