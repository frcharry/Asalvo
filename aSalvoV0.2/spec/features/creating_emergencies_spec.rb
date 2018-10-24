require 'rails_helper'

RSpec.feature "Usuarios crean Emergencias"do
  scenario "con datos válidos" do
    user=User.create(usuario_nombre: "Stefania", usuario_apellido: "Charry",usuario_mail: "stefania@charry.net", usuario_cel: 3132602767,
    usuario_sexo: "M",usuario_fechaNacimiento:"19/12/1982",usuario_ubicacion:"Aqui",password_digest:"123456")
    entidad=Entity.create(entidad_nombre: "Policia",entidad_representante: "Juan Perez",
    entidad_tel: "12345",entidad_dir: "por allá",password_digest:"12345",nit:"12345")
    visit "/"
    click_link "Stefania Charry"
    click_link "Crear emergencia"
    fill_in "Emergencia fecha",with: Time.now
    fill_in "Emergencia ubicacion",with: "aqui"
    fill_in "Emergencia data",with: "datos"
    click_button "Guardar"
    expect(page).to have_content "Se ha creado la emergencia"
    expect(page.current_url).to eq user_url(user)
  end
end
