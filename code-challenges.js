// ASSESSMENT 5: JavaScript Coding Practical Questions

// --------------------1) Create a function that takes in a string and returns a coded message. The coded message converts 'a' to 4, 'e' to 3, 'i' to 1, and 'o' to 0.

var secretCodeWord1 = "lackadaisical"
// Expected output: "l4ck4d41s1c4l"
var secretCodeWord2 = "gobbledygook"
// Expected output: "g0bbl3dyg00k"

const coding = (array) => {
// I don't really need to define a new variable and I can make my code slightly shorter
let coded = array.split("").map( value => {
    if (value == "a" ) {
        return "4" 
    } if (value == "e") {
        return "3" 
    } if (value == "o") {
        return "0"
    } if (value == "i") {
        return "1"
    } else {
    return value
    } 
    })
    return coded.join('')
}

console.log("1.1", coding(secretCodeWord1))
console.log("1.2", coding(secretCodeWord2))


// --------------------2) Create a function that takes in an array and returns all the words that contain the letter a.

var arrayOfWords = ["Apple", "Banana", "Plum", "Cherry", "Kiwi", "Peach"]
// Expected output: "Apple" "Banana" "Peach"

const onlyA = (array) => {
//  I need to filter out  some values so filter()
    return array.filter( value => {
// Apple si capitalized so I need to pass a .toLowerCase()
    return value.toLowerCase().includes("a")
    }) 
}

console.log("2.1", onlyA(arrayOfWords))



// --------------------3) Create a function that takes in an array of 5 numbers and determines whether or not the array is a “full house”. A full house is exactly one pair and one three of a kind.

var hand1 = [5, 5, 5, 3, 3]
// Expected output: true
var hand2 = [5, 5, 3, 3, 4]
// Expected output: false
var hand3 = [5, 5, 5, 5, 4]
// Expected output: false
var hand4 = [3, 5, 3, 5, 3]
// Expected output: true

const fullCheck = (array) => {
 orderArr = array.sort((a,b) => (a-b))
if (orderArr[0] === orderArr[1] && orderArr[0] === orderArr[2] && orderArr[3] === orderArr[4]) {
    return true
  } else if (orderArr[0] === orderArr[1] && orderArr[2] === orderArr[3] && orderArr[2] === orderArr[4]) {
    return true
  } 
    else return false
}



console.log("3.1: true", fullCheck(hand1))
console.log("3.2: false", fullCheck(hand2))
console.log("3.3: false", fullCheck(hand3))
console.log("3.4: true", fullCheck(hand4))


// STRETCH:
var hand5 = ["K", 5, "K", 5, "K"]
// Expected output: true
var hand6 = ["A", "Q", "A", 5, 3]
// Expected output: false

// for the stretch, I should probably add more If/else statement to compare not only numbers but also strings using the same principle of comparing each index value of the array


console.log("3.5: false", fullCheck(hand5))
console.log("3.6: true", fullCheck(hand6))