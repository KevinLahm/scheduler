require "application_system_test_case"

class AppointmentsTest < ApplicationSystemTestCase
  setup do
    @appointment = appointments(:one)
  end

  test "visiting the index" do
    visit appointments_url
    assert_selector "h1", text: "Appointments"
  end

  test "creating a Appointment" do
    visit appointments_url
    click_on "New Appointment"

    fill_in "Booking time", with: @appointment.booking_time
    fill_in "Doc email", with: @appointment.doc_email
    fill_in "User email", with: @appointment.user_email
    fill_in "User first name", with: @appointment.user_first_name
    fill_in "User last name", with: @appointment.user_last_name
    fill_in "User phone no", with: @appointment.user_phone_no
    click_on "Create Appointment"

    assert_text "Appointment was successfully created"
    click_on "Back"
  end

  test "updating a Appointment" do
    visit appointments_url
    click_on "Edit", match: :first

    fill_in "Booking time", with: @appointment.booking_time
    fill_in "Doc email", with: @appointment.doc_email
    fill_in "User email", with: @appointment.user_email
    fill_in "User first name", with: @appointment.user_first_name
    fill_in "User last name", with: @appointment.user_last_name
    fill_in "User phone no", with: @appointment.user_phone_no
    click_on "Update Appointment"

    assert_text "Appointment was successfully updated"
    click_on "Back"
  end

  test "destroying a Appointment" do
    visit appointments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Appointment was successfully destroyed"
  end
end
