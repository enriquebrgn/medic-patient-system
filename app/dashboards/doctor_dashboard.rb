require "administrate/base_dashboard"

class DoctorDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    person: Field::BelongsTo,
    id: Field::Number,
    speciality: Field::Enum,
    years_experience: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    area_id: Field::Number,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :person,
    :id,
    :speciality,
    :years_experience,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :person,
    :id,
    :speciality,
    :years_experience,
    :created_at,
    :updated_at,
    :area_id,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :person,
    :speciality,
    :years_experience,
    :area_id,
  ].freeze

  # Overwrite this method to customize how doctors are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(doctor)
  #   "Doctor ##{doctor.id}"
  # end
end