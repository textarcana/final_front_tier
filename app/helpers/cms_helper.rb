# Facade -- not actually an interface to a CMS.  But could easily be replaced with such.
module CmsHelper

  # Title of the application.
  # Printed at the end of the title tag on every page.
  # Referenced from layouts/shared/_xhtml_head.haml

  BASE_TITLE = "Final Front Tier v0.0.0"

  # Parse and format a page title.
  # If no page title is specified, construct one on the fly from controller and action names

  def make_title page_title=nil
    
    if page_title.nil? || page_title.match(/^\s*$/)

      page_title = controller.action_name.titleize

    end
    
    page_title + ": " + BASE_TITLE
    
  end

end
