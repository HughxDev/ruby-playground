class RedCloth
  #
  # Returns a new RedCloth object, based on +String+ and
  # enforcing all the included +restrictions+.
  #
  #   r = RedCloth.new( "h1. A <b>bold</b> man", [:filter_html] )
  #   r.to_html
  #     #=>"<h1>A &amp;lt;b&amp;gt;bold&amp;lt;/b&amp;gt; man</h1>"
  #
  def initialize( string, restrictions = [] )
    @lite = false
    restrictions.each { |r| method( "#{ r }=" ).call( true ) }
    super( string )
  end
end