Dado("que eu acesse a página da VV Test") do
    visit 'https://bit.ly/3jOMrR9'
end

E ("acesse o menu {string}") do |pesquisaqa|
    click_link(href: "http://www.lourencodemonaco.com.br/vvtest/pesquisa/")
end

Quando("eu preencher todos os campos obrigatórios") do
    
    #form_candidato
    fill_in 'fname', with: 'Fabio'
    fill_in 'lname', with: 'Julio teodosio'
    fill_in 'email', with: 'fabiojulioteo@gmail.com'
    fill_in 'nf-field-8', with: 'fabiojulioteo@gmail.com'
    fill_in 'phone', with: '11993117897'   
    find(id:'nf-label-class-field-10-0').click
    select 'mais de 5 anos', from: 'nf-field-11'
    select 'Desafio', from: 'nf-field-12'
    find(id:'nf-label-class-field-13-3').click
    fill_in 'nf-field-14', with: 'Java, Ruby e C#'
    fill_in 'nf-field-15', with: 'Crescer profissionalmente na área de Testes e Qualidade'
    click_button 'Enviar'
end
  

Então("deve ser direcionado para uma página de sucesso") do
    sleep 5
    page.has_css?('div', text: 'Your form has been successfully submitted.')
end