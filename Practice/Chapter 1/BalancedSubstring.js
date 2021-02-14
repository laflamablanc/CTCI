// A string is considered balanced when every letter in the string appears both in uppercase and lowercase
// For example, CATattac is balanced (a, c, t occur in both cases). Madam is not (a, d only appear in lowercase).
// Write a function that given a string returns the shortest balanced substring of that string.
// Can this be solved with a sliding window approach?
// Update:
// More examples
// "azABaabza" returns "ABaab"
// "TacoCat" returns -1 (not balanced)
// "AcZCbaBz" returns the entire string

// function balancedSubstring(string){

//     shortest = ""

//     let array = new Array(string.length).fill(false)

//     return array
// }

function balancedSubstring(string){
    letter_map = {}
    shortest = string + "a" 

    for (let i = 0; i <string.length-1; i++){
        letter_map[string[i]] = false
        for (let j = i+1; j<string.length; j++){
            let casePair = string[j].toUpperCase() == string[j] ? string[j].toLowerCase() : string[j].toUpperCase()
            let substring = string.substring(i,j+1)

            if (Object.keys(letter_map).includes(casePair)){
                letter_map[string[j]]=true
                letter_map[casePair] = true
            } else {
                letter_map[string[j]] = false
            }
            if ((!Object.values(letter_map).includes(false)) && substring.length < shortest.length){
                shortest = substring
            }
        }
        letter_map = {}
    }
    if (shortest === string + 'a'){
        return -1
    } else {
        return shortest
    }
}
string1 = 'azABaabza'
string2 = "TacoCat"

console.log(balancedSubstring(string1))
console.log(balancedSubstring(string2))