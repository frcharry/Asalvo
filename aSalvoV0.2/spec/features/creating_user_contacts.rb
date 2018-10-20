require 'rails_helper'

RSpec.feature "Creación de contactos" do
  scenario "con atributos válidos" do
    user=User.create(usuario_nombre: "Fabio", usuario_apellido: "Charry",usuario_mail: "fabio@charry.net", usuario_cel: 3132602767,
    usuario_sexo: "M",usuario_fechaNacimiento:"19/12/1982",usuario_ubicacion:"Aqui",password_digest:"123456")
    visit "/"
    click_link "Fabio Charry"
    click_link "Añadir contacto"
    fill_in "Contacto nombre", with: "Viviana Garzon"
    fill_in "Contacto cel",with: 1234565
    fill_in "Contacto mail",with: "viviana@garzon.com"
    click_button "Guardar"
    expect(page).to have_content "Se ha creado el contacto"
  end
end
