class Game < ApplicationRecord
  before_create do
    self.board = [[nil,nil,nil],[nil,nil,nil],[nil,nil,nil]].to_json
  end


  #Game Logic
  def winner
    board = JSON.parse self.board
    xwins = false
    ywins = false
    board.each do |row|
      if row == [0,0,0]
        xwins = true
        break
      end
      if row == [1,1,1]
        ywins = true
        break
      end
    end
    return 0 if xwins
    return 1 if ywins
    (0..2).map do |i|
      map = board.map{|b|b[i]}
      if map == [0,0,0]
        xwins = true
        break
      end
      if map == [1,1,1]
        ywins = true
        break
      end
    end
    return 0 if xwins
    return 1 if ywins
    if (board[1][1] == 0 && ((board[0][0] == 0 && (board[2][2] == 0) ||  (board[2][0] == 0 && board[0][2] == 0))))
      xwins = true
    end
    return 0 if xwins
    return 1 if ywins
    if (board[1][1] == 1 && ((board[0][0] == 1 && (board[2][2] == 1) ||  (board[2][0] == 1 && board[0][2] == 1))))
      ywins = true
    end
    return 0 if xwins
    return 1 if ywins
    return nil
  end
end

class SerializableGame < JSONAPI::Serializable::Resource
  type 'game'
  attributes :playerone, :playertwo, :board
end