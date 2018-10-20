require 'rails_helper'

RSpec.feature "Admins pueden crear contactos" do
  scenario "ven detalles de los usuarios" do
    user=User.create(usuario_nombre: "Fabio", usuario_apellido: "Charry",usuario_mail: "fabio@charry.net", usuario_cel: 3132602767,
    usuario_sexo: "M",usuario_fechaNacimiento:"19/12/1982",usuario_ubicacion:"Aqui",password_digest:"123456")
    contact=Contact.create(contacto_nombre: "Pau Charry", contacto_cel: 3133252525,
      contacto_mail: "pau@charry.net")
    visit "/"
    click_link "Fabio Charry"
    click_link "Pau Charry"
    expect(page.current_url).to eq user_contact_url(user,contact)
    expect(page).to have_content "Pau Charry"
  end
end
