require 'rails_helper'
RSpec.feature "Admins pueden eliminar Usuarios" do
  scenario "con éxito" do
    user=User.create(usuario_nombre: "Fabio", usuario_apellido: "Charry",usuario_mail: "fabio@charry.net", usuario_cel: 3132602767,
    usuario_sexo: "M",usuario_fechaNacimiento:"19/12/1982",usuario_ubicacion:"Aqui",password_digest:"123456")
    visit "/"
    click_link "Fabio Charry"
    click_link "Eliminar"
    expect(page).to have_content "El usuario se ha eliminado"
    expect(page.current_url).to eq users_url
    expect(page).to have_no_content "Fabio Charry"
  end
end
