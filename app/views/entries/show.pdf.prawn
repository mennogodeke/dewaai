
prawn_document() do |pdf|
  pdf.text "Factuur Inschrijving", :size => 24, :style => :bold

  pdf.text " "
  pdf.text " "
  pdf.text " "

  pdf.text "Cursist", :size => 16, :style => :bold

  pdf.table([ ["Naam", "Adres", "Postcode", "Plaats", "Telefoon", "Email"],
            ["#{@entry.user.first_name} #{@entry.user.last_name}", @entry.user.address, @entry.user.zip_code,
             @entry.user.city, @entry.user.telephone, @entry.user.email]])

  pdf.text " "
  pdf.text " "
  pdf.text " "
  pdf.text " "
  pdf.text " "
  pdf.text " "

  pdf.text "Cursus", :size => 16, :style => :bold
  pdf.table([ ["Cursus", "Begin Datum", "Prijs in euro's", "    ", "Totaal in euro's" ],
              [@entry.course.course_type.name, @entry.course.start_date, @entry.course.course_type.price, "    ", @entry.course.course_type.price] ])
  pdf.text ""

end