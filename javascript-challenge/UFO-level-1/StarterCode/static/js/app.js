// from data.js
var tableData = data;

// YOUR CODE HERE!
let tbody = d3.select("tbody");

function createTable(data) {

    tbody.html("");

    data.forEach((dataRow) => {
        let tableRow = tbody.append("tr");

        Object.values(dataRow).forEach((val) => {
            let cell = tableRow.append('td');
            cell.text(val);
        });
    });
}
createTable(tableData);