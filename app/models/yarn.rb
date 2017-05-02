class Yarn < ApplicationRecord
  enum weight: { lace: 0, fingering: 1, sport: 2, DK: 3, aran: 4, bulky: 5, super_bulky: 6 }
  enum spinned_as: { worsted: 0, semi_worsted: 1, woollen: 2 }
  enum dye: { undyed: 0, natural_dye: 1, chemical_dye: 2, unknown_dye: 3}

  has_many :skeins
  has_many :compositions
end
