require 'safariwatir'

# Create a new browser object
browser = Watir::Safari.new
# Specify the OkCupid URL
url = "http://www.okcupid.com"

# Navigate the browser to okcupid.com
browser.goto url

# Enter the username
browser.text_field(:id, "sidebar_signin_username").set "okcupidmatcher"
# Enter the password
browser.password(:id, "sidebar_signin_password").set "nomorenerds"

# Click the signin button
browser.form(:id, "sidebar_signin_form").submit

# Get all links on the page
links = browser.links

# Find the link with text "Matches"
links.each do |link|
  if link.text == "Matches"
    link.click
  end
end

# profile_links = browser.link(:class, 'ajax_load_profile_link')
# 
# count = 0
# 
# profile_links.each do |pl|
#   count += 1
# end
# 
# puts count
count = 0
all_links = browser.links
all_links.each do |al|
  count += 1
end
puts count
