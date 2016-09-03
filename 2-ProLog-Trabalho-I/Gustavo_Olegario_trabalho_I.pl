%Copyright [2016] <Gustavo Figueira Olegário>

/*
  
  Segue um banco de dados de exemplo para o curso do Ciencias da Computacao.
  
  Modifique este arquivo para contemplar seu curso, conforme selecionado no t1A.
  
  Acrescente a implementacao das 7 regras solicitadas no t1B.
  
*/

%------------ 1ª Fase Matérias ------------%
materia('AQI5103',1).
materia('AQI5109',1).
materia('AQI5202',1).
materia('ECZ5310',1).
materia('ENR5100',1).
materia('ENR5512',1).
materia('ENR5609',1).
materia('MTM5515',1).
materia('QMC5109',1).

%------------ 2ª Fase Matérias ------------%
materia('AQI5104',2).
materia('BEG5106',2).
materia('BOT5140',2).
materia('BQA5121',2).
materia('ENR5400',2).
materia('MTM7301',2).

%------------ 3ª Fase Matérias ------------%
materia('AQI5108',3).
materia('AQI5204',3).
materia('AQI5210',3).
materia('BEG5205',3).
materia('FSC7118',3).
materia('MTM7304',3).


%------------ 4ª Fase Matérias ------------%
materia('AQI5211',4).
materia('AQI5213',4).
materia('ECZ5110',4).
materia('ECZ5111',4).
materia('ENR5610',4).
materia('ENR5813',4).
materia('EXR5105',4).
materia('MIP5122',4).

%------------ 5ª Fase Matérias ------------%
materia('AQI5106',5).
materia('AQI5212',5).
materia('AQI5214',5).
materia('AQI5215',5).
materia('AQI5220',5).
materia('BEG5403',5).
materia('ENR5514',5).

%------------ 6ª Fase Matérias ------------%
materia('AQI5107',6).
materia('AQI5201',6).
materia('AQI5315',6).
materia('AQI5340',6).
materia('CAL5601',6).
materia('ENR5611',6).
materia('EXR5125',6).

%------------ 7ª Fase Matérias ------------%
materia('AQI5203',7).
materia('AQI5207',7).
materia('AQI5223',7).
materia('AQI5225',7).
materia('AQI5230',7).
materia('AQI5316',7).

%------------ 8ª Fase Matérias ------------%
materia('AQI5235',8).
materia('AQI5327',8).
materia('AQI5341',8).
materia('AQI5345',8).
materia('CAL5602',8).
materia('ENR7314',8).

%------------ 9ª Fase Matérias ------------%
materia('AQI5231',9).
materia('AQI5303',9).
materia('AQI5311',9).
materia('AQI5320',9).
materia('AQI5342',9).
materia('AQI5343',9).
materia('AQI5344',9).
materia('AQI5350',9).

%------------ 10ª Fase Matérias ------------%
materia('AQI5240',10).
materia('AQI5351',10).

%------------ 1ª Fase Pré Requisitos ------------%

%*********************NONE**********************%

%------------ 2ª Fase Pré Requisitos ------------%
pre_requisito('AQI5103','AQI5104').

%------------ 3ª Fase Pré Requisitos ------------%
pre_requisito('MTM5515','AQI5108').
pre_requisito('AQI5103','AQI5210').
pre_requisito('MTM7301','FSC7118').
pre_requisito('MTM7301','MTM7304').

%------------ 4ª Fase Pré Requisitos ------------%
pre_requisito('QMC5109','AQI5211').
pre_requisito('BOT5140','AQI5123').
pre_requisito(['ENR5609','MTM7301','MTM7304'],'ENR5610').
pre_requisito('ENR5100','ENR5813').
pre_requisito('BEG5106','MIP5122').

%------------ 5ª Fase Pré Requisitos ------------%
pre_requisito(['AQI5211','ENR5813'],'AQI5212').
pre_requisito(['AQI5204','BQA5121'], 'AQI5214').
pre_requisito('AQI5211','AQI5215').
pre_requisito('AQI5210','AQI5220').
pre_requisito(['BEG5106','BQA5121'],'BEG5403').
pre_requisito('FSC7118','ENR5514').

%------------ 6ª Fase Pré Requisitos ------------%
pre_requisito('AQI5212','AQI5107').
pre_requisito('AQI5108','AQI5315').
pre_requisito(['BQA5121','QMC5109'],'CAL5601').
pre_requisito(['ENR5400','ENR5610'],'ENR5611').
pre_requisito('AQI5202','EXR5125').

%------------ 7ª Fase Pré Requisitos ------------%
pre_requisito(['AQI5212','AQI5214'],'AQI5203').
pre_requisito('AQI5212','AQI5207').
pre_requisito('BEG5403','AQI5223').
pre_requisito(['AQI5212','AQI5214'],'AQI5225').
pre_requisito('AQI5106','AQI5230').
pre_requisito('ENR5611','AQI5316').

%------------ 8ª Fase Pré Requisitos ------------%
pre_requisito(['AQI5212','AQI5214'],'AQI5327').
pre_requisito('MIP5122','AQI5341').
pre_requisito('ENR5610','AQI5345').
pre_requisito('FSC7118','ENR7314').

%------------ 9ª Fase Pré Requisitos ------------%
pre_requisito('AQI5316','AQI5231').
pre_requisito('BOT5140','AQI5303').
pre_requisito('BQA5121','AQI5311').
pre_requisito('AQI5106','AQI5342').
pre_requisito('AQI5107','AQI5343').
pre_requisito('ENR5610','AQI5344').
pre_requisito('AQI5220','AQI5350').

%------------ 10ª Fase Pré Requisitos ------------%
pre_requisito(['AQI5303','AQI5320','AQI5342','AQI5343','AQI5344','AQI5345',
			   'AQI5350'],'AQI5240').

pre_requisito(['AQI5303','AQI5320','AQI5342','AQI5343','AQI5344','AQI5345',
			   'AQI5350'],'AQI5351').
			   
%------------ 1ª Fase Nome completos ------------%
nomecompleto('AQI5103','Aquicultura Geral I').
nomecompleto('AQI5109','Metodologia de Trabalhos Acadêmicos').
nomecompleto('AQI5202','Sociologia para Aquicultura').
nomecompleto('ECZ5310','Zoologia Aquática').
nomecompleto('ENR5100','Fundamentos em Solos').
nomecompleto('ENR5512','Hidrologia e Climatologia').
nomecompleto('ENR5609','Desenho Técnico Rural').
nomecompleto('MTM5515','Geometria Analítica e Álgebra Linear').
nomecompleto('QMC5109','Química Geral').

%------------ 2ª Fase Nome completos ------------%
nomecompleto('AQI5104','Aquicultura Geral II').
nomecompleto('BEG5106','Biologia Celular para Aquicultura').
nomecompleto('BOT5140','Biologia de Vegetais Aquáticos').
nomecompleto('BQA5121','Bioquímica para Aquicultura').
nomecompleto('ENR5400','Topografia para Aquicultura').
nomecompleto('MTM7301','Matemática I').

%------------ 3ª Fase Nome completos ------------%
nomecompleto('AQI5108','Estatística e Informática para Aquicultura').
nomecompleto('AQI5204','Fisiologia de Animais Aquáticos').
nomecompleto('AQI5210','Viagem de Estudo').
nomecompleto('BEG5205','Embiologia').
nomecompleto('FSC7118','Física para Ciências Agrárias').
nomecompleto('MTM7304','Matemática II').

%------------ 4ª Fase Nome completos ------------%
nomecompleto('AQI5211','Qualidade de Água I').
nomecompleto('AQI5213','Cultivo de Microalgas').
nomecompleto('ECZ5110','Ecologia de Exossitemas Marinhos').
nomecompleto('ECZ5111','Ecologia de Águas Continentais').
nomecompleto('ENR5610','Hidráulica para Aquicultura').
nomecompleto('ENR5813','Ecologia do Solo').
nomecompleto('EXR5105','Administração para Aquicultura').
nomecompleto('MIP5122','Microbiologia Aquática').

%------------ 5ª Fase Nome completos ------------%
nomecompleto('AQI5106','Planejamento e Gestão da Aquicultura').
nomecompleto('AQI5212','Qualidade de Água II').
nomecompleto('AQI5214','Nutrição em Aquicultura').
nomecompleto('AQI5215','Aquicultura e o Meio Ambiente').
nomecompleto('AQI5220','Estágio Supervisionado I').
nomecompleto('BEG5403','Genética para Aquicultura').
nomecompleto('ENR5514','Mecanização para Aquicultura').

%------------ 6ª Fase Nome completos ------------%
nomecompleto('AQI5107','Piscicultura Continental').
nomecompleto('AQI5201','Engenharia Econômica para Aquicultura').
nomecompleto('AQI5315','Experimentação em Aquicultura').
nomecompleto('AQI5340','Patologia de Organismos Aquáticos I').
nomecompleto('CAL5601','Análise de Alimentos para Aquicultura').
nomecompleto('ENR5611','Construção Civil e Obras Hidráulicas').
nomecompleto('EXR5125','Sistemas de Organização Social').

%------------ 7ª Fase Nome completos ------------%
nomecompleto('AQI5203','Carcinicultura').
nomecompleto('AQI5207','CUltivo de Moluscos').
nomecompleto('AQI5223','Melhoramento Genético para Aquicultura').
nomecompleto('AQI5225','Piscicultura Marinha').
nomecompleto('AQI5230','Engenharia de Sistemas para Aquicultura').
nomecompleto('AQI5316','Instalações e Construções para Aquicultura').

%------------ 8ª Fase Nome completos ------------%
nomecompleto('AQI5235','Legislação da Aquicultura').
nomecompleto('AQI5327','Cultivo de Organismos Aquáticos Ornamentais').
nomecompleto('AQI5341','Patologia de Organismos Aquáticos II').
nomecompleto('AQI5345','Tratamento de Efluentes de Aquicultura').
nomecompleto('CAL5602','Tecnologia Pós-Despesca').
nomecompleto('ENR7314','Instalações Elétricas para fins Rurais').

%------------ 9ª Fase Nome completos ------------%
nomecompleto('AQI5231','Elaboração de Projetos de Aquicultura').
nomecompleto('AQI5303','Cultivo de Macroalgas').
nomecompleto('AQI5311','Biotecnologia Aplicada à Aquicultura').
nomecompleto('AQI5320','Materiais e Apetrechos para Aquicultura').
nomecompleto('AQI5342','Empreendedorismo na Aquicultura').
nomecompleto('AQI5343','Impactos, Manejos e Usos Múltiplos de Reservatórios').
nomecompleto('AQI5344','Sistemas de Recirculação em Aquicultura').
nomecompleto('AQI5350','Introdução ao Trabalho de Conclusão de Curso').

%------------ 10ª Fase Nome completos ------------%
nomecompleto('AQI5240','Estágio Supercisionado de Enegnharia de Aquicultura').
nomecompleto('AQI5351','Trabalho de Conclusão de Curso de Engenharia de Aquicultura').

%Questao 2
precomum(X, Y, Z) :- pre_requisito(Z,X),pre_requisito(Z,Y) ,(X \= Y).

%Questao 3
prepre(D,PR) :- pre_requisito(PR,X), pre_requisito(X,D).


%Questao 4
saopre(F, PR) :- materia(PR,F), pre_requisito(PR,_).

%Questao 5
tempre(F, D) :- materia(D,F), pre_requisito(_,D).

%Questao 6
temprecomumsaopre(F, D1, D2) :- materia(D1,F), materia(D2,F), 
								pre_requisito(PRE,D1), pre_requisito(PRE,D2),
								pre_requisito(D1,_), pre_requisito(D2,_), (D1 \= D2).

%Questao 7
%OBS: Descobre a matéria caso ela seja pré-requisito de alguma optativa, baseado
%nas optativas listadas ao final do arquivo.
proposta(F, D) :- materia(D,F), pre_requisito_optativas(D,_).


%------------ Optativas Matérias ------------%
optativa('AQI5301').
optativa('AQI5302').
optativa('AQI5304').
optativa('AQI5305').
optativa('AQI5306').
optativa('AQI5307').
optativa('AQI5308').
optativa('AQI5309').

pre_requisito_optativas('AQI5215','AQI5302').
pre_requisito_optativas('AQI5213','AQI5305').
pre_requisito_optativas('AQI5204','AQI5306').
pre_requisito_optativas('AQI5214','AQI5308').
