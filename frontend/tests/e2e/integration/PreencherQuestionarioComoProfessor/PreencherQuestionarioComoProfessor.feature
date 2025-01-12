#language: pt
Funcionalidade: Preencher questionário de avaliação como docente a fim de submeter dados de avaliação da minha turma

Contexto: Logado como professor

Cenário: Preencher questionário de avaliação com dados válidos
Dado que o usuário está na tela de preencher questionário de avaliação de turma
E que ele selecionou uma de suas turmas
Quando ele tiver terminado de selecionar todas as opções sobre o ensino da turma
Se tiver selecionado ao menos uma opção de metodologia avaliação
E tiver selecionado ao menos uma opção de metodologia de aferição de frequência
Quando ele clicar no botão "Finalizar Avaliação"
Então Devem ser enviados os dados do formulário

Cenário: Preencher questionário de avaliação com dados inválidos
Dado que o usuário está na tela de questionário de avaliação de turma
E que ele selecionou uma de suas turmas
Quando ele tiver terminado de selecionar todas as opções sobre o ensino da turma
Se tiver selecionado ao menos uma opção para metodologia de avaliação
Mas não tiver selecionado nenhuma opção para metodologia de avaliação de frequência
Quando ele clicar no botão "Finalizar Avaliação"
Então o sistema deve apresentar mensagem "Campos não preenchidos"

Cenario: Tentar avaliar mais de três turmas
Dado que eu avaliei três turmas
Quando acesso tela de questionário de avaliação
Então o sistema deve apresentar a mensagem "Número máximo de turmas avaliado"

Cenario: Tentar avaliar turma de qual não é docente
Dado que o usuário está na tela de preencher questionário de avaliação de turma
E ele abriu a caixa de seleção para escolher a turma a ser avaliada
Se ele procurar alguma turma de qual não é docente
Então ele não conseguirá encontrar essa turma
