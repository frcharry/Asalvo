require 'rails_helper'
RSpec.feature "Admins pueden editar contactos" do
  scenario "Editar datos válidos" do
    contact=Contact.create(contacto_nombre:"Julieta Charry",contacto_cel:"3133874248",contacto_mail:"julieta@charry.net")
    visit "/"
    click_link "Julieta Charry"
    click_link "Editar"
    fill_in "Contacto nombre", with: "Julieta Charry Garzón"
    click_button "Guardar"
    expect(page).to have_content "Se ha actualizado el contacto."
    expect(page).to have_content "Julieta Charry Garzón"
  end
end
