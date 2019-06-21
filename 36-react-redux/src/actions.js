export function upvote(id){
  return({
    type: "UPVOTE",
    payload: {
      id: id
    }
  })
}

export function updateSearch(query){
  return({
    type: "UPDATE_SEARCH",
    payload: {
      query: query
    }
  })
}
