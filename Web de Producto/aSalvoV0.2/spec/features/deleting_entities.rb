require 'rails_helper'

RSpec.feature "admins pueden eliminar entidades" do
  scenario "con datos válidos" do
    entity=Entity.create(entidad_nombre:"Policia Nacional", entidad_representante:"Juan Perez", entidad_tel:1234567,
      entidad_email:"contacto@policia.gov.co",entidad_dir:"Calle 8 # 8 - 88",password_digest:"123456")
    visit "/"
    click_link "Policia Nacional"
    click_link "Eliminar"
    expect(page).to have_content "La entidad se ha eliminado"
    expect(page.current_url).to eq entities_url
    expect(page).to have_no_content "Policia Nacional"
  end
end
