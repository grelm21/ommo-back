# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

promises = [
  {
    "code": "poop",
    "description": "выносить мусор до того, как в коридоре появится запах.",
    "short_description": "убирать до"
  },
  {
    "code": "fish",
    "description": "иметь право молчать как рыба в течение 40 минут после возвращения с работы.",
    "short_description": "молчание после работы"
  },
  {
    "code": "needle",
    "description": "пылесосить, как только ты почувствуешь, что крошки впиваются в ноги.",
    "short_description": "убрать острое"
  },
  {
    "code": "star",
    "description": "поднимать крышку унитаза и протирать за собой брызги.",
    "short_description": "чистота звёзд"
  },
  {
    "code": "saw",
    "description": "не пилить ногти во время матча «Спартак — Зенит».",
    "short_description": "тихий просмотр"
  },
  {
    "code": "ship",
    "description": "мыть посуду сразу, как только ложка в раковине тонет, как «Титаник».",
    "short_description": "тонущую сразу"
  },
  {
    "code": "bear",
    "description": "иметь право на «медвежью спячку» в выходные до 11:00 без попыток меня разбудить.",
    "short_description": "утро выходного"
  },
  {
    "code": "toilet_paper",
    "description": "менять пустой рулон туалетной бумаги, не оставляя голый картонный цилиндр.",
    "short_description": "новый всегда"
  },
  {
    "code": "pirate_flag",
    "description": "распознавать «сигнал бедствия» в виде одинокой тарелки в раковине и сразу её мыть.",
    "short_description": "помыть одинокую"
  },
  {
    "code": "hedgehog",
    "description": "собирать свои волосы со слива в душе, не создавая «подводного ёжика».",
    "short_description": "убрать из слива"
  },
  {
    "code": "door",
    "description": "не стучать в дверь ванной с вопросом «ты скоро?», если внутри горит священный огонь уединения.",
    "short_description": "не торопить"
  },
  {
    "code": "dress",
    "description": "не занимать весь шкаф, оставляя тебе как минимум одну полноценную вешалку.",
    "short_description": "поровну места"
  },
  {
    "code": "sushi",
    "description": "предлагать заказать суши, если мы оба слишком устали, чтобы готовить.",
    "short_description": "уставшим — заказ"
  },
  {
    "code": "guitar",
    "description": "не занимать душ дольше, чем длится концерт Rammstein.",
    "short_description": "быстро помыться"
  },
  {
    "code": "flower",
    "description": "менять воду для цветов, не дожидаясь, пока они начнут вянуть.",
    "short_description": "свежая вода"
  },
  {
    "code": "tent",
    "description": "не растягивать твою любимую футболку до невероятных размеров.",
    "short_description": "сохранять размер"
  },
  {
    "code": "alpaca",
    "description": "вешать полотенце на сушилку, а не оставлять его смятым комом.",
    "short_description": "аккуратно вешать"
  },
  {
    "code": "barrier_sign",
    "description": "не оставлять дверцы шкафов открытыми на пути к ночному туалету.",
    "short_description": "закрывать на ночь"
  },
  {
    "code": "tv",
    "description": "не включать пылесос во время твоего любимого сериала.",
    "short_description": "без шума"
  },
  {
    "code": "egg",
    "description": "не шуметь на кухне после 23:00, уважая твой сон.",
    "short_description": "ночная тишина"
  },
  {
    "code": "ice",
    "description": "не забирать всё одеяло, оставляя тебе твою законную половину.",
    "short_description": "поровну тепла"
  },
  {
    "code": "gamepad",
    "description": "возвращать пульт от телевизора на его законное место.",
    "short_description": "на место"
  },
  {
    "code": "toothbrush",
    "description": "сохранять спокойствие, если зубная паста выдавлена не с того конца.",
    "short_description": "не сердиться"
  },
  {
    "code": "sock",
    "description": "не делать вид, что не заметил гору немытого белья.",
    "short_description": "замечать гору"
  },
  {
    "code": "high_temperature",
    "description": "обнимать тебя, даже если у тебя температура +37,2.",
    "short_description": "обнять горячего"
  },
  {
    "code": "cat",
    "description": "не спорить о том, чей это кот, если мы оба его кормим.",
    "short_description": "наш питомец"
  },
  {
    "code": "picnic_basket",
    "description": "без лишних вопросов выбрасывать загадочные остатки еды из холодильника.",
    "short_description": "выбросить молча"
  },
  {
    "code": "coffee_cup",
    "description": "согревать тебя не только чаем, но и своими объятиями.",
    "short_description": "двойной обогрев"
  },
  {
    "code": "electric_fork",
    "description": "не занимать все розетки своими гаджетами без предупреждения.",
    "short_description": "делить розетки"
  },
  {
    "code": "pizza_slice",
    "description": "всегда спрашивать, прежде чем взять последний кусок пиццы.",
    "short_description": "спросить дважды"
  },
  {
    "code": "sofa_with_lamp",
    "description": "уважать твоё право на «вечер без разговоров» под пледом.",
    "short_description": "тихий вечер"
  },
  {
    "code": "cup_of_tea",
    "description": "не оставлять кружки с чаем по всему дому.",
    "short_description": "убрать кружки"
  },
  {
    "code": "thermometer",
    "description": "не выставлять температуру в спальне как в Сахаре или Антарктиде.",
    "short_description": "золотая середина"
  },
  {
    "code": "steam",
    "description": "не шуметь феном или другими приборами, когда ты отдыхаешь.",
    "short_description": "тихий отдых"
  },
  {
    "code": "magnifying_glass",
    "description": "не проверять твой телефон без твоего разрешения.",
    "short_description": "личное пространство"
  },
  {
    "code": "hugs",
    "description": "обнимать тебя при каждой встрече, даже если это встреча на кухне.",
    "short_description": "обнять всегда"
  },
  {
    "code": "satellite_dish",
    "description": "не занимать весь интернет загрузкой тяжёлых файлов во время твоего сериала.",
    "short_description": "делить интернет"
  },
  {
    "code": "dove",
    "description": "объявлять перемирие, если наш спор зашёл слишком далеко.",
    "short_description": "белый флаг"
  },
  {
    "code": "envelope_with_heart",
    "description": "хранить все твои открытки и записки, даже после праздников.",
    "short_description": "хранить память"
  },
  {
    "code": "bed",
    "description": "застилать кровать, помня, что это наш общий уют, а не повинность.",
    "short_description": "аккуратно стелить"
  },
  {
    "code": "note",
    "description": "оставлять тебе только добрые напоминания, а не ультиматумы.",
    "short_description": "тёплые слова"
  },
  {
    "code": "another_cup_of_coffee",
    "description": "не забирать твою любимую кружку, даже если она очень удобная.",
    "short_description": "не забирать своё"
  },
  {
    "code": "sheet_music",
    "description": "включать музыку на полную громкость, только если мы этого хотим оба.",
    "short_description": "громко вместе"
  },
  {
    "code": "headphones",
    "description": "не обсуждать твоих родных даже в шутку, если рядом твои наушники.",
    "short_description": "не обсуждать близких"
  },
  {
    "code": "cloud",
    "description": "беречь наши совместные воспоминания не только в облаке, но и в сердце.",
    "short_description": "память в сердце"
  }
]

promises.each do |promise|
  Promise.create!(code: promise[:code], description: promise[:description], short_description: promise[:short_description])
end
