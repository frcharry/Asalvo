require "rails_helper"

RSpec.feature "Admins pueden ver contactos" do
  scenario "ver detalles del contacto" do
    contact=Contact.create(contacto_nombre:"Julieta Charry",contacto_cel:"3133874248",contacto_mail:"julieta@charry.net")
    visit "/"
    click_link "Julieta Charry"
    expect(page.current_url).to eq contact_url(contact)
    expect(page).to have_content "Julieta Charry"
  end
end
