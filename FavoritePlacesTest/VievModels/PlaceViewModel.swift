//
//  PlaceViewModel.swift
//  FavoritePlacesTest
//
//  Created by Jacek Kosiński G on 04/05/2023.
//

import Foundation
import SwiftUI

class PlaceViewModel :Identifiable{
    var id: UUID
    var name: String
    var city: String
    var country: String
    var notes: String
    var address: String
    var flag: String
    var placeImage: Image
    
    init(id: UUID,name: String,city: String, country:String, notes: String, placeImage:Image,flag: String, address: String){
        self.id = id
        self.name = name
        self.city = city
        self.country = country
        self.notes = notes
        self.placeImage = placeImage
        self.flag = flag
        self.address = address
    }
}


struct Location: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let address: String
    let country: String
    let flagEmoji: String
}

extension PlaceViewModel {
    static var sampleData: [PlaceViewModel] {
        [
            .init(id: UUID(), name: "Eiffel Tower", city: "Paris", country: "France", notes: "A famous iron lattice tower.", placeImage: Image("eiffel_tower")
                  ,flag: "🇵🇱",address: "Aleja Wojciecha Korfantego 35, 40-005 Katowice, Poland"),
            .init(id: UUID(), name: "Statue of Liberty", city: "New York", country: "United States", notes: "A colossal statue symbolizing freedom.", placeImage: Image("statue_of_liberty") ,flag: "🇵🇱",address: "Aleja Wojciecha Korfantego 35, 40-005 Katowice, Poland"),
            .init(id: UUID(), name: "Colosseum", city: "Rome", country: "Italy", notes: "An ancient Roman gladiatorial arena.", placeImage: Image("colosseum") ,flag: "🇵🇱",address: "Aleja Wojciecha Korfantego 35, 40-005 Katowice, Poland"),
            .init(id: UUID(), name: "Taj Mahal", city: "Agra", country: "India", notes: "A white marble mausoleum and UNESCO World Heritage site.", placeImage: Image("taj_mahal") ,flag: "🇵🇱",address: "Aleja Wojciecha Korfantego 35, 40-005 Katowice, Poland"),

            .init(id: UUID(), name: "Machu Picchu", city: "Cusco Region", country: "Peru", notes: "An Incan citadel set high in the Andes Mountains.", placeImage: Image("machu_picchu") ,flag: "🇵🇱",address: "Aleja Wojciecha Korfantego 35, 40-005 Katowice, Poland"),

        ]
    }
    
    
    static let sampleLocations = [
        
        Location(name: "Jajcus Placus", description: "terefere", address: "Zygmuntowska 3b Gliwice", country: "Poland", flagEmoji: "🇵🇱"),
        Location(name: "Silesian Museum", description: "Museum of Silesian history and art", address: "Tadeusza Dobrowolskiego 1, 40-205 Katowice, Poland", country: "Poland", flagEmoji: "🇵🇱"),
        Location(name: "Spodek", description: "Multipurpose arena complex", address: "Aleja Wojciecha Korfantego 35, 40-005 Katowice, Poland", country: "Poland", flagEmoji: "🇵🇱"),
        Location(name: "Guido Mine", description: "Historic coal mine", address: "3 Maja 93, 41-500 Chorzów, Poland", country: "Poland", flagEmoji: "🇵🇱"),
        Location(name: "Park Śląski", description: "Large park and recreation complex", address: "Park Śląski, Chorzów, Poland", country: "Poland", flagEmoji: "🇵🇱"),
        Location(name: "Black Trout Adit", description: "Historic underground tunnel", address: "Wyzwolenia 6, 41-908 Bytom, Poland", country: "Poland", flagEmoji: "🇵🇱"),
        Location(name: "Gliwice Radio Tower", description: "Tallest wooden structure in Europe", address: "Tarnogórska 129, 44-102 Gliwice, Poland", country: "Poland", flagEmoji: "🇵🇱"),
        Location(name: "Częstochowa Jasna Góra Monastery", description: "Iconic monastery", address: "Jasna Góra, 42-225 Częstochowa, Poland", country: "Poland", flagEmoji: "🇵🇱"),
        Location(name: "Tyskie Brewery", description: "Historic brewery", address: "Mikołowska 5, 43-100 Tychy, Poland", country: "Poland", flagEmoji: "🇵🇱"),
        Location(name: "Silesian Planetarium", description: "Astronomy center", address: "ul. Świerkowa 7, 41-500 Chorzów, Poland", country: "Poland", flagEmoji: "🇵🇱"),
        Location(name: "Museum of Silesian Uprisings", description: "Historical museum", address: "ul. Zamkowa 2, 42-600 Tarnowskie Góry, Poland", country: "Poland", flagEmoji: "🇵🇱"),
        Location(name: "Royal Castle", description: "Historic castle and museum", address: "Plac Zamkowy 4, 00-277 Warszawa", country: "Poland", flagEmoji: "🇵🇱"),
        Location(name: "Łazienki Park", description: "Royal park with palaces and gardens", address: "Łazienki Królewskie, 00-460 Warszawa", country: "Poland", flagEmoji: "🇵🇱"),
        Location(name: "Wilanów Palace", description: "Baroque royal palace and museum", address: "Stanisława Kostki Potockiego 10/16, 02-958 Warszawa", country: "Poland", flagEmoji: "🇵🇱"),
        Location(name: "Palace of Culture and Science", description: "Iconic Warsaw building with observation deck", address: "Plac Defilad 1, 00-901 Warszawa", country: "Poland", flagEmoji: "🇵🇱"),
        Location(name: "Warsaw Uprising Museum", description: "Museum dedicated to the 1944 Warsaw Uprising", address: "Grzybowska 79, 00-844 Warszawa", country: "Poland", flagEmoji: "🇵🇱"),
        Location(name: "Copernicus Science Centre", description: "Interactive science museum", address: "Wybrzeże Kościuszkowskie 20, 00-390 Warszawa", country: "Poland", flagEmoji: "🇵🇱"),
        Location(name: "POLIN Museum of the History of Polish Jews", description: "Museum showcasing the history of Polish Jews", address: "Anielewicza 6, 00-157 Warszawa", country: "Poland", flagEmoji: "🇵🇱"),
        Location(name: "Praga District", description: "Trendy district with bars, galleries, and street art", address: "Ząbkowska, 03-736 Warszawa", country: "Poland", flagEmoji: "🇵🇱"),
        Location(name: "Fryderyk Chopin Museum", description: "Museum dedicated to the life and works of Fryderyk Chopin", address: "Okólnik 1, 00-368 Warszawa", country: "Poland", flagEmoji: "🇵🇱"),
        Location(name: "The National Museum in Warsaw", description: "Art and culture museum", address: "Aleje Jerozolimskie 3, 00-495 Warszawa", country: "Poland", flagEmoji: "🇵🇱"),
        
        Location(name: "Historic Centre of Kraków", description: "Historic city center and UNESCO World Heritage site", address: "Rynek Główny, 31-010 Kraków", country: "Poland", flagEmoji: "🇵🇱"),
        Location(name: "Wrocław Centennial Hall", description: "Modernist landmark and UNESCO World Heritage site", address: "Wystawowa 1, 51-618 Wrocław", country: "Poland", flagEmoji: "🇵🇱"),
        Location(name: "Auschwitz Birkenau", description: "Former Nazi concentration camp and UNESCO World Heritage site", address: "Więźniów Oświęcimia 20, 32-603 Oświęcim", country: "Poland", flagEmoji: "🇵🇱"),
        Location(name: "Wieliczka Salt Mine", description: "Historic salt mine and UNESCO World Heritage site", address: "Daniłowicza 10, 32-020 Wieliczka", country: "Poland", flagEmoji: "🇵🇱"),
        Location(name: "Białowieża Forest", description: "Primeval forest and UNESCO World Heritage site", address: "Białowieża, 17-230 Białowieża", country: "Poland", flagEmoji: "🇵🇱"),
        Location(name: "Castle of the Teutonic Order in Malbork", description: "Gothic castle and UNESCO World Heritage site", address: "Starościńska 1, 82-200 Malbork", country: "Poland", flagEmoji: "🇵🇱"),
        Location(name: "Historic Centre of Warsaw", description: "Reconstructed historic city center and UNESCO World Heritage site", address: "Plac Zamkowy, 00-277 Warszawa", country: "Poland", flagEmoji: "🇵🇱"),
        Location(name: "Old City of Zamość", description: "Renaissance city and UNESCO World Heritage site", address: "Rynek Wielki, 22-400 Zamość", country: "Poland", flagEmoji: "🇵🇱"),
        Location(name: "Medieval Town of Toruń", description: "Gothic architecture and UNESCO World Heritage site", address: "Rynek Staromiejski 1, 87-100 Toruń", country: "Poland", flagEmoji: "🇵🇱"),
        Location(name: "Kalwaria Zebrzydowska", description: "Mannerist architectural and park landscape complex, UNESCO World Heritage site", address: "Bernardyńska 46, 34-130 Kalwaria Zebrzydowska", country: "Poland", flagEmoji: "🇵🇱"),
        
        
        
        Location(name: "Brandenburg Gate", description: "Historic neoclassical monument", address: "Pariser Platz, 10117 Berlin", country: "Germany", flagEmoji: "🇩🇪"),
        Location(name: "Reichstag Building", description: "Historic building housing the German Parliament", address: "Platz der Republik 1, 11011 Berlin", country: "Germany", flagEmoji: "🇩🇪"),
        Location(name: "Museum Island", description: "Island with multiple museums", address: "Am Lustgarten, 10178 Berlin", country: "Germany", flagEmoji: "🇩🇪"),
        Location(name: "Berlin Cathedral", description: "Historic cathedral and museum", address: "Am Lustgarten, 10178 Berlin", country: "Germany", flagEmoji: "🇩🇪"),
        Location(name: "Pergamon Museum", description: "Museum featuring ancient art and architecture", address: "Bodestraße 1-3, 10178 Berlin", country: "Germany", flagEmoji: "🇩🇪"),
        Location(name: "East Side Gallery", description: "Open-air gallery on the Berlin Wall", address: "Mühlenstraße, 10243 Berlin", country: "Germany", flagEmoji: "🇩🇪"),
        Location(name: "Charlottenburg Palace", description: "Historic palace and gardens", address: "Spandauer Damm 10-22, 14059 Berlin", country: "Germany", flagEmoji: "🇩🇪"),
        Location(name: "Checkpoint Charlie", description: "Historic Cold War border crossing", address: "Friedrichstraße 43-45, 10969 Berlin", country: "Germany", flagEmoji: "🇩🇪"),
        Location(name: "Berlin TV Tower", description: "Iconic television tower with observation deck", address: "Panoramastraße 1A, 10178 Berlin", country: "Germany", flagEmoji: "🇩🇪"),
        Location(name: "Jewish Museum Berlin", description: "Museum dedicated to Jewish history and culture", address: "Lindenstraße 9-14, 10969 Berlin", country: "Germany", flagEmoji: "🇩🇪"),
        Location(name: "Cologne Cathedral", description: "Gothic cathedral with twin spires", address: "Domkloster 4, 50667 Köln", country: "Germany", flagEmoji: "🇩🇪"),
        Location(name: "Neuschwanstein Castle", description: "Fairytale-like hilltop castle", address: "Neuschwansteinstraße 20, 87645 Schwangau", country: "Germany", flagEmoji: "🇩🇪"),
        Location(name: "Miniatur Wunderland", description: "World's largest model railway attraction", address: "Kehrwieder 2-4/Block D, 20457 Hamburg", country: "Germany", flagEmoji: "🇩🇪"),
        Location(name: "Heidelberg Castle", description: "Historic castle ruins and gardens", address: "Schlosshof 1, 69117 Heidelberg", country: "Germany", flagEmoji: "🇩🇪"),
        Location(name: "Marienplatz", description: "Central square in Munich", address: "Marienplatz, 80331 München", country: "Germany", flagEmoji: "🇩🇪"),
        Location(name: "Rothenburg ob der Tauber", description: "Well-preserved medieval old town", address: "Marktplatz, 91541 Rothenburg ob der Tauber", country: "Germany", flagEmoji: "🇩🇪"),
        Location(name: "Dresden Frauenkirche", description: "Baroque church with a distinctive dome", address: "Neumarkt, 01067 Dresden", country: "Germany", flagEmoji: "🇩🇪"),
        Location(name: "Europa-Park", description: "Popular amusement park", address: "Europa-Park-Straße 2, 77977 Rust", country: "Germany", flagEmoji: "🇩🇪"),
        Location(name: "Nuremberg Castle", description: "Medieval fortress with panoramic views", address: "Burg 13, 90403 Nürnberg", country: "Germany", flagEmoji: "🇩🇪"),
        Location(name: "Königssee", description: "Scenic lake in the Bavarian Alps", address: "Seestraße 3, 83471 Schönau am Königssee", country: "Germany", flagEmoji: "🇩🇪"),
        
        
        
        
        
        
        Location(name: "Buckingham Palace", description: "Royal residence and administrative headquarters", address: "Westminster, London SW1A 1AA", country: "England", flagEmoji: "🏴󠁧󠁢󠁥󠁮󠁧󠁿"),
        Location(name: "Tower of London", description: "Historic castle and former royal palace", address: "St Katharine's & Wapping, London EC3N 4AB", country: "England", flagEmoji: "🏴󠁧󠁢󠁥󠁮󠁧󠁿"),
        Location(name: "British Museum", description: "Museum showcasing global history and culture", address: "Great Russell St, Bloomsbury, London WC1B 3DG", country: "England", flagEmoji: "🏴󠁧󠁢󠁥󠁮󠁧󠁿"),
        Location(name: "Natural History Museum", description: "Museum featuring exhibits on natural history", address: "Cromwell Rd, South Kensington, London SW7 5BD", country: "England", flagEmoji: "🏴󠁧󠁢󠁥󠁮󠁧󠁿"),
        Location(name: "Tate Modern", description: "Modern and contemporary art museum", address: "Bankside, London SE1 9TG", country: "England", flagEmoji: "🏴󠁧󠁢󠁥󠁮󠁧󠁿"),
        Location(name: "Tower Bridge", description: "Iconic bascule and suspension bridge", address: "Tower Bridge Rd, London SE1 2UP", country: "England", flagEmoji: "🏴󠁧󠁢󠁥󠁮󠁧󠁿"),
        Location(name: "Houses of Parliament", description: "Home of the UK Parliament", address: "Westminster, London SW1A 0AA", country: "England", flagEmoji: "🏴󠁧󠁢󠁥󠁮󠁧󠁿"),
        Location(name: "Westminster Abbey", description: "Historic gothic abbey and coronation site", address: "20 Deans Yd, Westminster, London SW1P 3PA", country: "England", flagEmoji: "🏴󠁧󠁢󠁥󠁮󠁧󠁿"),
        Location(name: "The Shard", description: "Skyscraper with an observation deck", address: "32 London Bridge St, London SE1 9SG", country: "England", flagEmoji: "🏴󠁧󠁢󠁥󠁮󠁧󠁿"),
        Location(name: "Victoria and Albert Museum", description: "Museum of art and design", address: "Cromwell Rd, Knightsbridge, London SW7 2RL", country: "England", flagEmoji: "🏴󠁧󠁢󠁥󠁮󠁧󠁿"),
        
        Location(name: "Stonehenge", description: "Prehistoric monument and UNESCO World Heritage site", address: "Salisbury SP4 7DE", country: "England", flagEmoji: "🏴󠁧󠁢󠁥󠁮󠁧󠁿"),
        Location(name: "Roman Baths", description: "Ancient Roman bath complex and museum", address: "Abbey Churchyard, Bath BA1 1LZ", country: "England", flagEmoji: "🏴󠁧󠁢󠁥󠁮󠁧󠁿"),
        Location(name: "The Royal Pavilion", description: "Former royal residence in Brighton", address: "4/5 Pavilion Buildings, Brighton BN1 1EE", country: "England", flagEmoji: "🏴󠁧󠁢󠁥󠁮󠁧󠁿"),
        Location(name: "York Minster", description: "Gothic cathedral in York", address: "Deangate, York YO1 7HH", country: "England", flagEmoji: "🏴󠁧󠁢󠁥󠁮󠁧󠁿"),
        Location(name: "Stratford-upon-Avon", description: "William Shakespeare's birthplace", address: "Henley St, Stratford-upon-Avon CV37 6QW", country: "England", flagEmoji: "🏴󠁧󠁢󠁥󠁮󠁧󠁿"),
        Location(name: "Hadrian's Wall", description: "Ancient Roman defensive fortification", address: "Brampton CA8 7DD", country: "England", flagEmoji: "🏴󠁧󠁢󠁥󠁮󠁧󠁿"),
        Location(name: "Eden Project", description: "Environmental project with indoor rainforest", address: "Bodelva, Par PL24 2SG", country: "England", flagEmoji: "🏴󠁧󠁢󠁥󠁮󠁧󠁿"),
        Location(name: "Lake District National Park", description: "Scenic national park with lakes and mountains", address: "Kendal LA9 7RL", country: "England", flagEmoji: "🏴󠁧󠁢󠁥󠁮󠁧󠁿"),
        Location(name: "Cambridge University", description: "Prestigious university and historic architecture", address: "The Old Schools, Trinity Ln, Cambridge CB2 1TN", country: "England", flagEmoji: "🏴󠁧󠁢󠁥󠁮󠁧󠁿"),
        Location(name: "Canterbury Cathedral", description: "Historic cathedral and UNESCO World Heritage site", address: "Cathedral House, 11 The Precincts, Canterbury CT1 2EH", country: "England", flagEmoji: "🏴󠁧󠁢󠁥󠁮󠁧󠁿"),
        
        
        Location(name: "Louvre Museum", description: "World's largest art museum", address: "Rue de Rivoli, 75001 Paris", country: "France", flagEmoji: "🇫🇷"),
        Location(name: "Palace of Versailles", description: "Historic royal palace and gardens", address: "Place d'Armes, 78000 Versailles", country: "France", flagEmoji: "🇫🇷"),
        Location(name: "Mont Saint-Michel", description: "Tidal island and UNESCO World Heritage site", address: "50170 Mont Saint-Michel", country: "France", flagEmoji: "🇫🇷"),
        Location(name: "Carcassonne", description: "Medieval fortified city", address: "1 Rue Viollet-le-Duc, 11000 Carcassonne", country: "France", flagEmoji: "🇫🇷"),
        Location(name: "Château de Chambord", description: "Renaissance castle and estate", address: "Château, 41250 Chambord", country: "France", flagEmoji: "🇫🇷"),
        Location(name: "Notre-Dame de Reims", description: "Gothic cathedral in Reims", address: "Place du Cardinal Luçon, 51100 Reims", country: "France", flagEmoji: "🇫🇷"),
        Location(name: "Palais des Papes", description: "Historic papal palace in Avignon", address: "Place du Palais, 84000 Avignon", country: "France", flagEmoji: "🇫🇷"),
        Location(name: "Musée d'Orsay", description: "Museum featuring French art and sculptures", address: "1 Rue de la Légion d'Honneur, 75007 Paris", country: "France", flagEmoji: "🇫🇷"),
        Location(name: "Calanques de Cassis", description: "Coastal cliffs and inlets near Marseille", address: "13260 Cassis", country: "France", flagEmoji: "🇫🇷"),
        
        
        Location(name: "Eiffel Tower", description: "Iconic Parisian landmark", address: "Champ de Mars, 5 Avenue Anatole France, 75007 Paris", country: "France", flagEmoji: "🇫🇷"),
        Location(name: "Louvre Museum", description: "World's largest art museum", address: "Rue de Rivoli, 75001 Paris", country: "France", flagEmoji: "🇫🇷"),
        Location(name: "Notre-Dame Cathedral", description: "Gothic cathedral and historic landmark", address: "6 Parvis Notre-Dame - Pl. Jean-Paul II, 75004 Paris", country: "France", flagEmoji: "🇫🇷"),
        Location(name: "Musée d'Orsay", description: "Museum featuring French art and sculptures", address: "1 Rue de la Légion d'Honneur, 75007 Paris", country: "France", flagEmoji: "🇫🇷"),
        Location(name: "Sacré-Cœur", description: "Basilica on Montmartre hill", address: "35 Rue du Chevalier de la Barre, 75018 Paris", country: "France", flagEmoji: "🇫🇷"),
        Location(name: "Sainte-Chapelle", description: "Gothic chapel with stained glass windows", address: "8 Boulevard du Palais, 75001 Paris", country: "France", flagEmoji: "🇫🇷"),
        Location(name: "Arc de Triomphe", description: "Historic triumphal arch", address: "Place Charles de Gaulle, 75008 Paris", country: "France", flagEmoji: "🇫🇷"),
        Location(name: "Panthéon", description: "Mausoleum for French historical figures", address: "Place du Panthéon, 75005 Paris", country: "France", flagEmoji: "🇫🇷"),
        Location(name: "Centre Pompidou", description: "Modern and contemporary art museum", address: "Place Georges-Pompidou, 75004 Paris", country: "France", flagEmoji: "🇫🇷"),
        Location(name: "Jardin du Luxembourg", description: "Public park and garden", address: "Rue de Médicis - Rue de Vaugirard, 75006 Paris", country: "France", flagEmoji: "🇫🇷"),
        Location(name: "Colosseum", description: "Iconic Roman amphitheater", address: "Piazza del Colosseo, 1, 00184 Roma RM", country: "Italy", flagEmoji: "🇮🇹"),
        Location(name: "Leaning Tower of Pisa", description: "Famous architectural landmark", address: "Piazza del Duomo, 56126 Pisa PI", country: "Italy", flagEmoji: "🇮🇹"),
        Location(name: "Pompeii", description: "Ancient Roman city ruins", address: "Piazza Anfiteatro, 1, 80045 Pompei NA", country: "Italy", flagEmoji: "🇮🇹"),
        Location(name: "Venice and its Lagoon", description: "City of canals and UNESCO World Heritage site", address: "Piazza San Marco, 30124 Venezia VE", country: "Italy", flagEmoji: "🇮🇹"),
        Location(name: "Cinque Terre", description: "Scenic coastal area with five villages", address: "Via dell'Amore, 19017 Riomaggiore SP", country: "Italy", flagEmoji: "🇮🇹"),
        Location(name: "Historic Centre of Florence", description: "Renaissance architecture and UNESCO World Heritage site", address: "Piazza del Duomo, 50122 Firenze FI", country: "Italy", flagEmoji: "🇮🇹"),
        Location(name: "Amalfi Coast", description: "Scenic Mediterranean coastline", address: "Via Lorenzo d'Amalfi, 84011 Amalfi SA", country: "Italy", flagEmoji: "🇮🇹"),
        Location(name: "Assisi, the Basilica of San Francesco and Other Franciscan Sites", description: "Religious and historical complex", address: "Piazza Inferiore di S. Francesco, 2, 06081 Assisi PG", country: "Italy", flagEmoji: "🇮🇹"),
        Location(name: "The Sassi and the Park of the Rupestrian Churches of Matera", description: "Ancient cave dwellings", address: "Piazza Vittorio Veneto, 75100 Matera MT", country: "Italy", flagEmoji: "🇮🇹"),
        Location(name: "Val d'Orcia", description: "Picturesque rural landscape", address: "Loc. La Foce, 61, 53026 Pienza SI", country: "Italy", flagEmoji: "🇮🇹"),
        
        Location(name: "Vatican City", description: "Smallest sovereign state and home to St. Peter's Basilica", address: "Piazza San Pietro, 00120 Città del Vaticano", country: "Italy", flagEmoji: "🇻🇦"),
        Location(name: "Historic Centre of Naples", description: "Historic city center and UNESCO World Heritage site", address: "Piazza del Plebiscito, 80132 Napoli NA", country: "Italy", flagEmoji: "🇮🇹"),
        Location(name: "Historic Centre of Siena", description: "Medieval city and UNESCO World Heritage site", address: "Piazza del Campo, 53100 Siena SI", country: "Italy", flagEmoji: "🇮🇹"),
        Location(name: "Piazza dei Miracoli, Pisa", description: "Square with historic monuments, including the Leaning Tower", address: "Piazza del Duomo, 56126 Pisa PI", country: "Italy", flagEmoji: "🇮🇹"),
        Location(name: "Villa Adriana, Tivoli", description: "Ancient Roman complex and UNESCO World Heritage site", address: "Largo Marguerite Yourcenar, 1, 00010 Tivoli RM", country: "Italy", flagEmoji: "🇮🇹"),
        Location(name: "Villa d'Este, Tivoli", description: "Renaissance villa and gardens", address: "Piazza Trento, 5, 00019 Tivoli RM", country: "Italy", flagEmoji: "🇮🇹"),
        Location(name: "Trulli of Alberobello", description: "Traditional dry-stone huts", address: "Piazza del Popolo, 8, 70011 Alberobello BA", country: "Italy", flagEmoji: "🇮🇹"),
        Location(name: "Late Baroque Towns of the Val di Noto", description: "Collection of baroque towns", address: "Corso Vittorio Emanuele, 96017 Noto SR", country: "Italy", flagEmoji: "🇮🇹"),
        Location(name: "Castel del Monte", description: "Unique octagonal castle", address: "Strada Provinciale 170, 76123 Andria BT", country: "Italy", flagEmoji: "🇮🇹"),
        Location(name: "The Dolomites", description: "Mountain range in the Northern Italian Alps", address: "Strada Dolomiti, 39034 Dobbiaco BZ", country: "Italy", flagEmoji: "🇮🇹"),
        
        Location(name: "Alhambra, Generalife and Albayzín", description: "Moorish palace and fortress complex", address: "Calle Real de la Alhambra, s/n, 18009 Granada", country: "Spain", flagEmoji: "🇪🇸"),
        Location(name: "Historic City of Toledo", description: "Ancient city with diverse cultural influences", address: "Plaza del Ayuntamiento, 1, 45002 Toledo", country: "Spain", flagEmoji: "🇪🇸"),
        Location(name: "Sagrada Família", description: "Iconic modernist basilica", address: "Carrer de Mallorca, 401, 08013 Barcelona", country: "Spain", flagEmoji: "🇪🇸"),
        Location(name: "Park Güell", description: "Public park with Gaudí's unique architectural elements", address: "Carrer d'Olot, s/n, 08024 Barcelona", country: "Spain", flagEmoji: "🇪🇸"),
        Location(name: "Casa Batlló", description: "Antoni Gaudí's architectural masterpiece", address: "Passeig de Gràcia, 43, 08007 Barcelona", country: "Spain", flagEmoji: "🇪🇸"),
        Location(name: "La Lonja de la Seda", description: "Gothic-style civil building", address: "Plaza del Mercado, 31, 46001 Valencia", country: "Spain", flagEmoji: "🇪🇸"),
        Location(name: "Cathedral, Alcázar and Archivo de Indias", description: "Historic buildings in Seville", address: "Avenida de la Constitución, s/n, 41004 Sevilla", country: "Spain", flagEmoji: "🇪🇸"),
        Location(name: "Old Town of Ávila with its Extra-Muros Churches", description: "Medieval city with fortified walls", address: "Plaza de Santa Teresa, 2, 05001 Ávila", country: "Spain", flagEmoji: "🇪🇸"),
        Location(name: "Old Town of Segovia and its Aqueduct", description: "Historic city with Roman aqueduct", address: "Plaza del Azoguejo, 1, 40001 Segovia", country: "Spain", flagEmoji: "🇪🇸"),
        Location(name: "Historic City of Córdoba", description: "Ancient city with diverse cultural heritage", address: "Calle Cardenal Herrero, 1, 14003 Córdoba", country: "Spain", flagEmoji: "🇪🇸"),
        
        
        Location(name: "Acropolis, Athens", description: "Iconic ancient citadel", address: "Athens 105 58, Greece", country: "Greece", flagEmoji: "🇬🇷"),
        Location(name: "Delphi", description: "Ancient sanctuary and oracle", address: "Delphi 330 54, Greece", country: "Greece", flagEmoji: "🇬🇷"),
        Location(name: "Meteora", description: "Monasteries on sandstone pillars", address: "Meteora, Kalabaka 422 00, Greece", country: "Greece", flagEmoji: "🇬🇷"),
        Location(name: "Paleochristian and Byzantine Monuments of Thessaloniki", description: "Historic buildings in Thessaloniki", address: "Thessaloniki, Greece", country: "Greece", flagEmoji: "🇬🇷"),
        Location(name: "Sanctuary of Asklepios at Epidaurus", description: "Ancient healing center", address: "Epidavros 210 52, Greece", country: "Greece", flagEmoji: "🇬🇷"),
        Location(name: "Medieval City of Rhodes", description: "Historic fortified city", address: "Old Town, Rhodes 851 00, Greece", country: "Greece", flagEmoji: "🇬🇷"),
        Location(name: "Archaeological Site of Olympia", description: "Site of the original Olympic Games", address: "Archea Olympia 270 65, Greece", country: "Greece", flagEmoji: "🇬🇷"),
        Location(name: "Archaeological Site of Mystras", description: "Byzantine fortified city", address: "Mystras 231 00, Greece", country: "Greece", flagEmoji: "🇬🇷"),
        Location(name: "Archaeological Site of Delos", description: "Ancient sacred island", address: "Delos 846 00, Greece", country: "Greece", flagEmoji: "🇬🇷"),
        Location(name: "Old Town of Corfu", description: "Historic city center", address: "Corfu, Greece", country: "Greece", flagEmoji: "🇬🇷"),
        Location(name: "Taj Mahal", description: "Iconic white marble mausoleum", address: "Dharmapuri, Forest Colony, Tajganj, Agra, Uttar Pradesh 282001", country: "India", flagEmoji: "🇮🇳"),
        Location(name: "Qutub Minar", description: "Tallest brick minaret", address: "Seth Sarai, Mehrauli, New Delhi, Delhi 110030", country: "India", flagEmoji: "🇮🇳"),
        Location(name: "Humayun's Tomb", description: "Mughal Emperor's mausoleum", address: "Mathura Road, Opposite Dargah Nizamuddin, New Delhi, Delhi 110013", country: "India", flagEmoji: "🇮🇳"),
        Location(name: "Red Fort", description: "Historic fortress and palace", address: "Netaji Subhash Marg, Lal Qila, Chandni Chowk, New Delhi, Delhi 110006", country: "India", flagEmoji: "🇮🇳"),
        Location(name: "Ajanta Caves", description: "Rock-cut Buddhist cave monuments", address: "Ajanta Caves, Maharashtra 431117", country: "India", flagEmoji: "🇮🇳"),
        Location(name: "Ellora Caves", description: "Rock-cut cave temples", address: "Ellora, Maharashtra 431102", country: "India", flagEmoji: "🇮🇳"),
        Location(name: "Sun Temple, Konark", description: "13th-century Hindu temple", address: "Konark, Odisha 752111", country: "India", flagEmoji: "🇮🇳"),
        Location(name: "Mahabodhi Temple", description: "Buddhist temple marking the spot of Buddha's enlightenment", address: "Bodh Gaya, Bihar 824231", country: "India", flagEmoji: "🇮🇳"),
        Location(name: "Khajuraho Group of Monuments", description: "Medieval Hindu and Jain temples", address: "Khajuraho, Madhya Pradesh 471606", country: "India", flagEmoji: "🇮🇳"),
        Location(name: "Fatehpur Sikri", description: "16th-century Mughal city", address: "Fatehpur Sikri, Uttar Pradesh 283110", country: "India", flagEmoji: "🇮🇳"),
        
        
        Location(name: "Angkor Wat", description: "Ancient temple complex", address: "Krong Siem Reap, Cambodia", country: "Cambodia", flagEmoji: "🇰🇭"),
        Location(name: "Great Wall of China", description: "Iconic ancient fortification", address: "Huairou District, Beijing, China", country: "China", flagEmoji: "🇨🇳"),
        Location(name: "Petra", description: "Ancient rock-cut city", address: "Petra, Jordan", country: "Jordan", flagEmoji: "🇯🇴"),
        Location(name: "Borobudur Temple", description: "9th-century Mahayana Buddhist temple", address: "Borobudur, Magelang, Central Java, Indonesia", country: "Indonesia", flagEmoji: "🇮🇩"),
        Location(name: "Hiroshima Peace Memorial", description: "Memorial park and museum", address: "1-2 Nakajimacho, Naka Ward, Hiroshima, Hiroshima Prefecture 730-0811, Japan", country: "Japan", flagEmoji: "🇯🇵"),
        Location(name: "Ha Long Bay", description: "Picturesque bay with limestone islands", address: "Ha Long Bay, Quang Ninh Province, Vietnam", country: "Vietnam", flagEmoji: "🇻🇳"),
        Location(name: "Bagan Archaeological Zone", description: "Ancient city with numerous Buddhist temples", address: "Bagan, Mandalay Region, Myanmar", country: "Myanmar", flagEmoji: "🇲🇲"),
        Location(name: "Gyeongju Historic Areas", description: "Historic city with ancient temples and tombs", address: "Gyeongju, Gyeongsangbuk-do, South Korea", country: "South Korea", flagEmoji: "🇰🇷"),
        Location(name: "Sigiriya", description: "Ancient rock fortress", address: "Sigiriya, Central Province, Sri Lanka", country: "Sri Lanka", flagEmoji: "🇱🇰"),
        Location(name: "Ayutthaya Historical Park", description: "Ruins of the ancient city of Ayutthaya", address: "Ayutthaya, Phra Nakhon Si Ayutthaya Province, Thailand", country: "Thailand", flagEmoji: "🇹🇭"),
        
        Location(name: "Bamyan Valley", description: "Cultural landscape and archaeological remains", address: "Bamyan Province, Afghanistan", country: "Afghanistan", flagEmoji: "🇦🇫"),
        Location(name: "Paharpur Monastery", description: "Ancient Buddhist monastery", address: "Paharpur, Naogaon District, Bangladesh", country: "Bangladesh", flagEmoji: "🇧🇩"),
        Location(name: "Potala Palace", description: "Historic palace and Buddhist monastery", address: "35 Beijing Middle Road, Chengguan District, Lhasa, Tibet, China", country: "China", flagEmoji: "🇨🇳"),
        Location(name: "Mount Huangshan", description: "Scenic mountain range with unique granite peaks", address: "Huangshan, Anhui Province, China", country: "China", flagEmoji: "🇨🇳"),
        Location(name: "Historic Monuments of Ancient Nara", description: "Temples, shrines, and ruins", address: "Nara, Nara Prefecture, Japan", country: "Japan", flagEmoji: "🇯🇵"),
        Location(name: "Jeju Volcanic Island and Lava Tubes", description: "Natural wonders and unique geological features", address: "Jeju-do, South Korea", country: "South Korea", flagEmoji: "🇰🇷"),
        Location(name: "Masada", description: "Ancient fortress on a plateau", address: "Masada National Park, Israel", country: "Israel", flagEmoji: "🇮🇱"),
        Location(name: "Kaziranga National Park", description: "Wildlife reserve with diverse fauna", address: "Kaziranga National Park, Kanchanjuri, Assam, India", country: "India", flagEmoji: "🇮🇳"),
        Location(name: "Komodo National Park", description: "Marine and terrestrial park, home to the Komodo dragon", address: "Komodo National Park, East Nusa Tenggara, Indonesia", country: "Indonesia", flagEmoji: "🇮🇩"),
        Location(name: "Mount Kinabalu", description: "Highest peak in Borneo, part of Kinabalu Park", address: "Kinabalu Park, Sabah, Malaysia", country: "Malaysia", flagEmoji: "🇲🇾"),
        
        Location(name: "Pyramids of Giza", description: "Iconic ancient structures", address: "Al Haram, Giza Governorate, Egypt", country: "Egypt", flagEmoji: "🇪🇬"),
        Location(name: "Ngorongoro Conservation Area", description: "Wildlife reserve and volcanic crater", address: "Ngorongoro Conservation Area, Arusha Region, Tanzania", country: "Tanzania", flagEmoji: "🇹🇿"),
        Location(name: "Victoria Falls", description: "Largest waterfall in the world", address: "Livingstone, Zambia / Victoria Falls, Zimbabwe", country: "Zambia / Zimbabwe", flagEmoji: "🇿🇲 / 🇿🇼"),
        Location(name: "Robben Island", description: "Historic prison and museum", address: "Robben Island, Cape Town, South Africa", country: "South Africa", flagEmoji: "🇿🇦"),
        Location(name: "Gorée Island", description: "Historic slave trade site", address: "Gorée Island, Dakar, Senegal", country: "Senegal", flagEmoji: "🇸🇳"),
        Location(name: "Timbuktu", description: "Historic city and center of Islamic learning", address: "Timbuktu, Mali", country: "Mali", flagEmoji: "🇲🇱"),
        Location(name: "Medina of Marrakesh", description: "Historic city center", address: "Medina, Marrakesh, Morocco", country: "Morocco", flagEmoji: "🇲🇦"),
        Location(name: "Aït Benhaddou", description: "Ancient fortified village", address: "Aït Benhaddou, Morocco", country: "Morocco", flagEmoji: "🇲🇦"),
        Location(name: "Simien Mountains National Park", description: "Mountain range and wildlife reserve", address: "Simien Mountains National Park, Amhara Region, Ethiopia", country: "Ethiopia", flagEmoji: "🇪🇹"),
        Location(name: "Fasil Ghebbi", description: "Royal enclosure and fortress-city", address: "Fasil Ghebbi, Gondar, Ethiopia", country: "Ethiopia", flagEmoji: "🇪🇹"),
        
        
        Location(name: "Machu Picchu", description: "Inca citadel in the Andes Mountains", address: "Machu Picchu, Cusco Region, Peru", country: "Peru", flagEmoji: "🇵🇪"),
        Location(name: "Galápagos Islands", description: "Archipelago with unique wildlife", address: "Galápagos Islands, Ecuador", country: "Ecuador", flagEmoji: "🇪🇨"),
        Location(name: "Iguazu National Park", description: "Park with massive waterfalls", address: "Iguazu National Park, Misiones Province, Argentina", country: "Argentina", flagEmoji: "🇦🇷"),
        Location(name: "Easter Island", description: "Remote island with iconic stone statues", address: "Easter Island, Valparaiso Region, Chile", country: "Chile", flagEmoji: "🇨🇱"),
        Location(name: "Historic Center of Cartagena", description: "Colonial city with vibrant architecture", address: "Cartagena, Bolivar, Colombia", country: "Colombia", flagEmoji: "🇨🇴"),
        Location(name: "Salar de Uyuni", description: "World's largest salt flat", address: "Salar de Uyuni, Potosi Department, Bolivia", country: "Bolivia", flagEmoji: "🇧🇴"),
        Location(name: "Pantanal Conservation Area", description: "One of the world's largest wetlands", address: "Pantanal, Mato Grosso and Mato Grosso do Sul, Brazil", country: "Brazil", flagEmoji: "🇧🇷"),
        Location(name: "Los Glaciares National Park", description: "Park with massive glaciers", address: "Los Glaciares National Park, Santa Cruz Province, Argentina", country: "Argentina", flagEmoji: "🇦🇷"),
        Location(name: "Canaima National Park", description: "Park with Angel Falls, the world's highest waterfall", address: "Canaima National Park, Bolivar State, Venezuela", country: "Venezuela", flagEmoji: "🇻🇪"),
        Location(name: "Nazca Lines", description: "Large geoglyphs in the Nazca Desert", address: "Nazca, Ica Region, Peru", country: "Peru", flagEmoji: "🇵🇪"),
        
        Location(name: "Historic Center of Lima", description: "Colonial city center", address: "Lima, Peru", country: "Peru", flagEmoji: "🇵🇪"),
        Location(name: "Historic Center of Quito", description: "Colonial city with well-preserved architecture", address: "Quito, Ecuador", country: "Ecuador", flagEmoji: "🇪🇨"),
        Location(name: "Cajas National Park", description: "High-altitude protected area with unique biodiversity", address: "Cajas National Park, Azuay Province, Ecuador", country: "Ecuador", flagEmoji: "🇪🇨"),
        Location(name: "Tiwanaku", description: "Ancient pre-Inca city", address: "Tiwanaku, La Paz Department, Bolivia", country: "Bolivia", flagEmoji: "🇧🇴"),
        Location(name: "Ouro Preto", description: "Historic mining town with baroque architecture", address: "Ouro Preto, Minas Gerais, Brazil", country: "Brazil", flagEmoji: "🇧🇷"),
        Location(name: "Valparaíso", description: "Colorful coastal city with historic architecture", address: "Valparaíso, Valparaíso Region, Chile", country: "Chile", flagEmoji: "🇨🇱"),
        Location(name: "San Agustín Archaeological Park", description: "Ancient site with pre-Columbian sculptures", address: "San Agustín, Huila Department, Colombia", country: "Colombia", flagEmoji: "🇨🇴"),
        Location(name: "Fraser Island", description: "World's largest sand island", address: "Fraser Island, Queensland, Australia", country: "Australia", flagEmoji: "🇦🇺"),
        Location(name: "Torres del Paine National Park", description: "Protected area with breathtaking landscapes", address: "Torres del Paine National Park, Magallanes Region, Chile", country: "Chile", flagEmoji: "🇨🇱"),
        Location(name: "Jesuit Missions of the Guaranis", description: "Ruins of Jesuit missions", address: "Misiones Province, Argentina / Paraná, Brazil", country: "Argentina / Brazil", flagEmoji: "🇦🇷 / 🇧🇷"),
        
        Location(name: "Great Barrier Reef", description: "Largest coral reef system in the world", address: "Great Barrier Reef, Queensland, Australia", country: "Australia", flagEmoji: "🇦🇺"),
        Location(name: "Sydney Opera House", description: "Iconic performing arts center", address: "Bennelong Point, Sydney, New South Wales, Australia", country: "Australia", flagEmoji: "🇦🇺"),
        Location(name: "Uluru-Kata Tjuta National Park", description: "National park with iconic sandstone formation", address: "Uluru-Kata Tjuta National Park, Northern Territory, Australia", country: "Australia", flagEmoji: "🇦🇺"),
        Location(name: "Tasmanian Wilderness", description: "Vast protected area with unique flora and fauna", address: "Tasmanian Wilderness, Tasmania, Australia", country: "Australia", flagEmoji: "🇦🇺"),
        Location(name: "Kakadu National Park", description: "National park with diverse ecosystems and ancient rock art", address: "Kakadu National Park, Northern Territory, Australia", country: "Australia", flagEmoji: "🇦🇺"),
        Location(name: "Chief Roi Mata's Domain", description: "Historic site with chief's grave and related locations", address: "Shefa Province, Vanuatu", country: "Vanuatu", flagEmoji: "🇻🇺"),
        Location(name: "East Rennell", description: "World's largest raised coral atoll", address: "East Rennell, Rennell and Bellona Province, Solomon Islands", country: "Solomon Islands", flagEmoji: "🇸🇧"),
        Location(name: "Tongariro National Park", description: "National park with volcanic landscapes and cultural significance", address: "Tongariro National Park, North Island, New Zealand", country: "New Zealand", flagEmoji: "🇳🇿"),
        Location(name: "Te Wahipounamu", description: "Protected area with diverse landscapes and unique species", address: "Te Wahipounamu, South Island, New Zealand", country: "New Zealand", flagEmoji: "🇳🇿"),
        Location(name: "Hawaii Volcanoes National Park", description: "National park with active volcanoes and diverse landscapes", address: "Hawaii Volcanoes National Park, Hawaii, United States", country: "United States", flagEmoji: "🇺🇸"),
        
        Location(name: "Grand Canyon National Park", description: "Iconic natural wonder", address: "Grand Canyon National Park, Arizona, United States", country: "United States", flagEmoji: "🇺🇸"),
        Location(name: "Statue of Liberty", description: "Iconic monument and symbol of freedom", address: "Liberty Island, New York, United States", country: "United States", flagEmoji: "🇺🇸"),
        Location(name: "Yellowstone National Park", description: "First national park with diverse wildlife and geothermal features", address: "Yellowstone National Park, Wyoming, United States", country: "United States", flagEmoji: "🇺🇸"),
        Location(name: "Chichén Itzá", description: "Ancient Mayan city with iconic pyramid", address: "Chichén Itzá, Yucatán, Mexico", country: "Mexico", flagEmoji: "🇲🇽"),
        Location(name: "Historic District of Old Québec", description: "Well-preserved historic district with European charm", address: "Old Québec, Québec City, Canada", country: "Canada", flagEmoji: "🇨🇦"),
        Location(name: "Redwood National and State Parks", description: "Protected area with tall redwood trees and diverse ecosystems", address: "Redwood National and State Parks, California, United States", country: "United States", flagEmoji: "🇺🇸"),
        Location(name: "Teotihuacan", description: "Ancient Mesoamerican city with monumental structures", address: "Teotihuacan, State of Mexico, Mexico", country: "Mexico", flagEmoji: "🇲🇽"),
        Location(name: "Banff National Park", description: "Canada's oldest national park with stunning landscapes", address: "Banff National Park, Alberta, Canada", country: "Canada", flagEmoji: "🇨🇦"),
        Location(name: "Yosemite National Park", description: "National park with dramatic landscapes and waterfalls", address: "Yosemite National Park, California, United States", country: "United States", flagEmoji: "🇺🇸"),
        Location(name: "Palenque", description: "Ancient Mayan city with well-preserved ruins", address: "Palenque, Chiapas, Mexico", country: "Mexico", flagEmoji: "🇲🇽"),
        
        Location(name: "Mammoth Cave National Park", description: "World's longest cave system", address: "Mammoth Cave National Park, Kentucky, United States", country: "United States", flagEmoji: "🇺🇸"),
        Location(name: "Everglades National Park", description: "Unique wetland ecosystem with diverse wildlife", address: "Everglades National Park, Florida, United States", country: "United States", flagEmoji: "🇺🇸"),
        Location(name: "Independence Hall", description: "Historic building where the US Declaration of Independence was signed", address: "520 Chestnut St, Philadelphia, Pennsylvania, United States", country: "United States", flagEmoji: "🇺🇸"),
        Location(name: "Sian Ka'an", description: "Biosphere reserve with diverse ecosystems", address: "Sian Ka'an, Quintana Roo, Mexico", country: "Mexico", flagEmoji: "🇲🇽"),
        Location(name: "Waterton-Glacier International Peace Park", description: "Park spanning the US-Canada border with stunning landscapes", address: "Waterton-Glacier International Peace Park, Alberta, Canada / Montana, United States", country: "Canada / United States", flagEmoji: "🇨🇦 / 🇺🇸"),
        Location(name: "Great Smoky Mountains National Park", description: "National park with diverse plant and animal life", address: "Great Smoky Mountains National Park, North Carolina / Tennessee, United States", country: "United States", flagEmoji: "🇺🇸"),
        Location(name: "La Fortaleza and San Juan National Historic Site", description: "Historic fortifications in San Juan", address: "San Juan, Puerto Rico", country: "Puerto Rico", flagEmoji: "🇵🇷"),
        Location(name: "Uxmal", description: "Ancient Mayan city with well-preserved structures", address: "Uxmal, Yucatán, Mexico", country: "Mexico", flagEmoji: "🇲🇽"),
        Location(name: "Canadian Rocky Mountain Parks", description: "Mountain parks with stunning landscapes", address: "Canadian Rocky Mountain Parks, Alberta and British Columbia, Canada", country: "Canada", flagEmoji: "🇨🇦"),
        Location(name: "Monticello and the University of Virginia", description: "Historic sites designed by Thomas Jefferson", address: "Charlottesville, Virginia, United States", country: "United States", flagEmoji: "🇺🇸")
        
        
    ]
}
