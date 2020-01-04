
print("Enter a: ", terminator:"")
let a = Int(readLine()!)
print("Enter an operator(+-*/): ", terminator:"")
let oper = readLine()
print("Enter b: ", terminator:"")
let b = Int(readLine()!)

var c: Int?
switch oper {
case "+":
    c = a + b

    
default:
    print("Not a valid operator.")
    
}


