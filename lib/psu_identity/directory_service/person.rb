# frozen_string_literal: true

module PsuIdentity::DirectoryService
  class Person
    attr_reader :data

    # @param [Hash] data parsed from the json reponse from the API
    def initialize(data = {})
      @data = data
    end

    # @return [string]
    def admin_group_list
      data['admin-group-list']
    end

    # @return [string]
    def owner_group_list
      data['owner-group-list']
    end

    # @return [string]
    def member_group_list
      data['member-group-list']
    end

    # @return string
    def ps_dir_idn
      data['ps-dir-idn']
    end

    # @return string
    def ps_uid_number
      data['ps-uid-number']
    end

    # @return string
    def uid_number
      data['uid-number']
    end

    # @return string
    def psu_id
      data['psuid']
    end

    # @return string
    def user_id
      data['user-id']
    end

    # @return string
    def nickname
      data['nickname']
    end

    # @return [string]
    def alternate_email_list
      data['alternate-email-list']
    end

    # @return string
    def mobile_phone_number
      data['mobile-phone-number']
    end

    # @return string
    def office_address
      data['office-address']
    end

    # @return string
    def office_location
      data['office-location']
    end

    # @return string
    def office_phone
      data['office-phone']
    end

    # @return string
    def birth_date
      data['birth-date']
    end

    # @return string
    def home_phone
      data['home-phone']
    end

    # @return string
    def home_directory
      data['homeDirectory']
    end

    # @return string
    def home_address
      data['home-address']
    end

    # @return bool
    def ps_ferpa_exam
      data['ps-ferpa-exam']
    end

    # @return bool
    def ps_optional_2fa
      data['ps-optional-2fa']
    end

    # @return string
    def permanent_address
      data['permanent-address']
    end

    # @return string
    def permanent_phone_number
      data['permanent-phone-number']
    end

    # @return string
    def login_shell
      data['login-shell']
    end

    # @return string
    def ps_department
      data['ps-department']
    end

    # @return string
    def ps_department_code
      data['ps-department-code']
    end

    # @return string
    def given_name
      data['given-name']
    end

    # @return string
    def date_of_birth
      data['date-of-birth']
    end

    # @return string
    def ps_appt_code
      data['psApptCode']
    end

    # @return string
    def ps_campus_code
      data['ps-campus-code']
    end

    # @return string
    def ps_camus
      data['ps-campus']
    end

    # @return string
    def title
      data['title']
    end

    # @return string
    def edu_person_principal_name
      data['edu-person-principal-name']
    end

    # @return string
    def edu_person_primary_affiliation
      data['edu-person-primay-affiliation']
    end

    # @return string
    def postal_address
      data['postal-address']
    end

    # @return string
    def telephone_number
      data['telephone-number']
    end

    # @return string
    def ps_admin_area
      data['ps-admin-area']
    end

    # @return string
    def ps_business_area
      data['ps-business-area']
    end

    # @return string
    def ps_business_area_code
      data['ps-business-area-code']
    end

    # @return string
    def display_name
      data['display-name']
    end

    # @return string
    def surname
      data['surname']
    end

    # @return string
    def preferred_name
      data['preferred-name']
    end

    # @return string
    def common_name
      data['common-name']
    end

    # @return string
    def ps_mail_host
      data['ps-mail-host']
    end

    # @return string
    def ps_mailbox
      data['ps-mailbox']
    end

    # @return string
    def email
      data['email']
    end

    # @return bool
    def ps_show_phone
      data['ps-show-phone']
    end

    # @return bool
    def ps_show_postal_address
      data['ps-show-postal-address']
    end

    # @return string
    def orc_id
      data['orc-id']
    end

    # @return [string]
    def edu_person_enttitlement_list
      data['edu-person-entitlement-list']
    end

    # @return [string]
    def edu_person_nickname_list
      data['edu-person-nickname-list']
    end

    # @return [string]
    def edu_person_affiliation_list
      data['edu-person-affiliation-list']
    end

    # @return bool
    def ps_conf_hold
      data['psConfHold']
    end

    # @return string
    def ps_code_hotl
      data['psCodeHotl']
    end

    # @return string
    def ps_curriculum
      data['psCurriculum']
    end

    # @return string
    def ps_employee_class
      data['psEmployeeClass']
    end

    # @return string
    def ps_estatus_code
      data['psEstatusCode']
    end

    # @return string
    def ps_mac_lab_gid
      data['psMacLabGID']
    end

    # @return string
    def ps_hours
      data['psHours']
    end

    # @return string
    def ps_mac_lab_home_dir
      data['psMacLabHomeDir']
    end

    # @return string
    def ps_scholar_status
      data['psScholarStatus']
    end

    # @return string
    def ps_semester_code
      data['psSemesterCode']
    end

    # @return string
    def ps_semester_standing
      data['psSemesterStanding']
    end

    # @return string
    def visa_type
      data['visaType']
    end

    # @return string
    def gender_pronouns
      data['genderPronouns']
    end

    # @return string
    def psu_id_number
      data['psu-id-number']
    end
  end
end
