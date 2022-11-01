describe "does the test run?" do
    it "it should come as an error if to be false" do

        expect(true).to be true
    end
end

describe "see the next generation in GoL Game of Life" do
    it "stay same for an empty grid" do
        empty_grid = [
            [ :empty, :empty, :empty],
            [ :empty, :empty, :empty],
            [ :empty, :empty, :empty]]

        expect(see_the_next_generation(empty_grid)).to eq(empty_grid)    
    end

    it "returns an empty grid given one alive cell in the centre" do
        one_cell_grid = [ 
        [ :empty, :empty, :empty],
        [ :empty, :alive, :empty],
        [ :empty, :empty, :empty]
        ]

        empty_grid = [
            [ :empty, :empty, :empty],
            [ :empty, :empty, :empty],
            [ :empty, :empty, :empty]
        ]

        expect(see_the_next_generation(one_cell_grid)).to eq(empty_grid) 
    end

    xit "should return a non empty grid when we insert enough live cells" do
        organic_grid =   empty_grid = [
            [ :empty, :empty, :empty, :empty],
            [ :empty, :alive, :alive, :empty],
            [ :empty, :alive, :alive, :empty],
            [ :empty, :empty, :empty, :empty]
        ]
        expect(see_the_next_generation(organic_grid)).to eq organic_grid
    end
end

describe "how to calculate number of live neighbours in a conway grid" do
    it "should tell me there is one live neighbour if one alive in a 2x1 grid" do
      two_by_one_grid = [:empty, :alive]
      number_of_neighbours = number_of_living_neigbours(two_by_one_grid,row: 0,column: 0)
      expect(number_of_neighbours).to eq 1
    end
end

def see_the_next_generation(generation)
    next_generation = []
    generation.each do |row|
        future_row = []
        row.each do |cell|
            future_row << GoL(cell,number_of_living_neigbours(cell,row:0,column:0))
        end
        next_generation << future_row
    end
    next_generation
end

def GoL(cell, number_of_living_neigbours)
    :empty
end

def number_of_living_neigbours(grid,row:,column:)
    1
end

=begin
    # we used before
rescue => exception
    
end
    [
        [ :empty, :empty, :empty],
        [ :empty, :empty, :empty],
        [ :empty, :empty, :empty]]
=end




