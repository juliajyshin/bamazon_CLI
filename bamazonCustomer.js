var mysql = require("mysql");
var inquirer = require('inquirer');

var connection = mysql.createConnection({
  host: "localhost",
  port: 8889,
  user: "root",
  password: "root",
  database: "bamazon"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId + "\n");


connection.query("SELECT * FROM products", function(err, res) {
    if (err) throw err;
    console.log(res);
    connection.end();
  });
});

inquirer.prompt([
    {
        name: "idNumber",
        type: "input",
        message: "What is the ID # of the product you would like to buy?"
    },
    {
        name: "howMany",
        type: "input",
        message: "How many units of the product would you like to purchase?"
    }
]).then(answers => {
    
    /// [ ] #7 once the customer has placed the order, your application should check if your store has enough of the product to meet the customers request
    /// [ ] #7-1 if not, the app should love a phrase like 'insufficient quantitiy! and then prevent the order from going through
    /// [ ] #8 However, if your store does have enough of the product, you shold fulfill the customers order
    // *** this means updating ths SQL database to reflect the remaining quantity
    // *** once the update goes through, show the custmer the total cost of thier purchase
    
    // var newGuy = new Programmer(answers.name);
    // newGuy.printInfo();
});
