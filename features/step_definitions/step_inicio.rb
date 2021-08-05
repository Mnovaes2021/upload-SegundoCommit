  Dado('que entrei no chatbot') do  
  visit(DATA[$ambiente]['site'])
  Comum.new.texto_existe('Olá! 👋🏻 Sou a a Ana Paula, voluntária virtual do Ajude o Pequeno.')
  end
  
  Quando('seleciono a opcao {string}') do |opcao|
    Comum.new.titulo_existe('Para poder te ajudar, me diz sobre o que você deseja falar:')
    Comum.new.selecionar_opcao(opcao)
    Comum.new.screenshots("seleciona_opcao_#{opcao}")
  end
  
  Entao('valido apresentar um email de contato') do
    Comum.new.texto_existe('Fico feliz que você quer nos ajudar! Você pode entrar em contato conosco pelo e-mail cadastro@ajudeopequeno.com.br')
    Comum.new.screenshots("email de contato")  
  end

  Quando('seleciono a opcao de {string} na pergunta o que deseja fazer') do |opcao|
    Comum.new.titulo_existe('Certo, e o que você quer fazer?')
    Comum.new.selecionar_opcao(opcao)
    Comum.new.screenshots("opcao_#{opcao}_deseja_fazer")
  end
  
  Entao('valido que fui direcionado para o fluxo de cadastro do usuario') do
    Comum.new.texto_existe('Para iniciar o seu cadastro me diga, qual é o seu nome completo?')
    Comum.new.screenshots("fluxo_cadastro_usuario") 
  end

  Quando('seleciono a opcao {string} na pergunta Tudo bem') do |opcao|
    Comum.new.texto_existe('Tudo bem! Vou te enviar para outra voluntária, a Alê, que vai ajudar com as compras.')
    Comum.new.selecionar_opcao(opcao)
    Comum.new.screenshots("opcao_#{opcao}_tudo_bem")
  end  
  
  Entao('valido que fui direcionado para o fluxo de agradecimento pelo contato') do
    Comum.new.texto_existe('Sem problemas! Nós do Ajude o Pequeno agradecemos o contato! 💙 Se precisar de mais alguma insformação basta enviar uma nova mensagem.')
    Comum.new.screenshots("fluxo_agradecimento_contato")
  end

  Quando('seleciono a opcao {string} na pergunta o que deseja fazer') do |opcao|
    Comum.new.titulo_existe('Certo, e o que você quer fazer?')
    Comum.new.selecionar_opcao(opcao)
    Comum.new.screenshots("opcao_#{opcao}_deseja_fazer")
  end
  
  Entao('Entao valido que fui direcionado para o fluxo de qual sua duvida') do
    Comum.new.texto_existe('Qual a sua dúvida?')
    Comum.new.screenshots("fluxo_tirar_duvidas")
  end

  Quando('seleciono a opcao {string} na pergunta ok Tudo bem') do |opcao|
    Comum.new.texto_existe('Tudo bem! Vou te enviar para outra voluntária, a Alê, que vai ajudar com as compras.')
    Comum.new.selecionar_opcao(opcao)
    Comum.new.screenshots("opcao_#{opcao}_tudo_bem")
  end  
  
  Entao('valido que fui direcionado para uma página inexistente') do
    Comum.new.texto_existe()
    Comum.new.screenshots("fluxo_marketplace")
  end