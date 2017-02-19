class PigLatinizer
  attr_accessor :text
  @text = ""

  def text
    @text
  end

  def piglatinize(word_f)
    text_new = word_f.split(" ")
    latinized = text_new.map do |word|
      word = word.split("")
      if word.length == 1
        word[0] + "way"
      elsif /[aeiouAEIOU]/.match(word[0]) != nil
        word.join("") + "way"
      else
        while (/[aeiouAEIOU]/.match(word[0]) == nil)
        word = word.rotate
        end
        word.join("") + "ay"
      end

    end
    length = latinized.length
    answer = latinized.join(" ")

      answer

  end

  def to_pig_latin(words)
    piglatinize(words)
  end
end
