require "rails_helper"

RSpec.feature "Admins pueden crear usuarios" do
  scenario "con atributos válidos" do
    visit "/"
    click_link "Nuevo Usuario"
    fill_in "Usuario nombre",with: "Fabio",visible: false
    fill_in "Usuario apellido",with: "Charry"
    fill_in "Usuario mail",with: "fabio@charry.net"
    fill_in "Usuario cel",with: "3132602767"
    fill_in "Usuario sexo",with: "M"
    fill_in "Usuario fechanacimiento",with: "19/12/1982"
    fill_in "Usuario ubicacion",with:"here"
    fill_in "Password digest",with: "123456"
    click_button "Guardar"
    expect(page).to have_content "Se ha creado el usuario"
  end
end
