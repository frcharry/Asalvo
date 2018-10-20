require 'rails_helper'

RSpec.feature "Usuarios crean Emergencias"do
  scenario "con datos válidos" do
    user=User.create(usuario_nombre: "Stefania", usuario_apellido: "Charry",usuario_mail: "stefania@charry.net", usuario_cel: 3132602767,
    usuario_sexo: "M",usuario_fechaNacimiento:"19/12/1982",usuario_ubicacion:"Aqui",password_digest:"123456")
    visit "/"
    click_link "Stefania Charry"
    click_link "Crear emergencia"
    click_button "Guardar"
    expect(page).to have_content "Se ha creado la emergencia"
    expect(page.current_url).to eq user_url(user)
  end
end
