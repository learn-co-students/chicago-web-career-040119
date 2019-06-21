import artwork from "./artwork.js"

const defaultState = {
  paintings: artwork,
  searchInput: ""
}

export function rootReducer(state = defaultState, action){
  let newState
  switch(action.type){
    case "UPVOTE":
      newState = JSON.parse(JSON.stringify(state))
      const votedPaintingIndex = newState.paintings.findIndex(painting => painting.id === action.payload.id)
      newState.paintings[votedPaintingIndex].votes += 1
      return newState
    case "UPDATE_SEARCH":
      newState = JSON.parse(JSON.stringify(state))
      newState.searchInput = action.payload.query
      return newState
    default:
      return state
  }
}
