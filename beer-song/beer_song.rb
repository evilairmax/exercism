class BeerSong
  def self.recite from_verse, num_verses
    to_verse = from_verse - (num_verses - 1)

    (to_verse..from_verse)
        .to_a
        .reverse
        .map { |verse| lyrics verse }
        .join("\n")
  end

  private

  def self.lyrics verse_number
    case
    when verse_number == 2
      "2 bottles of beer on the wall, 2 bottles of beer.\n" +
          "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    when verse_number == 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" +
          "Take it down and pass it around, no more bottles of beer on the wall.\n"
    when verse_number == 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" +
          "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      "#{verse_number} bottles of beer on the wall, #{verse_number} bottles of beer.\n" +
          "Take one down and pass it around, #{verse_number - 1} bottles of beer on the wall.\n"
    end
  end
end