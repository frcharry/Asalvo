require "rails_helper"

RSpec.feature "Admins pueden crear contactos" do
  scenario "con datos vàlidos" do
    visit "/"
    click_link "Nuevo Contacto"
    fill_in "Contacto nombre", with: "Viviana Garzon"
    fill_in "Contacto cel",with: 1234565
    fill_in "Contacto mail",with: "viviana@garzon.com"
    click_button "Guardar"
    expect(page).to have_content "Se ha creado el contacto"
  end
end
