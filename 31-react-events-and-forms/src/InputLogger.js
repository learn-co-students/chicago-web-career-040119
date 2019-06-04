import React, { Component } from 'react'

class InputLogger extends Component {
  constructor(){
    super()
    this.state = {
      inputData: {
        inputValue: "",
        length: 0
      }
    }
  }

  onChangeHandler = event => {

    this.setState({
      inputData: {
        inputValue: event.target.value,
        length: this.state.inputData.length
      }
    })
  }

  render(){
    return(
      <div>
        <input value={this.state.inputData.inputValue} placeholder="type here" onChange={this.onChangeHandler} type="text"/>
        <p>{this.state.inputData.inputValue}</p>
      </div>
    )
  }
}
export default InputLogger
