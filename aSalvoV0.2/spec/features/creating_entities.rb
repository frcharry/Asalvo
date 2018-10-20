require "rails_helper"

RSpec.feature "Admins pueden crear Entidades de Apoyo" do
  scenario "con atributos válidos" do
    visit "/"
    click_link "Nueva Entidad"
    fill_in "Entidad nombre",with: "Policia",visible: false
    fill_in "Entidad representante",with: "Julieta Charry"
    fill_in "Entidad tel",with: "250250250"
    fill_in "Entidad email",with: "contacto@policia.gov"
    fill_in "Entidad dir",with: "Calle 15 # 25-32"
    fill_in "Password digest",with:"123456"
    click_button "Guardar"
    expect(page).to have_content "Se ha creado la entidad"
  end
end
