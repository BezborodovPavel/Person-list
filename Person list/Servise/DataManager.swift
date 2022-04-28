//
//  DataManager.swift
//  Person list
//
//  Created by Павел on 28.04.2022.
//

import Foundation

class DataManager {
    
    static var usedNames = 0
    static var usedFamilys = 0
    static var usedPhones = 0
    static var usedEmails = 0
    
    let names = [
        "Сергей",
        "Алексей",
        "Дмитрий",
        "Владимир",
        "Константин",
        "Денис",
        "Максим",
        "Кирилл",
        "Матвей",
        "Никита"
    ]
    
    let familys = [
        "Воронов",
        "Кузнецов",
        "Малахов",
        "Миронов",
        "Калмыков",
        "Марков",
        "Коновалов",
        "Ильин",
        "Денисов",
        "Калинин"
    ]
    
    let phones = [
        "375256612939",
        "375292308770",
        "380504180695",
        "380504180697",
        "380504877377",
        "380632829292",
        "380672176010",
        "380672176020",
        "380672176030",
        "380673557777",
        "380931777772",
        "380937027555",
        "380937028555",
        "380963447777",
        "380968777777",
        "4433",
        "447624806152",
        "447624806153",
        "4947",
        "5555",
        "5566",
        "7515",
        "77017333190",
        "77019381234",
        "77027773690",
        "77057163877",
        "77074909644",
        "77077799795",
        "77079517777",
        "77714927700",
        "77715740077",
        "77715797822",
        "77770076877",
        "77770076977",
        "77772955554",
        "77787483377",
        "77787683377",
        "79021100098",
        "79021100099",
        "79021100147",
        "79032478845",
        "79032478917",
        "79032478979",
        "79032480839",
        "79032481196",
        "79032511037",
        "79032511075",
        "79032511134",
        "79032511175",
        "79032511178",
        "79037672163",
        "79037672179",
        "79037672339",
        "79037672527",
        "79037672529",
        "79037672682",
        "79037672689",
        "79037672730",
        "79037672846",
        "79037672928",
        "79037676141",
        "79037676181",
        "79037676372",
        "79037676375",
        "79037676612",
        "79037676911",
        "79037676921",
        "79039062882",
        "79039069595",
        "79039302299",
        "79039399555",
        "79059450109",
        "79059457777",
        "79061954623",
        "79061954627",
        "79061954634",
        "79061954673",
        "79061954686",
        "79061955777",
        "79095310449",
        "79104229783",
        "79104229854",
        "79104230236",
        "79104230254",
        "79104230344",
        "79112889107",
        "79137638116",
        "79138977777",
        "79152449625",
        "79162404455",
        "79163377737",
        "79166674998",
        "79168877777",
        "79169306357",
        "79169306359",
        "79169306445",
        "79169306450",
        "79169306592",
        "79169306661",
        "79169306671",
    ]
    
    let emails = [
        "o@outlook.com",
        "hr6zdl@yandex.ru",
        "kaft93x@outlook.com",
        "dcu@yandex.ru",
        "19dn@outlook.com",
        "pa5h@mail.ru",
        "281av0@gmail.com",
        "8edmfh@outlook.com",
        "sfn13i@mail.ru",
        "g0orc3x1@outlook.com",
        "rv7bp@gmail.com",
        "93@outlook.com",
        "er@gmail.com",
        "o0my@gmail.com",
        "715qy08@gmail.com",
        "vubx0t@mail.ru",
        "wnhborq@outlook.com",
        "gq@yandex.ru",
        "ic0pu@outlook.com",
        "o7khr@yandex.ru",
        "2shlaq@outlook.com",
        "cdbw@yandex.ru",
        "wrts90puk@yandex.ru",
        "yxunv@gmail.com",
        "7y@yandex.ru",
        "6@mail.ru",
        "k8sjebg1y@mail.ru",
        "jirbold@gmail.com",
        "u7yhwf1vb@mail.ru",
        "f@outlook.com",
        "gjkhp@mail.ru",
        "wyalkxfde@gmail.com",
        "f245n@outlook.com",
        "w@outlook.com",
        "js3kyopz@mail.ru",
        "o@outlook.com",
        "uzfd@mail.ru",
        "g@mail.ru",
        "dvjf0@gmail.com",
        "d2mc@outlook.com",
        "06lk@mail.ru",
        "emhzysf2@yandex.ru",
        "d1w28lkg@yandex.ru",
        "t93@mail.ru",
        "t3i@outlook.com",
        "t6ro3@gmail.com",
        "1zqnk0y7@yandex.ru",
        "768ptl4nv@gmail.com",
        "bzq3yh2c1@mail.ru",
        "78k3dvwx@outlook.com",
        "fe8obp@mail.ru",
        "cxh2daw8@outlook.com",
        "lrsdy5p@yandex.ru",
        "2de17h@mail.ru",
        "we3l08z5@gmail.com",
        "i8ovxn2f@gmail.com",
        "q4as80@outlook.com",
        "opu@outlook.com",
        "5iar3l8k@yandex.ru",
        "4zegxla@mail.ru",
        "8lf0g@yandex.ru",
        "1zx8@yandex.ru",
        "x@mail.ru",
        "34d@gmail.com",
        "pxacl@mail.ru",
        "7o1@gmail.com",
        "1@gmail.com",
        "iut@gmail.com",
        "e3t@outlook.com",
        "41clb6o2g@yandex.ru",
        "5hsbm8pi3@mail.ru",
        "dihf8jxk@gmail.com",
        "dwej@yandex.ru",
        "zyue8brv@outlook.com",
        "0a5437@mail.ru",
        "fovtju3q2@yandex.ru",
        "5ntglejc9@outlook.com",
        "61rpbj@mail.ru",
        "9m6pfk52r@outlook.com",
        "gr@yandex.ru",
        "v9dux@gmail.com",
        "mek975vcx@gmail.com",
        "uakvj8p9d@yandex.ru",
        "t3m6u8v@gmail.com",
        "jxqme@gmail.com",
        "c3@gmail.com",
        "3xkgmsd9t@gmail.com",
        "s9iw@mail.ru",
        "qo2sc@mail.ru",
        "xiuq5olft@gmail.com",
        "8swlo27hd@outlook.com",
        "r0o6f92@gmail.com",
        "z@gmail.com",
        "r3p4mgf5@yandex.ru",
        "p@outlook.com",
        "61j@yandex.ru",
        "t2sr@gmail.com",
        "u7@outlook.com",
        "9k15qr2h@gmail.com",
        "3vmtdo1@outlook.com",
        "q9@mail.ru"
    ]
}

extension DataManager {
    
    func getUniqueName() -> String? {
        
        if names.count == DataManager.usedNames {
            return nil
        }
        
        DataManager.usedNames += 1
        return names[DataManager.usedNames]
    }
    
    func getUniqueFamily() -> String? {
        
        if familys.count == DataManager.usedFamilys {
            return nil
        }
        
        DataManager.usedFamilys += 1
        return familys[DataManager.usedNames]
    }
    
    func getUniquePhone() -> String? {
        
        if phones.count == DataManager.usedPhones {
            return nil
        }
        
        DataManager.usedPhones += 1
        return phones[DataManager.usedNames]
    }
    
    func getUniqueEmail() -> String? {
        
        if emails.count == DataManager.usedEmails {
            return nil
        }
        
        DataManager.usedEmails += 1
        return emails[DataManager.usedNames]
    }
}
