# frozen_string_literal: true

module PsuIdentity::SearchService
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
      data['userid']
    end

    def cpr_id
      data['cprid']
    end

    def given_name
      data['givenName']
    end

    def middle_name
      data['middleName']
    end

    def family_name
      data['familyName']
    end
    alias :surname :family_name

    def honorific_suffix
      data['honorificSuffix']
    end

    def preferred_given_name
      presence(data['preferredGivenName']) || given_name
    end

    def preferred_middle_name
      presence(data['preferredMiddleName']) || middle_name
    end

    def preferred_family_name
      presence(data['preferredFamilyName']) || family_name
    end

    def preferred_honorific_suffix
      presence(data['preferredHonorificSuffix']) || honorific_suffix
    end

    def active?
      data['active'].is_a?(TrueClass) || data['active'] == 'true'
    end

    def conf_hold?
      data['confHold'] == 'true'
    end

    def university_email
      data['universityEmail']
    end

    def other_email
      data['otherEmail']
    end

    def affiliation
      data.fetch('affiliation', [])
    end

    def display_name
      data['displayName']
    end

    def link
      AtomicLink.new(data['link'])
    end

    private

      def presence(string)
        return nil if string == nil

        return nil if string == ''

        string
      end
  end
end
