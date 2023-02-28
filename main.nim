import std/random
  
type stones = array[258,string]
var mines : stones = ["Taş","Taş","Taş","Taş","Taş","Taş","Taş","Taş","Taş","Taş","Taş","Taş","Taş","Taş","Taş","Taş","Taş","Taş","Taş","Taş","Taş","Taş","Taş","Taş","Taş","Taş","Taş","Taş","Taş","Taş","Taş","Taş","Taş","Taş","Taş","Kömür","Kömür","Kömür","Kömür","Kömür","Kömür","Kömür","Kömür","Kömür","Kömür","Kömür","Kömür","Kömür","Kömür","Kömür","Kömür","Kömür","Kömür","Kömür","Kömür","Kömür","Kömür","Kömür","Kömür","Kömür","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Demir","Altın","Altın","Altın","Altın","Altın","Altın","Altın","Altın","Altın","Altın","Altın","Altın","Altın","Altın","Altın","Altın","Altın","Altın","Altın","Altın","Altın","Altın","Altın","Altın","Altın","Altın","Altın","Altın","Altın","Altın","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bakır","Bronz","Bronz","Bronz","Bronz","Bronz","Bronz","Bronz","Bronz","Bronz","Bronz","Bronz","Bronz","Bronz","Bronz","Bronz","Bronz","Bronz","Bronz","Bronz","Bronz","Bronz","Bronz","Bronz","Bronz","Bronz","Bronz","Bronz","Bronz","Bronz","Bronz","Bronz","Bronz","Bronz","Bronz","Bronz","Bronz","Bronz","Elmas","Elmas","Elmas","Elmas","Elmas","Elmas","Elmas","Elmas","Elmas","Elmas","Elmas","Elmas","Elmas","Elmas","Elmas","Elmas","Elmas","Elmas","Elmas","Elmas","Elmas","Elmas","Elmas","Elmas","Elmas","Elmas","Elmas","Elmas","Elmas","Elmas","Elmas","Elmas","Elmas","Elmas","Elmas","Elmas"]

var para = 0
var kazma = "Tahta kazma"
while true:
  echo """
  |==============================|================|
  |]------[  Maden oyunu ]------[|     Komutlar   |
  |==============================|================|
  |                              |     Maden      |
  |          Komutlar            |================|
  |                              |     Market     |
  |==============================|================|
  |                              |
  |  1 - Maden yap               |
  |  2 - Market                  |
  |  3 - Satın al                |                 
  |==============================|
  |]------[  Maden oyunu ]------[|
  |==============================|
  |   ($) """,para,"""                      |
  |==============================|
  """
  let command = readLine(stdin)

  case command
    of "1":
      var kazanilan = 0
      let mine = mines[rand(0..258)]
      case mine
        of "Taş":
          kazanilan = 10
          para = para + kazanilan
        of "Kömür":
          kazanilan = 50
          para = para + kazanilan
        of "Demir":
          kazanilan = 80
          para = para + kazanilan
        of "Altın":
          kazanilan = 100
          para = para + kazanilan
        of "Bakır":
          kazanilan = 70
          para = para + kazanilan
        of "Bronz":
          kazanilan = 60
          para = para + kazanilan
        of "Elmas":
          let kazanilan = 500
          para = para + kazanilan
      echo """
  |==============================|
  |]------[  Maden oyunu ]------[| 
  |==============================|
  |                              |
  |        Maden yapıldı         |
  |                              |
  |==============================|
  |                              |
  |  Bulunan Maden  : """,mine,"""        |
  |  Kazanılan para : """, kazanilan ,"""         |
  |  Kazma          :  """,kazma,"""|
  |                              |
  |==============================|
  |]------[  Maden oyunu ]------[|
  |==============================|
      """
    of "2":
      echo """
  |==============================|
  |]------[  Maden oyunu ]------[|
  |==============================|
  |                              |
  |            Market            |
  |                              |
  |==============================|
  |                              |
  |  4 - Taş Kazma   : 100       |
  |  5 - Bronz Kazma : 250       |
  |  6 - Demir kazma : 500       |
  |  7 - Altın kazma : 1200      |
  |  8 - Elmas kazma : 2400      |
  |                              |
  |==============================|
  |]------[  Maden oyunu ]------[|
  |==============================|
      """
    of "3":
     echo """
  |==============================|
  |]------[  Maden oyunu ]------[|
  |==============================|
  |                              |
  |           Satın al           |
  |                              |
  |==============================|
  |                              |
  |  4 - Taş Kazma   : 100       |
  |  5 - Bronz Kazma : 250       |
  |  6 - Demir kazma : 500       |
  |  7 - Altın kazma : 1200      |
  |  8 - Elmas kazma : 2400      |
  |                              |
  |==============================|
  |]------[  Maden oyunu ]------[|
  |==============================|  
      """
  let choice = readLine(stdin)
  case choice
    of "4":
      if para >= 100:
        echo "eşya alındı"
        kazma = "Taş Kazma"
        para = para - 100
      else:
        echo "yetersiz para"
    of "5":
      if para >= 250:
        echo "eşya alındı"
        kazma = "Bronz Kazma"
        para = para - 250
      else:
        echo "yetersiz para"
    of "6":
      if para >= 500:
        echo "eşya alındı"
        kazma = "Demir Kazma"
        para = para - 500
      else:
        echo "yetersiz para"
    of "7":
      if para >= 1200:
        echo "eşya alındı"
        kazma = "Altın Kazma"
        para = para - 1200
      else:
        echo "yetersiz para"
    of "8":
      if para >= 2400:
        echo "eşya alındı"
        kazma = "Elmas Kazma"
        para = para - 2400
      else:
        echo "yetersiz para"
