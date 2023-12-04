//
//  User.swift
//  AboutMeApp
//
//  Created by Pavel Gribachev on 30.11.2023.
//

struct User {
    let userName: String
    let password: String
        
    let person: Person
    
    static func getUser() -> User {
        User(
            userName: "1",
            password: "1",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let lastName: String
    let age: String
    let company: String
    let department: String
    let post: String
    let hobbies: String
    
    var biography: String {
        """
        В 2020 г. закончил университет на 
        факультете "Прикладная информатика",
        но как и следовало ожидать знаний там 
        полученных: 1 - не хватало, 2 - они уже
        как 15 лет были не актуальны. Решение 
        упало на язык программирования Swift,
        так как сам использую технику Apple и 
        давно хотел себе MacBook, занимался
        6-8 мес. повторяя проекты в Xcode взяты
        с YouTube (да, я сразу полез в Xcode🤦‍♂️),
        по типу ToDo List и тп. Это было очень 
        тяжело и у меня опустились руки, но
        через 3-4 месяца я начал опять, уже с 
        основ программирования смотря уроки
        программированияна YouTube у автора 
        Александр Сенин. Но опять дорога свернула
        не туда и была сделана вынужденная пауза 
        1.5 года за которые конечно я все забыл...
        За это время я изучил HTML5, CSS (SASS), 
        Figma. Но понял что Web программирование 
        не мое и вернулся на Swift, купив этот
        курс. Я очень надеюсь что не стар
        для вхождения в IT, но в любом случае
        я доведу дело до конца, чего бы не случилось.
        """
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Павел",
            lastName: "Грибачев",
            age: "29",
            company: "Налоговая",
            department: "Инженер",
            post: "Старший инженер в смене",
            hobbies: "Бокс и программирование"
        )
    }
}
