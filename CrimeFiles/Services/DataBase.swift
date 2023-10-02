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
                    imageName: "GeneralProvisionsForInspecting"
                ),
                RowInspection(
                    title: "Обеспечение готовности к выезду на место происшествия",
                    imageName: "EnsuringReadinessForDeparture"
                ),
                RowInspection(
                    title: "Действия следователя при получении сообщения о преступлении",
                    imageName: "InvestigatorsActions"
                ),
                RowInspection(
                    title: "Действия по прибытии на место происшествия",
                    imageName: "ActionsUponArrival"
                ),
                RowInspection(
                    title: "Обязательные участники осмотра места происшествия",
                    imageName: "MandatoryParticipants"
                ),
                RowInspection(
                    title: "Дополнительные участники осмотра места происшествия",
                    imageName: "AdditionalParticipants"
                ),
                RowInspection(
                    title: "Определение границ осмотра места происшествия",
                    imageName: "DefinitionOfBoundaries"
                )
            ]
        ),
        Inspection(
            title: "Осмотры по обьектам",
            imageName: "InspectionsByObjects",
            rows: [
                RowInspection(
                    title: "Осмотр жилища",
                    imageName: "HomeInspection"
                ),
                RowInspection(
                    title: "Осмотр участка местности",
                    imageName: "AreaInspection"
                ),
                RowInspection(
                    title: "Осмотр трупа",
                    imageName: "CorpseInspection"
                ),
                RowInspection(
                    title: "Осмотр транспортного средства",
                    imageName: "VehicleInspection"
                ),
                RowInspection(
                    title: "Осмотр и изъятие следов крови",
                    imageName: "BloodTracesExamination."
                ),
                RowInspection(
                    title: "Работа с запаховыми следами",
                    imageName: "WorkingWithSmell"
                ),
                RowInspection(
                    title: "Работа со следами рук, ног",
                    imageName: "WorkingWithHandAndFeetMarks"
                ),
                RowInspection(
                    title: "Работа с орудиями преступления",
                    imageName: "WorkingWithCrimeInstruments"
                )
            ]
        ),
        Inspection(
            title: "Отдельные следственные действия при осмотре",
            imageName: "SeperateActionsDuringInspections",
            rows: [
                RowInspection(
                    title: "Описание, измерения, привязки обьектов и следов",
                    imageName: "DescriptionMeasurementsObjectsAndTraces"
                ),
                RowInspection(
                    title: "Изъятие и упаковка объектов и следов",
                    imageName: "RemovalAndPackagingObjectsAndTraces"
                ),
                RowInspection(
                    title: "Составление планов и схем",
                    imageName: "PreparationOfPlansAndDiagrams"
                ),
                RowInspection(
                    title: "Фотосъемка",
                    imageName: "Photography"
                ),
                RowInspection(
                    title: "Структура протокола осмотра места происшествия",
                    imageName: "ProtocolStructure"
                ),
                RowInspection(
                    title: "Камеры видеонаблюдения",
                    imageName: "CCTVCameras"
                )
            ]
        )
    ]
    
    
}
