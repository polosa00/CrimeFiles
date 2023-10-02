//
//  DataBase.swift
//  CrimeFiles
//
//  Created by Igor on 28.09.2023.
//

import Foundation

struct DataBase {
    let inspections = [
        Inspection(
            title: "Подготовка к осмотру места происшествия",
            imageName: "detective1",
            rows: [
                RowInspection(
                    title: "Общие положения осмотра места происшествия",
                    imageName: "testImage",
                    rowsDetails: [
                        RowDetailInspection(title: "This is test details Row 1", imageName: "testImage", data: "Fill in in the future!"),
                        RowDetailInspection(title: "This is test details Row 2", imageName: "testImage", data: "Fill in in the future!"),
                        RowDetailInspection(title: "This is test details Row 3", imageName: "testImage", data: "Fill in in the future!"),
                        RowDetailInspection(title: "This is test details Row 4", imageName: "testImage", data: "Fill in in the future!")
                    ],
                    data: "Fill in in the future!"
                
                ),
                RowInspection(
                    title: "Обеспечение готовности к выезду на место происшествия",
                    imageName: "testImage",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                ),
                RowInspection(
                    title: "Действия следователя при получении сообщения о преступлении",
                    imageName: "testImage",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                    
                ),
                RowInspection(
                    title: "Действия по прибытии на место происшествия",
                    imageName: "testImage",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                ),
                RowInspection(
                    title: "Обязательные участники осмотра места происшествия",
                    imageName: "testImage",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                ),
                RowInspection(
                    title: "Дополнительные участники осмотра места происшествия",
                    imageName: "testImage",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                    
                ),
                RowInspection(
                    title: "Определение границ осмотра места происшествия",
                    imageName: "testImage",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                )
            ]
        ),
        Inspection(
            title: "Осмотры по обьектам",
            imageName: "detective2",
            rows: [
                RowInspection(
                    title: "Осмотр жилища",
                    imageName: "testImage",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                    
                ),
                RowInspection(
                    title: "Осмотр участка местности",
                    imageName: "testImage",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                ),
                RowInspection(
                    title: "Осмотр трупа",
                    imageName: "testImage",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                ),
                RowInspection(
                    title: "Осмотр транспортного средства",
                    imageName: "testImage",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                ),
                RowInspection(
                    title: "Осмотр и изъятие следов крови",
                    imageName: "testImage",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                ),
                RowInspection(
                    title: "Работа с запаховыми следами",
                    imageName: "testImage",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                ),
                RowInspection(
                    title: "Работа со следами рук, ног",
                    imageName: "testImage",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                ),
                RowInspection(
                    title: "Работа с орудиями преступления",
                    imageName: "testImage",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                )
            ]
        ),
        Inspection(
            title: "Отдельные следственные действия при осмотре",
            imageName: "detective3",
            rows: [
                RowInspection(
                    title: "Описание, измерения, привязки обьектов и следов",
                    imageName: "testImage",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                ),
                RowInspection(
                    title: "Изъятие и упаковка объектов и следов",
                    imageName: "testImage",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                ),
                RowInspection(
                    title: "Составление планов и схем",
                    imageName: "testImage",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                ),
                RowInspection(
                    title: "Фотосъемка",
                    imageName: "testImage",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                ),
                RowInspection(
                    title: "Структура протокола осмотра места происшествия",
                    imageName: "testImage",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                ),
                RowInspection(
                    title: "Камеры видеонаблюдения",
                    imageName: "testImage",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                )
            ]
        )
    ]
    
    
}
