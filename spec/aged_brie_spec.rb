require 'aged_brie'

describe AgedBrie do

  describe "#update_quality" do
    it "does not change the name" do
      items = [Item.new("foo", 0, 0)]
      GildedRose.new(items).update_quality()
      expect(items[0].name).to eq "foo"
    end
    it "aged brie increases in quality each day and does not increase in quality past 50" do
      item = [Item.new("Aged Brie", 50, 50)]
      GildedRose.new(item).update_quality()
      expect(item[0].quality).to eq 50
    end
    it "never lets the quality go below 0" do
      item = [Item.new("apple", 0, 0)]
      GildedRose.new(item).update_quality()
      expect(item[0].quality).to eq 0
    end

  end
end
