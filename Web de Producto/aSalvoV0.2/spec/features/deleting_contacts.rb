require "rails_helper"

RSpec.feature "Admins pueden eliminar contactos" do
  scenario "Eliminar contactos" do
    contact=Contact.create(contacto_nombre:"Julieta Charry",contacto_cel:"3133874248",contacto_mail:"julieta@charry.net")
    visit "/"
    click_link "Julieta Charry"
    click_link "Eliminar"
    expect(page).to have_content "El contacto se ha eliminado."
    expect(page.current_url).to eq contacts_url
    expect(page).to have_no_content "Julieta Charry"
  end
end
