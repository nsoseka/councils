# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# regions 
regions = AdministrativeRegion.create([
  {
    name: 'North West',
    area: '17812',
    population: '1840500',
    capital: 'Bamenda',
    code: 'NW',
  },{
    name: 'Adamawa',
    area: '3691',
    population: '723626',
    capital: 'Ngaoundéré',
    code: 'AD',
  },{
    name: 'Centre',
    area: '68926',
    population: '2501200',
    capital: 'Yaoundé',
    code: 'CE',
  },{
    name: 'East',
    area: '109011',
    population: '755100',
    capital: 'Bertoua',
    code: 'ES',
  }, {
    name: 'Far North',
    area: '34246',
    population: '2721500',
    capital: 'Maroua',
    code: 'FN',
  }, {
    name: 'Littoral',
    area: '20239',
    population: '2202340',
    capital: 'Douala',
    code: 'LT',
  }, {
    name: 'North',
    area: '65576',
    population: '1227000',
    capital: 'Garoua',
    code: 'NO',
  }, {
    name: 'West',
    area: '13872',
    population: '1982100',
    capital: 'Bafoussam',
    code: 'WE',
  }, {
    name: 'South',
    area: '47 110',
    population: '534 900',
    capital: 'Ebolowa',
    code: 'SO',
  }, {
    name: 'South West',
    area: '24571',
    population: '1242700',
    capital: 'Buéa',
    code: 'SW',
  }
])

ad = AdministrativeRegion.find_by(code: 'AD')
ce = AdministrativeRegion.find_by(code: 'CE')
es = AdministrativeRegion.find_by(code: 'ES')
fn = AdministrativeRegion.find_by(code: 'FN')
lt = AdministrativeRegion.find_by(code: 'LT')
no = AdministrativeRegion.find_by(code: 'NO')
nw = AdministrativeRegion.find_by(code: 'NW')
we = AdministrativeRegion.find_by(code: 'WE')
so = AdministrativeRegion.find_by(code: 'SO')
sw = AdministrativeRegion.find_by(code: 'SW')

# divisions

divisions = Division.create([
  { name: "Djerem", code: "CM_AD_DJ", population: "89382", area: "13283", capital: "Tibati", administrative_region: ad},
  { name: "Faro-et-Déo", code: "CM_AD_FD", population: "66442", area: "10435", capital: "Tignere", administrative_region: ad},
  { name: "Mayo-Banyo", code: "CM_AD_MB", population: "134902", area: "8520", capital: "Banyo", administrative_region: ad},
  { name: "Mbéré", code: "CM_AD_MR", population: "185473", area: "14267", capital: "Meinganga", administrative_region: ad},
  { name: "Vina", code: "CM_AD_VI", population: "247427", area: "17196", capital: "Ngaoundéré", administrative_region: ad},
  { name: "Haute-Sanaga", code: "CM_CE_HS", population: "115305", area: "11854", capital: "Nanga-Eboko", administrative_region: ce},
  { name: "Lekié", code: "CM_CE_LE", population: "354864", area: "2989", capital: "Monatele", administrative_region: ce},
  { name: "Mbam-et-Inoubou", code: "CM_CE_MI", population: "153020", area: "7125", capital: "Bafia", administrative_region: ce},
  { name: "Mbam-et-Kim", code: "CM_CE_MK", population: "64540", area: "25906", capital: "Ntui", administrative_region: ce},
  { name: "Mefou-et-Afamba", code: "CM_CE_MM", population: "89805", area: "3358", capital: "Mfou", administrative_region: ce},
  { name: "Mefou-et-Akono", code: "CM_CE_MN", population: "57051", area: "1329", capital: "Ngoumou", administrative_region: ce},
  { name: "Mfoundi", code: "CM_CE_MF", population: "1248236", area: "297", capital: "Yaoundé", administrative_region: ce},
  { name: "Nyong-et-Kéllé", code: "CM_CE_NK", population: "145181", area: "6362", capital: "Eseka", administrative_region: ce},
  { name: "Nyong-et-Mfoumou", code: "CM_CE_NM", population: "130321", area: "6172", capital: "Akonolinga", administrative_region: ce},
  { name: "Nyong-et-So'o", code: "CM_CE_NS", population: "142907", area: "3581", capital: "Mbalmayo", administrative_region: ce},
  { name: "Boumba-et-Ngoko", code: "CM_ES_BN", population: "116702", area: "30389", capital: "Yokadouma", administrative_region: es},
  { name: "Haut-Nyong", code: "CM_ES_HN", population: "216768", area: "36384", capital: "Abong-Mbang", administrative_region: es},
  { name: "Kadey", code: "CM_ES_KA", population: "192927", area: "15884", capital: "Batouri", administrative_region: es},
  { name: "Lom-et-Djerem", code: "CM_ES_LD", population: "228691", area: "26345", capital: "Bertoua", administrative_region: es},
  { name: "Diamaré", code: "CM_FN_DI", population: "566921", area: "4665", capital: "Maroua", administrative_region: fn},
  { name: "Logone-et-Chari", code: "CM_FN_LC", population: "405035", area: "12133", capital: "Kousseri", administrative_region: fn},
  { name: "Mayo-Danay", code: "CM_FN_MD", population: "522782", area: "5303", capital: "Yagoua", administrative_region: fn},
  { name: "Mayo-Kani", code: "CM_FN_KA", population: "338448", area: "5033", capital: "Kaele", administrative_region: fn},
  { name: "Mayo-Sava", code: "CM_FN_MS", population: "313413", area: "2736", capital: "Mora", administrative_region: fn},
  { name: "Mayo-Tsanaga", code: "CM_FN_MT", population: "574864", area: "4393", capital: "Mokolo", administrative_region: fn},
  { name: "Moungo", code: "CM_LT_MU", population: "452722", area: "3723", capital: "Nkongsamba", administrative_region: lt},
  { name: "Nkam", code: "CM_LT_NK", population: "66979", area: "6291", capital: "Yabassi", administrative_region: lt},
  { name: "Sanaga-Maritime", code: "CM_LT_SM", population: "167661", area: "9311", capital: "Edéa", administrative_region: lt},
  { name: "Wouri", code: "CM_LT_WO", population: "1514978", area: "923", capital: "Douala", administrative_region: lt},
  { name: "Bénoué", code: "CM_NO_BE", population: "568793", area: "13614", capital: "Garoua", administrative_region: no},
  { name: "Faro", code: "CM_NO_FA", population: "81472", area: "11785", capital: "Poli", administrative_region: no},
  { name: "Mayo-Louti", code: "CM_NO_ML", population: "334312", area: "4162", capital: "Guider", administrative_region: no},
  { name: "Mayo-Rey", code: "CM_NO_MA", population: "242441", area: "36529", capital: "Tcholliré", administrative_region: no},
  { name: "Boyo", code: "CM_NW_BO", population: "169725", area: "1592", capital: "Fundong", administrative_region: nw},
  { name: "Bui", code: "CM_NW_BU", population: "322877", area: "2297", capital: "Kumbo", administrative_region: nw},
  { name: "Donga-Mantung", code: "CM_NW_DM", population: "337533", area: "4279", capital: "Nkambé", administrative_region: nw},
  { name: "Menchum", code: "CM_NW_MC", population: "157173", area: "4469", capital: "Wum", administrative_region: nw},
  { name: "Mezam", code: "CM_NW_ME", population: "465644", area: "1745", capital: "Bamenda", administrative_region: nw},
  { name: "Momo", code: "CM_NW_MO", population: "213402", area: "1792", capital: "Mbengwi", administrative_region: nw},
  { name: "Ngo-Ketunjia", code: "CM_NW_NK", population: "174173", area: "1126", capital: "Ndop", administrative_region: nw},
  { name: "Bamboutos", code: "CM_WE_BA", population: "318848", area: "1173", capital: "Mbouda", administrative_region: we},
  { name: "Haut-Nkam", code: "CM_WE_HN", population: "203251", area: "958", capital: "Bafang", administrative_region: we},
  { name: "Hauts-Plateaux", code: "CM_WE_HP", population: "117008", area: "415", capital: "Baham", administrative_region: we},
  { name: "Koung-Khi", code: "CM_WE_KK", population: "121794", area: "353", capital: "Badjoun", administrative_region: we},
  { name: "Menoua", code: "CM_WE_ME", population: "372244", area: "1380", capital: "Dschang", administrative_region: we},
  { name: "Mifi", code: "CM_WE_MF", population: "290758", area: "402", capital: "Bafoussam", administrative_region: we},
  { name: "Ndé", code: "CM_WE_ND", population: "123661", area: "1524", capital: "Bangangte", administrative_region: we},
  { name: "Noun", code: "CM_WE_NO", population: "434542", area: "7687", capital: "Foumban", administrative_region: we},
  { name: "Dja-et-Lobo", code: "CM_SO_DL", population: "173219", area: "19911", capital: "Sangmelima", administrative_region: so},
  { name: "Mvila", code: "CM_SO_MV", population: "163826", area: "8697", capital: "Ebolowa", administrative_region: so},
  { name: "Océan", code: "CM_SO_OC", population: "133062", area: "11280", capital: "Kribi", administrative_region: so},
  { name: "Vallée-du-Ntem", code: "CM_SO_VN", population: "64747", area: "7303", capital: "Ambam", administrative_region: so},
  { name: "Fako", code: "CM_SW_FA", population: "534854", area: "2093", capital: "Limbe", administrative_region: sw},
  { name: "Koupé-Manengouba", code: "CM_SW_KM", population: "123011", area: "3404", capital: "Bangem", administrative_region: sw},
  { name: "Lebialem", code: "CM_SW_LE", population: "144560", area: "617", capital: "Menji", administrative_region: sw},
  { name: "Manyu", code: "CM_SW_MN", population: "177389", area: "9565", capital: "Mamfe", administrative_region: sw},
  { name: "Meme", code: "CM_SW_MM", population: "300318", area: "3105", capital: "Kumba", administrative_region: sw},
  { name: "Ndian", code: "CM_SW_ND", population: "129659", area: "6626", capital: "Mundemba", administrative_region: sw}
])

djerem = Division.find_by(code: "CM_AD_DJ")
faro_et_deo = Division.find_by(code: "CM_AD_FD")
mayo_banyo = Division.find_by(code: "CM_AD_MB")
mbere = Division.find_by(code: "CM_AD_MR")
vina = Division.find_by(code: "CM_AD_VI")
haute_sanaga = Division.find_by(code: "CM_CE_HS")
lekie = Division.find_by(code: "CM_CE_LE")
mbam_et_inoubou = Division.find_by(code: "CM_CE_MI")
mbam_et_kim = Division.find_by(code: "CM_CE_MK")
mefou_et_afamba = Division.find_by(code: "CM_CE_MM")
mefou_et_akono = Division.find_by(code: "CM_CE_MN")
mfoundi = Division.find_by(code: "CM_CE_MF")
nyong_et_ekelle = Division.find_by(code: "CM_CE_NK")
nyong_et_mfoumou = Division.find_by(code: "CM_CE_NM")
nyong_et_soo = Division.find_by(code: "CM_CE_NS")
boumba_et_ngoko = Division.find_by(code: "CM_ES_BN")
haut_nyong = Division.find_by(code: "CM_ES_HN")
kadey = Division.find_by(code: "CM_ES_KA")
lom_et_djerem = Division.find_by(code: "CM_ES_LD")
diamare = Division.find_by(code: "CM_FN_DI")
logon_et_chari = Division.find_by(code: "CM_FN_LC")
mayo_danay = Division.find_by(code: "CM_FN_MD")
mayo_kani = Division.find_by(code: "CM_FN_KA")
mayo_sava = Division.find_by(code: "CM_FN_MS")
mayo_tsanaga = Division.find_by(code: "CM_FN_MT")
moungo = Division.find_by(code: "CM_LT_MU")
nkam = Division.find_by(code: "CM_LT_NK")
sanaga_maritime = Division.find_by(code: "CM_LT_SM")
wouri = Division.find_by(code: "CM_LT_WO")
benoue = Division.find_by(code: "CM_NO_BE")
faro = Division.find_by(code: "CM_NO_FA")
mayo_louti = Division.find_by(code: "CM_NO_ML")
mayo_rey = Division.find_by(code: "CM_N0_MA")
boyo = Division.find_by(code: "CM_NW_BO")
bui = Division.find_by(code: "CM_NW_BU")
donga_mantung = Division.find_by(code: "CM_NW_DM")
menchum = Division.find_by(code: "CM_NW_MC")
mezam = Division.find_by(code: "CM_NW_ME")
momo = Division.find_by(code: "CM_NW_MO")
ngo_ketunjia = Division.find_by(code: "CM_NW_NK")
bamboutos = Division.find_by(code: "CM_WE_BA")
haut_nkam = Division.find_by(code: "CM_WE_HN")
hauts_plateaux = Division.find_by(code: "CM_WE_HP")
koung_khi = Division.find_by(code: "CM_WE_KK")
menoua = Division.find_by(code: "CM_WE_ME")
mifi = Division.find_by(code: "CM_WE_MF")
nde = Division.find_by(code: "CM_WE_ND")
noun = Division.find_by(code: "CM_WE_NO")
dja_et_lobo = Division.find_by(code: "CM_SO_DL")
mvila = Division.find_by(code: "CM_SO_MV")
ocean = Division.find_by(code: "CM_SO_OC")
vallee_du_ntem = Division.find_by(code: "CM_SO_VN")
fako = Division.find_by(code: "CM_SW_FA")
kupe_manengouba = Division.find_by(code: "CM_SW_KM")
lebialem = Division.find_by(code: "CM_SW_LE")
manyu = Division.find_by(code: "CM_SW_MN")
meme = Division.find_by(code: "CM_SW_MM")
ndian = Division.find_by(code: "CM_SW_ND")


#sub divisions

ad_sds = SubDivision.create([
  { name:  "NGAOUNDAL", capital: "", code: "", population: "", area: "", division: djerem },
  { name:  "TIBATI", capital: "", code: "", population: "", area: "", division: djerem },
  { name:  "MAYO-BALEO", capital: "", code: "", population: "", area: "", division: faro_et_deo },
  { name:  "TIGNERE", capital: "", code: "", population: "", area: "", division: faro_et_deo },
  { name:  "GALIM-TIGNERE", capital: "", code: "", population: "", area: "", division: faro_et_deo },
  { name:  "KONTCHA", capital: "", code: "", population: "", area: "", division: faro_et_deo },
  { name:  "BANYO", capital: "", code: "", population: "", area: "", division: mayo_banyo },
  { name:  "BANKIM", capital: "", code: "", population: "", area: "", division: mayo_banyo },
  { name:  "MAYO-DARLE", capital: "", code: "", population: "", area: "", division: mayo_banyo },
  { name:  "MEIGANGA", capital: "", code: "", population: "", area: "", division: mbere },
  { name:  "DJOHONG", capital: "", code: "", population: "", area: "", division: mbere },
  { name:  "DIR", capital: "", code: "", population: "", area: "", division: mbere },
  { name:  "NGAOUI", capital: "", code: "", population: "", area: "", division: mbere },
  { name:  "NGAOUNDERE 1er", capital: "", code: "", population: "", area: "", division: vina },
  { name:  "NGAOUNDERE 2e", capital: "", code: "", population: "", area: "", division: vina },
  { name:  "NGAOUNDERE 3e", capital: "", code: "", population: "", area: "", division: vina },
  { name:  "BELEL", capital: "", code: "", population: "", area: "", division: vina },
  { name:  "MBE", capital: "", code: "", population: "", area: "", division: vina },
  { name:  "NGANHA", capital: "", code: "", population: "", area: "", division: vina },
  { name:  "NYAMBAKA", capital: "", code: "", population: "", area: "", division: vina },
  { name:  "MARTAP", capital: "", code: "", population: "", area: "", division: vina }
])

ce_sds = SubDivision.create([
  { name: "MBANDJOCK", code: "", population: "", area: "", capital: "", division: haute_sanaga },
  { name: "MINTA", code: "", population: "", area: "", capital: "", division: haute_sanaga },
  { name: "NANGA-EBOKO", code: "", population: "", area: "", capital: "", division: haute_sanaga },
  { name: "NKOTENG", code: "", population: "", area: "", capital: "", division: haute_sanaga },
  { name: "BIBEY", code: "", population: "", area: "", capital: "", division: haute_sanaga },
  { name: "NSEM", code: "", population: "", area: "", capital: "", division: haute_sanaga },
  { name: "LEMBE-YEZOUM", code: "", population: "", area: "", capital: "", division: haute_sanaga },
  { name: "EVODOULA", code: "", population: "", area: "", capital: "", division: lekie },
  { name: "MONATELE", code: "", population: "", area: "", capital: "", division: lekie },
  { name: "OBALA", code: "", population: "", area: "", capital: "", division: lekie },
  { name: "OKOLA", code: "", population: "", area: "", capital: "", division: lekie },
  { name: "SA'A", code: "", population: "", area: "", capital: "", division: lekie },
  { name: "ELIG-MFOMO", code: "", population: "", area: "", capital: "", division: lekie },
  { name: "EBEBDA", code: "", population: "", area: "", capital: "", division: lekie },
  { name: "BATSCHENGA", code: "", population: "", area: "", capital: "", division: lekie },
  { name: "LOBO", code: "", population: "", area: "", capital: "", division: lekie },
  { name: "BAFIA", code: "", population: "", area: "", capital: "", division: mbam_et_inoubou },
  { name: "BOKITO", code: "", population: "", area: "", capital: "", division: mbam_et_inoubou },
  { name: "DEUK", code: "", population: "", area: "", capital: "", division: mbam_et_inoubou },
  { name: "MAKENENE", code: "", population: "", area: "", capital: "", division: mbam_et_inoubou },
  { name: "NDIKINIMEKI", code: "", population: "", area: "", capital: "", division: mbam_et_inoubou },
  { name: "OMBESSA", code: "", population: "", area: "", capital: "", division: mbam_et_inoubou },
  { name: "KIIKI", code: "", population: "", area: "", capital: "", division: mbam_et_inoubou },
  { name: "KON-YAMBETTA", code: "", population: "", area: "", capital: "", division: mbam_et_inoubou },
  { name: "NITOUKOU", code: "", population: "", area: "", capital: "", division: mbam_et_inoubou },
  { name: "NTUI", code: "", population: "", area: "", capital: "", division: mbam_et_kim },
  { name: "NGAMBE TIKAR", code: "", population: "", area: "", capital: "", division: mbam_et_kim },
  { name: "NGORO", code: "", population: "", area: "", capital: "", division: mbam_et_kim },
  { name: "YOKO", code: "", population: "", area: "", capital: "", division: mbam_et_kim },
  { name: "MBANGASSINA", code: "", population: "", area: "", capital: "", division: mbam_et_kim },
  { name: "MFOU", code: "", population: "", area: "", capital: "", division: mefou_et_afamba },
  { name: "ESSE", code: "", population: "", area: "", capital: "", division: mefou_et_afamba },
  { name: "AWAE", code: "", population: "", area: "", capital: "", division: mefou_et_afamba },
  { name: "SOA", code: "", population: "", area: "", capital: "", division: mefou_et_afamba },
  { name: "AFANLOUM", code: "", population: "", area: "", capital: "", division: mefou_et_afamba },
  { name: "OLANGUINA", code: "", population: "", area: "", capital: "", division: mefou_et_afamba },
  { name: "EDZENDOUAN", code: "", population: "", area: "", capital: "", division: mefou_et_afamba },
  { name: "NKOLAFAMBA", code: "", population: "", area: "", capital: "", division: mefou_et_afamba },
  { name: "NGOUMOU", code: "", population: "", area: "", capital: "", division: mefou_et_akono },
  { name: "AKONO", code: "", population: "", area: "", capital: "", division: mefou_et_akono },
  { name: "MBANKOMO", code: "", population: "", area: "", capital: "", division: mefou_et_akono },
  { name: "BIKOK", code: "", population: "", area: "", capital: "", division: mefou_et_akono },
  { name: "YAOUNDE I", code: "", population: "", area: "", capital: "", division: mfoundi },
  { name: "YAOUNDE II", code: "", population: "", area: "", capital: "", division: mfoundi },
  { name: "YAOUNDE III", code: "", population: "", area: "", capital: "", division: mfoundi },
  { name: "YAOUNDE IV", code: "", population: "", area: "", capital: "", division: mfoundi },
  { name: "YAOUNDE V", code: "", population: "", area: "", capital: "", division: mfoundi },
  { name: "YAOUNDE VI", code: "", population: "", area: "", capital: "", division: mfoundi },
  { name: "YAOUNDE VII", code: "", population: "", area: "", capital: "", division: mfoundi },
  { name: "BOT-MAKAK", code: "", population: "", area: "", capital: "", division: nyong_et_ekelle },
  { name: "ESEKA", code: "", population: "", area: "", capital: "", division: nyong_et_ekelle },
  { name: "MAKAK", code: "", population: "", area: "", capital: "", division: nyong_et_ekelle },
  { name: "MESSONDO", code: "", population: "", area: "", capital: "", division: nyong_et_ekelle },
  { name: "NGOG-MAPUBI", code: "", population: "", area: "", capital: "", division: nyong_et_ekelle },
  { name: "MATOMB", code: "", population: "", area: "", capital: "", division: nyong_et_ekelle },
  { name: "DIBANG", code: "", population: "", area: "", capital: "", division: nyong_et_ekelle },
  { name: "NGUIBASSAL", code: "", population: "", area: "", capital: "", division: nyong_et_ekelle },
  { name: "BONDJOCK", code: "", population: "", area: "", capital: "", division: nyong_et_ekelle },
  { name: "BIYOUHA", code: "", population: "", area: "", capital: "", division: nyong_et_ekelle },
  { name: "AKONOLINGA", code: "", population: "", area: "", capital: "", division: nyong_et_mfoumou },
  { name: "AYOS", code: "", population: "", area: "", capital: "", division: nyong_et_mfoumou },
  { name: "ENDOM", code: "", population: "", area: "", capital: "", division: nyong_et_mfoumou },
  { name: "MENGANG", code: "", population: "", area: "", capital: "", division: nyong_et_mfoumou },
  { name: "KOBDOMBO", code: "", population: "", area: "", capital: "", division: nyong_et_mfoumou },
  { name: "DZENG", code: "", population: "", area: "", capital: "", division: nyong_et_soo },
  { name: "MBALMAYO", code: "", population: "", area: "", capital: "", division: nyong_et_soo },
  { name: "NGOMEDZAP", code: "", population: "", area: "", capital: "", division: nyong_et_soo },
  { name: "AKOEMAN", code: "", population: "", area: "", capital: "", division: nyong_et_soo },
  { name: "MENGUEME", code: "", population: "", area: "", capital: "", division: nyong_et_soo },
  { name: "NKOL-METET", code: "", population: "", area: "", capital: "", division: nyong_et_soo }
])

es_sds = SubDivision.create([
  { name: "MOLOUNDOU", code: "", population: "", area: "", capital: "", division: boumba_et_ngoko },
  { name: "SALAPOUMBE", code: "", population: "", area: "", capital: "", division: boumba_et_ngoko },
  { name: "GARI-GOMBO", code: "", population: "", area: "", capital: "", division: boumba_et_ngoko },
  { name: "YOKADOUMA", code: "", population: "", area: "", capital: "", division: boumba_et_ngoko },
  { name: "ABONG-MBANG", code: "", population: "", area: "", capital: "", division: haut_nyong },
  { name: "ANGOSSAS", code: "", population: "", area: "", capital: "", division: haut_nyong },
  { name: "ATOK", code: "", population: "", area: "", capital: "", division: haut_nyong },
  { name: "DIMAKO", code: "", population: "", area: "", capital: "", division: haut_nyong },
  { name: "DOUMAINTANG", code: "", population: "", area: "", capital: "", division: haut_nyong },
  { name: "DOUME", code: "", population: "", area: "", capital: "", division: haut_nyong },
  { name: "LOMIE", code: "", population: "", area: "", capital: "", division: haut_nyong },
  { name: "MBOMA", code: "", population: "", area: "", capital: "", division: haut_nyong },
  { name: "MESSAMENA", code: "", population: "", area: "", capital: "", division: haut_nyong },
  { name: "MESSOK", code: "", population: "", area: "", capital: "", division: haut_nyong },
  { name: "MINDOUROU", code: "", population: "", area: "", capital: "", division: haut_nyong },
  { name: "NGOYLA", code: "", population: "", area: "", capital: "", division: haut_nyong },
  { name: "NGUELEMENDOUKA", code: "", population: "", area: "", capital: "", division: haut_nyong },
  { name: "SOMALOMO", code: "", population: "", area: "", capital: "", division: haut_nyong },
  { name: "BATOURI", code: "", population: "", area: "", capital: "", division: kadey },
  { name: "NDELELE", code: "", population: "", area: "", capital: "", division: kadey },
  { name: "KETTE", code: "", population: "", area: "", capital: "", division: kadey },
  { name: "MBANG", code: "", population: "", area: "", capital: "", division: kadey },
  { name: "KENZOU", code: "", population: "", area: "", capital: "", division: kadey },
  { name: "NGUELEBOK", code: "", population: "", area: "", capital: "", division: kadey },
  { name: "OULI", code: "", population: "", area: "", capital: "", division: kadey },
  { name: "BERTOUA 1er", code: "", population: "", area: "", capital: "", division: lom_et_djerem },
  { name: "BERTOUA 2e", code: "", population: "", area: "", capital: "", division: lom_et_djerem },
  { name: "BETARE-OYA", code: "", population: "", area: "", capital: "", division: lom_et_djerem },
  { name: "BELABO", code: "", population: "", area: "", capital: "", division: lom_et_djerem },
  { name: "GAROUA-BOULAÏ", code: "", population: "", area: "", capital: "", division: lom_et_djerem },
  { name: "DIANG", code: "", population: "", area: "", capital: "", division: lom_et_djerem },
  { name: "MANDJOU", code: "", population: "", area: "", capital: "", division: lom_et_djerem },
  { name: "NGOURA", code: "", population: "", area: "", capital: "", division: lom_et_djerem }
])

fn_sds = SubDivision.create([
  { name: "BOGO", code: "", population: "", area: "", capital: "", division: diamare },
  { name: "MAROUA 1er", code: "", population: "", area: "", capital: "", division: diamare },
  { name: "MAROUA 2e", code: "", population: "", area: "", capital: "", division: diamare },
  { name: "MAROUA 3e", code: "", population: "", area: "", capital: "", division: diamare },
  { name: "MERI", code: "", population: "", area: "", capital: "", division: diamare },
  { name: "GAZAWA", code: "", population: "", area: "", capital: "", division: diamare },
  { name: "PETTE", code: "", population: "", area: "", capital: "", division: diamare },
  { name: "DARGALA", code: "", population: "", area: "", capital: "", division: diamare },
  { name: "DOUKOULA", code: "", population: "", area: "", capital: "", division: diamare },
  { name: "KOUSSERI", code: "", population: "", area: "", capital: "", division: logon_et_chari },
  { name: "MAKARY", code: "", population: "", area: "", capital: "", division: logon_et_chari },
  { name: "LOGONE-BIRNI", code: "", population: "", area: "", capital: "", division: logon_et_chari },
  { name: "GOULFEY", code: "", population: "", area: "", capital: "", division: logon_et_chari },
  { name: "WAZA", code: "", population: "", area: "", capital: "", division: logon_et_chari },
  { name: "FOTOKOL", code: "", population: "", area: "", capital: "", division: logon_et_chari },
  { name: "HILE-HALIFA", code: "", population: "", area: "", capital: "", division: logon_et_chari },
  { name: "BLANGOUA", code: "", population: "", area: "", capital: "", division: logon_et_chari },
  { name: "DARAK", code: "", population: "", area: "", capital: "", division: logon_et_chari },
  { name: "ZINA", code: "", population: "", area: "", capital: "", division: logon_et_chari },
  { name: "KAR-HAY", code: "", population: "", area: "", capital: "", division: mayo_danay },
  { name: "DATCHEKA", code: "", population: "", area: "", capital: "", division: mayo_danay },
  { name: "YAGOUA", code: "", population: "", area: "", capital: "", division: mayo_danay },
  { name: "GUERE", code: "", population: "", area: "", capital: "", division: mayo_danay },
  { name: "MAGA", code: "", population: "", area: "", capital: "", division: mayo_danay },
  { name: "KALFOU", code: "", population: "", area: "", capital: "", division: mayo_danay },
  { name: "WINA", code: "", population: "", area: "", capital: "", division: mayo_danay },
  { name: "TCHATIBALI", code: "", population: "", area: "", capital: "", division: mayo_danay },
  { name: "GOBO", code: "", population: "", area: "", capital: "", division: mayo_danay },
  { name: "KAÏ-KAÏ", code: "", population: "", area: "", capital: "", division: mayo_danay },
  { name: "GUEME", code: "", population: "", area: "", capital: "", division: mayo_danay },
  { name: "DZIGUILAO", code: "", population: "", area: "", capital: "", division: mayo_kani },
  { name: "GUIDIGUIS", code: "", population: "", area: "", capital: "", division: mayo_kani },
  { name: "KAELE", code: "", population: "", area: "", capital: "", division: mayo_kani },
  { name: "MINDIF", code: "", population: "", area: "", capital: "", division: mayo_kani },
  { name: "MOULVOUDAYE", code: "", population: "", area: "", capital: "", division: mayo_kani },
  { name: "MOTOURWA", code: "", population: "", area: "", capital: "", division: mayo_kani },
  { name: "TOULOUM", code: "", population: "", area: "", capital: "", division: mayo_kani },
  { name: "MORA", code: "", population: "", area: "", capital: "", division: mayo_sava },
  { name: "TOKOMBERE", code: "", population: "", area: "", capital: "", division: mayo_sava },
  { name: "KOLOFATA", code: "", population: "", area: "", capital: "", division: mayo_sava },
  { name: "BOURRHA", code: "", population: "", area: "", capital: "", division: mayo_tsanaga },
  { name: "HINA", code: "", population: "", area: "", capital: "", division: mayo_tsanaga },
  { name: "KOZA", code: "", population: "", area: "", capital: "", division: mayo_tsanaga },
  { name: "MOGODE", code: "", population: "", area: "", capital: "", division: mayo_tsanaga },
  { name: "MOKOLO", code: "", population: "", area: "", capital: "", division: mayo_tsanaga },
  { name: "MOZOGO", code: "", population: "", area: "", capital: "", division: mayo_tsanaga },
  { name: "SOULEDE-ROUA", code: "", population: "", area: "", capital: "", division: mayo_tsanaga }
])

lt_sds = SubDivision.create([
  { name: "BARE", code: "", population: "", area: "", capital: "", division: moungo },
  { name: "BONALEA", code: "", population: "", area: "", capital: "", division: moungo },
  { name: "EBONE", code: "", population: "", area: "", capital: "", division: moungo },
  { name: "DIBOMBARI", code: "", population: "", area: "", capital: "", division: moungo },
  { name: "LOUM", code: "", population: "", area: "", capital: "", division: moungo },
  { name: "MANJO", code: "", population: "", area: "", capital: "", division: moungo },
  { name: "MBANGA", code: "", population: "", area: "", capital: "", division: moungo },
  { name: "MELONG", code: "", population: "", area: "", capital: "", division: moungo },
  { name: "MOMBO", code: "", population: "", area: "", capital: "", division: moungo },
  { name: "NKONGSAMBA 1", code: "", population: "", area: "", capital: "", division: moungo },
  { name: "NKONGSAMBA 2e", code: "", population: "", area: "", capital: "", division: moungo },
  { name: "NKONGSAMBA 3e", code: "", population: "", area: "", capital: "", division: moungo },
  { name: "PENJA", code: "", population: "", area: "", capital: "", division: moungo },
  { name: "NDOBIAN", code: "", population: "", area: "", capital: "", division: nkam },
  { name: "NKONDJOCK", code: "", population: "", area: "", capital: "", division: nkam },
  { name: "YABASSI", code: "", population: "", area: "", capital: "", division: nkam },
  { name: "YINGUI", code: "", population: "", area: "", capital: "", division: nkam },
  { name: "DIBAMBA", code: "", population: "", area: "", capital: "", division: sanaga_maritime },
  { name: "DIZANGUE", code: "", population: "", area: "", capital: "", division: sanaga_maritime },
  { name: "EDEA 1er", code: "", population: "", area: "", capital: "", division: sanaga_maritime },
  { name: "EDEA 2e", code: "", population: "", area: "", capital: "", division: sanaga_maritime },
  { name: "MASSOCK", code: "", population: "", area: "", capital: "", division: sanaga_maritime },
  { name: "MOUANKO", code: "", population: "", area: "", capital: "", division: sanaga_maritime },
  { name: "NDOM", code: "", population: "", area: "", capital: "", division: sanaga_maritime },
  { name: "NGAMBE", code: "", population: "", area: "", capital: "", division: sanaga_maritime },
  { name: "NGWEI", code: "", population: "", area: "", capital: "", division: sanaga_maritime },
  { name: "NYANON", code: "", population: "", area: "", capital: "", division: sanaga_maritime },
  { name: "POUMA", code: "", population: "", area: "", capital: "", division: sanaga_maritime },
  { name: "DOUALA 1er", code: "", population: "", area: "", capital: "", division: wouri },
  { name: "DOUALA 2e", code: "", population: "", area: "", capital: "", division: wouri },
  { name: "DOUALA 3e", code: "", population: "", area: "", capital: "", division: wouri },
  { name: "DOUALA 4e", code: "", population: "", area: "", capital: "", division: wouri },
  { name: "DOUALA 5e", code: "", population: "", area: "", capital: "", division: wouri },
  { name: "DOUALA 6e", code: "", population: "", area: "", capital: "", division: wouri }
])

no_sds = SubDivision.create([
  { name: "GAROUA 1er", code: "", population: "", area: "", capital: "", division: benoue },
  { name: "GAROUA 2e", code: "", population: "", area: "", capital: "", division: benoue },
  { name: "GAROUA 3e", code: "", population: "", area: "", capital: "", division: benoue },
  { name: "BIBEMI", code: "", population: "", area: "", capital: "", division: benoue },
  { name: "PITOA", code: "", population: "", area: "", capital: "", division: benoue },
  { name: "LAGDO", code: "", population: "", area: "", capital: "", division: benoue },
  { name: "DEMBO", code: "", population: "", area: "", capital: "", division: benoue },
  { name: "GASHIGA", code: "", population: "", area: "", capital: "", division: benoue },
  { name: "BARNDAKE", code: "", population: "", area: "", capital: "", division: benoue },
  { name: "BASHEO", code: "", population: "", area: "", capital: "", division: benoue },
  { name: "NGONG", code: "", population: "", area: "", capital: "", division: benoue },
  { name: "TOUROUA", code: "", population: "", area: "", capital: "", division: benoue },
  { name: "POLI", code: "", population: "", area: "", capital: "", division: faro },
  { name: "BEKA", code: "", population: "", area: "", capital: "", division: faro },
  { name: "GUIDER", code: "", population: "", area: "", capital: "", division: mayo_louti },
  { name: "MAYO-OULO", code: "", population: "", area: "", capital: "", division: mayo_louti },
  { name: "FIGUIL", code: "", population: "", area: "", capital: "", division: mayo_louti },
  { name: "REY-BOUBA", code: "", population: "", area: "", capital: "", division: mayo_rey },
  { name: "TCHOLLIRE", code: "", population: "", area: "", capital: "", division: mayo_rey },
  { name: "TOUBORO", code: "", population: "", area: "", capital: "", division: mayo_rey },
  { name: "MADINGRING", code: "", population: "", area: "", capital: "", division: mayo_rey }
])

nw_sds = SubDivision.create([
  { name: "JAKIRI", code: "", population: "", area: "", capital: "", division: bui },
  { name: "KUMBO", code: "", population: "", area: "", capital: "", division: bui },
  { name: "ELAK OKU", code: "", population: "", area: "", capital: "", division: bui },
  { name: "MBIAME", code: "", population: "", area: "", capital: "", division: bui },
  { name: "NKOR", code: "", population: "", area: "", capital: "", division: bui },
  { name: "NKUM", code: "", population: "", area: "", capital: "", division: bui },
  { name: "FUNDONG", code: "", population: "", area: "", capital: "", division: boyo },
  { name: "BELO", code: "", population: "", area: "", capital: "", division: boyo },
  { name: "FONFUKA", code: "", population: "", area: "", capital: "", division: boyo },
  { name: "NJINIKOM", code: "", population: "", area: "", capital: "", division: boyo },
  { name: "NKAMBE", code: "", population: "", area: "", capital: "", division: donga_mantung },
  { name: "NWA", code: "", population: "", area: "", capital: "", division: donga_mantung },
  { name: "AKO", code: "", population: "", area: "", capital: "", division: donga_mantung },
  { name: "MISAJE", code: "", population: "", area: "", capital: "", division: donga_mantung },
  { name: "NDU", code: "", population: "", area: "", capital: "", division: donga_mantung },
  { name: "BENAKUMA", code: "", population: "", area: "", capital: "", division: menchum },
  { name: "FURU-AWA", code: "", population: "", area: "", capital: "", division: menchum },
  { name: "WUM", code: "", population: "", area: "", capital: "", division: menchum },
  { name: "ZHOA", code: "", population: "", area: "", capital: "", division: menchum },
  { name: "BAMENDA 1er", code: "", population: "", area: "", capital: "", division: mezam },
  { name: "BAMENDA 2e", code: "", population: "", area: "", capital: "", division: mezam },
  { name: "BAMENDA 3e", code: "", population: "", area: "", capital: "", division: mezam },
  { name: "BALI", code: "", population: "", area: "", capital: "", division: mezam },
  { name: "TUBAH", code: "", population: "", area: "", capital: "", division: mezam },
  { name: "BAFUT", code: "", population: "", area: "", capital: "", division: mezam },
  { name: "SANTA", code: "", population: "", area: "", capital: "", division: mezam },
  { name: "ANDEK", code: "", population: "", area: "", capital: "", division: momo },
  { name: "BATIBO", code: "", population: "", area: "", capital: "", division: momo },
  { name: "MBENGWI", code: "", population: "", area: "", capital: "", division: momo },
  { name: "NJIKWA", code: "", population: "", area: "", capital: "", division: momo },
  { name: "WIDIKUM", code: "", population: "", area: "", capital: "", division: momo },
  { name: "NDOP", code: "", population: "", area: "", capital: "", division: ngo_ketunjia },
  { name: "BABESSI", code: "", population: "", area: "", capital: "", division: ngo_ketunjia },
  { name: "BALIKUMBAT", code: "", population: "", area: "", capital: "", division: ngo_ketunjia }
])

we_sds = SubDivision.create([
  { name: "MBOUDA", code: "", population: "", area: "", capital: "", division: bamboutos },
  { name: "GALIM", code: "", population: "", area: "", capital: "", division: bamboutos },
  { name: "BATCHAM", code: "", population: "", area: "", capital: "", division: bamboutos },
  { name: "BABADJOU", code: "", population: "", area: "", capital: "", division: bamboutos },
  { name: "BAFANG", code: "", population: "", area: "", capital: "", division: haut_nkam },
  { name: "BANA", code: "", population: "", area: "", capital: "", division: haut_nkam },
  { name: "BANDJA", code: "", population: "", area: "", capital: "", division: haut_nkam },
  { name: "KEKEM", code: "", population: "", area: "", capital: "", division: haut_nkam },
  { name: "BAKOU", code: "", population: "", area: "", capital: "", division: haut_nkam },
  { name: "BANKA", code: "", population: "", area: "", capital: "", division: haut_nkam },
  { name: "BANWA", code: "", population: "", area: "", capital: "", division: haut_nkam },
  { name: "BAHAM", code: "", population: "", area: "", capital: "", division: hauts_plateaux },
  { name: "BAMENDJOU", code: "", population: "", area: "", capital: "", division: hauts_plateaux },
  { name: "BANGOU", code: "", population: "", area: "", capital: "", division: hauts_plateaux },
  { name: "BATIE", code: "", population: "", area: "", capital: "", division: hauts_plateaux },
  { name: "PETE-BANDJOUN", code: "", population: "", area: "", capital: "", division: koung_khi },
  { name: "BAYANGAM", code: "", population: "", area: "", capital: "", division: koung_khi },
  { name: "DEMDENG", code: "", population: "", area: "", capital: "", division: koung_khi },
  { name: "DSCHANG", code: "", population: "", area: "", capital: "", division: menoua },
  { name: "FOKOUE", code: "", population: "", area: "", capital: "", division: menoua },
  { name: "FONGO-TONGO", code: "", population: "", area: "", capital: "", division: menoua },
  { name: "NKONG-ZEM", code: "", population: "", area: "", capital: "", division: menoua },
  { name: "PENKA-MICHEL", code: "", population: "", area: "", capital: "", division: menoua },
  { name: "SANTCHOU", code: "", population: "", area: "", capital: "", division: menoua },
  { name: "BAFOUSSAM 1er", code: "", population: "", area: "", capital: "", division: mifi },
  { name: "BAFOUSSAM 2e", code: "", population: "", area: "", capital: "", division: mifi },
  { name: "BAFOUSSAM 3e", code: "", population: "", area: "", capital: "", division: mifi },
  { name: "BANGANGTE", code: "", population: "", area: "", capital: "", division: nde },
  { name: "BASSAMBA", code: "", population: "", area: "", capital: "", division: nde },
  { name: "BAZOU", code: "", population: "", area: "", capital: "", division: nde },
  { name: "NTONGA", code: "", population: "", area: "", capital: "", division: nde },
  { name: "BANGOURAIN", code: "", population: "", area: "", capital: "", division: noun },
  { name: "FOUMBAN", code: "", population: "", area: "", capital: "", division: noun },
  { name: "FOUMBOT", code: "", population: "", area: "", capital: "", division: noun },
  { name: "KOUOPTAMO", code: "", population: "", area: "", capital: "", division: noun },
  { name: "KOUTABA", code: "", population: "", area: "", capital: "", division: noun },
  { name: "MAGA", code: "", population: "", area: "", capital: "", division: noun },
  { name: "MALENTOUEN", code: "", population: "", area: "", capital: "", division: noun },
  { name: "MASSANGAM", code: "", population: "", area: "", capital: "", division: noun },
  { name: "NJIMON", code: "", population: "", area: "", capital: "", division: noun }
])

so_sds = SubDivision.create([
  { name: "BENGBIS", code: "", population: "", area: "", capital: "", division: dja_et_lobo },
  { name: "DJOUM", code: "", population: "", area: "", capital: "", division: dja_et_lobo },
  { name: "SANGMELIMA", code: "", population: "", area: "", capital: "", division: dja_et_lobo },
  { name: "ZOETELE", code: "", population: "", area: "", capital: "", division: dja_et_lobo },
  { name: "OVENG", code: "", population: "", area: "", capital: "", division: dja_et_lobo },
  { name: "MINTOM", code: "", population: "", area: "", capital: "", division: dja_et_lobo },
  { name: "MEYOMESSALA", code: "", population: "", area: "", capital: "", division: dja_et_lobo },
  { name: "MEYOMESSI", code: "", population: "", area: "", capital: "", division: dja_et_lobo },
  { name: "AMBAM", code: "", population: "", area: "", capital: "", division: vallee_du_ntem },
  { name: "MA'AN", code: "", population: "", area: "", capital: "", division: vallee_du_ntem },
  { name: "OLAMZE", code: "", population: "", area: "", capital: "", division: vallee_du_ntem },
  { name: "KYE OSSI", code: "", population: "", area: "", capital: "", division: vallee_du_ntem },
  { name: "EBOLOWA 1er", code: "", population: "", area: "", capital: "", division: mvila },
  { name: "EBOLOWA 2e", code: "", population: "", area: "", capital: "", division: mvila },
  { name: "BIWONG-BANE", code: "", population: "", area: "", capital: "", division: mvila },
  { name: "MVANGAN", code: "", population: "", area: "", capital: "", division: mvila },
  { name: "MENGONG", code: "", population: "", area: "", capital: "", division: mvila },
  { name: "NGOULEMAKONG", code: "", population: "", area: "", capital: "", division: mvila },
  { name: "EFOULAN", code: "", population: "", area: "", capital: "", division: mvila },
  { name: "BIWONG BULU", code: "", population: "", area: "", capital: "", division: mvila },
  { name: "AKOM II", code: "", population: "", area: "", capital: "", division: ocean },
  { name: "CAMPO", code: "", population: "", area: "", capital: "", division: ocean },
  { name: "KRIBI 1er", code: "", population: "", area: "", capital: "", division: ocean },
  { name: "KRIBI 2e", code: "", population: "", area: "", capital: "", division: ocean },
  { name: "LOLODORF", code: "", population: "", area: "", capital: "", division: ocean },
  { name: "MVENGUE", code: "", population: "", area: "", capital: "", division: ocean },
  { name: "BIPINDI", code: "", population: "", area: "", capital: "", division: ocean },
  { name: "LOKOUNDJE", code: "", population: "", area: "", capital: "", division: ocean },
  { name: "NIETE", code: "", population: "", area: "", capital: "", division: ocean }
])

sw_sds = SubDivision.create([
  { name: "MUYUKA", code: "", population: "", area: "", capital: "", division: fako },
  { name: "TIKO", code: "", population: "", area: "", capital: "", division: fako },
  { name: "LIMBE 1er", code: "", population: "", area: "", capital: "", division: fako },
  { name: "LIMBE 2e", code: "", population: "", area: "", capital: "", division: fako },
  { name: "LIMBE 3e", code: "", population: "", area: "", capital: "", division: fako },
  { name: "BUEA", code: "", population: "", area: "", capital: "", division: fako },
  { name: "IDENAU", code: "", population: "", area: "", capital: "", division: fako },
  { name: "BANGEM", code: "", population: "", area: "", capital: "", division: kupe_manengouba },
  { name: "NGUTI", code: "", population: "", area: "", capital: "", division: kupe_manengouba },
  { name: "TOMBEL", code: "", population: "", area: "", capital: "", division: kupe_manengouba },
  { name: "MENJI", code: "", population: "", area: "", capital: "", division: lebialem },
  { name: "ALOU", code: "", population: "", area: "", capital: "", division: lebialem },
  { name: "WABANE", code: "", population: "", area: "", capital: "", division: lebialem },
  { name: "AKWAYA", code: "", population: "", area: "", capital: "", division: manyu },
  { name: "MAMFE", code: "", population: "", area: "", capital: "", division: manyu },
  { name: "EYUMODJOCK", code: "", population: "", area: "", capital: "", division: manyu },
  { name: "TINTO", code: "", population: "", area: "", capital: "", division: manyu },
  { name: "KUMBA 1er", code: "", population: "", area: "", capital: "", division: meme },
  { name: "KUMBA 2e", code: "", population: "", area: "", capital: "", division: meme },
  { name: "KUMBA 3e", code: "", population: "", area: "", capital: "", division: meme },
  { name: "KONYE", code: "", population: "", area: "", capital: "", division: meme },
  { name: "BONGE", code: "", population: "", area: "", capital: "", division: meme },
  { name: "BAMUSSO", code: "", population: "", area: "", capital: "", division: ndian },
  { name: "EKONDO-TITI", code: "", population: "", area: "", capital: "", division: ndian },
  { name: "ISANGUELE", code: "", population: "", area: "", capital: "", division: ndian },
  { name: "MUNDEMBA", code: "", population: "", area: "", capital: "", division: ndian },
  { name: "KOMBO ABEDIMO", code: "", population: "", area: "", capital: "", division: ndian },
  { name: "KOMBO IDINTI", code: "", population: "", area: "", capital: "", division: ndian },
  { name: "IDABATO", code: "", population: "", area: "", capital: "", division: ndian },
  { name: "DIKOME-BALUE", code: "", population: "", area: "", capital: "", division: ndian },
  { name: "TOKO", code: "", population: "", area: "", capital: "", division: ndian }
])

[ad_sds, so_sds, sw_sds, ce_sds, es_sds, fn_sds, lt_sds, no_sds, nw_sds, we_sds].each do |set|
  set.each do |d|
    Council.create({ name: d.name, sub_division_id: d.id, code: SecureRandom.uuid })
  end
end

@causes = [ "Disease", "Cardiovascular disease", "Cancer", "Chronic condition", "Injury", "Accident", "Diabetes mellitus", "Suicide", "Stroke", "Pneumonia", "Respiratory disease", "Infection", "Coronary artery disease", "Alzheimer's disease", "Influenza", "Ischemia", "Lower respiratory tract infection", "Cerebrovascular disease", "HIV/AIDS", "Hypertension", "Tuberculosis", "Lung cancer", "Chronic Obstructive Pulmonary Disease", "Breast cancer", "Dementia", "Traffic collision", "Homicide", "Birth defect", "Old age", "Asthma", "Preterm birth", "Poisoning", "Infectious disease", "Prostate cancer", "Diarrhea", "Sepsis", "Kidney disease", "Cirrhosis", "Complication", "Malnutrition", "Perinatal mortality", "Acute disease", "Childbirth", "Obesity", "Malaria", "Gastrointestinal disease", "Maternal death", "Nephritis", "Drowning", "Virus", "Measles" ]



