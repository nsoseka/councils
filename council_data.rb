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

ad_sds_councils = Council.create([
  { name:  "NGAOUNDAL", code: djerem.code.gsub(/_/, '-') + '-CC', sub_division: djerem.sub_division },
  { name:  "TIBATI", code: djerem.code.gsub(/_/, '-') + '-CC', sub_division: djerem.sub_division },
  { name:  "MAYO-BALEO", code: faro_et_deo.code.gsub(/_/, '-') + '-CC', sub_division: faro_et_deo.sub_division },
  { name:  "TIGNERE", code: faro_et_deo.code.gsub(/_/, '-') + '-CC', sub_division: faro_et_deo.sub_division },
  { name:  "GALIM-TIGNERE", code: faro_et_deo.code.gsub(/_/, '-') + '-CC', sub_division: faro_et_deo.sub_division },
  { name:  "KONTCHA", code: faro_et_deo.code.gsub(/_/, '-') + '-CC', sub_division: faro_et_deo.sub_division },
  { name:  "BANYO", code: mayo_banyo.code.gsub(/_/, '-') + '-CC', sub_division: mayo_banyo.sub_division },
  { name:  "BANKIM", code: mayo_banyo.code.gsub(/_/, '-') + '-CC', sub_division: mayo_banyo.sub_division },
  { name:  "MAYO-DARLE", code: mayo_banyo.code.gsub(/_/, '-') + '-CC', sub_division: mayo_banyo.sub_division },
  { name:  "MEIGANGA", code: mbere.code.gsub(/_/, '-') + '-CC', sub_division: mbere.sub_division },
  { name:  "DJOHONG", code: mbere.code.gsub(/_/, '-') + '-CC', sub_division: mbere.sub_division },
  { name:  "DIR", code: mbere.code.gsub(/_/, '-') + '-CC', sub_division: mbere.sub_division },
  { name:  "NGAOUI", code: mbere.code.gsub(/_/, '-') + '-CC', sub_division: mbere.sub_division },
  { name:  "NGAOUNDERE 1er", code: vina.code.gsub(/_/, '-') + '-CC', sub_division: vina.sub_division },
  { name:  "NGAOUNDERE 2e", code: vina.code.gsub(/_/, '-') + '-CC', sub_division: vina.sub_division },
  { name:  "NGAOUNDERE 3e", code: vina.code.gsub(/_/, '-') + '-CC', sub_division: vina.sub_division },
  { name:  "BELEL", code: vina.code.gsub(/_/, '-') + '-CC', sub_division: vina.sub_division },
  { name:  "MBE", code: vina.code.gsub(/_/, '-') + '-CC', sub_division: vina.sub_division },
  { name:  "NGANHA", code: vina.code.gsub(/_/, '-') + '-CC', sub_division: vina.sub_division },
  { name:  "NYAMBAKA", code: vina.code.gsub(/_/, '-') + '-CC', sub_division: vina.sub_division },
  { name:  "MARTAP", code: vina.code.gsub(/_/, '-') + '-CC', sub_division: vina.sub_division }
])

ce_sds_councils = Council.create([
  { name: "MBANDJOCK", code: haute_sanaga.code.gsub(/_/, '-') + '-CC', sub_division: haute_sanaga.sub_division },
  { name: "MINTA", code: haute_sanaga.code.gsub(/_/, '-') + '-CC', sub_division: haute_sanaga.sub_division },
  { name: "NANGA-EBOKO", code: haute_sanaga.code.gsub(/_/, '-') + '-CC', sub_division: haute_sanaga.sub_division },
  { name: "NKOTENG", code: haute_sanaga.code.gsub(/_/, '-') + '-CC', sub_division: haute_sanaga.sub_division },
  { name: "BIBEY", code: haute_sanaga.code.gsub(/_/, '-') + '-CC', sub_division: haute_sanaga.sub_division },
  { name: "NSEM", code: haute_sanaga.code.gsub(/_/, '-') + '-CC', sub_division: haute_sanaga.sub_division },
  { name: "LEMBE-YEZOUM", code: haute_sanaga.code.gsub(/_/, '-') + '-CC', sub_division: haute_sanaga.sub_division },
  { name: "EVODOULA", code: lekie.code.gsub(/_/, '-') + '-CC', sub_division: lekie.sub_division },
  { name: "MONATELE", code: lekie.code.gsub(/_/, '-') + '-CC', sub_division: lekie.sub_division },
  { name: "OBALA", code: lekie.code.gsub(/_/, '-') + '-CC', sub_division: lekie.sub_division },
  { name: "OKOLA", code: lekie.code.gsub(/_/, '-') + '-CC', sub_division: lekie.sub_division },
  { name: "SA'A", code: lekie.code.gsub(/_/, '-') + '-CC', sub_division: lekie.sub_division },
  { name: "ELIG-MFOMO", code: lekie.code.gsub(/_/, '-') + '-CC', sub_division: lekie.sub_division },
  { name: "EBEBDA", code: lekie.code.gsub(/_/, '-') + '-CC', sub_division: lekie.sub_division },
  { name: "BATSCHENGA", code: lekie.code.gsub(/_/, '-') + '-CC', sub_division: lekie.sub_division },
  { name: "LOBO", code: lekie.code.gsub(/_/, '-') + '-CC', sub_division: lekie.sub_division },
  { name: "BAFIA", code: mbam_et_inoubou.code.gsub(/_/, '-') + '-CC', sub_division: mbam_et_inoubou.sub_division },
  { name: "BOKITO", code: mbam_et_inoubou.code.gsub(/_/, '-') + '-CC', sub_division: mbam_et_inoubou.sub_division },
  { name: "DEUK", code: mbam_et_inoubou.code.gsub(/_/, '-') + '-CC', sub_division: mbam_et_inoubou.sub_division },
  { name: "MAKENENE", code: mbam_et_inoubou.code.gsub(/_/, '-') + '-CC', sub_division: mbam_et_inoubou.sub_division },
  { name: "NDIKINIMEKI", code: mbam_et_inoubou.code.gsub(/_/, '-') + '-CC', sub_division: mbam_et_inoubou.sub_division },
  { name: "OMBESSA", code: mbam_et_inoubou.code.gsub(/_/, '-') + '-CC', sub_division: mbam_et_inoubou.sub_division },
  { name: "KIIKI", code: mbam_et_inoubou.code.gsub(/_/, '-') + '-CC', sub_division: mbam_et_inoubou.sub_division },
  { name: "KON-YAMBETTA", code: mbam_et_inoubou.code.gsub(/_/, '-') + '-CC', sub_division: mbam_et_inoubou.sub_division },
  { name: "NITOUKOU", code: mbam_et_inoubou.code.gsub(/_/, '-') + '-CC', sub_division: mbam_et_inoubou.sub_division },
  { name: "NTUI", code: mbam_et_kim.code.gsub(/_/, '-') + '-CC', sub_division: mbam_et_kim.sub_division },
  { name: "NGAMBE TIKAR", code: mbam_et_kim.code.gsub(/_/, '-') + '-CC', sub_division: mbam_et_kim.sub_division },
  { name: "NGORO", code: mbam_et_kim.code.gsub(/_/, '-') + '-CC', sub_division: mbam_et_kim.sub_division },
  { name: "YOKO", code: mbam_et_kim.code.gsub(/_/, '-') + '-CC', sub_division: mbam_et_kim.sub_division },
  { name: "MBANGASSINA", code: mbam_et_kim.code.gsub(/_/, '-') + '-CC', sub_division: mbam_et_kim.sub_division },
  { name: "MFOU", code: mefou_et_afamba.code.gsub(/_/, '-') + '-CC', sub_division: mefou_et_afamba.sub_division },
  { name: "ESSE", code: mefou_et_afamba.code.gsub(/_/, '-') + '-CC', sub_division: mefou_et_afamba.sub_division },
  { name: "AWAE", code: mefou_et_afamba.code.gsub(/_/, '-') + '-CC', sub_division: mefou_et_afamba.sub_division },
  { name: "SOA", code: mefou_et_afamba.code.gsub(/_/, '-') + '-CC', sub_division: mefou_et_afamba.sub_division },
  { name: "AFANLOUM", code: mefou_et_afamba.code.gsub(/_/, '-') + '-CC', sub_division: mefou_et_afamba.sub_division },
  { name: "OLANGUINA", code: mefou_et_afamba.code.gsub(/_/, '-') + '-CC', sub_division: mefou_et_afamba.sub_division },
  { name: "EDZENDOUAN", code: mefou_et_afamba.code.gsub(/_/, '-') + '-CC', sub_division: mefou_et_afamba.sub_division },
  { name: "NKOLAFAMBA", code: mefou_et_afamba.code.gsub(/_/, '-') + '-CC', sub_division: mefou_et_afamba.sub_division },
  { name: "NGOUMOU", code: mefou_et_akono.code.gsub(/_/, '-') + '-CC', sub_division: mefou_et_akono.sub_division },
  { name: "AKONO", code: mefou_et_akono.code.gsub(/_/, '-') + '-CC', sub_division: mefou_et_akono.sub_division },
  { name: "MBANKOMO", code: mefou_et_akono.code.gsub(/_/, '-') + '-CC', sub_division: mefou_et_akono.sub_division },
  { name: "BIKOK", code: mefou_et_akono.code.gsub(/_/, '-') + '-CC', sub_division: mefou_et_akono.sub_division },
  { name: "YAOUNDE I", code: mfoundi.code.gsub(/_/, '-') + '-CC', sub_division: mfoundi.sub_division },
  { name: "YAOUNDE II", code: mfoundi.code.gsub(/_/, '-') + '-CC', sub_division: mfoundi.sub_division },
  { name: "YAOUNDE III", code: mfoundi.code.gsub(/_/, '-') + '-CC', sub_division: mfoundi.sub_division },
  { name: "YAOUNDE IV", code: mfoundi.code.gsub(/_/, '-') + '-CC', sub_division: mfoundi.sub_division },
  { name: "YAOUNDE V", code: mfoundi.code.gsub(/_/, '-') + '-CC', sub_division: mfoundi.sub_division },
  { name: "YAOUNDE VI", code: mfoundi.code.gsub(/_/, '-') + '-CC', sub_division: mfoundi.sub_division },
  { name: "YAOUNDE VII", code: mfoundi.code.gsub(/_/, '-') + '-CC', sub_division: mfoundi.sub_division },
  { name: "BOT-MAKAK", code: nyong_et_ekelle.code.gsub(/_/, '-') + '-CC', sub_division: nyong_et_ekelle.sub_division },
  { name: "ESEKA", code: nyong_et_ekelle.code.gsub(/_/, '-') + '-CC', sub_division: nyong_et_ekelle.sub_division },
  { name: "MAKAK", code: nyong_et_ekelle.code.gsub(/_/, '-') + '-CC', sub_division: nyong_et_ekelle.sub_division },
  { name: "MESSONDO", code: nyong_et_ekelle.code.gsub(/_/, '-') + '-CC', sub_division: nyong_et_ekelle.sub_division },
  { name: "NGOG-MAPUBI", code: nyong_et_ekelle.code.gsub(/_/, '-') + '-CC', sub_division: nyong_et_ekelle.sub_division },
  { name: "MATOMB", code: nyong_et_ekelle.code.gsub(/_/, '-') + '-CC', sub_division: nyong_et_ekelle.sub_division },
  { name: "DIBANG", code: nyong_et_ekelle.code.gsub(/_/, '-') + '-CC', sub_division: nyong_et_ekelle.sub_division },
  { name: "NGUIBASSAL", code: nyong_et_ekelle.code.gsub(/_/, '-') + '-CC', sub_division: nyong_et_ekelle.sub_division },
  { name: "BONDJOCK", code: nyong_et_ekelle.code.gsub(/_/, '-') + '-CC', sub_division: nyong_et_ekelle.sub_division },
  { name: "BIYOUHA", code: nyong_et_ekelle.code.gsub(/_/, '-') + '-CC', sub_division: nyong_et_ekelle.sub_division },
  { name: "AKONOLINGA", code: nyong_et_mfoumou.code.gsub(/_/, '-') + '-CC', sub_division: nyong_et_mfoumou.sub_division },
  { name: "AYOS", code: nyong_et_mfoumou.code.gsub(/_/, '-') + '-CC', sub_division: nyong_et_mfoumou.sub_division },
  { name: "ENDOM", code: nyong_et_mfoumou.code.gsub(/_/, '-') + '-CC', sub_division: nyong_et_mfoumou.sub_division },
  { name: "MENGANG", code: nyong_et_mfoumou.code.gsub(/_/, '-') + '-CC', sub_division: nyong_et_mfoumou.sub_division },
  { name: "KOBDOMBO", code: nyong_et_mfoumou.code.gsub(/_/, '-') + '-CC', sub_division: nyong_et_mfoumou.sub_division },
  { name: "DZENG", code: nyong_et_soo.code.gsub(/_/, '-') + '-CC', sub_division: nyong_et_soo.sub_division },
  { name: "MBALMAYO", code: nyong_et_soo.code.gsub(/_/, '-') + '-CC', sub_division: nyong_et_soo.sub_division },
  { name: "NGOMEDZAP", code: nyong_et_soo.code.gsub(/_/, '-') + '-CC', sub_division: nyong_et_soo.sub_division },
  { name: "AKOEMAN", code: nyong_et_soo.code.gsub(/_/, '-') + '-CC', sub_division: nyong_et_soo.sub_division },
  { name: "MENGUEME", code: nyong_et_soo.code.gsub(/_/, '-') + '-CC', sub_division: nyong_et_soo.sub_division },
  { name: "NKOL-METET", code: nyong_et_soo.code.gsub(/_/, '-') + '-CC', sub_division: nyong_et_soo.sub_division }
])

es_sds_councils = Council.create([
  { name: "MOLOUNDOU", code: boumba_et_ngoko.code.gsub(/_/, '-') + '-CC', sub_division: boumba_et_ngoko.sub_division },
  { name: "SALAPOUMBE", code: boumba_et_ngoko.code.gsub(/_/, '-') + '-CC', sub_division: boumba_et_ngoko.sub_division },
  { name: "GARI-GOMBO", code: boumba_et_ngoko.code.gsub(/_/, '-') + '-CC', sub_division: boumba_et_ngoko.sub_division },
  { name: "YOKADOUMA", code: boumba_et_ngoko.code.gsub(/_/, '-') + '-CC', sub_division: boumba_et_ngoko.sub_division },
  { name: "ABONG-MBANG", code: haut_nyong.code.gsub(/_/, '-') + '-CC', sub_division: haut_nyong.sub_division },
  { name: "ANGOSSAS", code: haut_nyong.code.gsub(/_/, '-') + '-CC', sub_division: haut_nyong.sub_division },
  { name: "ATOK", code: haut_nyong.code.gsub(/_/, '-') + '-CC', sub_division: haut_nyong.sub_division },
  { name: "DIMAKO", code: haut_nyong.code.gsub(/_/, '-') + '-CC', sub_division: haut_nyong.sub_division },
  { name: "DOUMAINTANG", code: haut_nyong.code.gsub(/_/, '-') + '-CC', sub_division: haut_nyong.sub_division },
  { name: "DOUME", code: haut_nyong.code.gsub(/_/, '-') + '-CC', sub_division: haut_nyong.sub_division },
  { name: "LOMIE", code: haut_nyong.code.gsub(/_/, '-') + '-CC', sub_division: haut_nyong.sub_division },
  { name: "MBOMA", code: haut_nyong.code.gsub(/_/, '-') + '-CC', sub_division: haut_nyong.sub_division },
  { name: "MESSAMENA", code: haut_nyong.code.gsub(/_/, '-') + '-CC', sub_division: haut_nyong.sub_division },
  { name: "MESSOK", code: haut_nyong.code.gsub(/_/, '-') + '-CC', sub_division: haut_nyong.sub_division },
  { name: "MINDOUROU", code: haut_nyong.code.gsub(/_/, '-') + '-CC', sub_division: haut_nyong.sub_division },
  { name: "NGOYLA", code: haut_nyong.code.gsub(/_/, '-') + '-CC', sub_division: haut_nyong.sub_division },
  { name: "NGUELEMENDOUKA", code: haut_nyong.code.gsub(/_/, '-') + '-CC', sub_division: haut_nyong.sub_division },
  { name: "SOMALOMO", code: haut_nyong.code.gsub(/_/, '-') + '-CC', sub_division: haut_nyong.sub_division },
  { name: "BATOURI", code: kadey.code.gsub(/_/, '-') + '-CC', sub_division: kadey.sub_division },
  { name: "NDELELE", code: kadey.code.gsub(/_/, '-') + '-CC', sub_division: kadey.sub_division },
  { name: "KETTE", code: kadey.code.gsub(/_/, '-') + '-CC', sub_division: kadey.sub_division },
  { name: "MBANG", code: kadey.code.gsub(/_/, '-') + '-CC', sub_division: kadey.sub_division },
  { name: "KENZOU", code: kadey.code.gsub(/_/, '-') + '-CC', sub_division: kadey.sub_division },
  { name: "NGUELEBOK", code: kadey.code.gsub(/_/, '-') + '-CC', sub_division: kadey.sub_division },
  { name: "OULI", code: kadey.code.gsub(/_/, '-') + '-CC', sub_division: kadey.sub_division },
  { name: "BERTOUA 1er", code: lom_et_djerem.code.gsub(/_/, '-') + '-CC', sub_division: lom_et_djerem.sub_division },
  { name: "BERTOUA 2e", code: lom_et_djerem.code.gsub(/_/, '-') + '-CC', sub_division: lom_et_djerem.sub_division },
  { name: "BETARE-OYA", code: lom_et_djerem.code.gsub(/_/, '-') + '-CC', sub_division: lom_et_djerem.sub_division },
  { name: "BELABO", code: lom_et_djerem.code.gsub(/_/, '-') + '-CC', sub_division: lom_et_djerem.sub_division },
  { name: "GAROUA-BOULAÏ", code: lom_et_djerem.code.gsub(/_/, '-') + '-CC', sub_division: lom_et_djerem.sub_division },
  { name: "DIANG", code: lom_et_djerem.code.gsub(/_/, '-') + '-CC', sub_division: lom_et_djerem.sub_division },
  { name: "MANDJOU", code: lom_et_djerem.code.gsub(/_/, '-') + '-CC', sub_division: lom_et_djerem.sub_division },
  { name: "NGOURA", code: lom_et_djerem.code.gsub(/_/, '-') + '-CC', sub_division: lom_et_djerem.sub_division }
])

fn_sds_councils = Council.create([
  { name: "BOGO", code: diamare.code.gsub(/_/, '-') + '-CC', sub_division: diamare.sub_division },
  { name: "MAROUA 1er", code: diamare.code.gsub(/_/, '-') + '-CC', sub_division: diamare.sub_division },
  { name: "MAROUA 2e", code: diamare.code.gsub(/_/, '-') + '-CC', sub_division: diamare.sub_division },
  { name: "MAROUA 3e", code: diamare.code.gsub(/_/, '-') + '-CC', sub_division: diamare.sub_division },
  { name: "MERI", code: diamare.code.gsub(/_/, '-') + '-CC', sub_division: diamare.sub_division },
  { name: "GAZAWA", code: diamare.code.gsub(/_/, '-') + '-CC', sub_division: diamare.sub_division },
  { name: "PETTE", code: diamare.code.gsub(/_/, '-') + '-CC', sub_division: diamare.sub_division },
  { name: "DARGALA", code: diamare.code.gsub(/_/, '-') + '-CC', sub_division: diamare.sub_division },
  { name: "DOUKOULA", code: diamare.code.gsub(/_/, '-') + '-CC', sub_division: diamare.sub_division },
  { name: "KOUSSERI", code: logon_et_chari.code.gsub(/_/, '-') + '-CC', sub_division: logon_et_chari.sub_division },
  { name: "MAKARY", code: logon_et_chari.code.gsub(/_/, '-') + '-CC', sub_division: logon_et_chari.sub_division },
  { name: "LOGONE-BIRNI", code: logon_et_chari.code.gsub(/_/, '-') + '-CC', sub_division: logon_et_chari.sub_division },
  { name: "GOULFEY", code: logon_et_chari.code.gsub(/_/, '-') + '-CC', sub_division: logon_et_chari.sub_division },
  { name: "WAZA", code: logon_et_chari.code.gsub(/_/, '-') + '-CC', sub_division: logon_et_chari.sub_division },
  { name: "FOTOKOL", code: logon_et_chari.code.gsub(/_/, '-') + '-CC', sub_division: logon_et_chari.sub_division },
  { name: "HILE-HALIFA", code: logon_et_chari.code.gsub(/_/, '-') + '-CC', sub_division: logon_et_chari.sub_division },
  { name: "BLANGOUA", code: logon_et_chari.code.gsub(/_/, '-') + '-CC', sub_division: logon_et_chari.sub_division },
  { name: "DARAK", code: logon_et_chari.code.gsub(/_/, '-') + '-CC', sub_division: logon_et_chari.sub_division },
  { name: "ZINA", code: logon_et_chari.code.gsub(/_/, '-') + '-CC', sub_division: logon_et_chari.sub_division },
  { name: "KAR-HAY", code: mayo_danay.code.gsub(/_/, '-') + '-CC', sub_division: mayo_danay.sub_division },
  { name: "DATCHEKA", code: mayo_danay.code.gsub(/_/, '-') + '-CC', sub_division: mayo_danay.sub_division },
  { name: "YAGOUA", code: mayo_danay.code.gsub(/_/, '-') + '-CC', sub_division: mayo_danay.sub_division },
  { name: "GUERE", code: mayo_danay.code.gsub(/_/, '-') + '-CC', sub_division: mayo_danay.sub_division },
  { name: "MAGA", code: mayo_danay.code.gsub(/_/, '-') + '-CC', sub_division: mayo_danay.sub_division },
  { name: "KALFOU", code: mayo_danay.code.gsub(/_/, '-') + '-CC', sub_division: mayo_danay.sub_division },
  { name: "WINA", code: mayo_danay.code.gsub(/_/, '-') + '-CC', sub_division: mayo_danay.sub_division },
  { name: "TCHATIBALI", code: mayo_danay.code.gsub(/_/, '-') + '-CC', sub_division: mayo_danay.sub_division },
  { name: "GOBO", code: mayo_danay.code.gsub(/_/, '-') + '-CC', sub_division: mayo_danay.sub_division },
  { name: "KAÏ-KAÏ", code: mayo_danay.code.gsub(/_/, '-') + '-CC', sub_division: mayo_danay.sub_division },
  { name: "GUEME", code: mayo_danay.code.gsub(/_/, '-') + '-CC', sub_division: mayo_danay.sub_division },
  { name: "DZIGUILAO", code: mayo_kani.code.gsub(/_/, '-') + '-CC', sub_division: mayo_kani.sub_division },
  { name: "GUIDIGUIS", code: mayo_kani.code.gsub(/_/, '-') + '-CC', sub_division: mayo_kani.sub_division },
  { name: "KAELE", code: mayo_kani.code.gsub(/_/, '-') + '-CC', sub_division: mayo_kani.sub_division },
  { name: "MINDIF", code: mayo_kani.code.gsub(/_/, '-') + '-CC', sub_division: mayo_kani.sub_division },
  { name: "MOULVOUDAYE", code: mayo_kani.code.gsub(/_/, '-') + '-CC', sub_division: mayo_kani.sub_division },
  { name: "MOTOURWA", code: mayo_kani.code.gsub(/_/, '-') + '-CC', sub_division: mayo_kani.sub_division },
  { name: "TOULOUM", code: mayo_kani.code.gsub(/_/, '-') + '-CC', sub_division: mayo_kani.sub_division },
  { name: "MORA", code: mayo_sava.code.gsub(/_/, '-') + '-CC', sub_division: mayo_sava.sub_division },
  { name: "TOKOMBERE", code: mayo_sava.code.gsub(/_/, '-') + '-CC', sub_division: mayo_sava.sub_division },
  { name: "KOLOFATA", code: mayo_sava.code.gsub(/_/, '-') + '-CC', sub_division: mayo_sava.sub_division },
  { name: "BOURRHA", code: mayo_tsanaga.code.gsub(/_/, '-') + '-CC', sub_division: mayo_tsanaga.sub_division },
  { name: "HINA", code: mayo_tsanaga.code.gsub(/_/, '-') + '-CC', sub_division: mayo_tsanaga.sub_division },
  { name: "KOZA", code: mayo_tsanaga.code.gsub(/_/, '-') + '-CC', sub_division: mayo_tsanaga.sub_division },
  { name: "MOGODE", code: mayo_tsanaga.code.gsub(/_/, '-') + '-CC', sub_division: mayo_tsanaga.sub_division },
  { name: "MOKOLO", code: mayo_tsanaga.code.gsub(/_/, '-') + '-CC', sub_division: mayo_tsanaga.sub_division },
  { name: "MOZOGO", code: mayo_tsanaga.code.gsub(/_/, '-') + '-CC', sub_division: mayo_tsanaga.sub_division },
  { name: "SOULEDE-ROUA", code: mayo_tsanaga.code.gsub(/_/, '-') + '-CC', sub_division: mayo_tsanaga.sub_division }
])

lt_sds_councils = Council.create([
  { name: "BARE", code: moungo.code.gsub(/_/, '-') + '-CC', sub_division: moungo.sub_division },
  { name: "BONALEA", code: moungo.code.gsub(/_/, '-') + '-CC', sub_division: moungo.sub_division },
  { name: "EBONE", code: moungo.code.gsub(/_/, '-') + '-CC', sub_division: moungo.sub_division },
  { name: "DIBOMBARI", code: moungo.code.gsub(/_/, '-') + '-CC', sub_division: moungo.sub_division },
  { name: "LOUM", code: moungo.code.gsub(/_/, '-') + '-CC', sub_division: moungo.sub_division },
  { name: "MANJO", code: moungo.code.gsub(/_/, '-') + '-CC', sub_division: moungo.sub_division },
  { name: "MBANGA", code: moungo.code.gsub(/_/, '-') + '-CC', sub_division: moungo.sub_division },
  { name: "MELONG", code: moungo.code.gsub(/_/, '-') + '-CC', sub_division: moungo.sub_division },
  { name: "MOMBO", code: moungo.code.gsub(/_/, '-') + '-CC', sub_division: moungo.sub_division },
  { name: "NKONGSAMBA 1", code: moungo.code.gsub(/_/, '-') + '-CC', sub_division: moungo.sub_division },
  { name: "NKONGSAMBA 2e", code: moungo.code.gsub(/_/, '-') + '-CC', sub_division: moungo.sub_division },
  { name: "NKONGSAMBA 3e", code: moungo.code.gsub(/_/, '-') + '-CC', sub_division: moungo.sub_division },
  { name: "PENJA", code: moungo.code.gsub(/_/, '-') + '-CC', sub_division: moungo.sub_division },
  { name: "NDOBIAN", code: nkam.code.gsub(/_/, '-') + '-CC', sub_division: nkam.sub_division },
  { name: "NKONDJOCK", code: nkam.code.gsub(/_/, '-') + '-CC', sub_division: nkam.sub_division },
  { name: "YABASSI", code: nkam.code.gsub(/_/, '-') + '-CC', sub_division: nkam.sub_division },
  { name: "YINGUI", code: nkam.code.gsub(/_/, '-') + '-CC', sub_division: nkam.sub_division },
  { name: "DIBAMBA", code: sanaga_maritime.code.gsub(/_/, '-') + '-CC', sub_division: sanaga_maritime.sub_division },
  { name: "DIZANGUE", code: sanaga_maritime.code.gsub(/_/, '-') + '-CC', sub_division: sanaga_maritime.sub_division },
  { name: "EDEA 1er", code: sanaga_maritime.code.gsub(/_/, '-') + '-CC', sub_division: sanaga_maritime.sub_division },
  { name: "EDEA 2e", code: sanaga_maritime.code.gsub(/_/, '-') + '-CC', sub_division: sanaga_maritime.sub_division },
  { name: "MASSOCK", code: sanaga_maritime.code.gsub(/_/, '-') + '-CC', sub_division: sanaga_maritime.sub_division },
  { name: "MOUANKO", code: sanaga_maritime.code.gsub(/_/, '-') + '-CC', sub_division: sanaga_maritime.sub_division },
  { name: "NDOM", code: sanaga_maritime.code.gsub(/_/, '-') + '-CC', sub_division: sanaga_maritime.sub_division },
  { name: "NGAMBE", code: sanaga_maritime.code.gsub(/_/, '-') + '-CC', sub_division: sanaga_maritime.sub_division },
  { name: "NGWEI", code: sanaga_maritime.code.gsub(/_/, '-') + '-CC', sub_division: sanaga_maritime.sub_division },
  { name: "NYANON", code: sanaga_maritime.code.gsub(/_/, '-') + '-CC', sub_division: sanaga_maritime.sub_division },
  { name: "POUMA", code: sanaga_maritime.code.gsub(/_/, '-') + '-CC', sub_division: sanaga_maritime.sub_division },
  { name: "DOUALA 1er", code: wouri.code.gsub(/_/, '-') + '-CC', sub_division: wouri.sub_division },
  { name: "DOUALA 2e", code: wouri.code.gsub(/_/, '-') + '-CC', sub_division: wouri.sub_division },
  { name: "DOUALA 3e", code: wouri.code.gsub(/_/, '-') + '-CC', sub_division: wouri.sub_division },
  { name: "DOUALA 4e", code: wouri.code.gsub(/_/, '-') + '-CC', sub_division: wouri.sub_division },
  { name: "DOUALA 5e", code: wouri.code.gsub(/_/, '-') + '-CC', sub_division: wouri.sub_division },
  { name: "DOUALA 6e", code: wouri.code.gsub(/_/, '-') + '-CC', sub_division: wouri.sub_division }
])

no_sds_councils = Council.create([
  { name: "GAROUA 1er", code: benoue.code.gsub(/_/, '-') + '-CC', sub_division: benoue.sub_division },
  { name: "GAROUA 2e", code: benoue.code.gsub(/_/, '-') + '-CC', sub_division: benoue.sub_division },
  { name: "GAROUA 3e", code: benoue.code.gsub(/_/, '-') + '-CC', sub_division: benoue.sub_division },
  { name: "BIBEMI", code: benoue.code.gsub(/_/, '-') + '-CC', sub_division: benoue.sub_division },
  { name: "PITOA", code: benoue.code.gsub(/_/, '-') + '-CC', sub_division: benoue.sub_division },
  { name: "LAGDO", code: benoue.code.gsub(/_/, '-') + '-CC', sub_division: benoue.sub_division },
  { name: "DEMBO", code: benoue.code.gsub(/_/, '-') + '-CC', sub_division: benoue.sub_division },
  { name: "GASHIGA", code: benoue.code.gsub(/_/, '-') + '-CC', sub_division: benoue.sub_division },
  { name: "BARNDAKE", code: benoue.code.gsub(/_/, '-') + '-CC', sub_division: benoue.sub_division },
  { name: "BASHEO", code: benoue.code.gsub(/_/, '-') + '-CC', sub_division: benoue.sub_division },
  { name: "NGONG", code: benoue.code.gsub(/_/, '-') + '-CC', sub_division: benoue.sub_division },
  { name: "TOUROUA", code: benoue.code.gsub(/_/, '-') + '-CC', sub_division: benoue.sub_division },
  { name: "POLI", code: faro.code.gsub(/_/, '-') + '-CC', sub_division: faro.sub_division },
  { name: "BEKA", code: faro.code.gsub(/_/, '-') + '-CC', sub_division: faro.sub_division },
  { name: "GUIDER", code: mayo_louti.code.gsub(/_/, '-') + '-CC', sub_division: mayo_louti.sub_division },
  { name: "MAYO-OULO", code: mayo_louti.code.gsub(/_/, '-') + '-CC', sub_division: mayo_louti.sub_division },
  { name: "FIGUIL", code: mayo_louti.code.gsub(/_/, '-') + '-CC', sub_division: mayo_louti.sub_division },
  { name: "REY-BOUBA", code: mayo_rey.code.gsub(/_/, '-') + '-CC', sub_division: mayo_rey.sub_division },
  { name: "TCHOLLIRE", code: mayo_rey.code.gsub(/_/, '-') + '-CC', sub_division: mayo_rey.sub_division },
  { name: "TOUBORO", code: mayo_rey.code.gsub(/_/, '-') + '-CC', sub_division: mayo_rey.sub_division },
  { name: "MADINGRING", code: mayo_rey.code.gsub(/_/, '-') + '-CC', sub_division: mayo_rey.sub_division }
])

nw_sds_councils = Council.create([
  { name: "JAKIRI", code: bui.code.gsub(/_/, '-') + '-CC', sub_division: bui.sub_division },
  { name: "KUMBO", code: bui.code.gsub(/_/, '-') + '-CC', sub_division: bui.sub_division },
  { name: "ELAK OKU", code: bui.code.gsub(/_/, '-') + '-CC', sub_division: bui.sub_division },
  { name: "MBIAME", code: bui.code.gsub(/_/, '-') + '-CC', sub_division: bui.sub_division },
  { name: "NKOR", code: bui.code.gsub(/_/, '-') + '-CC', sub_division: bui.sub_division },
  { name: "NKUM", code: bui.code.gsub(/_/, '-') + '-CC', sub_division: bui.sub_division },
  { name: "FUNDONG", code: boyo.code.gsub(/_/, '-') + '-CC', sub_division: boyo.sub_division },
  { name: "BELO", code: boyo.code.gsub(/_/, '-') + '-CC', sub_division: boyo.sub_division },
  { name: "FONFUKA", code: boyo.code.gsub(/_/, '-') + '-CC', sub_division: boyo.sub_division },
  { name: "NJINIKOM", code: boyo.code.gsub(/_/, '-') + '-CC', sub_division: boyo.sub_division },
  { name: "NKAMBE", code: donga_mantung.code.gsub(/_/, '-') + '-CC', sub_division: donga_mantung.sub_division },
  { name: "NWA", code: donga_mantung.code.gsub(/_/, '-') + '-CC', sub_division: donga_mantung.sub_division },
  { name: "AKO", code: donga_mantung.code.gsub(/_/, '-') + '-CC', sub_division: donga_mantung.sub_division },
  { name: "MISAJE", code: donga_mantung.code.gsub(/_/, '-') + '-CC', sub_division: donga_mantung.sub_division },
  { name: "NDU", code: donga_mantung.code.gsub(/_/, '-') + '-CC', sub_division: donga_mantung.sub_division },
  { name: "BENAKUMA", code: menchum.code.gsub(/_/, '-') + '-CC', sub_division: menchum.sub_division },
  { name: "FURU-AWA", code: menchum.code.gsub(/_/, '-') + '-CC', sub_division: menchum.sub_division },
  { name: "WUM", code: menchum.code.gsub(/_/, '-') + '-CC', sub_division: menchum.sub_division },
  { name: "ZHOA", code: menchum.code.gsub(/_/, '-') + '-CC', sub_division: menchum.sub_division },
  { name: "BAMENDA 1er", code: mezam.code.gsub(/_/, '-') + '-CC', sub_division: mezam.sub_division },
  { name: "BAMENDA 2e", code: mezam.code.gsub(/_/, '-') + '-CC', sub_division: mezam.sub_division },
  { name: "BAMENDA 3e", code: mezam.code.gsub(/_/, '-') + '-CC', sub_division: mezam.sub_division },
  { name: "BALI", code: mezam.code.gsub(/_/, '-') + '-CC', sub_division: mezam.sub_division },
  { name: "TUBAH", code: mezam.code.gsub(/_/, '-') + '-CC', sub_division: mezam.sub_division },
  { name: "BAFUT", code: mezam.code.gsub(/_/, '-') + '-CC', sub_division: mezam.sub_division },
  { name: "SANTA", code: mezam.code.gsub(/_/, '-') + '-CC', sub_division: mezam.sub_division },
  { name: "ANDEK", code: momo.code.gsub(/_/, '-') + '-CC', sub_division: momo.sub_division },
  { name: "BATIBO", code: momo.code.gsub(/_/, '-') + '-CC', sub_division: momo.sub_division },
  { name: "MBENGWI", code: momo.code.gsub(/_/, '-') + '-CC', sub_division: momo.sub_division },
  { name: "NJIKWA", code: momo.code.gsub(/_/, '-') + '-CC', sub_division: momo.sub_division },
  { name: "WIDIKUM", code: momo.code.gsub(/_/, '-') + '-CC', sub_division: momo.sub_division },
  { name: "NDOP", code: ngo_ketunjia.code.gsub(/_/, '-') + '-CC', sub_division: ngo_ketunjia.sub_division },
  { name: "BABESSI", code: ngo_ketunjia.code.gsub(/_/, '-') + '-CC', sub_division: ngo_ketunjia.sub_division },
  { name: "BALIKUMBAT", code: ngo_ketunjia.code.gsub(/_/, '-') + '-CC', sub_division: ngo_ketunjia.sub_division }
])

we_sds_councils = Council.create([
  { name: "MBOUDA", code: bamboutos.code.gsub(/_/, '-') + '-CC', sub_division: bamboutos.sub_division },
  { name: "GALIM", code: bamboutos.code.gsub(/_/, '-') + '-CC', sub_division: bamboutos.sub_division },
  { name: "BATCHAM", code: bamboutos.code.gsub(/_/, '-') + '-CC', sub_division: bamboutos.sub_division },
  { name: "BABADJOU", code: bamboutos.code.gsub(/_/, '-') + '-CC', sub_division: bamboutos.sub_division },
  { name: "BAFANG", code: haut_nkam.code.gsub(/_/, '-') + '-CC', sub_division: haut_nkam.sub_division },
  { name: "BANA", code: haut_nkam.code.gsub(/_/, '-') + '-CC', sub_division: haut_nkam.sub_division },
  { name: "BANDJA", code: haut_nkam.code.gsub(/_/, '-') + '-CC', sub_division: haut_nkam.sub_division },
  { name: "KEKEM", code: haut_nkam.code.gsub(/_/, '-') + '-CC', sub_division: haut_nkam.sub_division },
  { name: "BAKOU", code: haut_nkam.code.gsub(/_/, '-') + '-CC', sub_division: haut_nkam.sub_division },
  { name: "BANKA", code: haut_nkam.code.gsub(/_/, '-') + '-CC', sub_division: haut_nkam.sub_division },
  { name: "BANWA", code: haut_nkam.code.gsub(/_/, '-') + '-CC', sub_division: haut_nkam.sub_division },
  { name: "BAHAM", code: hauts_plateaux.code.gsub(/_/, '-') + '-CC', sub_division: hauts_plateaux.sub_division },
  { name: "BAMENDJOU", code: hauts_plateaux.code.gsub(/_/, '-') + '-CC', sub_division: hauts_plateaux.sub_division },
  { name: "BANGOU", code: hauts_plateaux.code.gsub(/_/, '-') + '-CC', sub_division: hauts_plateaux.sub_division },
  { name: "BATIE", code: hauts_plateaux.code.gsub(/_/, '-') + '-CC', sub_division: hauts_plateaux.sub_division },
  { name: "PETE-BANDJOUN", code: koung_khi.code.gsub(/_/, '-') + '-CC', sub_division: koung_khi.sub_division },
  { name: "BAYANGAM", code: koung_khi.code.gsub(/_/, '-') + '-CC', sub_division: koung_khi.sub_division },
  { name: "DEMDENG", code: koung_khi.code.gsub(/_/, '-') + '-CC', sub_division: koung_khi.sub_division },
  { name: "DSCHANG", code: menoua.code.gsub(/_/, '-') + '-CC', sub_division: menoua.sub_division },
  { name: "FOKOUE", code: menoua.code.gsub(/_/, '-') + '-CC', sub_division: menoua.sub_division },
  { name: "FONGO-TONGO", code: menoua.code.gsub(/_/, '-') + '-CC', sub_division: menoua.sub_division },
  { name: "NKONG-ZEM", code: menoua.code.gsub(/_/, '-') + '-CC', sub_division: menoua.sub_division },
  { name: "PENKA-MICHEL", code: menoua.code.gsub(/_/, '-') + '-CC', sub_division: menoua.sub_division },
  { name: "SANTCHOU", code: menoua.code.gsub(/_/, '-') + '-CC', sub_division: menoua.sub_division },
  { name: "BAFOUSSAM 1er", code: mifi.code.gsub(/_/, '-') + '-CC', sub_division: mifi.sub_division },
  { name: "BAFOUSSAM 2e", code: mifi.code.gsub(/_/, '-') + '-CC', sub_division: mifi.sub_division },
  { name: "BAFOUSSAM 3e", code: mifi.code.gsub(/_/, '-') + '-CC', sub_division: mifi.sub_division },
  { name: "BANGANGTE", code: nde.code.gsub(/_/, '-') + '-CC', sub_division: nde.sub_division },
  { name: "BASSAMBA", code: nde.code.gsub(/_/, '-') + '-CC', sub_division: nde.sub_division },
  { name: "BAZOU", code: nde.code.gsub(/_/, '-') + '-CC', sub_division: nde.sub_division },
  { name: "NTONGA", code: nde.code.gsub(/_/, '-') + '-CC', sub_division: nde.sub_division },
  { name: "BANGOURAIN", code: noun.code.gsub(/_/, '-') + '-CC', sub_division: noun.sub_division },
  { name: "FOUMBAN", code: noun.code.gsub(/_/, '-') + '-CC', sub_division: noun.sub_division },
  { name: "FOUMBOT", code: noun.code.gsub(/_/, '-') + '-CC', sub_division: noun.sub_division },
  { name: "KOUOPTAMO", code: noun.code.gsub(/_/, '-') + '-CC', sub_division: noun.sub_division },
  { name: "KOUTABA", code: noun.code.gsub(/_/, '-') + '-CC', sub_division: noun.sub_division },
  { name: "MAGA", code: noun.code.gsub(/_/, '-') + '-CC', sub_division: noun.sub_division },
  { name: "MALENTOUEN", code: noun.code.gsub(/_/, '-') + '-CC', sub_division: noun.sub_division },
  { name: "MASSANGAM", code: noun.code.gsub(/_/, '-') + '-CC', sub_division: noun.sub_division },
  { name: "NJIMON", code: noun.code.gsub(/_/, '-') + '-CC', sub_division: noun.sub_division }
])

so_sds_councils = Council.create([
  { name: "BENGBIS", code: dja_et_lobo.code.gsub(/_/, '-') + '-CC', sub_division: dja_et_lobo.sub_division },
  { name: "DJOUM", code: dja_et_lobo.code.gsub(/_/, '-') + '-CC', sub_division: dja_et_lobo.sub_division },
  { name: "SANGMELIMA", code: dja_et_lobo.code.gsub(/_/, '-') + '-CC', sub_division: dja_et_lobo.sub_division },
  { name: "ZOETELE", code: dja_et_lobo.code.gsub(/_/, '-') + '-CC', sub_division: dja_et_lobo.sub_division },
  { name: "OVENG", code: dja_et_lobo.code.gsub(/_/, '-') + '-CC', sub_division: dja_et_lobo.sub_division },
  { name: "MINTOM", code: dja_et_lobo.code.gsub(/_/, '-') + '-CC', sub_division: dja_et_lobo.sub_division },
  { name: "MEYOMESSALA", code: dja_et_lobo.code.gsub(/_/, '-') + '-CC', sub_division: dja_et_lobo.sub_division },
  { name: "MEYOMESSI", code: dja_et_lobo.code.gsub(/_/, '-') + '-CC', sub_division: dja_et_lobo.sub_division },
  { name: "AMBAM", code: vallee_du_ntem.code.gsub(/_/, '-') + '-CC', sub_division: vallee_du_ntem.sub_division },
  { name: "MA'AN", code: vallee_du_ntem.code.gsub(/_/, '-') + '-CC', sub_division: vallee_du_ntem.sub_division },
  { name: "OLAMZE", code: vallee_du_ntem.code.gsub(/_/, '-') + '-CC', sub_division: vallee_du_ntem.sub_division },
  { name: "KYE OSSI", code: vallee_du_ntem.code.gsub(/_/, '-') + '-CC', sub_division: vallee_du_ntem.sub_division },
  { name: "EBOLOWA 1er", code: mvila.code.gsub(/_/, '-') + '-CC', sub_division: mvila.sub_division },
  { name: "EBOLOWA 2e", code: mvila.code.gsub(/_/, '-') + '-CC', sub_division: mvila.sub_division },
  { name: "BIWONG-BANE", code: mvila.code.gsub(/_/, '-') + '-CC', sub_division: mvila.sub_division },
  { name: "MVANGAN", code: mvila.code.gsub(/_/, '-') + '-CC', sub_division: mvila.sub_division },
  { name: "MENGONG", code: mvila.code.gsub(/_/, '-') + '-CC', sub_division: mvila.sub_division },
  { name: "NGOULEMAKONG", code: mvila.code.gsub(/_/, '-') + '-CC', sub_division: mvila.sub_division },
  { name: "EFOULAN", code: mvila.code.gsub(/_/, '-') + '-CC', sub_division: mvila.sub_division },
  { name: "BIWONG BULU", code: mvila.code.gsub(/_/, '-') + '-CC', sub_division: mvila.sub_division },
  { name: "AKOM II", code: ocean.code.gsub(/_/, '-') + '-CC', sub_division: ocean.sub_division },
  { name: "CAMPO", code: ocean.code.gsub(/_/, '-') + '-CC', sub_division: ocean.sub_division },
  { name: "KRIBI 1er", code: ocean.code.gsub(/_/, '-') + '-CC', sub_division: ocean.sub_division },
  { name: "KRIBI 2e", code: ocean.code.gsub(/_/, '-') + '-CC', sub_division: ocean.sub_division },
  { name: "LOLODORF", code: ocean.code.gsub(/_/, '-') + '-CC', sub_division: ocean.sub_division },
  { name: "MVENGUE", code: ocean.code.gsub(/_/, '-') + '-CC', sub_division: ocean.sub_division },
  { name: "BIPINDI", code: ocean.code.gsub(/_/, '-') + '-CC', sub_division: ocean.sub_division },
  { name: "LOKOUNDJE", code: ocean.code.gsub(/_/, '-') + '-CC', sub_division: ocean.sub_division },
  { name: "NIETE", code: ocean.code.gsub(/_/, '-') + '-CC', sub_division: ocean.sub_division }
])

sw_sds_councils = Council.create([
  { name: "MUYUKA", code: fako.code.gsub(/_/, '-') + '-CC', sub_division: fako.sub_division },
  { name: "TIKO", code: fako.code.gsub(/_/, '-') + '-CC', sub_division: fako.sub_division },
  { name: "LIMBE 1er", code: fako.code.gsub(/_/, '-') + '-CC', sub_division: fako.sub_division },
  { name: "LIMBE 2e", code: fako.code.gsub(/_/, '-') + '-CC', sub_division: fako.sub_division },
  { name: "LIMBE 3e", code: fako.code.gsub(/_/, '-') + '-CC', sub_division: fako.sub_division },
  { name: "BUEA", code: fako.code.gsub(/_/, '-') + '-CC', sub_division: fako.sub_division },
  { name: "IDENAU", code: fako.code.gsub(/_/, '-') + '-CC', sub_division: fako.sub_division },
  { name: "BANGEM", code: kupe_manengouba.code.gsub(/_/, '-') + '-CC', sub_division: kupe_manengouba.sub_division },
  { name: "NGUTI", code: kupe_manengouba.code.gsub(/_/, '-') + '-CC', sub_division: kupe_manengouba.sub_division },
  { name: "TOMBEL", code: kupe_manengouba.code.gsub(/_/, '-') + '-CC', sub_division: kupe_manengouba.sub_division },
  { name: "MENJI", code: lebialem.code.gsub(/_/, '-') + '-CC', sub_division: lebialem.sub_division },
  { name: "ALOU", code: lebialem.code.gsub(/_/, '-') + '-CC', sub_division: lebialem.sub_division },
  { name: "WABANE", code: lebialem.code.gsub(/_/, '-') + '-CC', sub_division: lebialem.sub_division },
  { name: "AKWAYA", code: manyu.code.gsub(/_/, '-') + '-CC', sub_division: manyu.sub_division },
  { name: "MAMFE", code: manyu.code.gsub(/_/, '-') + '-CC', sub_division: manyu.sub_division },
  { name: "EYUMODJOCK", code: manyu.code.gsub(/_/, '-') + '-CC', sub_division: manyu.sub_division },
  { name: "TINTO", code: manyu.code.gsub(/_/, '-') + '-CC', sub_division: manyu.sub_division },
  { name: "KUMBA 1er", code: meme.code.gsub(/_/, '-') + '-CC', sub_division: meme.sub_division },
  { name: "KUMBA 2e", code: meme.code.gsub(/_/, '-') + '-CC', sub_division: meme.sub_division },
  { name: "KUMBA 3e", code: meme.code.gsub(/_/, '-') + '-CC', sub_division: meme.sub_division },
  { name: "KONYE", code: meme.code.gsub(/_/, '-') + '-CC', sub_division: meme.sub_division },
  { name: "BONGE", code: meme.code.gsub(/_/, '-') + '-CC', sub_division: meme.sub_division },
  { name: "BAMUSSO", code: ndian.code.gsub(/_/, '-') + '-CC', sub_division: ndian.sub_division },
  { name: "EKONDO-TITI", code: ndian.code.gsub(/_/, '-') + '-CC', sub_division: ndian.sub_division },
  { name: "ISANGUELE", code: ndian.code.gsub(/_/, '-') + '-CC', sub_division: ndian.sub_division },
  { name: "MUNDEMBA", code: ndian.code.gsub(/_/, '-') + '-CC', sub_division: ndian.sub_division },
  { name: "KOMBO ABEDIMO", code: ndian.code.gsub(/_/, '-') + '-CC', sub_division: ndian.sub_division },
  { name: "KOMBO IDINTI", code: ndian.code.gsub(/_/, '-') + '-CC', sub_division: ndian.sub_division },
  { name: "IDABATO", code: ndian.code.gsub(/_/, '-') + '-CC', sub_division: ndian.sub_division },
  { name: "DIKOME-BALUE", code: ndian.code.gsub(/_/, '-') + '-CC', sub_division: ndian.sub_division },
  { name: "TOKO", code: ndian.code.gsub(/_/, '-') + '-CC', sub_division: ndian.sub_division }
])
