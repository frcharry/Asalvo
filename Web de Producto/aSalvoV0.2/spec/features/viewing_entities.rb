require 'rails_helper'
RSpec.feature "Admins pueden ver Entidades" do
  scenario "ven detalles de la entidad" do
    entity=Entity.create(entidad_nombre:"Policia Nacional", entidad_representante:"Juan Perez", entidad_tel:1234567,
      entidad_email:"contacto@policia.gov.co",entidad_dir:"Calle 8 # 8 - 88",password_digest:"123456")
    visit "/"
    click_link "Policia Nacional"
    expect(page.current_url).to eq entity_url(entity)
    expect(page).to have_content "Policia Nacional"
  end
end
