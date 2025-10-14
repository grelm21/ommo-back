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
  { code: "poop", description: "Выносить мусор до момента, пока не запахнет в коридоре." },
  { code: "fish", description: "Иметь право быть немым как рыба 40 минут после прихода домой с работы." },
  { code: "needle", description: "Пылесосить, если другая сторона чувствует, как крошки впиваются в ноги." },
  { code: "star", description: "Поднимать крышку унитаза и протирать «жёлтую росу» после дождя." },
  { code: "saw", description: "Не пилить ногти во время просмотра матча «Спартак — Зенит»." },
  { code: "ship", description: "Мыть посуду сразу, как только ложка тонет в раковине, как «Титаник»." },
  { code: "bear", description: "Иметь право на «медвежью спячку» в выходные до 11:00 без попыток разбудить ради «продуктивного утра»." },
  { code: "toilet_paper", description: "Заменять пустой рулон туалетной бумаги, не оставляя голый картонный цилиндр как археологический артефакт." },
  { code: "pirate_flag", description: "Распознавать «сигнал бедствия» — одинокую тарелку в раковине — и спасать её, не дожидаясь целой эскадры." },
  { code: "hedgehog", description: "Собирать свои волосы с слива в душе, не создавая подводный «Ёжик в тумане»." },
  { code: "door", description: "Соблюдать «нейтралитет ванной»: не стучать в дверь с вопросом «ты скоро?», если внутри горит священный огонь уединения." },
  { code: "dress", description: "Не занимать весь шкаф, словно он — филиал гардеробной Кардашьян, оставляя партнёру хотя бы одну вешалку." },
  { code: "sushi", description: "Объявлять «вечер суши», если оба слишком устали готовить, без чувства вины и долгих препирательств." },
  { code: "guitar", description: "Не занимать душ дольше, чем длится концерт группы Rammstein." },
  { code: "flower", description: "Менять воду для цветов, не дожидаясь, пока они начнут шептать «помогите…»." },
  { code: "tent", description: "Не растягивать любимую футболку партнёра до размеров палатки." },
  { code: "alpaca", description: "Вешать полотенце на сушилку, а не оставлять его смятым комом, похожим на грустного альпаку." },
  { code: "barrier_sign", description: "Не оставлять дверцу шкафа открытой на пути у ночного похода в туалет." },
  { code: "tv", description: "Не включать пылесос во время сериала партнёра, даже если крошка уже живёт своей жизнью." },
  { code: "egg", description: "Уважать право на «тишину холодильника после 23:00» — никаких громких яиц, майонеза и философии." },
  { code: "ice", description: "Не занимать обе половины одеяла, превращая вторую сторону кровати в Арктику." },
  { code: "gamepad", description: "Возвращать пульт в нейтральную зону после использования." },
  { code: "toothbrush", description: "Сохранять самообладание, если зубная паста выдавлена «не с того конца»." },
  { code: "sock", description: "Не делать вид, что не заметил гору белья, «потому что свет был выключен»." },
  { code: "high_temperature", description: "Принимать форму «объятия» даже при температуре +37,2." },
  { code: "cat", description: "Не спорить о том, чей кот, если оба кормят." },
  { code: "picnic_basket", description: "Сохранять тайну холодильных остатков: не спрашивать «что это было?» — просто выбросить." },
  { code: "coffee_cup", description: "Согревать руки не только об кружку, но и об плечо партнёра." },
  { code: "electric_fork", description: "Не устраивать «битву за розетку» без предварительного уведомления." },
  { code: "pizza_slice", description: "Уважать закон «последнего кусочка пиццы»: спрашивать дважды, прежде чем съесть." },
  { code: "sofa_with_lamp", description: "Давать партнёру право на «вечер без разговоров» под пледом." },
  { code: "cup_of_tea", description: "Не оставлять кружку с чаем на подоконнике как временную инсталляцию." },
  { code: "thermometer", description: "Сохранять баланс температуры: не превращать спальню в Сахару или Антарктиду." },
  { code: "steam", description: "Уважать «звуковое пространство» другого — особенно при сушке феном." },
  { code: "magnifying_glass", description: "Не устраивать «ревизию уведомлений» в телефоне партнёра, если не работаешь в ФСБ." },
  { code: "hugs", description: "Поддерживать традицию «обниманий при встрече», даже если встреча — на кухне." },
  { code: "satellite_dish", description: "Делить Wi-Fi поровну: не занимать всё соединение сериалом в 4K." },
  { code: "dove", description: "Объявлять перемирие, если спор дошёл до «смысла жизни»." },
  { code: "envelope_with_heart", description: "Не выкидывать открытку партнёра, даже если «Новый год уже прошёл»." },
  { code: "bed", description: "Застилать кровать как акт любви, а не как военную операцию." },
  { code: "note", description: "Оставлять заметки с напоминаниями только с тёплыми словами, не с ультиматумами." },
  { code: "another_cup_of_coffee", description: "Не забирать у партнёра его чашку, даже если она удобнее." },
  { code: "sheet_music", description: "Включать музыку громко — но вместе." },
  { code: "headphones", description: "Не обсуждать родителей друг друга при выключенном микрофоне — всё равно услышат." },
  { code: "cloud", description: "Беречь совместные фото не только в облаке, но и в памяти." }
]

promises.each do |promise|
  Promise.create!(code: promise[:code], description: promise[:description])
end
