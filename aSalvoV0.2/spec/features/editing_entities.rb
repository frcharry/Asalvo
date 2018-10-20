require 'rails_helper'
RSpec.feature "Admins pueden editar entidades" do
  scenario "con atributos válidos" do
    entity=Entity.create(entidad_nombre:"Policia Nacional", entidad_representante:"Juan Perez", entidad_tel:1234567,
      entidad_email:"contacto@policia.gov.co",entidad_dir:"Calle 8 # 8 - 88",password_digest:"123456")
      visit "/"
      click_link "Policia Nacional"
      click_link "Editar"
      fill_in "Entidad nombre",with: "Policia Nacional Sede Chapinero"
      click_button "Guardar"
      expect(page).to have_content "Se ha actualizado la entidad"
      expect(page).to have_content "Policia Nacional Sede Chapinero"
  end
end
