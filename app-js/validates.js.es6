// VALIDACOES
document.addEventListener("turbolinks:load", function() {
//formBudgetValidate()
})

function formBudgetValidatesss(){
    document.addEventListener("turbolinks:load", function() {
    const intputElements = document.getElementsByTagName("INPUT");
    for (var i = 0; i < intputElements.length; i++) {
        intputElements[i].oninvalid = function (e) {
            e.target.setCustomValidity("");
            if (!e.target.validity.valid) {
                if (e.target.name == "name") {
                    e.target.setCustomValidity("Preencha com seu nome.");
                }
                else if(e.target.name == "email"){
                    e.target.setCustomValidity("Preencha com seu E-mail.");
                }
                else if(e.target.name == "phone"){
                    e.target.setCustomValidity("Preencha com seu telefone.");
                }
                else if(e.target.name == "kind_event"){
                      e.target.setCustomValidity("Preencha o tipo do evento.");
                }
                else if(e.target.name == "date_event"){
                      e.target.setCustomValidity("Preencha a data do evento.");
                }
                else if(e.target.name == "invited_number"){
                      e.target.setCustomValidity("Preencha a estimativa de convidados.");
                }

              }
          };
        }


})

}
