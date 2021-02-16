#language: pt

Funcionalidade: Adicionar produto ao carrinho
    Sendo um usuário do portal de comércio
    Quero escolher os meus produtos
    Para que eu possa visualizar o meu carrinho de compras


Cenário: Adicionar Produto
    Dado que eu acesso o portal de comércio
    E faço uma pesquisa por produto
    E visualizo resultado da pesquisa
    Quando seleciono um produto existente na listagem de produtos
    Então devo enviar esse produto ao carrinho de compras


Cenário: Remover produto do carrinho de compras
    Dado que eu acesso o portal de comércio
    E faço uma pesquisa por produto
    Quando seleciono um produto existente na listagem de produtos
    E visualizo esse produto no meu carrinho
    E removo esse produto do meu carrinho
    Então devo visualizar a mensagem "Seu carrinho está vazio"


Cenário: Selecionar para Presente
    Dado que eu acesso o portal de comércio
    E faço uma pesquisa por produto
    Quando seleciono um produto existente na listagem de produtos
    E visualizo esse produto no meu carrinho
    Então deve ser possível marcar esse produto para Presente


Cenário: Seleconar a quantidade de produtos
    Dado que eu acesso o portal de comércio
    E faço uma pesquisa por produto
    Quando seleciono um produto existente na listagem de produtos
    E visualizo esse produto no meu carrinho
    Então deve ser possível aumentar a quantidade do produto

@temp
Cenário: Simular frete e prazo de entrega
    Dado que eu acesso o portal de comércio
    E faço uma pesquisa por produto
    Quando seleciono um produto existente na listagem de produtos
    E visualizo esse produto no meu carrinho
    Então deve ser possível pesquisar o cep para entrega