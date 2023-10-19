//
//  DataBase.swift
//  CrimeFiles
//
//  Created by Igor on 28.09.2023.
//

import Foundation

struct DataBase {
    
    let preparednessToAction = DataStore.shared.preparednessToAction
    
    let inspections = [
        Inspection(
            title: "Подготовка к осмотру места происшествия",
            imageName: "PreparingForInspect",
            titleImage: "detective",
            rows: [
                RowInspection(
                    title: "Общие положения осмотра места происшествия",
                    imageName: "GeneralProvisionsForInspecting",
                    rowsDetails: [
                        RowDetailInspection(title: "This is test details Row 1 long long long", imageName: "testImage", data: "Fill in in the future!"),
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
                    data: """
1.    Проверить готовность «сумки следователя», в том числе средств фото- и видеофиксации, форменного обмундирования, индивидуальных средств защиты и т.д.
2.    Получить от оперативного дежурного органа внутренних дел точные, полные сведения о характере происшествия, обстановке места, где будет производиться осмотр:
*каков характер происшествия – для внесения предложений о составе следственно-оперативной группы, привлечения к участию в осмотре дополнительных специалистов, примерного определения границ и  метода осмотра;
*где расположено место происшествия – для определения времени, которое будет затрачено для прибытия и, с учетом этого, принятие мер по обеспечению сохранности следов, обеспечению присутствия понятых, а также должностных лиц предприятий, организаций, где будет проводиться осмотр, совершеннолетнего собственника жилья и др. лиц;
*кто сообщил о происшествии – для получения исходной информации о происшествии;
*имеются ли пострадавшие – для принятия мер по оказанию первой помощи;
*кто первым выбыл на МП – для получения информации об обстановке места происшествия, произошедших изменениях, их причинах;
*какие меры приняты к охране МП – для обеспечения сохранности обстановки места происшествия и отдельных следов.
4. Определение участников осмотра места происшествия.
Следственно-оперативная группа: следователь; сотрудник ОВД (подразделения криминальной милиции, УИМ, ГАИ и др.); специалист Государственного комитета судебных экспертиз (эксперт криминалист, судебно-медицинский эксперт и др.); кинолог со служебно-розыскной собакой и др.;
Иные участники: понятые;  представители администрации организации, предприятия; свидетель, потерпевший, подозреваемый;

"""
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
            titleImage: "detective2",
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
            titleImage: "detective3",
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
