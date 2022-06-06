class ParentChildForm < YAAF::Form
  attr_accessor :parent_name, :child_name
  # validates :parent_name, length: { maximum: 10 }
  validates :child_name, presence: true

  def initialize(args = {})
    super(args)
    @models = [parent, child]
  end

  def parent
    @parent ||= Parent.new(name: parent_name)
  end

  def child
    @child ||= parent.children.new(name: child_name)
  end
end
