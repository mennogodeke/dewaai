prawn_document() do |pdf|
  pdf.text "De Waai", :size => 24, :style => :bold
  pdf.text " "
  pdf.text " "
  pdf.text " "
  pdf.text "Overzicht opbrengsten cursussen periode #{@first_date.start_date} / #{@last_date.start_date}", :style => :bold
  pdf.text " "
  head = [["Cursus", "Begin Datum", "Eind Datum", "Prijs in euro's", "Aantal Cursisten", "Opbrengsten in euro's"]]
  head+= @courses.collect{ |c| [c.course_type.name, c.start_date, "#{c.start_date + 7}", c.course_type.price, c.entries.count, "#{c.course_type.price * c.entries.count}" ]}

  pdf.table(head, :header => true)

  pdf.table([["Totaal In Euro's", @total]])
end
