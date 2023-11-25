func reverse(string: String) -> String{
    
    //option using standard library
    //return String(Array(string.characters).reversed())
    
    var reversed = String()

    let characters = Array(string.characters)

    for i in stride(from: (characters.count-1), through: 0, by: -1) {
        reversed += String(characters[i])
    }
    return reversed
}

func reverse(words : String) -> String {
    
    //array for words
    var wordsArray  = [String]()
    //populate first item
    wordsArray.append(String())
    
    var characters = Array(words.characters)
    var wordNo = 0
    
    for i in stride(from: 0, to: characters.count, by: 1){
        
        //check for space
        if characters[i] == " " {
            //if space append later chars to new word
            wordNo += 1
            wordsArray.append(String())
        }
        else{
            wordsArray[wordNo].append(characters[i])
        }
    }
    
    var reversedWords = String()
    for wordsIndex in stride(from: (wordsArray.count-1), through: 0, by: -1){
        
        reversedWords += wordsArray[wordsIndex]
        if wordsIndex != 0{
            reversedWords += " "
        }
        
    }
    
    return reversedWords
}


func reverseLettersIn(words :String) -> String {
    
    //reverse string then words (putting the words back the right way)
    return reverse(words:reverse(string:words))
}


print(reverse(string:"Reversed String"))
print(reverseLettersIn(words:"Reversed Letters"))
print(reverse(words:"Reversed Words"))