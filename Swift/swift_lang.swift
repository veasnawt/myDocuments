
var firstName = "Veasna"
var lastName = "Tep"
var gender = "Male"
var age = 20
print("Name:", firstName, lastName, "\nGender:",  gender, "\nAge:", age)
print("\n")

let a = 10

if a < 10 {
    print("a is less than 10.")
}else if a > 10 {
    print("a is greater than 10.")
}else {
    print("a is equal to 10.")
}

let chr = "c"

switch chr {
case "a":
    print("This is letter a.")
    break
case "b":
    print("This is letter b.")
    break  
default:
    print("This is fallback.")
}

for _ in 1...5 {
    print("hello")
}

var sum = 0
for counter in 1...5 {
    sum += counter
    print(sum)
}

var newCounter = 5
while newCounter > 0 {
    print("hello")
    newCounter -= 1
}

var counter2 = -5
repeat {
    print("hi")
    counter2 -= 1
}while counter2 > 0

var name = "Veasna"
func sayHello() {
    print("Hello", name + ".")
}

sayHello()

func aPlusB() -> Int {
    let a = 1
    let b = 2
    let c = a + b
    
    return c
}

let sum2 = aPlusB()
print(sum2)

func cMinusD(arg para: Int, arg2 para2: Int ) -> Int {
    let c = para
    let d = para2
    let e = c - d 
    
    return e
}

let sum3 = cMinusD(arg: 10, arg2: 7)
print(sum3)

print("Please enter your name: ", terminator:"")
let name2 = readLine()
print("Hello", name2! + "!")
