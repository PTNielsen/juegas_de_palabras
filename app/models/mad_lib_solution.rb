class MadLibSolution < ActiveRecord::Base
  belongs_to :mad_lib
  attr_accessible :values
  validates_presence_of :values

  attr_accessor :fields

  after_initialize do |solution|
    solution.instance_eval do
      @fields ||= {}
      if values.present?
        @fields = YAML::load values
      else
        mad_lib.field_labels.each do |label|
          @fields[label] ||= nil
        end
      end
    end
  end

  before_validation do |solution|
    unless YAML::load(solution.values || '') == fields
      solution.values = fields.to_yaml
    end
  end

  def fill_field(label, value)
    label = label.to_s
    unless mad_lib.has_field? label
      raise StandardError # replace with NoLabelError or something
    end
    unless fields.keys.include? label
      raise StandardError # replace with FieldAlreadyFilledIn or something
    end

    if value.is_a?(Hash) && value.key?(:with)
      value = value[:with].to_s
    end

    fields[label] = value
  end

  def resolve
    mad_lib_template = mad_lib.template
    fields.each do |key, value|
      mad_lib_template.sub! key, value
    end
    mad_lib_template
  end
end
