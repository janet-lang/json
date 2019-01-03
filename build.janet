(import cook)

(cook/make-native
    :name "json"
    :source @["json.c"])

(import build/json :as json)

(defn check-object [x]
  (def y (json/decode (json/encode x)))
  (def y1 (json/decode (json/encode x " " "\n")))
  (if (deep-not= x y) (error (string "failed roundtrip 1: " (string/pretty x))))
  (if (deep-not= x y1) (error (string "failed roundtrip 2: " (string/pretty x)))))

(check-object 1)
(check-object 100)
(check-object true)
(check-object false)
(check-object (range 1000))
(check-object @{"two" 2 "four" 4 "six" 6})
(check-object @{"hello" "world"})
(check-object @{"john" 1 "billy" "joe" "a" @[1 2 3 4 -1000]})
