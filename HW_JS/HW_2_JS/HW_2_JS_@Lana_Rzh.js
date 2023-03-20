/*Задания с разным количеством звездочек:)
1*:
Преобразовать написанный код в 26-33 пунктах в функцию, принимающую на вход возраст.
Пример: const checkAge = function(age) {
Ваши преобразования} Вывести в консоль результат работы функции с возрастами 17, 18, 61---НЕ ПОНЯЛА*/ 
console.log ("1================================================")
///Первий вариант ЗАДАНИЕ 1* но приеник ко 2* не смогла 
/*const checkAges = function  (age_1,age_2,age_3){
    console.log (age_1);
    console.log (age_2);
    console.log (age_3);
    if (age_1) {
        console.log ( "if true")
    }
    if (age_1 < age_2){
        console.log ("You don’t have access cause your age is " + age_1 + "  It’s less then")
    }
    if (age_1 >= age_2 && age_1 < age_3) {
        console.log ("Welcome!")
    }
     else if (age_1 > age_3) {
    console.log ("Keep calm and look Culture channel")}
     else  console.log ("Technical work")

}

checkAges (17,18,62); */

console.log ("2================================================")
///Задание 2*:Преобразовать задание 1* таким образом, чтобы первым делом в функции проверялся тип данных. И если он не Number - кидалась ошибка.
/*const checkAges = function  (age_1,age_2,age_3){
    if (typeof age_1 == 'number') {
        if (age_1) {
        console.log ( "if true")
    }
    if (age_1 < age_2){
        console.log ("You don’t have access cause your age is " + age_1 + "  It’s less then")
    }
    if (age_1 >= age_2 && age_1 < age_3) {
        console.log ("Welcome!")
    }
     else if (age_1 > age_3) {
    console.log ("Keep calm and look Culture channel")}
     else  console.log ("Technical work")
     } 
     else console.log ('Not a Number')
}

checkAges (17,18,62,); 
checkAges ('oooo','jjjj','pppp',); 
checkAges ('oooo',10,'pppp',); 
checkAges ('oooo','pppp',10); */
console.log ("3================================================")
///Задание 3**:Преобразовать 2* таким образом, чтобы значение '2' (строка в которой лежит ТОЛЬКО ЦИФРА) пропускалось, преобразовываясь в number
const checkAges = function  (age_1,age_2,age_3){
    if (typeof age_1 == 'number') {
        if (age_1) {
        console.log ( "if true")
    }
    if (age_1 < age_2){
        console.log ("You don’t have access cause your age is " + age_1 + "  It’s less then")
    }
    if (age_1 >= age_2 && age_1 < age_3) {
        console.log ("Welcome!")
    }
     else if (age_1 > age_3) {
    console.log ("Keep calm and look Culture channel")}
     else  console.log ("Technical work")
     } 
     else console.log ('Not a Number')
}

checkAges (17,18,62,); 
checkAges ('oooo','jjjj','pppp',); 
checkAges ('oooo',10,'pppp',); 
checkAges ('oooo','pppp',10); 
console.log ("4================================================")