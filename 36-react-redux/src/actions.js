export function upvote(id){
  return({
    type: "UPVOTE",
    payload: {
      id: id
    }
  })
}
