> Dos dois diagramas da AP2 corrigidos em sala de aula, escolha 2 casos de uso e desenvolva as *users stories* e para cada *user story* faça 3 cenários de uso utilizando a técnica de BDD.
--------------------------------
**SENDO**  um usuário que oferece serviços de anúncio online.

**POSSO** manter assinantes, manter anúncios, manter tipos de anúncios.

**PARA QUE** tenha um cadastro dos clientes/anúncios e controles para cobranças.

Critérios de Aceite:
---
- Deve manter o telefone dos assinantes.
- Deve definir os tipo de anúncios.
- Valor é obrigatório e não pode ser 0.

Observações:
---
- Deve oferecer dois tipos de anúncio
- Os anúncios ficam disponíveis por 15 dias.


Cenário 1: Consultar anúncios ativos
---
**DADO QUE** quero consultar os anúncios ativos

**QUANDO** tenha uma lista com todos os anúncios contratados

**ENTÃO** filtrar por categoria

**E**  consultar os anúncios ativos.


Cenário 2: Consultar anúncios expirados
---
**DADO QUE** quero consultar os anúncios expirados

**QUANDO** tenha uma lista com todos os anúncios contratados

**ENTÃO** filtrar por categoria

**E** consultar os anúncios expirados.


Cenário 3: Cadastrar um novo cliente
---
**DADO QUE** quero cadastrar um novo cliente

**QUANDO** é contratado um anúncio

**ENTÃO** pegar os dados do cliente, incluindo nome e telefones para contato

**E** um cliente é cadastrado.

--------------------------------
**SENDO** um usuário que contrata serviços de anúncio online.

**POSSO** contratar anúncio, cadastrar email para receber ofertas diariamente, cadastrar seções de interesse para receber ofertas diariamente.

**PARA QUE** anuncie meus serviços ou um produto online.

Critérios de Aceite:
---
- Deve escolher o tipo de anúncio.
- Ter uma forma de pagamento válida.
- Oferecer um produto ou serviço.

Observações:
---
- Deve escolher se deseja receber emails diários com ofertas.
- Pode escolher temas de interesse para receber emails diários com ofertas.
- Os anúncios ficam disponíveis por 15 dias.


Cenário 1: Pagamento recusado
---
**DADO QUE**  a forma de pagamento selecionada foi recusada

**QUANDO** seleciona a forma de pagamento

**ENTÃO** o pagamento é recusado

**E** selecione outra forma de pagamento. 


Cenário 2: Anúncio expirado
---
**DADO QUE** o anúncio expira a data programada.

**QUANDO** completam 15 dias após a ativação

**ENTÃO** o anúncio é retirado do ar

**E** é dado a opção a contratar novamente.


Cenário 3: Escolher o tipo de anúncio
---
**DADO QUE** precisa escolher o tipo de anúncio

**QUANDO** a contratação está sendo feita

**ENTÃO** é selecionado o tipo de anúncio

**E** é direcionado para a finalização do pedido.
