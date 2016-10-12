class CreateMobs < ActiveRecord::Migration[5.0]
  def change
    /#
      :limit      Numeric Type      Column Size Max value
      1     tinyint     1 byte      127
      2     smallint    2 bytes     32767
      3     mediumint   3 byte      8388607
      nil, 4, 11  int(11)     4 byte      2147483647
      5..8  bigint      8 byte      9223372036854775807
    #/
    create_table :mobs do |t|
      t.string :Sprite, null: false
      t.string :kName, null: false
      t.string :iName, null: false
      t.integer :LV, null: false, limit: 1, default: 0
      t.integer :HP, null: false, limit: 3, default: 0
      t.integer :SP, null: false, limit: 3, default: 0
      t.integer :EXP, null: false, limit: 3, default: 0
      t.integer :JEXP, null: false, limit: 3, default: 0
      t.integer :Range1, null: false, limit: 1, default: 0
      t.integer :ATK1, null: false, limit: 2, default: 0
      t.integer :ATK2, null: false, limit: 2, default: 0
      t.integer :DEF, null: false, limit: 2, default: 0
      t.integer :MDEF, null: false, limit: 2, default: 0
      t.integer :STR, null: false, limit: 2, default: 0
      t.integer :AGI, null: false, limit: 2, default: 0
      t.integer :VIT, null: false, limit: 2, default: 0
      t.integer :INT, null: false, limit: 2, default: 0
      t.integer :DEX, null: false, limit: 2, default: 0
      t.integer :LUK, null: false, limit: 2, default: 0
      t.integer :Range2, null: false, limit: 1, default: 0
      t.integer :Range3, null: false, limit: 1, default: 0
      t.integer :Scale, null: false, limit: 1, default: 0
      t.integer :Race, null: false, limit: 1, default: 0
      t.integer :Element, null: false, limit: 1, default: 0
      t.integer :Mode, null: false, default: 0
      t.integer :Speed, null: false, limit: 2, default: 0
      t.integer :aDelay, null: false, limit: 2, default: 0
      t.integer :aMotion, null: false, limit: 2, default: 0
      t.integer :dMotion, null: false, limit: 2, default: 0
      t.integer :MEXP, null: false, limit: 3, default: 0
      t.integer :MVP1id, null: false, limit: 2, default: 0
      t.integer :MVP1per, null: false, limit: 3, default: 0
      t.integer :MVP2id, null: false, limit: 2, default: 0
      t.integer :MVP2per, null: false, limit: 3, default: 0
      t.integer :MVP3id, null: false, limit: 2, default: 0
      t.integer :MVP3per, null: false, limit: 3, default: 0
      t.integer :Drop1id, null: false, limit: 2, default: 0
      t.integer :Drop1per, null: false, limit: 3, default: 0
      t.integer :Drop2id, null: false, limit: 2, default: 0
      t.integer :Drop2per, null: false, limit: 3, default: 0
      t.integer :Drop3id, null: false, limit: 2, default: 0
      t.integer :Drop3per, null: false, limit: 3, default: 0
      t.integer :Drop4id, null: false, limit: 2, default: 0
      t.integer :Drop4per, null: false, limit: 3, default: 0
      t.integer :Drop5id, null: false, limit: 2, default: 0
      t.integer :Drop5per, null: false, limit: 3, default: 0
      t.integer :Drop6id, null: false, limit: 2, default: 0
      t.integer :Drop6per, null: false, limit: 3, default: 0
      t.integer :Drop7id, null: false, limit: 2, default: 0
      t.integer :Drop7per, null: false, limit: 3, default: 0
      t.integer :Drop8id, null: false, limit: 2, default: 0
      t.integer :Drop8per, null: false, limit: 3, default: 0
      t.integer :Drop9id, null: false, limit: 2, default: 0
      t.integer :Drop9per, null: false, limit: 3, default: 0
      t.integer :DropCardid, null: false, limit: 2, default: 0
      t.integer :DropCardper, null: false, limit: 3, default: 0
    end
  end
end
