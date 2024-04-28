import { Contact } from "./class/contactUs.js";
const contact = new Contact();

const submitBtn = document.querySelector('#btn-submit')

//add a event listener for form submit button 
submitBtn.addEventListener('click',function(event) {
    event.preventDefault();

    //get inputs to a variable
    const fullname = document.querySelector('#fullname')
    const email = document.querySelector('#email')
    const phone = document.querySelector('#phone')
    const subject = document.querySelector('#subject')
    const message = document.querySelector('#message')

    //Do submit
    contact.formSubmit(fullname.value,email.value,phone.value,subject.value,message.value).then(json => {
        const div = document.querySelector('#main-container')
        div.style.display = "none"


        const newDiv = document.querySelector("#wrapper-content")
        newDiv.style.display = 'flex';
        newDiv.style.justifyContent = 'center';
        newDiv.style.alignItems = 'center';
        newDiv.style.padding = '5%';

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