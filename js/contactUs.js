import { Contact } from "./class/contactUs.js";
const contact = new Contact();

const submitBtn = document.querySelector('#contacts-submit')

//add a event listener for form submit button 
submitBtn.addEventListener('click',function(event) {
    event.preventDefault();

    //get inputs to a variable
    const firstname = document.querySelector('#exampleInputFirstName')
    const lastname = document.querySelector('#exampleInputLastName')
    const email = document.querySelector('#exampleInputEmail1')
    const company = document.querySelector('#exampleInputCompany')
    const country = document.querySelector('#C_Country')
    const phone = document.querySelector('#C_BusPhone')
    const message = document.querySelector('#Comments')

    //Do submit
    contact.formSubmit(firstname.value,lastname.value,email.value,company.value,country.value,phone.value,message.value).then(json => {
        console.log(json)
      }).catch(error => {
        alert(error)
      })
})
