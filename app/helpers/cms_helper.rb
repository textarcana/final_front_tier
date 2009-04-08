# Facade -- not actually an interface to a CMS.  But could easily be replaced with such.
module CmsHelper

  # Title of the application.
  # Printed at the end of the title tag on every page.
  # Referenced from layouts/shared/_xhtml_head.haml

  BASE_TITLE = "Final Front Tier v0.0.0"

  # Generate a list of attributes for the HTML tag
  def strict_xhtml_attributes
    {"xml:lang" => "en-US", :lang => "en-US", :xmlns => "http://www.w3.org/1999/xhtml"}
  end

  # Create unique ID for the body tag by concatenating the controller and action names
  def page_name
    (controller.controller_name + controller.action_name.titleize).gsub(/\s/, '_')
  end

  # Parse and format a page title.
  # If no page title is specified, construct one on the fly from controller and action names

  def make_title page_title=nil
    
    if page_title.nil? || page_title.match(/^\s*$/)

      page_title = controller.action_name.titleize

    end
    
    page_title + ": " + BASE_TITLE
    
  end

end
