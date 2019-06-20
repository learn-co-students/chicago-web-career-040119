import artwork from "./artwork.js"

const defaultState = {
  paintings: artwork,
  searchInput: ""
}

export function rootReducer(state = defaultState, action){
  switch(action.type){
    case "UPVOTE":
      const newState = JSON.parse(JSON.stringify(state))
      const votedPaintingIndex = newState.paintings.findIndex(painting => painting.id === action.payload.id)
      newState.paintings[votedPaintingIndex].votes += 1
      return newState
    default:
      return state
  }
}
