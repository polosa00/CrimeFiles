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
                    imageName: ""
                ),
                RowInspection(
                    title: "Обеспечение готовности к выезду на место происшествия",
                    imageName: ""
                ),
                RowInspection(
                    title: "Действия следователя при получении сообщения о преступлении",
                    imageName: ""
                ),
                RowInspection(
                    title: "Действия по прибытии на место происшествия",
                    imageName: ""
                ),
                RowInspection(
                    title: "Обязательные участники осмотра места происшествия",
                    imageName: ""
                ),
                RowInspection(
                    title: "Дополнительные участники осмотра места происшествия",
                    imageName: ""
                ),
                RowInspection(
                    title: "Определение границ осмотра места происшествия",
                    imageName: ""
                )
            ]
        ),
        Inspection(
            title: "Осмотры по обьектам",
            imageName: "detective2",
            rows: [
                RowInspection(
                    title: "Осмотр жилища",
                    imageName: ""
                ),
                RowInspection(
                    title: "Осмотр участка местности",
                    imageName: ""
                ),
                RowInspection(
                    title: "Осмотр трупа",
                    imageName: ""
                ),
                RowInspection(
                    title: "Осмотр транспортного средства",
                    imageName: ""
                ),
                RowInspection(
                    title: "Осмотр и изъятие следов крови",
                    imageName: ""
                ),
                RowInspection(
                    title: "Работа с запаховыми следами",
                    imageName: ""
                ),
                RowInspection(
                    title: "Работа со следами рук, ног",
                    imageName: ""
                ),
                RowInspection(
                    title: "Работа с орудиями преступления",
                    imageName: ""
                )
            ]
        ),
        Inspection(
            title: "Отдельные следственные действия при осмотре",
            imageName: "detective3",
            rows: [
                RowInspection(
                    title: "Описание, измерения, привязки обьектов и следов",
                    imageName: ""
                ),
                RowInspection(
                    title: "Изъятие и упаковка объектов и следов",
                    imageName: ""
                ),
                RowInspection(
                    title: "Составление планов и схем",
                    imageName: ""
                ),
                RowInspection(
                    title: "Фотосъемка",
                    imageName: ""
                ),
                RowInspection(
                    title: "Структура протокола осмотра места происшествия",
                    imageName: ""
                ),
                RowInspection(
                    title: "Камеры видеонаблюдения",
                    imageName: ""
                )
            ]
        )
    ]
    
    
}
