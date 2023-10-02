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
                    imageName: "",
                    rowsDetails: [
                        RowDetailInspection(title: "This is test details Row", imageName: "Blal"),
                        RowDetailInspection(title: "This is test details Row", imageName: "Blal"),
                        RowDetailInspection(title: "This is test details Row", imageName: "Blal"),
                        RowDetailInspection(title: "This is test details Row", imageName: "Blal")
                    ],
                    data: "sdfsdfsdfsdf"
                
                ),
                RowInspection(
                    title: "Обеспечение готовности к выезду на место происшествия",
                    imageName: "",
                    rowsDetails: nil,
                    data: "dsfsdfsdfsdfkjndkj"
                ),
                RowInspection(
                    title: "Действия следователя при получении сообщения о преступлении",
                    imageName: "",
                    rowsDetails: nil,
                    data: "dsfjknskdjfnskdjfnbs"
                    
                ),
                RowInspection(
                    title: "Действия по прибытии на место происшествия",
                    imageName: "",
                    rowsDetails: nil,
                    data: "dsfjknskdjfnskdjfnbs"
                ),
                RowInspection(
                    title: "Обязательные участники осмотра места происшествия",
                    imageName: "",
                    rowsDetails: nil,
                    data: "dsfjknskdjfnskdjfnbs"
                ),
                RowInspection(
                    title: "Дополнительные участники осмотра места происшествия",
                    imageName: "",
                    rowsDetails: nil,
                    data: "dsfjknskdjfnskdjfnbs"
                    
                ),
                RowInspection(
                    title: "Определение границ осмотра места происшествия",
                    imageName: "",
                    rowsDetails: nil,
                    data: "dsfjknskdjfnskdjfnbs"
                )
            ]
        ),
        Inspection(
            title: "Осмотры по обьектам",
            imageName: "detective2",
            rows: [
                RowInspection(
                    title: "Осмотр жилища",
                    imageName: "",
                    rowsDetails: nil,
                    data: "dsfjknskdjfnskdjfnbs"
                    
                ),
                RowInspection(
                    title: "Осмотр участка местности",
                    imageName: "",
                    rowsDetails: nil,
                    data: "dsfjknskdjfnskdjfnbs"
                ),
                RowInspection(
                    title: "Осмотр трупа",
                    imageName: "",
                    rowsDetails: nil,
                    data: "dsfjknskdjfnskdjfnbs"
                ),
                RowInspection(
                    title: "Осмотр транспортного средства",
                    imageName: "",
                    rowsDetails: nil,
                    data: "dsfjknskdjfnskdjfnbs"
                ),
                RowInspection(
                    title: "Осмотр и изъятие следов крови",
                    imageName: "",
                    rowsDetails: nil,
                    data: "dsfjknskdjfnskdjfnbs"
                ),
                RowInspection(
                    title: "Работа с запаховыми следами",
                    imageName: "",
                    rowsDetails: nil,
                    data: "dsfjknskdjfnskdjfnbs"
                ),
                RowInspection(
                    title: "Работа со следами рук, ног",
                    imageName: "",
                    rowsDetails: nil,
                    data: "sdkjfhsdiughisuhckjvbisuhriufgh"
                ),
                RowInspection(
                    title: "Работа с орудиями преступления",
                    imageName: "",
                    rowsDetails: nil,
                    data: "sdkjfhsdiughisuhckjvbisuhriufgh"
                )
            ]
        ),
        Inspection(
            title: "Отдельные следственные действия при осмотре",
            imageName: "detective3",
            rows: [
                RowInspection(
                    title: "Описание, измерения, привязки обьектов и следов",
                    imageName: "",
                    rowsDetails: nil,
                    data: "sdkjfhsdiughisuhckjvbisuhriufgh"
                ),
                RowInspection(
                    title: "Изъятие и упаковка объектов и следов",
                    imageName: "",
                    rowsDetails: nil,
                    data: "sdkjfhsdiughisuhckjvbisuhriufgh"
                ),
                RowInspection(
                    title: "Составление планов и схем",
                    imageName: "",
                    rowsDetails: nil,
                    data: "sdkjfhsdiughisuhckjvbisuhriufgh"
                ),
                RowInspection(
                    title: "Фотосъемка",
                    imageName: "",
                    rowsDetails: nil,
                    data: "sdkjfhsdiughisuhckjvbisuhriufgh"
                ),
                RowInspection(
                    title: "Структура протокола осмотра места происшествия",
                    imageName: "",
                    rowsDetails: nil,
                    data: "sdkjfhsdiughisuhckjvbisuhriufgh"
                ),
                RowInspection(
                    title: "Камеры видеонаблюдения",
                    imageName: "",
                    rowsDetails: nil,
                    data: "sdkjfhsdiughisuhckjvbisuhriufgh"
                )
            ]
        )
    ]
    
    
}
