#language: pt
#encode: UTF-8

@inicio
Funcionalidade: Realizar os testes de primeiro contato com do usuario, relacionado a arvore de inicio.

@inicio_1
Cenario: validar o cenario de selecionar parcerias, receber o email de contato com sucesso

        Dado que entrei no chatbot
        Quando seleciono a opcao 'Parcerias'
        Entao valido apresentar um email de contato


@inicio_2
Cenario: validar a transferencia para cadastro de usuario, ao selecionar a opcao sobre o meu negocio 

        Dado que entrei no chatbot
        E seleciono a opcao 'Sobre meu negócio'
        Quando seleciono a opcao de 'Cadastrar minha empresa' na pergunta o que deseja fazer
        Entao valido que fui direcionado para o fluxo de cadastro do usuario 

@inicio_3
Cenario: validar a transferencia para outra voluntaria, ao selecionar a opcao ajuda para comprar 

        Dado que entrei no chatbot
        E seleciono a opcao 'Ajuda para comprar'
        Quando seleciono a opcao 'Não, obrigada' na pergunta Tudo bem
        Entao valido que fui direcionado para o fluxo de agradecimento pelo contato 

@inicio_4
Cenario: validar a transferencia para tirar duvidas, ao selecionar a opcao sobre o meu negocio

        Dado que entrei no chatbot
        E seleciono a opcao 'Sobre meu negócio'
        Quando seleciono a opcao 'Tirar dúvidas' na pergunta o que deseja fazer
        Entao Entao valido que fui direcionado para o fluxo de qual sua duvida

@inicio_5
Cenario: validar a transferencia para outra voluntaria, ao selecionar a opcao ajuda para fazer compras 

        Dado que entrei no chatbot
        E seleciono a opcao 'Ajuda para comprar'
        Quando seleciono a opcao 'Vamos lá!' na pergunta ok Tudo bem
        Entao valido que fui direcionado para uma página inexistente