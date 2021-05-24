class Phrase
  def initialize(text)
    @text = text
  end

  def word_count
    words = @text.downcase.scan(/\b[\w']+\b+/)

    grouped = words.group_by(&:itself)

    words.uniq.map{ |w| [w, grouped[w].length] }.to_h
  end
end
