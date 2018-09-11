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

#divisions

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
  { name:  "NGAOUNDAL", capital: "", code: "", population: "", area: "", division: djerem, administrative_region: ad},
  { name:  "TIBATI", capital: "", code: "", population: "", area: "", division: djerem, administrative_region: ad},
  { name:  "MAYO-BALEO", capital: "", code: "", population: "", area: "", division: faro_et_deo, administrative_region: ad},
  { name:  "TIGNERE", capital: "", code: "", population: "", area: "", division: faro_et_deo, administrative_region: ad},
  { name:  "GALIM-TIGNERE", capital: "", code: "", population: "", area: "", division: faro_et_deo, administrative_region: ad},
  { name:  "KONTCHA", capital: "", code: "", population: "", area: "", division: faro_et_deo, administrative_region: ad},
  { name:  "BANYO", capital: "", code: "", population: "", area: "", division: mayo_banyo, administrative_region: ad},
  { name:  "BANKIM", capital: "", code: "", population: "", area: "", division: mayo_banyo, administrative_region: ad},
  { name:  "MAYO-DARLE", capital: "", code: "", population: "", area: "", division: mayo_banyo, administrative_region: ad},
  { name:  "MEIGANGA", capital: "", code: "", population: "", area: "", division: mbere, administrative_region: ad},
  { name:  "DJOHONG", capital: "", code: "", population: "", area: "", division: mbere, administrative_region: ad},
  { name:  "DIR", capital: "", code: "", population: "", area: "", division: mbere, administrative_region: ad},
  { name:  "NGAOUI", capital: "", code: "", population: "", area: "", division: mbere, administrative_region: ad},
  { name:  "NGAOUNDERE 1er", capital: "", code: "", population: "", area: "", division: vina, administrative_region: ad},
  { name:  "NGAOUNDERE 2e", capital: "", code: "", population: "", area: "", division: vina, administrative_region: ad},
  { name:  "NGAOUNDERE 3e", capital: "", code: "", population: "", area: "", division: vina, administrative_region: ad},
  { name:  "BELEL", capital: "", code: "", population: "", area: "", division: vina, administrative_region: ad},
  { name:  "MBE", capital: "", code: "", population: "", area: "", division: vina, administrative_region: ad},
  { name:  "NGANHA", capital: "", code: "", population: "", area: "", division: vina, administrative_region: ad},
  { name:  "NYAMBAKA", capital: "", code: "", population: "", area: "", division: vina, administrative_region: ad},
  { name:  "MARTAP", capital: "", code: "", population: "", area: "", division: vina, administrative_region: ad}
])

ce_sds = SubDivision.create([
  { name: "MBANDJOCK", code: "", population: "", area: "", capital: "", division: haute_sanaga, administrative_region: ce},
  { name: "MINTA", code: "", population: "", area: "", capital: "", division: haute_sanaga, administrative_region: ce},
  { name: "NANGA-EBOKO", code: "", population: "", area: "", capital: "", division: haute_sanaga, administrative_region: ce},
  { name: "NKOTENG", code: "", population: "", area: "", capital: "", division: haute_sanaga, administrative_region: ce},
  { name: "BIBEY", code: "", population: "", area: "", capital: "", division: haute_sanaga, administrative_region: ce},
  { name: "NSEM", code: "", population: "", area: "", capital: "", division: haute_sanaga, administrative_region: ce},
  { name: "LEMBE-YEZOUM", code: "", population: "", area: "", capital: "", division: haute_sanaga, administrative_region: ce},
  { name: "EVODOULA", code: "", population: "", area: "", capital: "", division: lekie, administrative_region: ce},
  { name: "MONATELE", code: "", population: "", area: "", capital: "", division: lekie, administrative_region: ce},
  { name: "OBALA", code: "", population: "", area: "", capital: "", division: lekie, administrative_region: ce},
  { name: "OKOLA", code: "", population: "", area: "", capital: "", division: lekie, administrative_region: ce},
  { name: "SA'A", code: "", population: "", area: "", capital: "", division: lekie, administrative_region: ce},
  { name: "ELIG-MFOMO", code: "", population: "", area: "", capital: "", division: lekie, administrative_region: ce},
  { name: "EBEBDA", code: "", population: "", area: "", capital: "", division: lekie, administrative_region: ce},
  { name: "BATSCHENGA", code: "", population: "", area: "", capital: "", division: lekie, administrative_region: ce},
  { name: "LOBO", code: "", population: "", area: "", capital: "", division: lekie, administrative_region: ce},
  { name: "BAFIA", code: "", population: "", area: "", capital: "", division: mbam_et_inoubou, administrative_region: ce},
  { name: "BOKITO", code: "", population: "", area: "", capital: "", division: mbam_et_inoubou, administrative_region: ce},
  { name: "DEUK", code: "", population: "", area: "", capital: "", division: mbam_et_inoubou, administrative_region: ce},
  { name: "MAKENENE", code: "", population: "", area: "", capital: "", division: mbam_et_inoubou, administrative_region: ce},
  { name: "NDIKINIMEKI", code: "", population: "", area: "", capital: "", division: mbam_et_inoubou, administrative_region: ce},
  { name: "OMBESSA", code: "", population: "", area: "", capital: "", division: mbam_et_inoubou, administrative_region: ce},
  { name: "KIIKI", code: "", population: "", area: "", capital: "", division: mbam_et_inoubou, administrative_region: ce},
  { name: "KON-YAMBETTA", code: "", population: "", area: "", capital: "", division: mbam_et_inoubou, administrative_region: ce},
  { name: "NITOUKOU", code: "", population: "", area: "", capital: "", division: mbam_et_inoubou, administrative_region: ce},
  { name: "NTUI", code: "", population: "", area: "", capital: "", division: mbam_et_kim, administrative_region: ce},
  { name: "NGAMBE TIKAR", code: "", population: "", area: "", capital: "", division: mbam_et_kim, administrative_region: ce},
  { name: "NGORO", code: "", population: "", area: "", capital: "", division: mbam_et_kim, administrative_region: ce},
  { name: "YOKO", code: "", population: "", area: "", capital: "", division: mbam_et_kim, administrative_region: ce},
  { name: "MBANGASSINA", code: "", population: "", area: "", capital: "", division: mbam_et_kim, administrative_region: ce},
  { name: "MFOU", code: "", population: "", area: "", capital: "", division: mefou_et_afamba, administrative_region: ce},
  { name: "ESSE", code: "", population: "", area: "", capital: "", division: mefou_et_afamba, administrative_region: ce},
  { name: "AWAE", code: "", population: "", area: "", capital: "", division: mefou_et_afamba, administrative_region: ce},
  { name: "SOA", code: "", population: "", area: "", capital: "", division: mefou_et_afamba, administrative_region: ce},
  { name: "AFANLOUM", code: "", population: "", area: "", capital: "", division: mefou_et_afamba, administrative_region: ce},
  { name: "OLANGUINA", code: "", population: "", area: "", capital: "", division: mefou_et_afamba, administrative_region: ce},
  { name: "EDZENDOUAN", code: "", population: "", area: "", capital: "", division: mefou_et_afamba, administrative_region: ce},
  { name: "NKOLAFAMBA", code: "", population: "", area: "", capital: "", division: mefou_et_afamba, administrative_region: ce},
  { name: "NGOUMOU", code: "", population: "", area: "", capital: "", division: mefou_et_akono, administrative_region: ce},
  { name: "AKONO", code: "", population: "", area: "", capital: "", division: mefou_et_akono, administrative_region: ce},
  { name: "MBANKOMO", code: "", population: "", area: "", capital: "", division: mefou_et_akono, administrative_region: ce},
  { name: "BIKOK", code: "", population: "", area: "", capital: "", division: mefou_et_akono, administrative_region: ce},
  { name: "YAOUNDE I", code: "", population: "", area: "", capital: "", division: mfoundi, administrative_region: ce},
  { name: "YAOUNDE II", code: "", population: "", area: "", capital: "", division: mfoundi, administrative_region: ce},
  { name: "YAOUNDE III", code: "", population: "", area: "", capital: "", division: mfoundi, administrative_region: ce},
  { name: "YAOUNDE IV", code: "", population: "", area: "", capital: "", division: mfoundi, administrative_region: ce},
  { name: "YAOUNDE V", code: "", population: "", area: "", capital: "", division: mfoundi, administrative_region: ce},
  { name: "YAOUNDE VI", code: "", population: "", area: "", capital: "", division: mfoundi, administrative_region: ce},
  { name: "YAOUNDE VII", code: "", population: "", area: "", capital: "", division: mfoundi, administrative_region: ce},
  { name: "BOT-MAKAK", code: "", population: "", area: "", capital: "", division: nyong_et_ekelle, administrative_region: ce},
  { name: "ESEKA", code: "", population: "", area: "", capital: "", division: nyong_et_ekelle, administrative_region: ce},
  { name: "MAKAK", code: "", population: "", area: "", capital: "", division: nyong_et_ekelle, administrative_region: ce},
  { name: "MESSONDO", code: "", population: "", area: "", capital: "", division: nyong_et_ekelle, administrative_region: ce},
  { name: "NGOG-MAPUBI", code: "", population: "", area: "", capital: "", division: nyong_et_ekelle, administrative_region: ce},
  { name: "MATOMB", code: "", population: "", area: "", capital: "", division: nyong_et_ekelle, administrative_region: ce},
  { name: "DIBANG", code: "", population: "", area: "", capital: "", division: nyong_et_ekelle, administrative_region: ce},
  { name: "NGUIBASSAL", code: "", population: "", area: "", capital: "", division: nyong_et_ekelle, administrative_region: ce},
  { name: "BONDJOCK", code: "", population: "", area: "", capital: "", division: nyong_et_ekelle, administrative_region: ce},
  { name: "BIYOUHA", code: "", population: "", area: "", capital: "", division: nyong_et_ekelle, administrative_region: ce},
  { name: "AKONOLINGA", code: "", population: "", area: "", capital: "", division: nyong_et_mfoumou, administrative_region: ce},
  { name: "AYOS", code: "", population: "", area: "", capital: "", division: nyong_et_mfoumou, administrative_region: ce},
  { name: "ENDOM", code: "", population: "", area: "", capital: "", division: nyong_et_mfoumou, administrative_region: ce},
  { name: "MENGANG", code: "", population: "", area: "", capital: "", division: nyong_et_mfoumou, administrative_region: ce},
  { name: "KOBDOMBO", code: "", population: "", area: "", capital: "", division: nyong_et_mfoumou, administrative_region: ce},
  { name: "DZENG", code: "", population: "", area: "", capital: "", division: nyong_et_soo, administrative_region: ce},
  { name: "MBALMAYO", code: "", population: "", area: "", capital: "", division: nyong_et_soo, administrative_region: ce},
  { name: "NGOMEDZAP", code: "", population: "", area: "", capital: "", division: nyong_et_soo, administrative_region: ce},
  { name: "AKOEMAN", code: "", population: "", area: "", capital: "", division: nyong_et_soo, administrative_region: ce},
  { name: "MENGUEME", code: "", population: "", area: "", capital: "", division: nyong_et_soo, administrative_region: ce},
  { name: "NKOL-METET", code: "", population: "", area: "", capital: "", division: nyong_et_soo, administrative_region: ce}
])

es_sds = SubDivision.create([
  { name: "MOLOUNDOU", code: "", population: "", area: "", capital: "", division: boumba_et_ngoko, administrative_region: es},
  { name: "SALAPOUMBE", code: "", population: "", area: "", capital: "", division: boumba_et_ngoko, administrative_region: es},
  { name: "GARI-GOMBO", code: "", population: "", area: "", capital: "", division: boumba_et_ngoko, administrative_region: es},
  { name: "YOKADOUMA", code: "", population: "", area: "", capital: "", division: boumba_et_ngoko, administrative_region: es},
  { name: "ABONG-MBANG", code: "", population: "", area: "", capital: "", division: haut_nyong, administrative_region: es},
  { name: "ANGOSSAS", code: "", population: "", area: "", capital: "", division: haut_nyong, administrative_region: es},
  { name: "ATOK", code: "", population: "", area: "", capital: "", division: haut_nyong, administrative_region: es},
  { name: "DIMAKO", code: "", population: "", area: "", capital: "", division: haut_nyong, administrative_region: es},
  { name: "DOUMAINTANG", code: "", population: "", area: "", capital: "", division: haut_nyong, administrative_region: es},
  { name: "DOUME", code: "", population: "", area: "", capital: "", division: haut_nyong, administrative_region: es},
  { name: "LOMIE", code: "", population: "", area: "", capital: "", division: haut_nyong, administrative_region: es},
  { name: "MBOMA", code: "", population: "", area: "", capital: "", division: haut_nyong, administrative_region: es},
  { name: "MESSAMENA", code: "", population: "", area: "", capital: "", division: haut_nyong, administrative_region: es},
  { name: "MESSOK", code: "", population: "", area: "", capital: "", division: haut_nyong, administrative_region: es},
  { name: "MINDOUROU", code: "", population: "", area: "", capital: "", division: haut_nyong, administrative_region: es},
  { name: "NGOYLA", code: "", population: "", area: "", capital: "", division: haut_nyong, administrative_region: es},
  { name: "NGUELEMENDOUKA", code: "", population: "", area: "", capital: "", division: haut_nyong, administrative_region: es},
  { name: "SOMALOMO", code: "", population: "", area: "", capital: "", division: haut_nyong, administrative_region: es},
  { name: "BATOURI", code: "", population: "", area: "", capital: "", division: kadey, administrative_region: es},
  { name: "NDELELE", code: "", population: "", area: "", capital: "", division: kadey, administrative_region: es},
  { name: "KETTE", code: "", population: "", area: "", capital: "", division: kadey, administrative_region: es},
  { name: "MBANG", code: "", population: "", area: "", capital: "", division: kadey, administrative_region: es},
  { name: "KENZOU", code: "", population: "", area: "", capital: "", division: kadey, administrative_region: es},
  { name: "NGUELEBOK", code: "", population: "", area: "", capital: "", division: kadey, administrative_region: es},
  { name: "OULI", code: "", population: "", area: "", capital: "", division: kadey, administrative_region: es},
  { name: "BERTOUA 1er", code: "", population: "", area: "", capital: "", division: lom_et_djerem, administrative_region: es},
  { name: "BERTOUA 2e", code: "", population: "", area: "", capital: "", division: lom_et_djerem, administrative_region: es},
  { name: "BETARE-OYA", code: "", population: "", area: "", capital: "", division: lom_et_djerem, administrative_region: es},
  { name: "BELABO", code: "", population: "", area: "", capital: "", division: lom_et_djerem, administrative_region: es},
  { name: "GAROUA-BOULAÏ", code: "", population: "", area: "", capital: "", division: lom_et_djerem, administrative_region: es},
  { name: "DIANG", code: "", population: "", area: "", capital: "", division: lom_et_djerem, administrative_region: es},
  { name: "MANDJOU", code: "", population: "", area: "", capital: "", division: lom_et_djerem, administrative_region: es},
  { name: "NGOURA", code: "", population: "", area: "", capital: "", division: lom_et_djerem, administrative_region: es}
])

fn_sds = SubDivision.create([
  { name: "BOGO", code: "", population: "", area: "", capital: "", division: diamare, administrative_region: fn},
  { name: "MAROUA 1er", code: "", population: "", area: "", capital: "", division: diamare, administrative_region: fn},
  { name: "MAROUA 2e", code: "", population: "", area: "", capital: "", division: diamare, administrative_region: fn},
  { name: "MAROUA 3e", code: "", population: "", area: "", capital: "", division: diamare, administrative_region: fn},
  { name: "MERI", code: "", population: "", area: "", capital: "", division: diamare, administrative_region: fn},
  { name: "GAZAWA", code: "", population: "", area: "", capital: "", division: diamare, administrative_region: fn},
  { name: "PETTE", code: "", population: "", area: "", capital: "", division: diamare, administrative_region: fn},
  { name: "DARGALA", code: "", population: "", area: "", capital: "", division: diamare, administrative_region: fn},
  { name: "DOUKOULA", code: "", population: "", area: "", capital: "", division: diamare, administrative_region: fn},
  { name: "KOUSSERI", code: "", population: "", area: "", capital: "", division: logon_et_chari, administrative_region: fn},
  { name: "MAKARY", code: "", population: "", area: "", capital: "", division: logon_et_chari, administrative_region: fn},
  { name: "LOGONE-BIRNI", code: "", population: "", area: "", capital: "", division: logon_et_chari, administrative_region: fn},
  { name: "GOULFEY", code: "", population: "", area: "", capital: "", division: logon_et_chari, administrative_region: fn},
  { name: "WAZA", code: "", population: "", area: "", capital: "", division: logon_et_chari, administrative_region: fn},
  { name: "FOTOKOL", code: "", population: "", area: "", capital: "", division: logon_et_chari, administrative_region: fn},
  { name: "HILE-HALIFA", code: "", population: "", area: "", capital: "", division: logon_et_chari, administrative_region: fn},
  { name: "BLANGOUA", code: "", population: "", area: "", capital: "", division: logon_et_chari, administrative_region: fn},
  { name: "DARAK", code: "", population: "", area: "", capital: "", division: logon_et_chari, administrative_region: fn},
  { name: "ZINA", code: "", population: "", area: "", capital: "", division: logon_et_chari, administrative_region: fn},
  { name: "KAR-HAY", code: "", population: "", area: "", capital: "", division: mayo_danay, administrative_region: fn},
  { name: "DATCHEKA", code: "", population: "", area: "", capital: "", division: mayo_danay, administrative_region: fn},
  { name: "YAGOUA", code: "", population: "", area: "", capital: "", division: mayo_danay, administrative_region: fn},
  { name: "GUERE", code: "", population: "", area: "", capital: "", division: mayo_danay, administrative_region: fn},
  { name: "MAGA", code: "", population: "", area: "", capital: "", division: mayo_danay, administrative_region: fn},
  { name: "KALFOU", code: "", population: "", area: "", capital: "", division: mayo_danay, administrative_region: fn},
  { name: "WINA", code: "", population: "", area: "", capital: "", division: mayo_danay, administrative_region: fn},
  { name: "TCHATIBALI", code: "", population: "", area: "", capital: "", division: mayo_danay, administrative_region: fn},
  { name: "GOBO", code: "", population: "", area: "", capital: "", division: mayo_danay, administrative_region: fn},
  { name: "KAÏ-KAÏ", code: "", population: "", area: "", capital: "", division: mayo_danay, administrative_region: fn},
  { name: "GUEME", code: "", population: "", area: "", capital: "", division: mayo_danay, administrative_region: fn},
  { name: "DZIGUILAO", code: "", population: "", area: "", capital: "", division: mayo_kani, administrative_region: fn},
  { name: "GUIDIGUIS", code: "", population: "", area: "", capital: "", division: mayo_kani, administrative_region: fn},
  { name: "KAELE", code: "", population: "", area: "", capital: "", division: mayo_kani, administrative_region: fn},
  { name: "MINDIF", code: "", population: "", area: "", capital: "", division: mayo_kani, administrative_region: fn},
  { name: "MOULVOUDAYE", code: "", population: "", area: "", capital: "", division: mayo_kani, administrative_region: fn},
  { name: "MOTOURWA", code: "", population: "", area: "", capital: "", division: mayo_kani, administrative_region: fn},
  { name: "TOULOUM", code: "", population: "", area: "", capital: "", division: mayo_kani, administrative_region: fn},
  { name: "MORA", code: "", population: "", area: "", capital: "", division: mayo_sava, administrative_region: fn},
  { name: "TOKOMBERE", code: "", population: "", area: "", capital: "", division: mayo_sava, administrative_region: fn},
  { name: "KOLOFATA", code: "", population: "", area: "", capital: "", division: mayo_sava, administrative_region: fn},
  { name: "BOURRHA", code: "", population: "", area: "", capital: "", division: mayo_tsanaga, administrative_region: fn},
  { name: "HINA", code: "", population: "", area: "", capital: "", division: mayo_tsanaga, administrative_region: fn},
  { name: "KOZA", code: "", population: "", area: "", capital: "", division: mayo_tsanaga, administrative_region: fn},
  { name: "MOGODE", code: "", population: "", area: "", capital: "", division: mayo_tsanaga, administrative_region: fn},
  { name: "MOKOLO", code: "", population: "", area: "", capital: "", division: mayo_tsanaga, administrative_region: fn},
  { name: "MOZOGO", code: "", population: "", area: "", capital: "", division: mayo_tsanaga, administrative_region: fn},
  { name: "SOULEDE-ROUA", code: "", population: "", area: "", capital: "", division: mayo_tsanaga, administrative_region: fn}
])

lt_sds = SubDivision.create([
  { name: "BARE", code: "", population: "", area: "", capital: "", division: moungo, administrative_region: lt},
  { name: "BONALEA", code: "", population: "", area: "", capital: "", division: moungo, administrative_region: lt},
  { name: "EBONE", code: "", population: "", area: "", capital: "", division: moungo, administrative_region: lt},
  { name: "DIBOMBARI", code: "", population: "", area: "", capital: "", division: moungo, administrative_region: lt},
  { name: "LOUM", code: "", population: "", area: "", capital: "", division: moungo, administrative_region: lt},
  { name: "MANJO", code: "", population: "", area: "", capital: "", division: moungo, administrative_region: lt},
  { name: "MBANGA", code: "", population: "", area: "", capital: "", division: moungo, administrative_region: lt},
  { name: "MELONG", code: "", population: "", area: "", capital: "", division: moungo, administrative_region: lt},
  { name: "MOMBO", code: "", population: "", area: "", capital: "", division: moungo, administrative_region: lt},
  { name: "NKONGSAMBA 1", code: "", population: "", area: "", capital: "", division: moungo, administrative_region: lt},
  { name: "NKONGSAMBA 2e", code: "", population: "", area: "", capital: "", division: moungo, administrative_region: lt},
  { name: "NKONGSAMBA 3e", code: "", population: "", area: "", capital: "", division: moungo, administrative_region: lt},
  { name: "PENJA", code: "", population: "", area: "", capital: "", division: moungo, administrative_region: lt},
  { name: "NDOBIAN", code: "", population: "", area: "", capital: "", division: nkam, administrative_region: lt},
  { name: "NKONDJOCK", code: "", population: "", area: "", capital: "", division: nkam, administrative_region: lt},
  { name: "YABASSI", code: "", population: "", area: "", capital: "", division: nkam, administrative_region: lt},
  { name: "YINGUI", code: "", population: "", area: "", capital: "", division: nkam, administrative_region: lt},
  { name: "DIBAMBA", code: "", population: "", area: "", capital: "", division: sanaga_maritime, administrative_region: lt},
  { name: "DIZANGUE", code: "", population: "", area: "", capital: "", division: sanaga_maritime, administrative_region: lt},
  { name: "EDEA 1er", code: "", population: "", area: "", capital: "", division: sanaga_maritime, administrative_region: lt},
  { name: "EDEA 2e", code: "", population: "", area: "", capital: "", division: sanaga_maritime, administrative_region: lt},
  { name: "MASSOCK", code: "", population: "", area: "", capital: "", division: sanaga_maritime, administrative_region: lt},
  { name: "MOUANKO", code: "", population: "", area: "", capital: "", division: sanaga_maritime, administrative_region: lt},
  { name: "NDOM", code: "", population: "", area: "", capital: "", division: sanaga_maritime, administrative_region: lt},
  { name: "NGAMBE", code: "", population: "", area: "", capital: "", division: sanaga_maritime, administrative_region: lt},
  { name: "NGWEI", code: "", population: "", area: "", capital: "", division: sanaga_maritime, administrative_region: lt},
  { name: "NYANON", code: "", population: "", area: "", capital: "", division: sanaga_maritime, administrative_region: lt},
  { name: "POUMA", code: "", population: "", area: "", capital: "", division: sanaga_maritime, administrative_region: lt},
  { name: "DOUALA 1er", code: "", population: "", area: "", capital: "", division: wouri, administrative_region: lt},
  { name: "DOUALA 2e", code: "", population: "", area: "", capital: "", division: wouri, administrative_region: lt},
  { name: "DOUALA 3e", code: "", population: "", area: "", capital: "", division: wouri, administrative_region: lt},
  { name: "DOUALA 4e", code: "", population: "", area: "", capital: "", division: wouri, administrative_region: lt},
  { name: "DOUALA 5e", code: "", population: "", area: "", capital: "", division: wouri, administrative_region: lt},
  { name: "DOUALA 6e", code: "", population: "", area: "", capital: "", division: wouri, administrative_region: lt}
])

no_sds = SubDivision.create([
  { name: "GAROUA 1er", code: "", population: "", area: "", capital: "", division: benoue, administrative_region: no},
  { name: "GAROUA 2e", code: "", population: "", area: "", capital: "", division: benoue, administrative_region: no},
  { name: "GAROUA 3e", code: "", population: "", area: "", capital: "", division: benoue, administrative_region: no},
  { name: "BIBEMI", code: "", population: "", area: "", capital: "", division: benoue, administrative_region: no},
  { name: "PITOA", code: "", population: "", area: "", capital: "", division: benoue, administrative_region: no},
  { name: "LAGDO", code: "", population: "", area: "", capital: "", division: benoue, administrative_region: no},
  { name: "DEMBO", code: "", population: "", area: "", capital: "", division: benoue, administrative_region: no},
  { name: "GASHIGA", code: "", population: "", area: "", capital: "", division: benoue, administrative_region: no},
  { name: "BARNDAKE", code: "", population: "", area: "", capital: "", division: benoue, administrative_region: no},
  { name: "BASHEO", code: "", population: "", area: "", capital: "", division: benoue, administrative_region: no},
  { name: "NGONG", code: "", population: "", area: "", capital: "", division: benoue, administrative_region: no},
  { name: "TOUROUA", code: "", population: "", area: "", capital: "", division: benoue, administrative_region: no},
  { name: "POLI", code: "", population: "", area: "", capital: "", division: faro, administrative_region: no},
  { name: "BEKA", code: "", population: "", area: "", capital: "", division: faro, administrative_region: no},
  { name: "GUIDER", code: "", population: "", area: "", capital: "", division: mayo_louti, administrative_region: no},
  { name: "MAYO-OULO", code: "", population: "", area: "", capital: "", division: mayo_louti, administrative_region: no},
  { name: "FIGUIL", code: "", population: "", area: "", capital: "", division: mayo_louti, administrative_region: no},
  { name: "REY-BOUBA", code: "", population: "", area: "", capital: "", division: mayo_rey, administrative_region: no},
  { name: "TCHOLLIRE", code: "", population: "", area: "", capital: "", division: mayo_rey, administrative_region: no},
  { name: "TOUBORO", code: "", population: "", area: "", capital: "", division: mayo_rey, administrative_region: no},
  { name: "MADINGRING", code: "", population: "", area: "", capital: "", division: mayo_rey, administrative_region: no}
])

nw_sds = SubDivision.create([
  { name: "JAKIRI", code: "", population: "", area: "", capital: "", division: bui, administrative_region: nw},
  { name: "KUMBO", code: "", population: "", area: "", capital: "", division: bui, administrative_region: nw},
  { name: "ELAK OKU", code: "", population: "", area: "", capital: "", division: bui, administrative_region: nw},
  { name: "MBIAME", code: "", population: "", area: "", capital: "", division: bui, administrative_region: nw},
  { name: "NKOR", code: "", population: "", area: "", capital: "", division: bui, administrative_region: nw},
  { name: "NKUM", code: "", population: "", area: "", capital: "", division: bui, administrative_region: nw},
  { name: "FUNDONG", code: "", population: "", area: "", capital: "", division: boyo, administrative_region: nw},
  { name: "BELO", code: "", population: "", area: "", capital: "", division: boyo, administrative_region: nw},
  { name: "FONFUKA", code: "", population: "", area: "", capital: "", division: boyo, administrative_region: nw},
  { name: "NJINIKOM", code: "", population: "", area: "", capital: "", division: boyo, administrative_region: nw},
  { name: "NKAMBE", code: "", population: "", area: "", capital: "", division: donga_mantung, administrative_region: nw},
  { name: "NWA", code: "", population: "", area: "", capital: "", division: donga_mantung, administrative_region: nw},
  { name: "AKO", code: "", population: "", area: "", capital: "", division: donga_mantung, administrative_region: nw},
  { name: "MISAJE", code: "", population: "", area: "", capital: "", division: donga_mantung, administrative_region: nw},
  { name: "NDU", code: "", population: "", area: "", capital: "", division: donga_mantung, administrative_region: nw},
  { name: "BENAKUMA", code: "", population: "", area: "", capital: "", division: menchum, administrative_region: nw},
  { name: "FURU-AWA", code: "", population: "", area: "", capital: "", division: menchum, administrative_region: nw},
  { name: "WUM", code: "", population: "", area: "", capital: "", division: menchum, administrative_region: nw},
  { name: "ZHOA", code: "", population: "", area: "", capital: "", division: menchum, administrative_region: nw},
  { name: "BAMENDA 1er", code: "", population: "", area: "", capital: "", division: mezam, administrative_region: nw},
  { name: "BAMENDA 2e", code: "", population: "", area: "", capital: "", division: mezam, administrative_region: nw},
  { name: "BAMENDA 3e", code: "", population: "", area: "", capital: "", division: mezam, administrative_region: nw},
  { name: "BALI", code: "", population: "", area: "", capital: "", division: mezam, administrative_region: nw},
  { name: "TUBAH", code: "", population: "", area: "", capital: "", division: mezam, administrative_region: nw},
  { name: "BAFUT", code: "", population: "", area: "", capital: "", division: mezam, administrative_region: nw},
  { name: "SANTA", code: "", population: "", area: "", capital: "", division: mezam, administrative_region: nw},
  { name: "ANDEK", code: "", population: "", area: "", capital: "", division: momo, administrative_region: nw},
  { name: "BATIBO", code: "", population: "", area: "", capital: "", division: momo, administrative_region: nw},
  { name: "MBENGWI", code: "", population: "", area: "", capital: "", division: momo, administrative_region: nw},
  { name: "NJIKWA", code: "", population: "", area: "", capital: "", division: momo, administrative_region: nw},
  { name: "WIDIKUM", code: "", population: "", area: "", capital: "", division: momo, administrative_region: nw},
  { name: "NDOP", code: "", population: "", area: "", capital: "", division: ngo_ketunjia, administrative_region: nw},
  { name: "BABESSI", code: "", population: "", area: "", capital: "", division: ngo_ketunjia, administrative_region: nw},
  { name: "BALIKUMBAT", code: "", population: "", area: "", capital: "", division: ngo_ketunjia, administrative_region: nw}
])

we_sds = SubDivision.create([
  { name: "MBOUDA", code: "", population: "", area: "", capital: "", division: bamboutos, administrative_region: we},
  { name: "GALIM", code: "", population: "", area: "", capital: "", division: bamboutos, administrative_region: we},
  { name: "BATCHAM", code: "", population: "", area: "", capital: "", division: bamboutos, administrative_region: we},
  { name: "BABADJOU", code: "", population: "", area: "", capital: "", division: bamboutos, administrative_region: we},
  { name: "BAFANG", code: "", population: "", area: "", capital: "", division: haut_nkam, administrative_region: we},
  { name: "BANA", code: "", population: "", area: "", capital: "", division: haut_nkam, administrative_region: we},
  { name: "BANDJA", code: "", population: "", area: "", capital: "", division: haut_nkam, administrative_region: we},
  { name: "KEKEM", code: "", population: "", area: "", capital: "", division: haut_nkam, administrative_region: we},
  { name: "BAKOU", code: "", population: "", area: "", capital: "", division: haut_nkam, administrative_region: we},
  { name: "BANKA", code: "", population: "", area: "", capital: "", division: haut_nkam, administrative_region: we},
  { name: "BANWA", code: "", population: "", area: "", capital: "", division: haut_nkam, administrative_region: we},
  { name: "BAHAM", code: "", population: "", area: "", capital: "", division: hauts_plateaux, administrative_region: we},
  { name: "BAMENDJOU", code: "", population: "", area: "", capital: "", division: hauts_plateaux, administrative_region: we},
  { name: "BANGOU", code: "", population: "", area: "", capital: "", division: hauts_plateaux, administrative_region: we},
  { name: "BATIE", code: "", population: "", area: "", capital: "", division: hauts_plateaux, administrative_region: we},
  { name: "PETE-BANDJOUN", code: "", population: "", area: "", capital: "", division: koung_khi, administrative_region: we},
  { name: "BAYANGAM", code: "", population: "", area: "", capital: "", division: koung_khi, administrative_region: we},
  { name: "DEMDENG", code: "", population: "", area: "", capital: "", division: koung_khi, administrative_region: we},
  { name: "DSCHANG", code: "", population: "", area: "", capital: "", division: menoua, administrative_region: we},
  { name: "FOKOUE", code: "", population: "", area: "", capital: "", division: menoua, administrative_region: we},
  { name: "FONGO-TONGO", code: "", population: "", area: "", capital: "", division: menoua, administrative_region: we},
  { name: "NKONG-ZEM", code: "", population: "", area: "", capital: "", division: menoua, administrative_region: we},
  { name: "PENKA-MICHEL", code: "", population: "", area: "", capital: "", division: menoua, administrative_region: we},
  { name: "SANTCHOU", code: "", population: "", area: "", capital: "", division: menoua, administrative_region: we},
  { name: "BAFOUSSAM 1er", code: "", population: "", area: "", capital: "", division: mifi, administrative_region: we},
  { name: "BAFOUSSAM 2e", code: "", population: "", area: "", capital: "", division: mifi, administrative_region: we},
  { name: "BAFOUSSAM 3e", code: "", population: "", area: "", capital: "", division: mifi, administrative_region: we},
  { name: "BANGANGTE", code: "", population: "", area: "", capital: "", division: nde, administrative_region: we},
  { name: "BASSAMBA", code: "", population: "", area: "", capital: "", division: nde, administrative_region: we},
  { name: "BAZOU", code: "", population: "", area: "", capital: "", division: nde, administrative_region: we},
  { name: "NTONGA", code: "", population: "", area: "", capital: "", division: nde, administrative_region: we},
  { name: "BANGOURAIN", code: "", population: "", area: "", capital: "", division: noun, administrative_region: we},
  { name: "FOUMBAN", code: "", population: "", area: "", capital: "", division: noun, administrative_region: we},
  { name: "FOUMBOT", code: "", population: "", area: "", capital: "", division: noun, administrative_region: we},
  { name: "KOUOPTAMO", code: "", population: "", area: "", capital: "", division: noun, administrative_region: we},
  { name: "KOUTABA", code: "", population: "", area: "", capital: "", division: noun, administrative_region: we},
  { name: "MAGA", code: "", population: "", area: "", capital: "", division: noun, administrative_region: we},
  { name: "MALENTOUEN", code: "", population: "", area: "", capital: "", division: noun, administrative_region: we},
  { name: "MASSANGAM", code: "", population: "", area: "", capital: "", division: noun, administrative_region: we},
  { name: "NJIMON", code: "", population: "", area: "", capital: "", division: noun, administrative_region: we}
])

so_sds = SubDivision.create([
  { name: "BENGBIS", code: "", population: "", area: "", capital: "", division: dja_et_lobo, administrative_region: so},
  { name: "DJOUM", code: "", population: "", area: "", capital: "", division: dja_et_lobo, administrative_region: so},
  { name: "SANGMELIMA", code: "", population: "", area: "", capital: "", division: dja_et_lobo, administrative_region: so},
  { name: "ZOETELE", code: "", population: "", area: "", capital: "", division: dja_et_lobo, administrative_region: so},
  { name: "OVENG", code: "", population: "", area: "", capital: "", division: dja_et_lobo, administrative_region: so},
  { name: "MINTOM", code: "", population: "", area: "", capital: "", division: dja_et_lobo, administrative_region: so},
  { name: "MEYOMESSALA", code: "", population: "", area: "", capital: "", division: dja_et_lobo, administrative_region: so},
  { name: "MEYOMESSI", code: "", population: "", area: "", capital: "", division: dja_et_lobo, administrative_region: so},
  { name: "AMBAM", code: "", population: "", area: "", capital: "", division: vallee_du_ntem, administrative_region: so},
  { name: "MA'AN", code: "", population: "", area: "", capital: "", division: vallee_du_ntem, administrative_region: so},
  { name: "OLAMZE", code: "", population: "", area: "", capital: "", division: vallee_du_ntem, administrative_region: so},
  { name: "KYE OSSI", code: "", population: "", area: "", capital: "", division: vallee_du_ntem, administrative_region: so},
  { name: "EBOLOWA 1er", code: "", population: "", area: "", capital: "", division: mvila, administrative_region: so},
  { name: "EBOLOWA 2e", code: "", population: "", area: "", capital: "", division: mvila, administrative_region: so},
  { name: "BIWONG-BANE", code: "", population: "", area: "", capital: "", division: mvila, administrative_region: so},
  { name: "MVANGAN", code: "", population: "", area: "", capital: "", division: mvila, administrative_region: so},
  { name: "MENGONG", code: "", population: "", area: "", capital: "", division: mvila, administrative_region: so},
  { name: "NGOULEMAKONG", code: "", population: "", area: "", capital: "", division: mvila, administrative_region: so},
  { name: "EFOULAN", code: "", population: "", area: "", capital: "", division: mvila, administrative_region: so},
  { name: "BIWONG BULU", code: "", population: "", area: "", capital: "", division: mvila, administrative_region: so},
  { name: "AKOM II", code: "", population: "", area: "", capital: "", division: ocean, administrative_region: so},
  { name: "CAMPO", code: "", population: "", area: "", capital: "", division: ocean, administrative_region: so},
  { name: "KRIBI 1er", code: "", population: "", area: "", capital: "", division: ocean, administrative_region: so},
  { name: "KRIBI 2e", code: "", population: "", area: "", capital: "", division: ocean, administrative_region: so},
  { name: "LOLODORF", code: "", population: "", area: "", capital: "", division: ocean, administrative_region: so},
  { name: "MVENGUE", code: "", population: "", area: "", capital: "", division: ocean, administrative_region: so},
  { name: "BIPINDI", code: "", population: "", area: "", capital: "", division: ocean, administrative_region: so},
  { name: "LOKOUNDJE", code: "", population: "", area: "", capital: "", division: ocean, administrative_region: so},
  { name: "NIETE", code: "", population: "", area: "", capital: "", division: ocean, administrative_region: so}
])

sw_sds = SubDivision.create([
  { name: "MUYUKA", code: "", population: "", area: "", capital: "", division: fako, administrative_region: sw},
  { name: "TIKO", code: "", population: "", area: "", capital: "", division: fako, administrative_region: sw},
  { name: "LIMBE 1er", code: "", population: "", area: "", capital: "", division: fako, administrative_region: sw},
  { name: "LIMBE 2e", code: "", population: "", area: "", capital: "", division: fako, administrative_region: sw},
  { name: "LIMBE 3e", code: "", population: "", area: "", capital: "", division: fako, administrative_region: sw},
  { name: "BUEA", code: "", population: "", area: "", capital: "", division: fako, administrative_region: sw},
  { name: "IDENAU", code: "", population: "", area: "", capital: "", division: fako, administrative_region: sw},
  { name: "BANGEM", code: "", population: "", area: "", capital: "", division: kupe_manengouba, administrative_region: sw},
  { name: "NGUTI", code: "", population: "", area: "", capital: "", division: kupe_manengouba, administrative_region: sw},
  { name: "TOMBEL", code: "", population: "", area: "", capital: "", division: kupe_manengouba, administrative_region: sw},
  { name: "MENJI", code: "", population: "", area: "", capital: "", division: lebialem, administrative_region: sw},
  { name: "ALOU", code: "", population: "", area: "", capital: "", division: lebialem, administrative_region: sw},
  { name: "WABANE", code: "", population: "", area: "", capital: "", division: lebialem, administrative_region: sw},
  { name: "AKWAYA", code: "", population: "", area: "", capital: "", division: manyu, administrative_region: sw},
  { name: "MAMFE", code: "", population: "", area: "", capital: "", division: manyu, administrative_region: sw},
  { name: "EYUMODJOCK", code: "", population: "", area: "", capital: "", division: manyu, administrative_region: sw},
  { name: "TINTO", code: "", population: "", area: "", capital: "", division: manyu, administrative_region: sw},
  { name: "KUMBA 1er", code: "", population: "", area: "", capital: "", division: meme, administrative_region: sw},
  { name: "KUMBA 2e", code: "", population: "", area: "", capital: "", division: meme, administrative_region: sw},
  { name: "KUMBA 3e", code: "", population: "", area: "", capital: "", division: meme, administrative_region: sw},
  { name: "KONYE", code: "", population: "", area: "", capital: "", division: meme, administrative_region: sw},
  { name: "BONGE", code: "", population: "", area: "", capital: "", division: meme, administrative_region: sw},
  { name: "BAMUSSO", code: "", population: "", area: "", capital: "", division: ndian, administrative_region: sw},
  { name: "EKONDO-TITI", code: "", population: "", area: "", capital: "", division: ndian, administrative_region: sw},
  { name: "ISANGUELE", code: "", population: "", area: "", capital: "", division: ndian, administrative_region: sw},
  { name: "MUNDEMBA", code: "", population: "", area: "", capital: "", division: ndian, administrative_region: sw},
  { name: "KOMBO ABEDIMO", code: "", population: "", area: "", capital: "", division: ndian, administrative_region: sw},
  { name: "KOMBO IDINTI", code: "", population: "", area: "", capital: "", division: ndian, administrative_region: sw},
  { name: "IDABATO", code: "", population: "", area: "", capital: "", division: ndian, administrative_region: sw},
  { name: "DIKOME-BALUE", code: "", population: "", area: "", capital: "", division: ndian, administrative_region: sw},
  { name: "TOKO", code: "", population: "", area: "", capital: "", division: ndian, administrative_region: sw}
])




			