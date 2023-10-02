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
            imageName: "PreparingForInspect",
            rows: [
                RowInspection(
                    title: "Общие положения осмотра места происшествия",
                    imageName: "GeneralProvisionsForInspecting",
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
                    imageName: "EnsuringReadinessForDeparture",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                ),
                RowInspection(
                    title: "Действия следователя при получении сообщения о преступлении",
                    imageName: "InvestigatorsActions",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                    
                ),
                RowInspection(
                    title: "Действия по прибытии на место происшествия",
                    imageName: "ActionsUponArrival",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                ),
                RowInspection(
                    title: "Обязательные участники осмотра места происшествия",
                    imageName: "MandatoryParticipants",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                ),
                RowInspection(
                    title: "Дополнительные участники осмотра места происшествия",
                    imageName: "AdditionalParticipants",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                    
                ),
                RowInspection(
                    title: "Определение границ осмотра места происшествия",
                    imageName: "DefinitionOfBoundaries",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                )
            ]
        ),
        Inspection(
            title: "Осмотры по обьектам",
            imageName: "InspectionsByObjects",
            rows: [
                RowInspection(
                    title: "Осмотр жилища",
                    imageName: "HomeInspection",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                    
                ),
                RowInspection(
                    title: "Осмотр участка местности",
                    imageName: "AreaInspection",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                ),
                RowInspection(
                    title: "Осмотр трупа",
                    imageName: "CorpseInspection",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                ),
                RowInspection(
                    title: "Осмотр транспортного средства",
                    imageName: "VehicleInspection",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                ),
                RowInspection(
                    title: "Осмотр и изъятие следов крови",
                    imageName: "BloodTracesExamination",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                ),
                RowInspection(
                    title: "Работа с запаховыми следами",
                    imageName: "WorkingWithSmell",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                ),
                RowInspection(
                    title: "Работа со следами рук, ног",
                    imageName: "WorkingWithHandAndFeetMarks",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                ),
                RowInspection(
                    title: "Работа с орудиями преступления",
                    imageName: "WorkingWithCrimeInstruments",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                )
            ]
        ),
        Inspection(
            title: "Отдельные следственные действия при осмотре",
            imageName: "SeperateActionsDuringInspections",
            rows: [
                RowInspection(
                    title: "Описание, измерения, привязки обьектов и следов",
                    imageName: "DescriptionMeasurementsObjectsAndTraces",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                ),
                RowInspection(
                    title: "Изъятие и упаковка объектов и следов",
                    imageName: "RemovalAndPackagingObjectsAndTraces",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                ),
                RowInspection(
                    title: "Составление планов и схем",
                    imageName: "PreparationOfPlansAndDiagrams",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                ),
                RowInspection(
                    title: "Фотосъемка",
                    imageName: "Photography",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                ),
                RowInspection(
                    title: "Структура протокола осмотра места происшествия",
                    imageName: "ProtocolStructure",
                    rowsDetails: nil,
                    data: "Fill in in the future!"
                ),
                RowInspection(
                    title: "Камеры видеонаблюдения",
                    imageName: "CCTVCameras",
                    rowsDetails: nil,
                    data: "Fill in in the future! Fill in in the future! Fill in in the future! Fill in in the future! Fill in in the future! Fill in in the future! Fill in in the future! Fill in in the future! Fill in in the future! Fill in in the future! Fill in in the future! Fill in in the future!"
                )
            ]
        )
    ]
    
    
}
