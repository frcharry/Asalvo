require 'rails_helper'
RSpec.feature "Administradores pueden ver usuarios" do
  scenario "ver detalles del usuario" do
    user=User.create(usuario_nombre: "Fabio", usuario_apellido: "Charry",usuario_mail: "fabio@charry.net", usuario_cel: 3132602767,
    usuario_sexo: "M",usuario_fechaNacimiento:"19/12/1982",usuario_ubicacion:"Aqui",password_digest:"123456")
    visit "/"
    click_link "Fabio"
    expect(page.current_url).to eq user_url(user)
    expect(page).to have_content "Fabio"
  end
end
