# Modify the kebabize function so that it converts a camel case string into a kebab case.
#
# kebabize('camelsHaveThreeHumps') // camels-have-three-humps
# kebabize('camelsHave3Humps') // camels-have-humps
#
# Notes:
#
#     the returned string should only contain lowercase letters
#


def kebabize(str)
  gsubbed = str.gsub(/[^a-zA-Z ]/, "")
  new_str = gsubbed.split /(?=[A-Z])/
  new_str.join("-").downcase
end
