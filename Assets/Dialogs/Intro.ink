... #char 5
->Intro

==Intro
*Аргх...кх...Где я?
#otherchar 2
Вы сейчас на планете Земля, только закончили процедуру в ЛВ-колбе. 
**Непонимаю.Я ... я был ранен?
->Awake
**ЛВ-колба?
#otherchar 2
Вашему организму нужно время, чтобы придти в норму, спустя некоторое время, ваша память вернется к вам. ЛВ-колба - это величайшее достижение нашей медицины, способное вылечить человека даже в самой критической ситуации. Это эксперементальное и очень дорогое лечение. 
***Непонимаю. Я ... я был ранен?
->Awake
==Awake
#otherchar 6
Вы совсем ничего не помните? Попробуйте напрячься, вы контр-адмирал Объединненой Гражданской Федерации, командовали кораблем "Непреклонный", вы получили секретные развед. данные, впервые полученные с территории противника. Вам было приказано доставить эти данные любой ценой, после чего попали в западню и потерпели крушение на планете Церера. Что произошло дальше, помните?#char 5 #color blue_123
*Да, кажется на месте крушение наш корабль провалился под землю, прямо в логово этих арахнидов. Я скомандовал пробить путь наверх любой ценой.
->Hist1
*Да, на месте крушение наш радар засек огромное число арахнидов приближающихся к нашей позиции. Я приказал организовать оборонительные позиции, насколько это возможно было в нашей ситуации.
->Hist2
*Да, наш корабль получил серьезные повреждения, поэтому большая часть команды погибла еще до крушения. Оказавшись на планете нас оказалось не более 20 человек, не зная придет ли к нам помощь, мы решили сами добратсья до единственого аванпоста на планете.
->Hist3
==Hist1
Это ужасно ... А что произошло дальше помните?#char 6 #color blue_123
*Мы быстро несли потери, в скором времени я остался один, и тогда появилось оно. Огромный жук, красного цвета, в наших базах данных нет о нем информации. Я попытался пронзить своей саблей в его нервный центр, а потом ... я ... я что, умер? 
->Ending
*Мы столкнулись с превосходящими силами противника. Тогда я заметил не виданный ранее тип жуков. Несмотря на то, что шансы на успех были не велики, я рискнул жизнью и резким рывком подобрался к нему и ... я ... я что, умер? 
->Ending
*Задача должна была быть выполнена любой ценой, поэтому мне пришлось жертвовать солдатами, когда нас осталось совсем мало, передо мной выскачила тварь, которую я никогда не видел, а после ... я ... я что, умер?
->Ending
==Hist2
Это ужасно ... А что произошло дальше помните?#otherchar 5 #color blue_123
*Мы быстро несли потери, в скором времени я остался один, и тогда появилось оно. Огромный жук, красного цвета, в наших базах данных нет о нем информации. Я попытался пронзить своей саблей в его нервный центр, а потом ... я ... я что, умер? 
->Ending
*Мы столкнулись с превосходящими силами противника. Тогда я заметил не виданный ранее тип жуков. Несмотря на то, что шансы на успех были не велики, я рискнул жизнью и резким рывком подобрался к нему и ... я ... я что, умер? 
->Ending
*Задача должна была быть выполнена любой ценой, поэтому мне пришлось жертвовать солдатами, когда нас осталось совсем мало, передо мной выскачила тварь, которую я никогда не видел, а после ... я ... я что, умер? 
->Ending
==Hist3
Это ужасно ... А что произошло дальше помните?#otherchar 5 #color blue_123
*Мы быстро несли потери, в скором времени я остался один, и тогда появилось оно. Огромный жук, красного цвета, в наших базах данных нет о нем информации. Я попытался пронзить своей саблей в его нервный центр, а потом ... я ... я что, умер? 
->Ending
*Мы столкнулись с превосходящими силами противника. Тогда я заметил не виданный ранее тип жуков. Несмотря на то, что шансы на успех были не велики, я рискнул жизнью и резким рывком подобрался к нему и ... я ... я что, умер? 
->Ending
*Задача должна была быть выполнена любой ценой, поэтому мне пришлось жертвовать солдатами, когда нас осталось совсем мало, передо мной выскачила тварь, которую я никогда не видел, а после ... я ... я что, умер? 
->Ending

==Ending
Нет, когда подошла помощь, вас нашли тяжело раненым, а этот жук был мертв. Благодаря вашим действиям, развед. данные все же были доставлены.#otherchar 3
*Отлично, еще выжившие были?
Нет ... Боюсь, пора вам рассказать...#otherchar 4
**Так и думал, это не могло закончится хорошо
->True
**Если это плохая новость с нее надо было начинать
->True

==True
Да, это не очень хорошие новости. Похоже, что кровь убитого вами жука вступила в странный симбиоз с вашим организмом. Именно она и не позволила окончательно произойти некрозу первых шейных сегментов...#otherchar 4
*Эм, что?
->BrainInfo
*А если по-простому?
->BrainInfo
==BrainInfo
Грубо говоря этот симбиоз спас ваш мозг от смерти. На самом деле не просто спас, а еще и повысил эффективность работы ваше мозга. Даже ваши рефлексы ускорены, по сравнению с обычным человеком. Но не все так радужно, теперь этот симбиот пытается захватить весь ваш мозг, заменив ваше клетки на свои.#otherchar 3
*Вы можете с этим что-то поделать?
На данный момент вам ничего не угрожает, нам пришлось установить в ваш мозг специальный чип с ИИ, который борется с тлетворным влияннием симбиота постоянно.#otherchar 2
**Разве интеграция ИИ с человеческим мозгом не запрещена законами Федерации?
Этот приказ пришел от самого генералиссимуса. Так что можете представить в каком отчаянном положение находится адмиратейство #otherchar 5
***Ясно
->EndOfDilog
***Это кажется безумием, но похоже отчаянные времена требуют отчаянныъ мер
->EndOfDilog
**Это кажется безумием, но похоже отчаянные времена требуют отчаянныъ мер
->EndOfDilog

==EndOfDilog
Похоже ваше состояние приходит в норму. В таком случае, я не могу вас больше задерживать, вам срочно нужно прибыть в штаб, вас ожидает ставка верховного главнокомандования.#otherchar 2 
*Ну чтож, посмотрим, что скажет командование
->END