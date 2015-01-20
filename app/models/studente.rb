class Studente < ActiveRecord::Base
  validates :anno_di_nascita, numericality: { only_integer: true }
  validates :nome, :cognome, :anno_di_nascita, presence: true
end
