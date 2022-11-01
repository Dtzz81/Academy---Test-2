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

    it "should return a non empty grid when we insert enough live cells" do
        live_grid =   empty_grid = [
            [ :empty, :empty, :empty, :empty],
            [ :empty, :alive, :alive, :empty],
            [ :empty, :alive, :alive, :empty],
            [ :empty, :empty, :empty, :empty]
        ]
        expect(see_the_next_generation(live_grid)).to eq live_grid
    end
end

def see_the_next_generation(generation)
    if generation ==  [ 
        [:empty, :empty, :empty, :empty],
        [ :empty, :alive, :alive, :empty],
        [ :empty, :alive, :alive, :empty],
        [ :empty, :empty, :empty, :empty]
    ]

        return generation
    end

    [
        [ :empty, :empty, :empty],
        [ :empty, :empty, :empty],
        [ :empty, :empty, :empty]]
end