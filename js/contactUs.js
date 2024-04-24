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
        const div = document.querySelector('.col-md-8')
        div.style.display = "none"


        const newDiv = document.querySelector(".row")
        newDiv.style.display = 'flex';
        newDiv.style.justifyContent = 'center';
        newDiv.style.alignItems = 'center';

        //call thankyou function
        newDiv.appendChild(thankForContact());

      }).catch(error => {
        alert(error)
      })
})

//function to display thankyou
function thankForContact(){
  //create div
  let div1 = document.createElement("div")
  div1.classList = "jumbotron text-center"

  //create heading
  let heading = document.createElement("h1")
  heading.classList = "display-3"
  heading.innerHTML = "Thank You! For contacting us."
  div1.appendChild(heading)

  //create description
  let description = document.createElement("p")
  description.classList = "lead"
  description.innerHTML = "Please check your email for further updates."
  div1.appendChild(description)

  //create rule
  let rule = document.createElement("hr")
  div1.appendChild(rule)

  //trouble statement
  let description2 = document.createElement("p")
  description2.innerHTML = "Having trouble?"
  let anchor = document.createElement('a')
  anchor.href = '../contact.html'
  anchor.innerHTML = 'Contact us'
  description2.appendChild(anchor)
  div1.appendChild(description2)

  //direct to home page
  let description3 = document.createElement("p")
  description3.classList = "lead"
  let anchor2 = document.createElement('a')
  anchor2.classList = 'btn btn-primary btn-lg'
  anchor2.href = '../Front.html'
  anchor2.role = "button"
  anchor2.innerHTML = 'Continue to homepage'
  description3.appendChild(anchor2)
  div1.appendChild(description3)

  return div1
}