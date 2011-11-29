use strict;
use warnings;     
use DateTime::Calendar::Japanese;
use DateTime::Calendar::Japanese::Era;
 
print "\n";
my %era_hash = ("大宝","TAIHOU","慶雲","KEIUN","和銅","WADOU","霊亀","REIKI","養老","YOUROU","神亀","JINKI","天平","TENPYOU","天平感宝","TENPYOUKANPOU","天平勝宝","TENPYOUSHOUHOU","天平宝字","TENPYOUJOUJI","天平神護","TENPYOUJINGO","神護景雲","JINGOKEIUN","宝亀","HOUKI","天応","TENNOU","延暦","ENRYAKU","大同","DAIDOU","弘仁","KOUNIN","天長","TENCHOU","承和","JOUWA1","嘉祥","KASHOU","仁寿","NINJU","斉衡","SAIKOU","天安","TENNAN","貞観","JOUGAN","元慶","GANGYOU","仁和","NINNA","寛平","KANPYOU","昌泰","SHOUTAI","延喜","ENGI","延長","ENCHOU","承平","JOUHEI","天慶","TENGYOU","天暦","TENRYAKU","天徳","TENTOKU","応和","OUWA","康保","KOUHOU","安和","ANNA","天禄","TENROKU","天延","TENNEN","貞元","JOUGEN1","天元","TENGEN","永観","EIKAN","寛和","KANNA","永延","EIEN","永祚","EISO","正暦","SHOURYAKU","長徳","CHOUTOKU","長保","CHOUHOU","寛弘","KANKOU","長和","CHOUWA","寛仁","KANNIN","治安","JIAN","万寿","MANJU","長元","CHOUGEN","長暦","CHOURYAKU","長久","CHOUKYU","寛徳","KANTOKU","永承","EISHOU1","天喜","TENGI","康平","KOUHEI","治暦","JIRYAKU","延久","ENKYUU","承保","JOUHOU","承暦","JOURYAKU","永保","EIHOU","応徳","OUTOKU","寛治","KANJI","嘉保","KAHOU","永長","EICHOU","承徳","JOUTOKU","康和","KOUWA","長治","CHOUJI","嘉承","KAJOU","天仁","TENNIN","天永","TENNEI","永久","EIKYU","元永","GENNEI","保安","HOUAN","天治","TENJI","大治","DAIJI","天承","TENSHOU1","長承","CHOUSHOU","保延","HOUEN","永治","EIJI","康治","KOUJI1","天養","TENNYOU","久安","KYUAN","仁平","NINPEI","久寿","KYUJU","保元","HOUGEN","平治","HEIJI","永暦","EIRYAKU","応保","OUHOU","長寛","CHOUKAN","永万","EIMAN","仁安","NINNAN","嘉応","KAOU","承安","SHOUAN1","安元","ANGEN","治承","JISHOU","養和","YOUWA","寿永","JUEI","元暦","GENRYAKU","文治","BUNJI","建久","KENKYU","正治","SHOUJI","建仁","KENNIN","元久","GENKYU","建永","KENNEI","承元","JOUGEN2","建暦","KENRYAKU","建保","KENPOU","承久","JOUKYU","貞応","JOUOU1","元仁","GENNIN","嘉禄","KAROKU","安貞","ANTEI","寛喜","KANKI","貞永","JOUEI","天福","TENPUKU","文暦","BUNRYAKU","嘉禎","KATEI","暦仁","RYAKUNIN","延応","ENNOU","仁治","NINJI","寛元","KANGEN","宝治","HOUJI","建長","KENCHOU","康元","KOUGEN","正嘉","SHOUKA","正元","SHOUGEN","文応","BUNNOU","弘長","KOUCHOU","文永","BUNNEI","健治","KENJI","弘安","KOUAN1","正応","SHOUOU","永仁","EININ","正安","SHOUAN2","乾元","KENGEN","嘉元","KAGEN","徳治","TOKUJI","延慶","ENKYOU1","応長","OUCHOU","正和","SHOUWA1","文保","BUNPOU","元応","GENNOU","元亨","GENKOU","正中","SHOUCHU","嘉暦","KARYAKU","元徳","GENTOKU","正慶","SHOUKEI","暦応","RYAKUOU","康永","KOUEI","貞和","JOUWA2","観応","KANNOU","文和","BUNWA","延文","ENBUN","康安","KOUAN2","貞治","JOUJI","応安","OUAN","永和","EIWA","康暦","KOURYAKU","永徳","EITOKU","至徳","SHITOKU","嘉慶","KAKEI","康応","KOUOU","明徳","MEITOKU","応永","OUEI","正長","SHOUCHOU","永享","EIKYOU","嘉吉","KAKITSU","文安","BUNNAN","宝徳","HOUTOKU","享徳","KYOUTOKU","康正","KOUSHOU","長禄","CHOUROKU","寛正","KANSHOU","文正","BUNSHOU","応仁","OUNIN","文明","BUNMEI","長享","CHOUKYOU","延徳","ENTOKU","明応","MEIOU","文亀","BUNKI","永正","EISHOU2","大永","DAIEI","享禄","KYOUROKU","天文","TENBUN","弘治","KOUJI2","永禄","EIROKU","元亀","GENKI","天正","TENSHOU2","文禄","BUNROKU","慶長","KEICHOU","元和","GENNA","寛永","KANNEI","正保","SHOUHOU","慶安","KEIAN","承応","JOUOU2","明暦","MEIREKI","万治","MANJI","寛文","KANBUN","延宝","ENPOU","天和","TENNA","貞享","JOUKYOU","元禄","GENROKU","宝永","HOUEI","正徳","SHOUTOKU","享保","KYOUHOU","元文","GENBUN","寛保","KANPOU","延享","ENKYOU2","寛延","KANNEN","宝暦","HOUREKI","明和","MEIWA","安永","ANNEI","天明","TENMEI","寛政","KANSEI","享和","KYOUWA","文化","BUNKA","文政","BUNSEI","天保","TENPOU","弘化","KOUKA","嘉永","KAEI","安政","ANSEI","万延","MANNEI","文久","BUNKYU","元治","GENJI","慶応","KEIOU","明治","MEIJI","大正","TAISHOU","昭和","SHOUWA2","平成","HEISEI"
);
my %duree_ere = ("大宝",'4',"慶雲",'5',"和銅",'8',"霊亀",'3',"養老",'8',"神亀",'6',"天平",'21',"天平感宝",'1',"天平勝宝",'9',"天平宝字",'9',"天平神護",'3',"神護景雲",'4',"宝亀",'12',"天応",'2',"延暦",'25',"大同",'5',"弘仁",'14',"天長",'12',"承和",'15',"嘉祥",'4',"仁寿",'5',"斉衡",'3',"天安",'3',"貞観",'19',"元慶",'9',"仁和",'5',"寛平",'10',"昌泰",'4',"延喜",'23',"延長",'9',"承平",'8',"天慶",'10',"天暦",'11',"天徳",'5',"応和",'4',"康保",'5',"安和",'3',"天禄",'5',"天延",'3',"貞元",'4',"天元",'5',"永観",'3',"寛和",'3',"永延",'3',"永祚",'2',"正暦",'6',"長徳",'5',"長保",'6',"寛弘",'10',"長和",'5',"寛仁",'5',"治安",'4',"万寿",'5',"長元",'10',"長暦",'4',"長久",'6',"寛徳",'2',"永承",'8',"天喜",'6',"康平",'8',"治暦",'5',"延久",'6',"承保",'5',"承暦",'4',"永保",'4',"応徳",'4',"寛治",'9',"嘉保",'3',"永長",'2',"承徳",'2',"康和",'6',"長治",'3',"嘉承",'3',"天仁",'3',"天永",'4',"永久",'6',"元永",'3',"保安",'5',"天治",'3',"大治",'6',"天承",'2',"長承",'4',"保延",'7',"永治",'2',"康治",'3',"天養",'2',"久安",'7',"仁平",'4',"久寿",'3',"保元",'4',"平治",'2',"永暦",'2',"応保",'3',"長寛",'3',"永万",'2',"仁安",'4',"嘉応",'3',"承安",'5',"安元",'3',"治承",'5',"養和",'2',"寿永",'3',"元暦",'2',"文治",'6',"建久",'10',"正治",'3',"建仁",'4',"元久",'3',"建永",'2',"承元",'5',"建暦",'4',"建保",'6',"承久",'4',"貞応",'4',"元仁",'1',"嘉禄",'4',"安貞",'2',"寛喜",'4',"貞永",'2',"天福",'3',"文暦",'1',"嘉禎",'5',"暦仁",'1',"延応",'2',"仁治",'4',"寛元",'5',"宝治",'3',"建長",'8',"康元",'2',"正嘉",'3',"正元",'2',"文応",'2',"弘長",'4',"文永",'12',"健治",'4',"弘安",'11',"正応",'6',"永仁",'7',"正安",'5',"乾元",'1',"嘉元",'5',"徳治",'2',"延慶",'4',"応長",'2',"正和",'6',"文保",'3',"元応",'3',"元亨",'5',"正中",'2',"嘉暦",'4',"元徳",'4',"正慶",'7',"暦応",'5',"康永",'4',"貞和",'6',"観応",'3',"文和",'5',"延文",'6',"康安",'2',"貞治",'7',"応安",'8',"永和",'5',"康暦",'3',"永徳",'4',"至徳",'4',"嘉慶",'3',"康応",'2',"明徳",'5',"応永",'35',"正長",'2',"永享",'13',"嘉吉",'4',"文安",'6',"宝徳",'4',"享徳",'4',"康正",'3',"長禄",'5',"寛正",'6',"文正",'2',"応仁",'3',"文明",'19',"長享",'3',"延徳",'4',"明応",'10',"文亀",'4',"永正",'18',"大永",'8',"享禄",'5',"天文",'24',"弘治",'4',"永禄",'13',"元亀",'4',"天正",'21',"文禄",'4',"慶長",'20',"元和",'10',"寛永",'22',"正保",'4',"慶安",'5',"承応",'4',"明暦",'4',"万治",'4',"寛文",'13',"延宝",'9',"天和",'4',"貞享",'5',"元禄",'17',"宝永",'8',"正徳",'6',"享保",'21',"元文",'6',"寛保",'4',"延享",'5',"寛延",'4',"宝暦",'14',"明和",'10',"安永",'9',"天明",'21',"寛政",'2',"享和",'3',"文化",'15',"文政",'14',"天保",'15',"弘化",'4',"嘉永",'8',"安政",'6',"万延",'2',"文久",'4',"元治",'2',"慶応",'4',"明治",'45',"大正",'15',"昭和",'64',"平成",''
);

use Test::More;

foreach my $cle ( keys %duree_ere ) {
    my $d = $duree_ere{$cle};
    for my $y ( 1..($d-1) ) {
        my $dtcj = DateTime::Calendar::Japanese->new(
            era_name => $era_hash{$cle},
            era_year => $y,
            month => 1,
            day => 1,
        );

        if ( ! is $dtcj->era_year, $y, "year matches expected $y, got " . $dtcj->era_year ) {
            diag sprintf "Got era_name = %s, year = %s, month = %s.", $dtcj->era_name, $dtcj->era_year, $dtcj->month;
            diag sprintf "Expected era_name = %s, year = %s, month = %s.", $era_hash{$cle}, $y, 1;
        }
    }
}

done_testing;