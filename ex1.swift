    print("Hello World !")
print()

for i in 0..<12 {
    if ( i == 0 || i == 11 ){
        for i in 0..<15 {
            print("*", terminator:"")
        }
        print()
    }
    else {
        for j in 0..<15 {
            if ( j == 0 || j == 14){
                print("*",terminator:"")
            }
            else{
                print(" ",terminator:"")
            }
        }
        print()
    }
}

print()

var arrs = [1,2,3,4]
print(arrs)
arrs.append(10)
arrs.insert(20, at: 3)
print(arrs)

print()

var dic : Dictionary<String, Any> = ["name" : "Son" , "age" : 18 , "address" : "Hanoi" , "phone" : "0971034608" ]
let ten = dic["name"]
if let ten = ten {
    print(ten)
}

print()

var dicArray = [Dictionary<String, Any>]()
var dic2 : Dictionary<String, Any> = ["name" : "Vu" , "age" : 19 , "address" : "Hanoi" , "phone" : "0971034608" ]
var dic3 : Dictionary<String, Any> = ["name" : "Hong" , "age" : 16 , "address" : "Hanoi" , "phone" : "0971034608" ]
var dic4 : Dictionary<String, Any> = ["name" : "CSDN" , "age" : 14 , "address" : "Hanoi" , "phone" : "0971034608" ]
dicArray.append(dic)
dicArray.append(dic2)
dicArray.append(dic3)
dicArray.append(dic4)


/*
for (index ,dicarr) in dicArray.enumerated() {
    for (indexs , dicarrs) in dicArray.enumerated() {
        if (dicarrs["age"] as! Int) > (dicarr["age"] as! Int) {
            var temp = dicArray[index]
            dicArray[index] = dicArray[indexs]
            dicArray[indexs] = temp
        }
    }
}
*/

dicArray.sort(by: {($0["age"] as! Int ) < ($1["age"] as! Int)})

for member in dicArray{
    print(member["name"]!)
}
