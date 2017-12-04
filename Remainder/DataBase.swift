//
//  DataBase.swift
//  Remainder
//
//  Created by Aloc SP06447 on 01/12/2017.
//  Copyright © 2017 Aloc SP06447. All rights reserved.
//

import Foundation

public var remainders: [Remainder] = []
public var original: [Remainder] = []



//metodos de apoio
public func generateRemainders(_ rows: Int) -> [Remainder] {
    var result = [Remainder]()
    for _ in 0..<rows {
        let remainder = Remainder(randomName(), randomDescription(), true, Date())
        result.append(remainder)
    }
    return result
}

func randomDescription() -> String {
    let strs = [
        "A única área que eu acho, que vai exigir muita atenção nossa, e aí eu já aventei a hipótese de até criar um ministério.",
        "É na área de... Na área... Eu diria assim, como uma espécie de analogia com o que acontece na área agrícola.",
        "Todos as descrições das pessoas são sobre a humanidade do atendimento, a pessoa pega no pulso, examina, olha com carinho.",
        "Então eu acho que vai ter outra coisa, que os médicos cubanos trouxeram pro brasil, um alto grau de humanidade.",
        "Primeiro eu queria cumprimentar os internautas. -Oi Internautas! Depois dizer que o meio ambiente é sem dúvida nenhuma uma ameaça ao desenvolvimento sustentável.",
        "E isso significa que é uma ameaça pro futuro do nosso planeta e dos nossos países. O desemprego beira 20%, ou seja, 1 em cada 4 portugueses.",
        "Eu dou dinheiro pra minha filha. Eu dou dinheiro pra ela viajar, então é... é... Já vivi muito sem dinheiro, já vivi muito com dinheiro.",
        "-Jornalista: Coloca esse dinheiro na poupança que a senhora ganha R$10 mil por mês. -Dilma: O que que é R$10 mil?"
    ]
    let r = arc4random_uniform(UInt32(strs.count))
    return strs[Int(r)]
}

func randomName() -> String {
    let strs = [
        "AirPlay Icon",
        "Back",
        "Cancel",
        "Chevron",
        "Edit",
        "For You Copy",
        "Location",
        "Plus",
        "Rectangle 1306",
        "Search Icon",
        "Selected",
        "Shape",
        "Share"
    ]
    let r = arc4random_uniform(UInt32(strs.count))
    return strs[Int(r)]
}
