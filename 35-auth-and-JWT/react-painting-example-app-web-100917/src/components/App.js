import React from 'react';
import Navbar from './Navbar';
import PaintingContainer from './PaintingContainer';
import About from './About';
import Login from './Login';
import { Route, Switch } from 'react-router-dom';
import api from "../services/api"



class App extends React.Component {
  state = {
    auth: {
      currentUser: ""
    }
  }

  componentDidMount(){
    const token = localStorage.getItem("token")

    if (token) {
      api.auth.getCurrentUser()
      .then(res => this.setState({
        auth: {
          currentUser: res
        }
      }))
    }
  }

  logout = () => {
    localStorage.removeItem("token")
    this.setState({
      auth: {
        currentUser: {}
      }
    })
  }

  handleLogin = (username, password) => {
    api.auth.login(username, password)
    .then(res => {
      localStorage.setItem("token",res.jwt)
      this.setState({
        auth: {
          currentUser: res.user
        }
      })
    })


  }
  render(){
    return (
      <div className="App">
        <Navbar
          icon="paint brush"
          title="Painterest"
          description="web-040119 App"
          currentUser={this.state.auth.currentUser}
          logout = {this.logout}
        />
        <div id="content" className="ui container">
          {/* <PaintingNew /> */}
          <Switch>
            <Route path="/login" render={routerProps =>  <Login handleLogin={this.handleLogin} history={routerProps.history}  />} />

            <Route path="/paintings" component={PaintingContainer} />
            <Route path="/" component={About} />
          </Switch>
          {/* <PaintingContainer /> */}
          {/* <Login /> */}
        </div>
      </div>
    );
  }

};

export default App;
