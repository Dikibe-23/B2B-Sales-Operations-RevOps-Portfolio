let
    StartDate = #date(2024, 9, 1),
    EndDate = #date(2029, 10, 31),
    DateList = List.Dates(StartDate, Duration.Days(EndDate - StartDate) + 1, #duration(1,0,0,0)),
    DateTable = Table.FromList(DateList, Splitter.SplitByNothing(), {"Datum"}),
    TypedDates = Table.TransformColumnTypes(DateTable, {{"Datum", type date}}),
    AddJahr = Table.AddColumn(TypedDates, "Jahr", each Date.Year([Datum]), Int64.Type),
    AddQ = Table.AddColumn(AddJahr, "Quartal", each Date.QuarterOfYear([Datum]), Int64.Type),
    AddQText = Table.AddColumn(AddQ, "QuartalText",
        each "Q" & Text.From(Date.QuarterOfYear([Datum])) & " " & Text.From(Date.Year([Datum])), type text),
    AddMonat = Table.AddColumn(AddQText, "Monat", each Date.Month([Datum]), Int64.Type),
    AddMName = Table.AddColumn(AddMonat, "MonatName", each Date.ToText([Datum], "MMMM", "de-DE"), type text),
    AddKW = Table.AddColumn(AddMName, "KW", each Date.WeekOfYear([Datum]), Int64.Type),
    AddWtag = Table.AddColumn(AddKW, "Wochentag", each Date.ToText([Datum], "dddd", "de-DE"), type text),
    AddWE = Table.AddColumn(AddWtag, "IstWochenende", each if Date.DayOfWeek([Datum]) >= 5 then 1 else 0, Int64.Type)
in
    AddWE
