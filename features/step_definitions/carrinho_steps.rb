Dado("que eu acesso o portal de comércio") do
  visit "https://www.netshoes.com.br/"
end

Dado("faço uma pesquisa por produto") do
  find("input[id='search-input']").set "nike"
  click_button "Buscar"
end

Dado("visualizo resultado da pesquisa") do
  expect(page).to have_css ".search-query"
end

Quando("seleciono um produto existente na listagem de produtos") do
  first("a[title='Tênis Nike Revolution 5 Masculino']").click
  click_on "42"
  click_button "Comprar"
end

Então("devo enviar esse produto ao carrinho de compras") do
  expect(page).to have_css ".product-item"
end

Quando("visualizo esse produto no meu carrinho") do
  expect(page).to have_css ".product-item"
end

Quando("removo esse produto do meu carrinho") do
  find("i[role='button']").click
end

Então("devo visualizar a mensagem {string}") do |string|
  expect(page).to have_css ".empty-page__title"
end

Então("deve ser possível marcar esse produto para Presente") do
  find("input[type='checkbox']").click

  expect(page).to have_css ".gift-wrapping__price"
end

Então("deve ser possível aumentar a quantidade do produto") do
  find("button[aria-label='aumentar a quantidade']").click
  find("button[aria-label='diminuir a quantidade']").click
end

Então("deve ser possível pesquisar o cep para entrega") do
  find("input[id='cep']").set "84073170"
  click_button "Calcular"
  expect(page).to have_css ".summary__item-text--positive"
  sleep 5
end
