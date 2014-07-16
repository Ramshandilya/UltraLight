// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

var contacts: Array<String> = Array()

let names = ["Orange", "Pineapple", "Mango", "Avocado"]
let numbers = ["9863653345", "9884623456", "9600182834", "8945403965"]

for index in 0..4 {
    contacts.append(names[index])
}

println("Contacts : \(contacts)")