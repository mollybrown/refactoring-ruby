# You have a complicated expression =>
# Put the result of the expression, or parts of the expression, in a temportary variable with a name that explains its purpose

if (platform.upcase.index("MAC") &&
    browser.upcase.index("IE") &&
    initialized? &&
    resize > 0
   )
# do something
end

##############################

is_mac_os = platform.upcase.index("MAC")
is_ie_browser = browser.upcase.index("IE")
was_resized = resize > 0

if (is_mac_os && is_ie_browser && initialized && was_resized)
  # do something
end
