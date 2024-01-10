# ABV-Calculator
 Swiftbook.org team project

<h1>Описание приложения AVB Calculator</h1>
<p>Данное приложение будет полезно для самогонщиков энтузиастов, винокуров и пивоваров, с помощью приложения можно рассчитывать объем алкоголя в напитке, а так же возможность создавать списки ранее приготовленных напитков с описанием.</p>
<p>За основу расчетов используется шкала измерительного прибора называемого "Ареометр-гидрометр" циллиндрической формы, с диапозоном значений от 0.97–1.150, с помощью которого измеряется начальная плотность сусла и в последствии конечная плотность. Процентное содержание алкоголя в конце брожения сусла вычисляется по формуле: % Алкоголя = (OG - FG) * 131.25, где OG - начальная плотность браги, FG - конечная плотность браги, 131.25 - это коэффициент, который учитывает, что 1 грамм алкоголя увеличивает объем 1 литра воды на 1,25 мл. Таким образом, процент алкоголя в браге зависит от разницы между начальной и конечной плотностью, которая в свою очередь определяется количеством сахара, который превращается в алкоголь в процессе брожения.</p>
<h1>Советы по использованию приложения</h1>
<h3>Начальный экран</h3>
<p>На начальном экране содержится список ранее созданных пользователем напитков. Каждый сохраненный напиток содержится в отдельной ячейке списка.</p>
<p>Для создания нового напитка на экране "Мои Напитки" необходимо нажать на "+" в правом верхнем углу экрана. В открывшемся редакторе необходимо внести следующие параметры: <ol><li>Название будущего напитка</li><li>Даты начала и конца брожения</li><li>Начальную и конечную плотность</li></ol></p>
<p>По нажатию кнопки "Сохранить" созданный напиток появится в общем списке на экране "Мои Напитки". При выборе ячейки с определенным напитком пользователь попадет на страницу напитка с его описанием и вычесленным количеством алкоголя. При необходимости отдельные ячейки могут быть удалены.</p>
<h3>Вкладка "Калькулятор"</h3>
<p>На данном экране реализован просто калькулятор, который рассчитывает количество алкоголя из внесенным пользователем данных. Данная функция может быть полезна, если пользователь производит промежуточные измерения содержания алкоголя в сусле, и ему не требуется создавать отдельную ячейку для напитка.</p>
<footer>VS 2024</footer>
