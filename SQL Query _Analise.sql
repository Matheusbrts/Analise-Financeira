/* STATUS PROJETO*/

WITH projeto_status AS (
    SELECT 
        id_projeto,
        nome_projeto,
        orçamento_projeto,  
        'completo' AS status
    FROM projeto_completo
    UNION ALL
    SELECT 
        id_projeto,
        nome_projeto,
        orçamento_projeto,  
        'futuros' AS status
    FROM projeto_futuros
)

/* JOIN PRINCIPAL */
SELECT 
    f.id_funcionario,  
    f.primeiro_nome,
    f.sobrenome,
    f.cargo,
    f.salario,
    s.nome_departamento,
    ap.id_projeto,
    ps.nome_projeto,
    ps.status
FROM funcionarios f
JOIN setores s
    ON f.id_departamento = s.id_departamento
JOIN atribuições_projeto ap
    ON ap.id_funcionário = f.id_funcionario  
JOIN projeto_status ps
	ON ps.id_projeto = ap.id_projeto;

    
    select * from funcionarios

	UPDATE Funcionarios
	SET sobrenome ='Teixeira'
	WHERE sobrenome = 'Fernanda';
	
	SELECT * FROM Setores
	
	UPDATE Funcionarios
	SET sobrenome = 'Barros'
	WHERE sobrenome = 'Roberto';