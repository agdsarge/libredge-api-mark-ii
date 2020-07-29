class Deck
    def self.all_cards
        return {
            reverse: 'https://upload.wikimedia.org/wikipedia/commons/8/86/Reverso_baraja_espa%C3%B1ola.svg',

            "0" => {
                ord: 0,
                name: "2 Clubs",
                short: "2C",
                uni: "2♣",
                img: "https://upload.wikimedia.org/wikipedia/commons/4/42/2_of_clubs.svg"
            },
            "1" => {
                ord: 1,
                name: "3 Clubs",
                short: "3C",
                uni: "3♣",
                img: "https://upload.wikimedia.org/wikipedia/commons/4/4d/3_of_clubs.svg"
            },
            "2" => {
                ord: 2,
                name: "4 Clubs",
                short: "4C",
                uni: "4♣",
                img: "https://upload.wikimedia.org/wikipedia/commons/e/e5/4_of_clubs.svg"
            },
            '3' => {
                ord: 3,
                name: "5 of Clubs",
                short: "5C",
                uni: "5♣",
                img: "https://upload.wikimedia.org/wikipedia/commons/7/72/5_of_clubs.svg"
            },
            '4' => {
                ord: 4,
                name: "6 of Clubs",
                short: "6C",
                uni: "6♣",
                img: "https://upload.wikimedia.org/wikipedia/commons/4/49/6_of_clubs.svg"
            },
            '5' => {
                ord: 5,
                name: "7 of Clubs",
                short: "7C",
                uni: "7♣",
                img: "https://upload.wikimedia.org/wikipedia/commons/d/db/7_of_clubs.svg"
            },
            '6' => {
                ord: 6,
                name: "8 of Clubs",
                short: "8C",
                uni: "8♣",
                img: "https://upload.wikimedia.org/wikipedia/commons/5/54/8_of_clubs.svg"
            },
            '7' => {
                ord: 7,
                name: "9 of Clubs",
                short: "9C",
                uni: "9♣",
                img: "https://upload.wikimedia.org/wikipedia/commons/6/67/9_of_clubs.svg"
            },
            '8' => {
                ord: 8,
                name: "10 of Clubs",
                short: "10C",
                uni: "10♣",
                img: "https://upload.wikimedia.org/wikipedia/commons/c/c9/10_of_clubs.svg"
            },
            '9' => {
                ord: 9,
                name: "Jack of Clubs",
                short: "JC",
                uni: "J♣",
                img: "https://upload.wikimedia.org/wikipedia/commons/7/7b/Jack_of_clubs2.svg"
            },
            "10" => {
                ord: 10,
                name: "Queen of Clubs",
                short: "QC",
                uni: "Q♣",
                img: "https://upload.wikimedia.org/wikipedia/commons/d/d2/Queen_of_clubs2.svg"
            },
            '11' => {
                ord: 11,
                name: "King of Clubs",
                short: "KC",
                uni: "K♣",
                img: "https://upload.wikimedia.org/wikipedia/commons/d/d3/King_of_clubs2.svg"
            },
            '12' => {
                ord: 12,
                name: "Ace of Clubs",
                short: "AC",
                uni: "A♣",
                img: "https://upload.wikimedia.org/wikipedia/commons/6/61/Ace_of_clubs.svg"
            },
            '13' => {
                ord: 13,
                name: "2 of Diamonds",
                short: "2D",
                uni: "2♢",
                img: "https://upload.wikimedia.org/wikipedia/commons/8/8d/2_of_diamonds.svg"
            },
            '14' => {
                ord: 14,
                name: "3 of Diamonds",
                short: "3D",
                uni: "3♢",
                img: "https://upload.wikimedia.org/wikipedia/commons/5/50/3_of_diamonds.svg"
            },
            '15' => {
                ord: 15,
                name: "4 of Diamonds",
                short: "4D",
                uni: "4♢",
                img: "https://upload.wikimedia.org/wikipedia/commons/b/b8/4_of_diamonds.svg"
            },
            '16' => {
                ord: 16,
                name: "5 of Diamonds",
                short: "5D",
                uni: "5♢",
                img: "https://upload.wikimedia.org/wikipedia/commons/6/6b/5_of_diamonds.svg"
            },
            '17' => {
                ord: 17,
                name: "6 of Diamonds",
                short: "6D",
                uni: "6♢",
                img: "https://upload.wikimedia.org/wikipedia/commons/3/34/6_of_diamonds.svg"
            },
            '18' => {
                ord: 18,
                name: "7 of Diamonds",
                short: "7D",
                uni: "7♢",
                img: "https://upload.wikimedia.org/wikipedia/commons/8/83/7_of_diamonds.svg"
            },
            '19' => {
                ord: 19,
                name: "8 of Diamonds",
                short: "8D",
                uni: "8♢",
                img: "https://upload.wikimedia.org/wikipedia/commons/5/5a/8_of_diamonds.svg"
            },
            '20' => {
                ord: 20,
                name: "9 of Diamonds",
                short: "9D",
                uni: "9♢",
                img: "https://upload.wikimedia.org/wikipedia/commons/f/f2/9_of_diamonds.svg"
            },
            '21' => {
                ord: 21,
                name: "10 of Diamonds",
                short: "10D",
                uni: "10♢",
                img: "https://upload.wikimedia.org/wikipedia/commons/f/f3/10_of_diamonds.svg"
            },
            '22' => {
                ord: 22,
                name: "Jack of Diamonds",
                short: "JD",
                uni: "J♢",
                img: "https://upload.wikimedia.org/wikipedia/commons/8/80/Jack_of_diamonds2.svg"
            },
            '23' => {
                ord: 23,
                name: "Queen of Diamonds",
                short: "QD",
                uni: "Q♢",
                img: "https://upload.wikimedia.org/wikipedia/commons/d/d9/Queen_of_diamonds2.svg"
            },
            '24' => {
                ord: 24,
                name: "King of Diamonds",
                short: "KD",
                uni: "K♢",
                img: "https://upload.wikimedia.org/wikipedia/commons/c/c6/King_of_diamonds2.svg"
            },
            '25' => {
                ord: 25,
                name: "Ace of Diamonds",
                short: "AD",
                uni: "A♢",
                img: "https://upload.wikimedia.org/wikipedia/commons/e/e6/Ace_of_diamonds.svg"
            },
            '26' => {
                ord: 26,
                name: "2 of Hearts",
                short: "2H",
                uni: "2♡",
                img: "https://upload.wikimedia.org/wikipedia/commons/3/39/2_of_hearts.svg"
            },
            '27' => {
                ord: 27,
                name: "3 of Hearts",
                short: "3H",
                uni: "3♡",
                img: "https://upload.wikimedia.org/wikipedia/commons/5/5d/3_of_hearts.svg"
            },
            '28' => {
                ord: 28,
                name: "4 of Hearts",
                short: "4H",
                uni: "4♡",
                img: "https://upload.wikimedia.org/wikipedia/commons/e/e9/4_of_hearts.svg"
            },
            '29' => {
                ord: 29,
                name: "5 of Hearts",
                short: "5H",
                uni: "5♡",
                img: "https://upload.wikimedia.org/wikipedia/commons/a/a1/5_of_hearts.svg"
            },
            '30' => {
                ord: 30,
                name: "6 of Hearts",
                short: "6H",
                uni: "6♡",
                img: "https://upload.wikimedia.org/wikipedia/commons/7/7e/6_of_hearts.svg"
            },
            '31' => {
                ord: 31,
                name: "7 of Hearts",
                short: "7H",
                uni: "7♡",
                img: "https://upload.wikimedia.org/wikipedia/commons/4/4a/7_of_hearts.svg"
            },
            '32' => {
                ord: 32,
                name: "8 of Hearts",
                short: "8H",
                uni: "8♡",
                img: "https://upload.wikimedia.org/wikipedia/commons/6/6b/8_of_hearts.svg"
            },
            '33' => {
                ord: 33,
                name: "9 of Hearts",
                short: "9H",
                uni: "9♡",
                img: "https://upload.wikimedia.org/wikipedia/commons/9/9d/9_of_hearts.svg"
            },
            '34' => {
                ord: 34,
                name: "10 of Hearts",
                short: "10H",
                uni: "10♡",
                img: "https://upload.wikimedia.org/wikipedia/commons/a/ad/10_of_hearts.svg"
            },
            '35' => {
                ord: 35,
                name: "Jack of Hearts",
                short: "JH",
                uni: "J♡",
                img: "https://upload.wikimedia.org/wikipedia/commons/3/34/Jack_of_hearts2.svg"
            },
            '36' => {
                ord: 36,
                name: "Queen of Hearts",
                short: "QH",
                uni: "Q♡",
                img: "https://upload.wikimedia.org/wikipedia/commons/f/f6/Queen_of_hearts2.svg"
            },
            '37' => {
                ord: 37,
                name: "King of Hearts",
                short: "KH",
                uni: "K♡",
                img: "https://upload.wikimedia.org/wikipedia/commons/0/06/King_of_hearts2.svg"
            },
            '38' => {
                ord: 38,
                name: "Ace of Hearts",
                short: "AH",
                uni: "A♡",
                img: "https://upload.wikimedia.org/wikipedia/commons/0/07/Ace_of_hearts.svg"
            },
            '39' => {
                ord: 39,
                name: "2 of Spades",
                short: "2S",
                uni: "2♠",
                img: "https://upload.wikimedia.org/wikipedia/commons/a/a4/2_of_spades.svg"
            },
            '40' => {
                ord: 40,
                name: "3 of Spades",
                short: "3S",
                uni: "3♠",
                img: "https://upload.wikimedia.org/wikipedia/commons/e/eb/3_of_spades.svg"
            },
            '41' => {
                ord: 41,
                name: "4 of Spades",
                short: "4S",
                uni: "4♠",
                img: "https://upload.wikimedia.org/wikipedia/commons/a/a4/4_of_spades.svg"
            },
            '42' => {
                ord: 42,
                name: "5 of Spades",
                short: "5S",
                uni: "5♠",
                img: "https://upload.wikimedia.org/wikipedia/commons/8/8a/5_of_spades.svg"
            },
            '43' => {
                ord: 43,
                name: "6 of Spades",
                short: "6S",
                uni: "6♠",
                img: "https://upload.wikimedia.org/wikipedia/commons/4/4e/6_of_spades.svg"
            },
            '44' => {
                ord: 44,
                name: "7 of Spades",
                short: "7S",
                uni: "7♠",
                img: "https://upload.wikimedia.org/wikipedia/commons/f/f7/7_of_spades.svg"
            },
            '45' => {
                ord: 45,
                name: "8 of Spades",
                short: "8S",
                uni: "8♠",
                img: "https://upload.wikimedia.org/wikipedia/commons/4/40/8_of_spades.svg"
            },
            '46' => {
                ord: 46,
                name: "9 of Spades",
                short: "9S",
                uni: "9♠",
                img: "https://upload.wikimedia.org/wikipedia/commons/6/63/9_of_spades.svg"
            },
            '47' => {
                ord: 47,
                name: "10 of Spades",
                short: "10S",
                uni: "10♠",
                img: "https://upload.wikimedia.org/wikipedia/commons/6/68/10_of_spades.svg"
            },
            '48' => {
                ord: 48,
                name: "Jack of Spades",
                short: "JS",
                uni: "J♠",
                img: "https://upload.wikimedia.org/wikipedia/commons/a/a9/Jack_of_spades2.svg"
            },
            '49' => {
                ord: 49,
                name: "Queen of Spades",
                short: "QS",
                uni: "Q♠",
                img: "https://upload.wikimedia.org/wikipedia/commons/d/d2/Queen_of_spades2.svg"
            },
            '50' => {
                ord: 50,
                name: "King of Spades",
                short: "KS",
                uni: "K♠",
                img: "https://upload.wikimedia.org/wikipedia/commons/2/22/King_of_spades2.svg"
            },
            '51' => {
                ord: 51,
                name: "Ace of Spades",
                short: "AS",
                uni: "A♠",
                img: "https://upload.wikimedia.org/wikipedia/commons/f/f4/Ace_of_spades2.svg"
            }
        }
    end
end
