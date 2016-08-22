%Copyright [2016] <Gustavo Figueira Olegário>

/**
 * O propósito e a maneira como o programa funciona estão explicitados no enuncia-
 * do (que está no .zip junto com o código). O programa foi 'dividido' de acordo
 * com as fases do curso. Cada código de disciplina está associado com a fase em
 * que está. Além disso, quando a matéria necessita de pré requisito, existe
 * uma função para explicitar (podendo ser uma ou mais matérias de pré requisi-
 * to). É importante salientar também que a relação é sempre do tipo:
 * pre_requisito(X,Y): a(s) materia(s) X é(são) pré requisito(s) de Y.
 * A funcionalidade extra solicitada pelo professor foi escolhida para exibir
 * algumas matérias optativas com seus devidos pré requisito.
 *
 *
 */

%------------ 1ª Fase Matérias ------------%
materia('AQI5103',1).
materia('AQI5109',1).
materia('AQI5202',1).
materia('ECZ5310',1).
materia('ENR5100',1).
materia('AQI5512',1).
materia('AQI5609',1).
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
materia('AQI5123',4).
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
materia('AQI5245',8).
materia('CAL5602',8).
materia('ENR7314',8).

%------------ 9ª Fase Matérias ------------%
materia('AQI5231',9).
materia('AQI5303',9).
materia('5311',9).
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
pre_requisito('FSC7118','ENR5514').

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
