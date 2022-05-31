class ParentChildForm < YAAF::Form
  attr_accessor :parent_name
  validates :parent_name, length: { maximum: 10 }

  def initialize(args = {})
    super(args)
    @models = [parent]
  end

  def parent
    @parent ||= Parent.new(name: parent_name)
  end
end
