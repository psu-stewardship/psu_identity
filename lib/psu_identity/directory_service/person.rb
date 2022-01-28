# frozen_string_literal: true

module PsuIdentity::DirectoryService
  class Person
    attr_reader :data

    # @param [Hash] data parsed from the json reponse from the API
    def initialize(data = {})
      @data = data
    end

    def psu_id
      data['psuid']
    end

    def user_id
      data['user-id']
    end

    def member_group_list
      data['member-group-list']
    end

    def edu_person_affiliation_list
      data['edu-person-affiliation-list']
    end

    def ps_employee_class
      data['psEmployeeClass']
    end

    def orc_id
      data['orc-id']
    end
  end
end
