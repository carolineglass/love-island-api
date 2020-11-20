# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "destroy contestants"
Contestant.destroy_all 

Scraper.contestant_info.each do |contestant_hash|
        Contestant.create({
            season: contestant_hash[:season],
            name: contestant_hash[:name].strip,
            age: contestant_hash[:age], 
            hometown: contestant_hash[:hometown].strip,
            occupation: contestant_hash[:occupation].strip,
            status: contestant_hash[:status].strip,
            img_url: "https://i.redd.it/g1x3pzp6xpq41.jpg"
        })
end



images = [
    {name: "Cara De La Hoyde",
    img: "https://i2-prod.mirror.co.uk/incoming/article8033863.ece/ALTERNATES/s615b/Cara-on-Love-Island.jpg"},
    {name: "Nathan Massey",
    img: "https://vignette.wikia.nocookie.net/loveisland/images/7/77/S2_Nathan_Massey.jpg/revision/latest?cb=20200129233837"},
    {name: "Alex Bowen",
    img: "https://img.huffingtonpost.com/asset/57971d402400002700b33064.jpeg?cache=ORqbvZHjXO&ops=scalefit_630_noupscale"},
    {name: "Olivia Buckland",
    img:"https://keyassets-p2.timeincuk.net/wp/prod/wp-content/uploads/sites/30/2016/05/LoveIsland2016OliviaBuckland.jpg"},
    {name: "Kady McDermott",
    img: "https://vignette.wikia.nocookie.net/love-island-itv/images/7/76/Kady_Mcdermott_2.jpg/revision/latest?cb=20180609143345"},
    {name: "Scott Thomas",
    img: "https://vignette.wikia.nocookie.net/loveisland/images/c/c2/S2_Scott_Thomas.jpg/revision/latest?cb=20200129233837"},
    {name: "Adam Maxted",
    img: "https://vignette.wikia.nocookie.net/love-island-itv/images/0/0a/Adam_Maxted_1.jpg/revision/latest/top-crop/width/360/height/450?cb=20180609150630"},
    {name: "Katie Salmon",
    img: "https://vignette.wikia.nocookie.net/love-island-itv/images/3/3f/Katie_Salmon_1.jpg/revision/latest/top-crop/width/360/height/450?cb=20180609152149"},
    {name: "Terry Walsh",
    img: "https://www.thesun.co.uk/wp-content/uploads/2016/07/nintchdbpict000250064793.jpg?w=719&strip=all"},
    {name: "Adam Jukes",
    img: "https://www.thesun.co.uk/wp-content/uploads/2016/05/2899642.main_image.jpg?strip=all"},
    {name: "Lauren Whiteside",
    img: "https://cdn.onebauer.media/one/media/5c66/bcf7/f27d/bd3e/089e/325d/lauren-whiteside-love-island-2016.png?format=jpg&quality=80&width=500&ratio=1-1&resize=aspectfit"},
    {name: "Tina Stinnes",
    img: "https://vignette.wikia.nocookie.net/love-island-itv/images/5/58/Tina_Stinnes_1.jpg/revision/latest/top-crop/width/720/height/900?cb=20180609210455"},
    {name: "Sophie Gradon",
    img: "https://img.huffingtonpost.com/asset/574432a81600002a00f94486.jpeg?ops=scalefit_630_noupscale"},
    {name: "Troy Frith",
    img: "https://images.ctfassets.net/ql4dheqoo9gp/65551621-6462-475b-b651-e38ca2078bfe/bbae652df799805810b5e10443c58af2/importedImage65551621-6462-475b-b651-e38ca2078bfe?fm=jpg&fit=fill&w=708&h=397&q=67"},
    {name: "Tom Powell",
    img: "https://keyassets-p2.timeincuk.net/wp/prod/wp-content/uploads/sites/30/2016/05/LoveIslandTomPowell.jpg"},
    {name: "Liana Isadora Van Riel",
    img: "https://cdn.onebauer.media/one/media/5c66/bda6/f27d/bd3e/089e/3270/Liana-Isadora-Van-Riel-Love-Island-2016.png?format=jpg&quality=80&width=500&ratio=1-1&resize=aspectfit"},
    {name: "Malin Andersson",
    img: "https://i2-prod.mirror.co.uk/incoming/article8033884.ece/ALTERNATES/s615b/Malin-on-Love-Island.jpg"},
    {name: "Zara Holland",
    img: "https://vignette.wikia.nocookie.net/love-island-itv/images/4/49/Zara_Holland_1.jpg/revision/latest?cb=20180610095457"},
    {name: "James Khan",
    img: "https://i2-prod.ok.co.uk/incoming/article14690305.ece/ALTERNATES/s615b/705108_EMBARGO_LOVE_ISLAND_JAMES_KHAN_06_502f1eb54a2879c5d0163288a5b878e1"},
    {name: "Rykard Jenkins",
    img: "https://i2-prod.mirror.co.uk/incoming/article8033900.ece/ALTERNATES/s615b/Rykard-on-Love-Island.jpg"},
    {name: "Daniel Lukakis",
    img: "https://vignette.wikia.nocookie.net/loveisland/images/5/53/S2_Daniel_Lukakis.jpg/revision/latest?cb=20200129233831"},
    {name: "Rachel Fenton",
    img: "https://i2-prod.ok.co.uk/incoming/article14684923.ece/ALTERNATES/s615b/704643_love_island_rachel_fenton_leaves_fc789882b53043dd49a9df05310acd47"},
    {name: "Javi Shephard",
    img: "https://i2-prod.ok.co.uk/incoming/article14684320.ece/ALTERNATES/s615b/702893_javi_shephard_d16bc5974f550ec21e34a8a1186a5380"},
]