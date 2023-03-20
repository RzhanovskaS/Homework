console.log ("1================================================")
///Вторй вариант 1* задания  

/*let age_2 = 18
let age_3 = 60

const checkAge = function (age_1){
    if (age_1) {
        console.log ("Just age_1 in console=", "if true")
    }

    if (age_1 < age_2){
        console.log ("You don’t have access cause your age is " + age_1 + "  It’s less then")
    }

    if (age_1 >= age_2 && age_1 < age_3) {
        console.log ("Welcome!")
    }

else if (age_1 > age_3) {
    console.log ("Keep calm and look Culture channel")
} else  console.log ("Technical work")
}

checkAge(17);
checkAge(18);
checkAge(61);*/
console.log ("2================================================")
///Задание 2*:Преобразовать задание 1* таким образом, чтобы первым делом в функции проверялся тип данных. И если он не Number - кидалась ошибка.

let age_2 = 18
let age_3 = 60

const checkAge = function (age_1){
    if (typeof age_1 == 'number') {

        if (age_1) {
             console.log ("Just age_1 in console===============================", "true")
    }

        if (age_1 < age_2){
        console.log ("You don’t have access cause your age is " + age_1 + "  It’s less then 18")
    }

         if (age_1 >= age_2 && age_1 < age_3) {
        console.log ("Welcome!")
   
    }
    else if (age_1 > age_3) {
        console.log ("Keep calm and look Culture channel")
    } else  console.log ("Technical work")
} else console.log ('Not a Number')
    }
checkAge(17);
checkAge(18);
checkAge(61);
checkAge('jjjj');
checkAge('gfgf777');
checkAge('gfgf777');
checkAge('gfgf77');
checkAge('gfgf776');

console.log ("3================================================")