const actions = [

    {
        type: "list",
        name: "actions",
        message: "What would you like to to?",
        choices: [
            "Add department",
            "Add role",
            "Add new employee",
            "View all departments",
            "View all roles",
            "View all employees",
            //"View employees by department",
            "Update employee role",
            "Exit"

        ]

    }
]



module.exports = { actions }