import UIKit


//1.     დაწერეთ ფუნქცია, რომელსაც გადაეცემა ტექსტი  და აბრუნებს პალინდრომია თუ არა. (პალინდრომი არის ტექსტი რომელიც ერთნაირად იკითხება ორივე მხრიდან). Boolean isPalindrome(String text);

func textIsPalindrome(text: String) -> Bool {
    if text == String(text.reversed()) {
        return true
    } else {
        return false
    }
}

var text1 = "abcdcba"
print(textIsPalindrome(text: text1))

//2.     გვაქვს 1,5,10,20 და 50 თეთრიანი მონეტები. დაწერეთ ფუნქცია, რომელსაც გადაეცემა თანხა (თეთრებში) და აბრუნებს მონეტების მინიმალურ რაოდენობას, რომლითაც შეგვიძლია ეს თანხა დავახურდაოთ. Int minSplit(Int amount);

func minSplit(amount: Int) -> Int {
    var count = 0
    var number = amount

     while number - 50 >= 0  {
        count += 1
         number -= 50
     }
    while number - 20 >= 0 {
        count += 1
        number -= 20
    }
    while number - 10 >= 0  {
        count += 1
        number -= 10
    }
    while number - 5 >= 0{
        count += 1
        number -= 5
    }
    while number - 1 >= 0 {
        count += 1
        number -= 1
    }
    return count
}
print(minSplit(amount: 87))

//3.     მოცემულია მასივი, რომელიც შედგება მთელი რიცხვებისგან. დაწერეთ ფუნქცია რომელსაც გადაეცემა ეს მასივი და აბრუნებს მინიმალურ მთელ რიცხვს, რომელიც 0-ზე მეტია და ამ მასივში არ შედის. Int notContains(Int[] array);

let arraytest = [3,  50, 5, 1, 189, 2, 0, 100]

func notContains(array:[Int]) -> Int {
    var index = 0
    var num = 0
    let newarray = array.sorted()

    if newarray.contains(1) {
        for _ in  newarray {
            if newarray[index] + 1 == newarray[index + 1]{
                index += 1
            }
            else {
                num = newarray[index] + 1
            }
        }
    }else {
        num = 1
    }
    return num
}
print(notContains(array: arraytest))

//4.     მოცემულია String რომელიც შედგება „(„ და „)“ ელემენტებისგან. დაწერეთ ფუნქცია რომელიც აბრუნებს ფრჩხილები არის თუ არა მათემატიკურად სწორად დასმული. Boolean isProperly(String sequence); მაგ: (()()) სწორი მიმდევრობაა,  ())() არასწორია

func isProperly(sequence: String) -> Bool {
    var count = 0
    for i in sequence {
        if i == "(" {
            count += 1
        }
        if i == ")" {
            if count <= 0 {
                return false
            }else {
                count -= 1
            }
        }
    }
    return count == 0
}

isProperly(sequence: "())(")
isProperly(sequence: "(()())")
isProperly(sequence: ")())")
isProperly(sequence: "())()")



//5.     გვაქვს n სართულიანი კიბე, ერთ მოქმედებაში შეგვიძლია ავიდეთ 1 ან 2 საფეხურით. დაწერეთ ფუნქცია რომელიც დაითვლის n სართულზე ასვლის ვარიანტების რაოდენობას. Int countVariants(Int stearsCount);


func countVariants(stearsCount: Int) -> Int {
    if stearsCount == 1 {
        return 1;
    }
    if stearsCount == 2  {
        return 2;
    }
    return countVariants(stearsCount:stearsCount - 1) + countVariants(stearsCount:stearsCount - 2)
}
countVariants(stearsCount: 9)



//6.     დაწერეთ საკუთარი მონაცემთა სტრუქტურა, რომელიც საშუალებას მოგვცემს O(1) დროში წავშალოთ ელემენტი.

struct Stack {
    private var array: [String] = []

    mutating func push(_ element: String) {
        array.append(element)
    }

    mutating func pop() -> String? {
        return array.popLast()
    }
}

var stack = Stack()
stack.push("a")
stack.push("b")
stack.push("c")
stack.pop()
print(stack)
