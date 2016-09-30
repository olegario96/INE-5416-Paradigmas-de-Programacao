/*
  
  Segue um banco de dados de exemplo para o curso do Ciencias da Computacao.
  
  Modifique este arquivo para contemplar seu curso, conforme selecionado no t1A.
  
  Acrescente a implementacao das 7 regras solicitadas no t1B.
  
*/
%------------ 1ª Fase Matérias ------------%
materia('AQI5103','Aquicultura Geral I', 1, []).
materia('AQI5109','Metodologia de Trabalhos Acadêmicos', 1, []).
materia('AQI5202','Sociologia para Aquicultura', 1, []).
materia('ECZ5310','Zoologia Aquática', 1, []).
materia('ENR5100','Fundamentos em Solos', 1, []).
materia('ENR5512','Hidrologia e Climatologia', 1, []).
materia('ENR5609','Desenho Técnico Rural', 1, []).
materia('MTM5515','Geometria Analítica e Álgebra Linear', 1, []).
materia('QMC5109','Química Geral', 1, []).

%------------ 2ª Fase Matérias ------------%
materia('AQI5104','Aquicultura Geral II', 2, ['AQI5103']).
materia('BEG5106','Biologia Celular para Aquicultura', 2, []).
materia('BOT5140','Biologia de Vegetais Aquáticos', 2, []).
materia('BQA5121','Bioquímica para Aquicultura', 2, []).
materia('ENR5400','Topografia para Aquicultura', 2, []).
materia('MTM7301','Matemática I', 2, []).


%------------ 3ª Fase Matérias ------------%
materia('AQI5108','Estatística e Informática para Aquicultura', 3, ['MTM5515']).
materia('AQI5204','Fisiologia de Animais Aquáticos', 3, []).
materia('AQI5210','Viagem de Estudo', 3, ['AQI5103']).
materia('BEG5205','Embriologia', 3, ['MTM7301']).
materia('FSC7118','Física para Ciências Agrárias', 3, ['MTM7301']).
materia('MTM7304','Matemática II', 3, []).

%------------ 4ª Fase Matérias ------------%
materia('AQI5211','Qualidade de Água I', 4, ['QMC5109']).
materia('AQI5213','Cultivo de Microalgas', 4, ['BOT5140']).
materia('ECZ5110','Ecologia de Exossitemas Marinhos', 4, []).
materia('ECZ5111','Ecologia de Águas Continentais', 4, []).
materia('ENR5610','Hidráulica para Aquicultura', 4, ['ENR5609', 'MTM7301',
		'MTM7304']).

materia('ENR5813','Ecologia do Solo', 4, ['ENR5100']).
materia('EXR5105','Administração para Aquicultura', 4, []).
materia('MIP5122','Microbiologia Aquática', 4, ['BEG5106']).

%------------ 5ª Fase Matérias ------------%
materia('AQI5106','Planejamento e Gestão da Aquicultura', 5, []).
materia('AQI5212','Qualidade de Água II', 5, ['AQI5211', 'ENR5813']).
materia('AQI5214','Nutrição em Aquicultura', 5, ['AQI5204', 'BQA5121']).
materia('AQI5215','Aquicultura e o Meio Ambiente', 5, ['AQI5211']).
materia('AQI5220','Estágio Supervisionado I', 5, ['AQI5210']).
materia('BEG5403','Genética para Aquicultura', 5, ['BEG5106', 'BQA5121']).
materia('ENR5514','Mecanização para Aquicultura', 5, ['FSC7118']).

%------------ 6ª Fase Matérias ------------%
materia('AQI5107','Piscicultura Continental', 6, ['AQI5212']).
materia('AQI5201','Engenharia Econômica para Aquicultura', 6, []).
materia('AQI5315','Experimentação em Aquicultura', 6, ['AQI5108']).
materia('AQI5340','Patologia de Organismos Aquáticos I', 6, []).
materia('CAL5601','Análise de Alimentos para Aquicultura', 6, ['BQA5121',
		'QMC5109']).

materia('ENR5611','Construção Civil e Obras Hidráulicas', 6, ['ENR5400',
		'ENR5610']).

materia('EXR5125','Sistemas de Organização Social', 6, ['AQI5202']).

%------------ 7ª Fase Matérias ------------%
materia('AQI5203','Carcinicultura', 7, ['AQI5212', 'AQI5214']).
materia('AQI5207','CUltivo de Moluscos', 7, ['AQI5212']).
materia('AQI5223','Melhoramento Genético para Aquicultura', 7, ['BEG5403']).
materia('AQI5225','Piscicultura Marinha', 7, ['AQI5212', 'AQI5214']).
materia('AQI5230','Engenharia de Sistemas para Aquicultura', 7, ['AQI5106']).
materia('AQI5316','Instalações e Construções para Aquicultura', 7, ['ENR5611']).

%------------ 8ª Fase Matérias ------------%
materia('AQI5235','Legislação da Aquicultura', 8, []).
materia('AQI5327','Cultivo de Organismos Aquáticos Ornamentais', 8, ['AQI5212',
		'AQI5214']).

materia('AQI5341','Patologia de Organismos Aquáticos II', 8, ['MIP5122']).
materia('AQI5345','Tratamento de Efluentes de Aquicultura', 8, ['ENR5610']).
materia('CAL5602','Tecnologia Pós-Despesca', 8, []).
materia('ENR7314','Instalações Elétricas para fins Rurais', 8, ['FSC7118']).

%------------ 9ª Fase Matérias ------------%
materia('AQI5231','Elaboração de Projetos de Aquicultura', 9, ['AQI5316']).
materia('AQI5303','Cultivo de Macroalgas', 9, ['BOT5140']).
materia('AQI5311','Biotecnologia Aplicada à Aquicultura', 9, ['BQA5121']).
materia('AQI5320','Materiais e Apetrechos para Aquicultura', 9, []).
materia('AQI5342','Empreendedorismo na Aquicultura', 9, ['AQI5106']).
materia('AQI5343','Impactos, Manejos e Usos Múltiplos de Reservatórios', 9,
		['AQI5107']).

materia('AQI5344','Sistemas de Recirculação em Aquicultura', 9, ['ENR5610']).
materia('AQI5350','Introdução ao Trabalho de Conclusão de Curso', 9,
		['AQI5220']).

%------------ 10ª Fase Matérias ------------%
materia('AQI5240','Estágio Supercisionado de Enegnharia de Aquicultura', 10,
		['AQI5303', 'AQI5320', 'AQI5342', 'AQI5343', 'AQI5344', 'AQI5345',
		'AQI5350']).

materia('AQI5351','Trabalho de Conclusão de Curso de Engenharia de Aquicultura',
		10, ['AQI5303', 'AQI5320', 'AQI5342', 'AQI5343', 'AQI5344', 'AQI5345',
		'AQI5350']).

%------------ Optativas Matérias ------------%
optativa('AQI5301', 'Aquicultura em Lagos e Represas ', []).
optativa('AQI5302', 'Desenvolvimento Sustentável em Aquicultura', ['AQI5215']).
optativa('AQI5304', 'Ranicultura', []).
optativa('AQI5305', 'Cultivo de Alimento Vivo', ['AQI5213']).
optativa('AQI5306', 'Reprodução de peixes', ['AQI5204']).
optativa('AQI5307', 'Cultivo de Peixes Ornamentais', []).
optativa('AQI5308', 'Cultivo de Peixes Salmonídeos', ['AQI5214']).
optativa('AQI5309', 'Ranicultura e Diagnóstico de Enfermidades de Anfíbios',
		[]).

%Questao 1, 2 - t1A:
fase(MAT, FASE):- materia(MAT, _, FASE, _).

%Questao 3 - t1A:
pre_requisito(MAT, PRE):- materia(MAT, _, _, PRE).

%Questao 4 - t1A:
pre_requisito_optativas(MAT, PRE) :- optativa(MAT, _, PRE).

%---------Fim t1A---------% 

%Questao 1 - t1B
nomecompleto(D, N) :- materia(D, N, _, _).

%Questao 2 - t1B
precomum(D1, D2, PR) :- materia(D1, _, _, List), materia(D2, _, _, Lis),
					   member(PR, Lis), member(PR, List).

%Questao 3 - t1B
prepre(D, PR) :- materia(D, _, _, Lis), member(Inter, Lis),
				 materia(Inter, _, _, List), member(PR, List).
				
%Questao 4 - t1B
saopre(F, PR) :- materia(_, _, _, List), member(PR, List), materia(PR, _, F, _).

%Questao 5 - t1B
tempre(F, D) :- materia(D, _, F, List), List \= [].

%Questao 6 - t1B
temprecomumsaopre(F, D1, D2) :- tempre(F, D1), tempre(F, D2),
								precomum(D1, D2, _), saopre(F, D1), saopre(F, D2).

%Questao 7 - t1B
%OBS: Descobre a matéria caso ela seja pré-requisito de alguma optativa, baseado
%nas optativas listadas ao final do arquivo.
proposta(F, D) :- materia(D, _, F, _), optativa(_, _, List), member(D, List).

%------------ T1C ------------%	

%Questao 1 - t1C
nfase(F, N) :- findall(_, materia(_, _, F, _), List), length(List, N).

%Questao 2 - t1C
ncurso(N) :- findall(_, materia(_, _, _, _), List), length(List, N).

%Questao 3 - t1C
ntempre(N) :- findall(D, tempre(_, D),List), length(List,N).

%Questao 4 - t1C
nsaopre(N) :- findall(X, saopre(_, X),List), sort(List, Lis), length(Lis,N).

%Questao 5 - t1C
npre(D, N) :- materia(D, _, _, List), length(List,N).

%Questao 6 - t1C
maispre(D) :- findall(NUM, npre(_, NUM), List), max_list(List, N), npre(D,N).

%Questao 7 - t1C
npos(D, N) :- findall(_, saopre(_, D), List), length(List, N).

%Questao 8 - t1C
maispos(D) :- findall(NUM, npos(_, NUM), List), length(List, TAM), npos(D,TAM).

%Questao 9 - t1C
%maiorcadeia(N) :-

%Questao 10 - t1C
%extremo(D) :- COLOQUE SEU CODIGO AQUI
