import React from 'react'

const ToDoTask = props => {
  return(
    <li>
      <p>Description: {props.description}</p>
      <p>Priority: {props.priority}</p>
    </li>
  )
}

export default ToDoTask
