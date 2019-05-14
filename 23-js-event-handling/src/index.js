document.addEventListener("DOMContentLoaded", function(){
  let commentForm = document.getElementById("comment-form");
  commentForm.addEventListener("submit", addComment)

  let heliParent = document.getElementById("helicopter-parent");
  heliParent.addEventListener("click", function(){
    if (event.target.dataset.name === "alert"){
      alert("clicked the button!")
    } else if (event.target.dataset.name === "log"){
      console.log("I'm a log!")
    } else if (event.target.dataset.name === "error") {
      console.log("I AM ERROR")
    }
  })
})

function addComment(){
  event.preventDefault();
  let textField = document.getElementById("new-comment");
  let newComment = textField.value
  let commentContainer = document.getElementById("comments-container");
  let commentTag = document.createElement("p");
  commentTag.textContent = newComment
  commentContainer.appendChild(commentTag)
}
