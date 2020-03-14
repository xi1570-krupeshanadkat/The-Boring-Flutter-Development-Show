import 'package:flutter_test/flutter_test.dart';
import 'package:hacker_news/parse_json.dart';

void main() {
  test("parses topstories.json", () {
    // ToDO
    const jsonString =
        "[22573656,22573926,22570684,22573188,22572734,22572242,22557640,22569641,22562262,22569942,22571597,22569662,22569115,22569007,22570133,22572499,22569716,22564882,22570158,22572607,22571701,22567240,22572311,22571751,22557412,22567937,22570294,22572895,22573204,22572347,22572862,22567147,22567640,22567557,22573296,22564665,22571618,22571729,22573825,22567736,22567602,22561792,22573622,22563808,22570909,22551856,22569457,22561121,22552006,22573889,22566164,22560901,22564898,22568455,22550332,22572509,22568935,22570741,22565423,22569447,22556156,22569790,22563550,22569178,22573270,22561241,22568337,22570597,22566238,22562329,22563176,22572917,22568972,22560484,22561638,22569045,22561147,22568034,22573479,22567600,22568335,22566814,22556336,22559318,22566447,22569036,22562713,22555855,22557137,22565660,22569005,22570471,22548217,22572346,22555098,22559147,22561291,22573180,22564892,22562563,22559175,22562041,22562340,22565107,22571905,22569020,22563875,22560075,22555938,22559493,22568305,22566596,22571457,22553401,22573227,22558771,22554886,22573053,22564142,22554527,22559308,22569905,22556642,22557091,22556573,22563670,22566582,22552790,22558182,22557491,22551090,22552632,22561742,22558422,22572628,22560962,22559786,22558927,22551020,22557552,22563932,22554384,22562840,22561173,22570959,22571794,22558517,22572033,22559840,22559813,22552460,22572617,22568061,22568947,22571330,22561373,22552563,22551415,22572070,22572446,22551712,22550539,22554023,22562343,22558724,22547183,22566803,22559384,22556473,22546805,22563288,22549300,22573212,22559280,22569620,22561176,22569706,22550405,22558047,22570178,22572535,22570979,22569305,22563565,22556681,22559838,22569142,22547102,22560851,22559602,22552730,22572654,22565531,22561955,22555992,22569570,22571860,22547469,22552477,22561933,22548910,22558783,22555271,22558621,22548925,22568983,22562559,22557065,22561328,22570810,22566434,22557555,22552506,22558796,22564000,22553105,22549568,22561433,22563200,22547283,22569074,22559120,22572130,22564195,22548708,22558585,22570828,22564522,22555490,22566618,22547998,22570510,22572595,22560928,22568795,22563914,22562016,22548152,22570831,22546737,22563348,22570084,22546916,22566116,22552325,22562183,22550962,22561814,22569713,22569648,22550806,22561522,22551789,22549265,22562594,22554640,22569435,22562435,22550420,22546931,22547430,22560029,22548750,22567726,22571861,22559609,22564557,22569234,22561886,22563849,22559135,22563802,22563577,22554524,22558017,22552523,22569055,22564319,22562545,22570759,22553254,22566923,22551787,22571570,22561607,22559759,22550158,22559045,22568100,22567291,22558693,22548255,22559943,22569116,22549935,22547263,22563614,22552021,22566165,22558859,22554868,22553376,22572176,22558905,22564489,22546977,22546878,22566816,22569058,22558014,22553598,22548912,22547022,22549619,22555502,22548475,22553486,22568341,22553379,22552974,22558258,22550077,22564968,22555924,22559698,22562150,22560412,22570462,22569877,22557701,22558863,22558823,22569528,22554927,22568682,22550092,22560458,22548308,22562911,22552513,22559688,22554725,22552036,22552977,22547324,22547160,22548190,22547040,22558918,22560209,22548734,22568440,22567766,22559613,22563148,22554399,22552956,22563067,22557271,22549239,22564010,22547457,22548257,22558188,22566227,22563768,22551582,22550947,22553886,22554145,22559090,22553827,22550304,22549905,22558982,22567107,22547607,22552190,22567016,22562706,22566762,22562462,22565007,22552812,22550621,22556612,22549346,22556390,22554986,22561383,22550108,22557999,22549523,22554157,22555950,22558632,22572526,22552085,22560882,22564194,22550573,22560470,22551874,22546973,22562266,22561293,22559321,22552971,22553833,22552835,22561754,22554899,22547917,22549481,22561569,22565802,22551800,22554128,22557863,22562719,22554745,22569018,22549581,22555783,22548186,22552499,22550935,22565036,22546796,22550623,22563045,22566783,22564829,22554585,22564286,22548414,22564180,22546816,22546823,22563438,22552796,22550043,22553107,22563150,22550236,22563024,22551768,22549336,22549923,22549864,22549616,22550146,22549187,22548361,22561098,22560998,22554016,22547677,22550919,22570256,22559684,22547723,22559118,22558912,22553890,22549492,22548770,22558074,22551356,22556465,22553333,22548533,22552494,22547244,22547137,22551388,22554700,22551059,22554519,22548961,22548602,22548358,22549518,22552910,22552538,22552467,22552397,22554009,22551968,22551449,22548344,22547712,22547176,22546902,22568601,22555746,22556203,22558909,22553499,22571030]";

    expect(parseTopStories(jsonString).first, 22573656);
  });

  test("parses singlearticle.json", () {
    // ToDO
    const jsonString =
        """{"by":"dhouston","descendants":71,"id":8863,"kids":[9224,8917,8952,8884,8887,8869,8958,8940,8908,9005,8873,9671,9067,9055,8865,8881,8872,8955,10403,8903,8928,9125,8998,8901,8902,8907,8894,8870,8878,8980,8934,8943,8876],"score":104,"time":1175714200,"title":"My YC app: Dropbox - Throw away your USB drive","type":"story","url":"http://www.getdropbox.com/u/2/screencast.html"}""";

    expect(parseArticle(jsonString).by, "dhouston");
  });
}