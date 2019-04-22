Sinatra is a great tool because it makes it easy for us to write RESTful MVC code. But what does RESTful mean? And what's MVC?

### REST:

REpresentational
State
Transfer

REST is what we call a certain set of conventions around naming and organizing things in our web apps' code. The conventions settle common "headscratchers" that pop up when we're trying to Represent the State of our data even as it's Transferring back and forth in our requests and responses.

Since requests and responses are stateless (they don't remember what's happened before), it's helpful to have one set of ways to represent state within them, otherwise we'd risk getting confused by each others' code and the decisions they made.

### MVC:

Model
Hold / represent data
Might be expressed in the form of objects
Relationships between data

View
What the user sees / interface
Get a look at my info (data)
Interact with my info (data)

Controller
"business logic"
When a request is made, where we find out "what to do" with it
- Receive a request
- Determine what data (model) the req. is about
- Interact with the model to get the data
- Decide what interface to use to present the data
- Tell the view what to display to the user


## CHEAT SHEET! conventional REST actions (using books as example)

"Index" route (see all books)
get '/books'

"Show" route (view a single book)
get '/books/:id'

"New" route (form to create a book)
new '/books/new'

"Create" route (action of adding a book to the db)
post '/books'

"Edit" route (form to edit an existing book)
get '/books/:id/edit'

"Update" route (action of editing an existing book in db)
patch '/books/:id'

"Delete" route (remove book from db)
delete '/books/:id'
