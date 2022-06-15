(declare-project
  :name "json"
  :description "Encodes and decodes JSON data, converting it to and from Janet data structures."
  :author "Calvin Rose"
  :license "MIT"
  :url "https://github.com/janet-lang/json"
  :repo "git+https://github.com/janet-lang/json.git")

(declare-native
  :name "json"
  :source @["json.c"])
