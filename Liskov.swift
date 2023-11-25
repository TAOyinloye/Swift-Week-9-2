class LiskovPhraseMaker {
    
    //class properties
    private var type = "T"
    private var subtype = "S"
    
    func modifiedLiskovPhrase() -> String{
        
        return "If \(subtype) is a subtype of \(type), then objects of type \(type) may be replaced with objects of type \(subtype) (i.e., objects of type \(subtype) may substitute objects of type \(type)) without altering any of the desirable properties of that program (correctness, task performed, etc.)"
    }
    
    func setTypeName(typeName:String, subtypeName:String){
        self.type = typeName
        self.subtype = subtypeName
    }
}