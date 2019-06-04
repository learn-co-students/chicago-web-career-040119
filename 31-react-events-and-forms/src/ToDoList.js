import React, { Component } from 'react'
import ToDoForm from "./ToDoForm.js"
import ToDoTask from "./ToDoTask.js"

// const tasks = [
//   {description: "Do a little dance", priority: "high"},
//   {description: "Make a little love", priority: "medium"}
// ]
export default class ToDoList extends Component {
  constructor(){
    super()
    this.state = {
      tasks: []
    }
  }
  showAllTasks = () => {
    return this.state.tasks.map((task,index) =>
      <ToDoTask description={task.description} priority={task.priority} key={index}/>
    )
  }

  addNewToDo = newToDo => {
    this.setState({
      tasks: [...this.state.tasks, newToDo]
    })
  }

  render(){
    return(
      <div>
        <ToDoForm makeNewTask={this.addNewToDo}/>
        <div className="task-list">
          <ul>{this.showAllTasks()}</ul>
        </div>
      </div>
    )
  }
}
