SELECT MAX(С.ЗАРПЛАТА), (
	SELECT Р.НАЗВАНИЕ
	FROM РАБОТЫ Р
	WHERE СПИСКИ_СТ.РАБОТА = Р.НОМЕР_РБ
)
FROM СОТРУДНИКИ С
INNER JOIN СПИСКИ_СТ
ON С.НОМЕР_СТ = СПИСКИ_СТ.СОТР
GROUP BY РАБОТА