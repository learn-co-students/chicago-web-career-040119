// Guessing Game: What does the below code do?

fetch("http://localhost:3000/books")
  .then(res => res.json())
  .then(books => {
    const characterCount = {}
    let longBooks = books.filter(book => book.title.length >= 4 )
    let titleChars = longBooks.map(book => book.title.split(""))
    let lowerCaseChars = flattenAndLowerCase(titleChars)
    console.log(lowerCaseChars.reduce(countChars, {}))


    // books.forEach(book => {
    //   const title = book.title
    //   if (title.length >= 4) {
    //     let chars = title.split("")
    //     chars.forEach(char => {
    //       let symbol = char.toLowerCase()
    //       if (characterCount.hasOwnProperty(symbol)) {
    //         characterCount[symbol] += 1
    //       } else {
    //         characterCount[symbol] = 1
    //       }
    //     })
    //   }
    // })
    // console.log(characterCount)
  })

const countChars = (allChars, char) => {
  if (char in allChars) {
    allChars[char]++
  } else {
    allChars[char] = 1
  }
  return allChars
}

function flattenAndLowerCase(array){
  let flatArray = array.flat()
  let lowerArray = flatArray.map(char => char.toLowerCase())
  return lowerArray
}

















// If you guessed: Counts the total number of characters in book titles where all book titles are longer than 4 characters, you're right!

// We can make this easier to read - let's put our JS knowledge into action to signal our intent.

// Finished refactor below
























// fetch("http://localhost:3000/books")
//   .then(res => res.json())
//   .then(books => books.map(book => book.title ))
//   .then(titles => titles.filter(title => title.length >= 4))
//   .then(filteredTitles => filteredTitles.reduce(countCharacters, {}))
//   .then(console.log)
//
//
// const countCharacters = (characterCount, title) => {
//   let chars =[...title] // destrucure the string instead of using split
//   chars.forEach(char => {
//     let symbol = char.toLowerCase()
//     if (characterCount.hasOwnProperty(symbol)) {
//       characterCount[symbol] += 1
//     } else {
//       characterCount[symbol] = 1
//     }
//   })
//   return characterCount
// }
