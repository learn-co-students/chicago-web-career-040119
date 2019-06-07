# Best Practices

## Components
* Single responsibility
* Clearly defined purpose and variables
* Should interact with other Components
* Have many small Components: Makes bugs easier to track, clearly defined responsibility, if something breaks it only breaks that component (hopefully), easier to read
* Render should return JSX - don't use logic IN the render function
* Export responsibly, based on whether it's a container or presentational
* Don't overpack State

## Syntax/Convention
* Destructure your props
- const {firstName, lastName, address, email } = props
* Spread operator is your friend
```
      const hogCopy = [...this.state.hogs]
      this.setState({
        hogs: hogCopy.map(hog => hog.name = "")
      })
```
*  Rest operator is also your friend
* Name your props well, and be consistent

## Gotchas
* Components do need ThisStructure as names
* Comments in JSX
- NOT // Comment
```
{/* Comment */}
```
* setState is asynchronous, you can pass second argument which is run after state is updated


## Performance
* Two buckets of performance
* TTI - Time To Interactive, optimizing how quickly the page loads
* Can also optimize how quickly the page updates 
