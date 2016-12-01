prawn_document() do |pdf|
  pdf.text "De Waai", :size => 24, :style => :bold
  pdf.text " "
  pdf.text " "
  pdf.text " "
  pdf.text "Overzicht #{@course.course_type.name} Cursus #{@course.start_date} / #{@course.start_date + 7}", :style => :bold
  pdf.text " "
  head = [["Naam", "Adres", "Postcode", "Plaats", "Telefoon", "Email"]]
  head+= @entries.collect{ |e| ["#{e.user.first_name} #{e.user.last_name}", e.user.address, e.user.zip_code, e.user.city, e.user.telephone, e.user.email]}

  pdf.table(head, :header => true)
end