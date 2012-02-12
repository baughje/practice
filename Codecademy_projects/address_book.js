/*
This is the final project for Objects project from Codecademy
*/

var bob = {
    firstName: "Bob",
    lastName: "Jones",
    
    phoneNumber: "(650) 777 - 7777",
    email: "bob.jones@example.com"
};

var mary = {
    firstName: "Mary",
    lastName: "Johnson",
    
    phoneNumber: "(650) 888 - 8888",
    email: "mary.johnson@example.com"
};

var contacts = [bob, mary];

function printPerson (person) {
    console.log(person.firstName + " " + person.lastName);
}

var list = function() {
    var i = contacts.length;
    for (i = 0; i < contacts.length; i++) {
    printPerson(contacts[i]);
    }
};

var search = function(lastName) {
   var i = contacts.length;
   for (i = 0; i < contacts.length; i++) {
       if (lastName === contacts[i].lastName) {
           printPerson(contacts[i]);
       }
    }
};

var add = function(firstName, lastName, email, telephone) {
    var newContact = {
        firstName: firstName,
        lastName: lastName,
        email: email,
        telephone: telephone
        };
        contacts[contacts.length]= newContact
};

list();
search("Jones");
var firstName = prompt("First Name:");
var lastName = prompt("Last Name:");
var email = prompt("Email:");
var telephone = prompt("Phone:");
add(firstName,lastName,email,telephone);