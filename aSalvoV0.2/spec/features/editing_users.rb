require 'rails_helper'

RSpec.feature "Administradores pueden editar Usuarios" do
  scenario "con atributos válidos" do
    user=User.create(usuario_nombre: "Fabio", usuario_apellido: "Charry",usuario_mail: "fabio@charry.net", usuario_cel: 3132602767,
    usuario_sexo: "M",usuario_fechaNacimiento:"19/12/1982",usuario_ubicacion:"Aqui",password_digest:"123456")
    visit "/"
    click_link "Fabio"
    click_link "Editar"
    fill_in "Usuario nombre",with:"Fabio Ricardo"
    click_button "Guardar"
    expect(page).to have_content "Se ha actualizado el usuario"
    expect(page).to have_content "Fabio Ricardo"
  end
end
