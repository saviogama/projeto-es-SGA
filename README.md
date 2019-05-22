Reunião com o cliente 


Nome do cliente: Erlan Douglas Domingos de Souza
Integrantes do grupo: Adilson José, Gabriel AntÔnio, José Otávio e José Sávio
Disciplina: Engenharia de Software 2019.1 
Professor: Rodrigo Andrade 
Tema: Sistema de gestão alimentar




Projeto


	O sistema é orientado para o gerenciamento do estoque dos produtos escolares suprindo as necessidades das escolas e para gerenciar a alimentação para correta nutrição dos alunos da rede municipal de ensino. 


Público alvo 


	Equipe gestora do almoxarifado e da gestão alimentar das escolas (Nutricionistas).


Principais Propriedades


Controle de Estoque


* Contratos
* Estoque
* Ordem de Fornecimento
* Distribuição por Escolas (GR)
* Relatórios


Nutrição


* Cardápio
* Refeição
* Ficha Técnica



Contratos (Controle de Estoque)


Itens:
        Fornecedor, itens, valor unitário, valor total do contrato


Ações:
        Crud para fornecedor
        Crud para itens de fornecedor
        Gerar relatório mensal
Estoque (Controle de Estoque)
Itens:
        Controle de estoque alimentício


Ações:
        Crud para entrada de alimentos
        Crud para saída de alimentos
	Controle de avarias, validade
        Gerar relatório mensal com as seguintes categorias:
                data
                tipo
                fornecedor (itens restantes, valor do contrato por itens)




Ordem de Fornecimento (Controle de Estoque)
Itens:
        Nº do lote, descrição, unidade, quantidade, valor unitário, valor total


Ações:
        Cálculo de todas as Relações por escolas(GR) por empresa




Distribuição por Escolas (Controle de Estoque)

Itens:
        Distribuição de Alimentos
                Descrição, unidade, quantidade, faltas, data de entrega, assinatura
        
        Identificação da Escola
                Nome, descrição, rota

         Campo para observações
        

Ações:
        Fazer tabela com dados dos ítens, escola e observação
Fazer relatório com a tabela, assinatura de entrega(saída do almoxarifado) e responsáveis pelo recebimento e responsável da entrega.


Relatório (Controle de Estoque)

Ações:
        Crud do relatório com dados dos contratos, estoque e ordem de fornecimento.




Nutrição
        
        Cardápio: Uma refeição por dia, durante 5 semanas.
OBS: Segunda a sexta (5 dias) -> (25 refeições) por cardápio


        Itens:
        Tabela para refeições, montadas em uma “matriz” de dias e semanas
        CRUD para cada refeição


        Ações: CRUD Refeições
               Adicionar espaço para observações


Refeição:
* ID
* Ingredientes (pré-cadastro)
* Quantidade
* Nome refeição
* Peso Líquido (PL) (PC)