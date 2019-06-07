import React from 'react'

const Filter = props => {
  return(
    <header>
      <h1>Welcome to Artsy Fartsy</h1>
      <p>Type in the name of the art you wanna fart</p>
      <input value={props.search} onChange={props.getSearchInput}/>
    </header>
  )
}

export default Filter
