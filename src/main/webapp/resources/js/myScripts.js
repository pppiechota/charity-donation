document.addEventListener("DOMContentLoaded", function () {

    // Remove Spring-generated hidden checkboxes
    let checkboxes = document.querySelectorAll(".form-group--checkbox input[type='hidden']");
    checkboxes.forEach(function (e) {
        e.remove()
    });

    let form = document.querySelector("form#donation");
    let summaryDiv = form.querySelector("div[data-step='5']");
    let summaryBtn = form.querySelector("div[data-step='4'] button.next-step");

    // Show donation summary
    summaryBtn.addEventListener("click", function (e) {
        let summaryQuantity = summaryDiv.querySelector('span.summary-quantity');
        let summaryCategory = summaryDiv.querySelector('span.summary-category');
        let summaryInstitution = summaryDiv.querySelector('span.summary-institution');

        summaryQuantity.innerHTML = form.querySelector("div[data-step='2'] input").value;

        form.querySelectorAll("div[data-step='1'] div.form-group--checkbox label input")
            .forEach(function (item) {
                if (item.checked) {
                    let text = item.parentElement.querySelector("span.description").innerText;
                    summaryCategory.innerText = summaryCategory.innerText + text + " ";
                }
            });

        form.querySelectorAll("div[data-step='3'] div.form-group--checkbox label input")
            .forEach(function (item) {
                if (item.checked) {
                    summaryInstitution.innerText
                        = item.parentElement.querySelector("span.description div.title").innerText;
                }
            });

        let address = form.querySelectorAll("div[data-step='4'] input");

        summaryDiv.querySelector('#street').innerHTML = address[0].value;
        summaryDiv.querySelector('#city').innerHTML = address[1].value;
        summaryDiv.querySelector('#zipcode').innerHTML = address[2].value;
        summaryDiv.querySelector('#pickup-date').innerHTML = address[3].value;
        summaryDiv.querySelector('#pickup-time').innerHTML = address[4].value;
        summaryDiv.querySelector('#pickup-comment').innerHTML
            = form.querySelector("div[data-step='4'] textarea").value;
    })
});