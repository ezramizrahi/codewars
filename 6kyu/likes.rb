# You probably know the "like" system from Facebook and other pages.
# People can "like" blog posts, pictures or other items.
# We want to create the text that should be displayed next to such an item.
#
# Implement a function likes :: [String] -> String,
# which must take in input array, containing the names of
# people who like an item.
# It must return the display text as shown in the examples:
#
# likes [] // must be "no one likes this"
# likes ["Peter"] // must be "Peter likes this"
# likes ["Jacob", "Alex"] // must be "Jacob and Alex like this"
# likes ["Max", "John", "Mark"] // must be "Max, John and Mark like this"
# likes ["Alex", "Jacob", "Mark", "Max"] // must be "Alex, Jacob and 2 others like this"

def likes(names)
  if names.empty?
    'no one likes this'
  elsif names.count === 1
    names.first + " likes this"
  elsif names.count === 2
    names.first + " and " + names.last + " like this"
  elsif names.count === 3
    names.first + ", " + names[1] + " and " + names.last + " like this"
  elsif names.count > 3
    likes = names.count - 2
    names.first + ", " + names[1] + " and " + likes.to_s + " others like this"
  end
end
