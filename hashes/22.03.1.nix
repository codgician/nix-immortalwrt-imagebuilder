{
  targets."oxnas"."ox820".sha256 = "1mh5ypn106l59zjaqbh6sjwm2vf0skda0q6fbihplsk2nr6zf2cd";
  targets."oxnas"."ox820".packagesArch = "arm_mpcore";
  packages."arm_mpcore"."base".sha256 = "00608x536ndn86wwrdrk2i2ghz320pzg09s5kjggqhjib8283p1y";
  packages."arm_mpcore"."luci".sha256 = "1cihwksbw586l9r00fvkh55y520qv9a403fd54js5fa5ghk8y32n";
  packages."arm_mpcore"."packages".sha256 = "1ndqzj2hwmwpq8sb3d63dcqyg56nfzka01vqq62mwh47zdgzzldf";
  packages."arm_mpcore"."routing".sha256 = "0lq75vxx07d3bf0azh5c20pgqxfcvl46jdhjjz7v3y66w2zv9d12";
  packages."arm_mpcore"."telephony".sha256 = "1ikspc147i52j6nar6vy0rkdlj051dd1kkgqj69nnca9lpdynr1l";
  targets."mxs"."generic".sha256 = "0qvd4y6cvkh0khj5znslb32ai4m97pvvrvs115j5727li7zvnm0q";
  targets."zynq"."generic".sha256 = "0wdi90bqh48fw4cpz6g6asx7anb0z5a385652xfg8dlpplvbpkfv";
  targets."zynq"."generic".packagesArch = "arm_cortex-a9_neon";
  packages."arm_cortex-a9_neon"."base".sha256 = "13lxmkrf4gnyy1x77c2g69qar9is898blw98wblrs71bvwhgzxsv";
  packages."arm_cortex-a9_neon"."luci".sha256 = "1gn3m2dr1iplyi7ij656f355mj949pq1xpif2n79ixsr8kk3cs32";
  packages."arm_cortex-a9_neon"."packages".sha256 = "1amll9ch2sfpn6jksg1cjw97bgcbnc2pp1mya61b63pwx42jka0n";
  packages."arm_cortex-a9_neon"."routing".sha256 = "1az83q98d6xhinv0445ir7vny6q4308y7rfcws55arvm0387p1bq";
  packages."arm_cortex-a9_neon"."telephony".sha256 = "14sa5mms36dr76c387cb2fykv8yy5cfvw2wl54sshs1s7diprp7m";
  targets."bcm63xx"."generic".sha256 = "1rwfgg6wjrik02ziwsprvq56z8fgcj7djpm23rsadi89rrl3j771";
  targets."bcm63xx"."generic".packagesArch = "mips_mips32";
  packages."mips_mips32"."base".sha256 = "1nlrcls1sc637cbj29m0lwxg2c67bf9qgqnvard72ljvi84m3d8r";
  packages."mips_mips32"."luci".sha256 = "01n5sdv2lizgvq7vy08l6wrbv70rn0ajkr51c31qdyqcs4w91l3f";
  packages."mips_mips32"."packages".sha256 = "0xpkzhbyhbydpzmwjcpifcxvp9r6bfyxk7b1hi84xyv9hapzrcw4";
  packages."mips_mips32"."routing".sha256 = "1wv4zjhc9f4lmd86bd33gl1vnk95ak9jp5swg8ih3rpnjfhcq4kl";
  packages."mips_mips32"."telephony".sha256 = "1qdkzqi9jmjn9655kkcdpmarya2fa6wabc9lalva6p910w681sn9";
  targets."bcm63xx"."smp".sha256 = "1qna4c8bkxmlnbl6x589jw8awg2wzq00vh61gaszyvn7zh8894in";
  targets."bcm63xx"."smp".packagesArch = "mips_mips32";
  targets."bcm47xx"."generic".sha256 = "0pbnbkamd43rpddchk32287wxpwiiwb2cxzmc6hki5zpm8xk7yn6";
  targets."bcm47xx"."generic".packagesArch = "mipsel_mips32";
  packages."mipsel_mips32"."base".sha256 = "18vly5ncmpafak78c6hk0xsfl7q1xm4qfaafxwgy6ar6j8l6k48p";
  packages."mipsel_mips32"."luci".sha256 = "07c16n5qm2bha5f98fm78zxzb0kqwma4sg33r78sl7xqvl2bn18l";
  packages."mipsel_mips32"."packages".sha256 = "1kxccqs53izfkpg4g37q89bm73r1jb0x33snlf92rlpg9jbv1c1b";
  packages."mipsel_mips32"."routing".sha256 = "0phll8d5v3fkrqf1ihqym76kdcnk1y380w82r77bd2qg05ripwv4";
  packages."mipsel_mips32"."telephony".sha256 = "145895aryfc1dmcw8spqsa8vg013yjzmdxacv6anfyk8bcn502ca";
  targets."bcm47xx"."legacy".sha256 = "116289k6w0gjyggacn0w1ps3xvp87f08qx2m3gzibvmvdmfm8d5c";
  targets."bcm47xx"."legacy".packagesArch = "mipsel_mips32";
  targets."bcm47xx"."mips74k".sha256 = "01sc47a3bkamp67mqci8xr2sldwz7vmgznw8ywqfsdmj2cyq2a2c";
  targets."bcm47xx"."mips74k".packagesArch = "mipsel_74kc";
  packages."mipsel_74kc"."base".sha256 = "0sawn58alc3ik4r20vmdrmaj0qkr69vw7z0rnwsv228vn6z1lx18";
  packages."mipsel_74kc"."luci".sha256 = "1gf1cgx4dnx8dawaagkjhf795814gdnv86y5n06brsjm630lqxg3";
  packages."mipsel_74kc"."packages".sha256 = "11q578g8zwgrfwnnwcigs9kzllcqds5b7sim6wvpp96n4r1sg1vc";
  packages."mipsel_74kc"."routing".sha256 = "0x45lrfb1cx3mw7hg8xv716xy0lfz3z5apks7xl87k7dpgrqhv9h";
  packages."mipsel_74kc"."telephony".sha256 = "0rzq0kcm021r11ksczp15b8jmv5ymhsvb3xxw1kinq277jmnbx7k";
  targets."bcm27xx"."bcm2711".sha256 = "0parkjz64sl9vsgviadqlgwy3if6h0n37kkbw7qryfinah2snha2";
  targets."bcm27xx"."bcm2711".packagesArch = "aarch64_cortex-a72";
  packages."aarch64_cortex-a72"."base".sha256 = "1p1mr8x9fxwxnn7qbqvcnq6s2sgiv75dnzh0lpwnwxlx07rif5kr";
  packages."aarch64_cortex-a72"."luci".sha256 = "0qippm88hms9lnh6gbp6656ldca07y6pbjv0jzb13qxb7c41y6da";
  packages."aarch64_cortex-a72"."packages".sha256 = "1p1xzdkmwl00h2li3vrbqh3sr4hkfbqfihi567sk3k8rdwifp86d";
  packages."aarch64_cortex-a72"."routing".sha256 = "0bpv8v2qk3znys2wcqhll59d3848gfq98jxadkc2akg0xg0mc0ky";
  packages."aarch64_cortex-a72"."telephony".sha256 = "0ci7ifxv6mfq89h7n0nvjcdfzhi8nlq8yln4hsgy1ya24q4i8b1m";
  targets."bcm27xx"."bcm2708".sha256 = "1v7mm0lbkmwfysl70jyal5dflxgl3awxvdcfm8f8cm46z27gyj09";
  targets."bcm27xx"."bcm2708".packagesArch = "arm_arm1176jzf-s_vfp";
  packages."arm_arm1176jzf-s_vfp"."base".sha256 = "12z3pf101vlnwqk9s7g6inm76mwk9j07khjrc9hmrpi7hxqr21w6";
  packages."arm_arm1176jzf-s_vfp"."luci".sha256 = "1pnaxsdr3n1bicvxwadvcgy14xjpnnylrfzw5q9fvks22d1q9fzg";
  packages."arm_arm1176jzf-s_vfp"."packages".sha256 = "1jbgycp7y1709pfxlrq341d0gx41qcjd492hn1yricx3i4gx3zjf";
  packages."arm_arm1176jzf-s_vfp"."routing".sha256 = "1lfik4j2jfap2kx9mj3az9fm5hffw7ga5kk4sxhgvx3yhwbjcayg";
  packages."arm_arm1176jzf-s_vfp"."telephony".sha256 = "0v18fg3s4vyq6pw4f3fa58dqxmx0gb0s9hfbgcg3mwpx0qbabbpz";
  targets."bcm27xx"."bcm2709".sha256 = "1vfgz8zivcd3vc8w9ilkinir9m9x5qnawyclmwdgv12xnr89mlww";
  targets."bcm27xx"."bcm2709".packagesArch = "arm_cortex-a7_neon-vfpv4";
  packages."arm_cortex-a7_neon-vfpv4"."base".sha256 = "0s2g2rc59dkcvy44psq8059rdjd9vxrfy07xfl35z7v55rv01gag";
  packages."arm_cortex-a7_neon-vfpv4"."luci".sha256 = "0zai7s0ma2jw3qww9dhmw7y3s03hyia16bi2h094lbn3dw0dlh8c";
  packages."arm_cortex-a7_neon-vfpv4"."packages".sha256 = "11a6fgp5vkk41xphasfdf2cqgkafkjmq92m9d8wcg2ckpd45im91";
  packages."arm_cortex-a7_neon-vfpv4"."routing".sha256 = "1r2hn5za6yw54d544x97kwprhnscc7b5qvgnmxzshp34a1z4hrdl";
  packages."arm_cortex-a7_neon-vfpv4"."telephony".sha256 = "049b2mvdvgi07hz5cx4c5bniqr3n3pabr33pmcsi5lfqll891lbf";
  targets."bcm27xx"."bcm2710".sha256 = "0s3wr15jljhlg090ms1l44lra86lkwmqndg3c6c0q6y0wp68v4fi";
  targets."bcm27xx"."bcm2710".packagesArch = "aarch64_cortex-a53";
  packages."aarch64_cortex-a53"."base".sha256 = "01p9k5sm9ybqdczs2699x7sjf9d18l31rsrjpj02dd3pikvn39d4";
  packages."aarch64_cortex-a53"."luci".sha256 = "0a4c48a5yinwc3ak5yis6lhk3an5s3674vr6ip748i82n75y32r1";
  packages."aarch64_cortex-a53"."packages".sha256 = "1hsdgvqlbcjg8xmccgg44s40ydz51xmrzcky55k88pqvma1p98f0";
  packages."aarch64_cortex-a53"."routing".sha256 = "19yllg4sa4g2y5sz73b7jcfwvbvvidz11dhigma6875lax1znycf";
  packages."aarch64_cortex-a53"."telephony".sha256 = "1l60pwzz9i46p9jc9karyzaf9ryx1kbai85abrqmc3k86a2ykrnh";
  targets."mvebu"."cortexa53".sha256 = "11bnizsac9pl9s162hygnssjsmxyyf6qwix5ly24mlypr5ixj4g3";
  targets."mvebu"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."mvebu"."cortexa72".sha256 = "1vcfgm92bgyzwi9az2yggz4l0x63saviz6sr8sm98jamxsxjizk7";
  targets."mvebu"."cortexa72".packagesArch = "aarch64_cortex-a72";
  targets."mvebu"."cortexa9".sha256 = "1w0gghb1n039lrx0ly0g6f1r09lmwcadjj1sv31s14yfmkk62ixm";
  targets."mvebu"."cortexa9".packagesArch = "arm_cortex-a9_vfpv3-d16";
  packages."arm_cortex-a9_vfpv3-d16"."base".sha256 = "1d5wcnm29sax0pgk0zpmrqhczy4b2xn3653bs6yad5cra535brgz";
  packages."arm_cortex-a9_vfpv3-d16"."luci".sha256 = "08v1rxdqd6wwad81dkhm3kdsvhpnmmp9f2h8adkv316g0qgym543";
  packages."arm_cortex-a9_vfpv3-d16"."packages".sha256 = "0a8qakyjw66yy7avxqjdxcclmvqklf8b8bb60wi1hszi5l24fxqk";
  packages."arm_cortex-a9_vfpv3-d16"."routing".sha256 = "0d8zscna7wclhpl3d06vdj0rn84znahys7gxhxzi3mlrlclp1zzy";
  packages."arm_cortex-a9_vfpv3-d16"."telephony".sha256 = "0xyf7f2rbjwmzydf3wf61dd2xarxm70dmb2q9qfv78wll5a9nmpn";
  targets."at91"."sam9x".sha256 = "0zzw395p95b7ymaycmdpqc3w0k7xb4k3r8xa42ws25awk3wb14iz";
  targets."at91"."sam9x".packagesArch = "arm_arm926ej-s";
  packages."arm_arm926ej-s"."base".sha256 = "1nzkipm5f5qrzk91kirgzqyv0mm46x0gb0ybpxfqkb0jygsb8j8i";
  packages."arm_arm926ej-s"."luci".sha256 = "1ykcqdd6kq4n1cis4iqlb691gyzcj761c78fsxxg7gbjmg1w32n5";
  packages."arm_arm926ej-s"."packages".sha256 = "1yf67nhmar70hdk486yc1p12g9298imjz69w9229rz269s3x9gw7";
  packages."arm_arm926ej-s"."routing".sha256 = "0h9alr3v5yzjzdqiznp32sb2rardf85v5hf7vqfw8lxkd2lhf6lz";
  packages."arm_arm926ej-s"."telephony".sha256 = "0ig08hzsh20hadr0d3ycx5qjxra10h8g8l6a6gbqfinq1m8g785i";
  targets."at91"."sama7".sha256 = "0px8lq15262glv92rrb3l9rav1044zlk8i44998878vz8zschn9s";
  targets."at91"."sama7".packagesArch = "arm_cortex-a7_vfpv4";
  packages."arm_cortex-a7_vfpv4"."base".sha256 = "1bhl4v44k3f9ymld86pibiw4r8qcq9wi72pnva4pfc4jay62qv85";
  packages."arm_cortex-a7_vfpv4"."luci".sha256 = "1z7p46q34xmcm4djhfd7429j04hrma7f2l5rxfqz1m7ig4y2crx3";
  packages."arm_cortex-a7_vfpv4"."packages".sha256 = "0gh81ywbc7n904ki5b884hmmbs4wps67wahiw22lsg6cd9dxpmgd";
  packages."arm_cortex-a7_vfpv4"."routing".sha256 = "0mdlrh8sacgjwm0nmd2al5r4qx15iq47dfk48njappnc6mcmvhv5";
  packages."arm_cortex-a7_vfpv4"."telephony".sha256 = "15158icjnwrwv90r94g496l4hj12pd8qlzc77lml71rp9ab4pn68";
  targets."at91"."sama5".sha256 = "1afr7w4c44a0wmasgjrk9x57x0i22xxa4j6mjcnr9q5jcw1wimw6";
  targets."at91"."sama5".packagesArch = "arm_cortex-a5_vfpv4";
  packages."arm_cortex-a5_vfpv4"."base".sha256 = "0h1isgrgx22kmcyxhnrvxyzpnsc4nkmi0lvk64w55qgpdhdv871i";
  packages."arm_cortex-a5_vfpv4"."luci".sha256 = "058rzm41lsg0rfrgjrxikzmgl39zcqb8wsql7nkwdzsxcxi7kjah";
  packages."arm_cortex-a5_vfpv4"."packages".sha256 = "1p4h0w4f486d1b80gxpj7g9fc02nx0034kljjqivqqjn70b3v1my";
  packages."arm_cortex-a5_vfpv4"."routing".sha256 = "0r4hvkydamr1klslar8g6cwa1gky79hz6cymwz0h33mqhkb6sfw6";
  packages."arm_cortex-a5_vfpv4"."telephony".sha256 = "1n19ym5qx5kg3shac24q04l23rhxz7555vsh69z4y8jrd9bpn2fm";
  targets."gemini"."generic".sha256 = "0z2z4728rxgz2ilkw0bdsa1a681l5sy3bwflidn3jh2v00pa90n4";
  targets."gemini"."generic".packagesArch = "arm_fa526";
  packages."arm_fa526"."base".sha256 = "0rar8a141i9lpkz3gs5dyhsai7jjsvpqk5xhczqdkmai6g2sddkf";
  packages."arm_fa526"."luci".sha256 = "0hpm2199yb5cxwiqfnkh792aazg85rg5044jq95g44xwv768r1bj";
  packages."arm_fa526"."packages".sha256 = "1sb7sfrg1spbqll5sbsd8kmfmixvy0izc8scdf1mm1q8g270p1y2";
  packages."arm_fa526"."routing".sha256 = "1bhhfslvx7rv63chb7j54k90q5gbapgc8f43p3qkmr8f9csax8dz";
  packages."arm_fa526"."telephony".sha256 = "19xnylikgcxcbx8rjccdh65i8g923i2hc2gfzw73w3cg8qwh4j1v";
  targets."octeontx"."generic".sha256 = "1vnamfh7rzs0fmqlilczz45swlyv2q40v2lxr2mv2jipngcnvd6q";
  targets."ipq40xx"."generic".sha256 = "0hrm3xwlzvwrbjq7hy06j7xkga5avg338zbk4s8908mw21n5w9n7";
  targets."ipq40xx"."generic".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."ipq40xx"."mikrotik".sha256 = "10lrznvngv7m0j317i006j2lag969mhkk8y11w78k223q49ifpdb";
  targets."ipq40xx"."mikrotik".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7623".sha256 = "1a18pvgb6hay27kndwqqsqxlyrvmgvhfg8sy0rh510dfp1cv47pi";
  targets."mediatek"."mt7623".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7629".sha256 = "0rfdvw3z7wqp7fl5zxplqmhmqjfv5crqnp4l0hrp5xq7l2qvfjdk";
  targets."mediatek"."mt7629".packagesArch = "arm_cortex-a7";
  packages."arm_cortex-a7"."base".sha256 = "1b4sqljcdwvskbxdg3zg19hh24zl0qn8s9bzv70lmgsc0rq5mysg";
  packages."arm_cortex-a7"."luci".sha256 = "0qaapm5gp4971xip92sm1qg2439r1rhplvygba8hj6ck626z7v3j";
  packages."arm_cortex-a7"."packages".sha256 = "0yyk7hmgdaiba2307azhx93cngq77j70wfz2jrcbh7damqxwc3js";
  packages."arm_cortex-a7"."routing".sha256 = "1lzs6vf9bvyxa7vv85gfsc2vq5cfhxp3ks1z3npm3ynf13ypynxx";
  packages."arm_cortex-a7"."telephony".sha256 = "1y1r0lm6k25gjj9csz2q42zg7j6fh6ai9sy0zkdqmsff54bq81gl";
  targets."mediatek"."mt7622".sha256 = "1shwr1gpi06mff61q6pcl3w1c52f1q2k75klnnhhxpg47q1b9gkm";
  targets."mediatek"."mt7622".packagesArch = "aarch64_cortex-a53";
  targets."malta"."be".sha256 = "1himf65l262da5z4nxzbixlnxclxl0xv4in0xfwsvs37nvaswpfm";
  targets."rockchip"."armv8".sha256 = "1wdk36vckfj5r28niwg9a73a5dxgpdf38mf6vkvqk06s6acn1a3r";
  targets."rockchip"."armv8".packagesArch = "aarch64_generic";
  packages."aarch64_generic"."base".sha256 = "16cl51wfrsmdyszvjlfcpgj1s9bbw613jnnfx40dlyxly0y6rraw";
  packages."aarch64_generic"."luci".sha256 = "0309m0qvmz4gql7jk2cixaj32q2bpa911hgsgmvc39igr1gavknn";
  packages."aarch64_generic"."packages".sha256 = "0xr1yyr49myrkx0dvl2p39d3dvs3ailvzcr31x6fsjh0jfy7blvh";
  packages."aarch64_generic"."routing".sha256 = "17917h386dg931il9kflg08mlszb0sjvklwcnca9cm61y22kkkqs";
  packages."aarch64_generic"."telephony".sha256 = "0sbakf6n6dfkqnc3pcic470lwf6gpivgnp1p0c966nvzd5gpi2s1";
  targets."ipq806x"."generic".sha256 = "0vjg4cc40xlxrap33a5xcw7daic4wb3vyjpd56ihpm30fxphlz3s";
  targets."ipq806x"."generic".packagesArch = "arm_cortex-a15_neon-vfpv4";
  packages."arm_cortex-a15_neon-vfpv4"."base".sha256 = "1z5j9aszb533vmv57baymswic3kvl6a43hi0pbgzmz1fcpl2xj9m";
  packages."arm_cortex-a15_neon-vfpv4"."luci".sha256 = "0j4f1r0sggwp6amm8mnvzw1137x0d76g8xbk5j8kj1d0cn2jicwn";
  packages."arm_cortex-a15_neon-vfpv4"."packages".sha256 = "0p4qsg9yz63jd0qqwhfvh6ky4ryjq71crj822wbhi6qrqfwqgjn7";
  packages."arm_cortex-a15_neon-vfpv4"."routing".sha256 = "1wp1spsfq8dqc2pd02k78whkrnbvy7yzqzp70h2jngy408hlvylp";
  packages."arm_cortex-a15_neon-vfpv4"."telephony".sha256 = "0i0qix3j0i7c5aq77q2nzdghzq8yslcmywpsy1svxfvvai7sbdlq";
  targets."sunxi"."cortexa8".sha256 = "0ih74vgalhdbcpall5gnm20ahrvkdsn1nm3548vdn9nmbcjs3hkq";
  targets."sunxi"."cortexa8".packagesArch = "arm_cortex-a8_vfpv3";
  packages."arm_cortex-a8_vfpv3"."base".sha256 = "1200aw58zw4dps8w751hclr3jzz8qn3wqvc9hdxh5l2gfyda09x2";
  packages."arm_cortex-a8_vfpv3"."luci".sha256 = "1cxgvszd6h5i6gm28hiwj4ki8vjg4knpfxq52sv9r7mmqccsxbfk";
  packages."arm_cortex-a8_vfpv3"."packages".sha256 = "19vf274gdyk58kdw7jxck66imhj8vf3635afqqwj7rln94lx7aa4";
  packages."arm_cortex-a8_vfpv3"."routing".sha256 = "1d5b6y7bf1g205hwyy3zhrdk6da50p9ib0890mjr06vkg50f0igj";
  packages."arm_cortex-a8_vfpv3"."telephony".sha256 = "11z0f1sp9s24ravz9ic22qrs3k8y6bxpa18lr7mgmj9dia15rv2v";
  targets."sunxi"."cortexa53".sha256 = "0cfwac4i921jj1432mmpwi5hv6hm71v07jd224rdq7indhqgh6i1";
  targets."sunxi"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."sunxi"."cortexa7".sha256 = "0dk7nr1c85f2kkzkidlhmjfr0gcz73yh0dj687haags0qny36nnf";
  targets."sunxi"."cortexa7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mpc85xx"."p1010".sha256 = "0v8a3yxpqh961ny776am72ldfvq6xdmspi794nmkv6agxgj6z5fq";
  targets."mpc85xx"."p1010".packagesArch = "powerpc_8540";
  packages."powerpc_8540"."base".sha256 = "1nlhclpskbf4nxdflicrh5cd65akhawyx6khynzaqnskxq8ba48n";
  packages."powerpc_8540"."luci".sha256 = "0jbsgkinlqxpsfkdi93i98cf2xyvp2wi8g1m9lzywc9g1y5gr1g0";
  packages."powerpc_8540"."packages".sha256 = "1gqgm5p76sasjv7bacaf4z1ms4s26kdywdxv227z2apa5fdd7hmn";
  packages."powerpc_8540"."routing".sha256 = "0ymgbjd5irbhxc9cgqld0ygl98gagm7d05pb84g2v6hpa1rc17js";
  packages."powerpc_8540"."telephony".sha256 = "0li21x18vbvkzcskjphgdxgyw4f3lf2lcbf150wjp1wybsj06bhj";
  targets."mpc85xx"."p2020".sha256 = "06f8z5qhpc1jrbmcf7b62lcrhj5rg1x9bxxjqsi71fb5w7f9ah5v";
  targets."mpc85xx"."p2020".packagesArch = "powerpc_8540";
  targets."mpc85xx"."p1020".sha256 = "0dwmjjg0cfs38dskxk4rizr0fx3jnpmv5hdx77qr886d7fs00w8g";
  targets."mpc85xx"."p1020".packagesArch = "powerpc_8540";
  targets."imx"."cortexa7".sha256 = "1rcvn0cbswnbb65mdr600wxhnzjbajpq81r3fns6wsiggs101bf8";
  targets."imx"."cortexa9".sha256 = "1761f60ysikcm7r4cn7ffqc2hf4cm9vm0vh7xr7zdgfzyb4s8xki";
  targets."imx"."cortexa9".packagesArch = "arm_cortex-a9_neon";
  targets."x86"."generic".sha256 = "0dn4kfjxbk8kvf393lp1si23kfcxf6klcbhyv2zdqpffx0sjkq7f";
  targets."x86"."generic".packagesArch = "i386_pentium4";
  packages."i386_pentium4"."base".sha256 = "1cnnydmn8l3rmavbny025i6r95y039idk34jzl0xkhj6jza22f9r";
  packages."i386_pentium4"."luci".sha256 = "1kh3mj4m81wgkq3q18a4p831dimbj1myfq0j5lzn24rlcc3dgmz8";
  packages."i386_pentium4"."packages".sha256 = "128yh8dl3s53ky2hz9rhk502r6v4kvq85v3i8aq07xfdb6xwswzz";
  packages."i386_pentium4"."routing".sha256 = "0nvbcag9djx3r3ksbfzy555pv7ghxa3d7hhhfap35kr9x05kiyxp";
  packages."i386_pentium4"."telephony".sha256 = "0xp83f2118bvlslcxn05wrpvlsxbjfqn1y99rnkpiq4bxslvw9d1";
  targets."x86"."legacy".sha256 = "0bbhhx8yyq2v3kj45362g09bd7yhdm5rnlgszy5kfzccivncm10p";
  targets."x86"."legacy".packagesArch = "i386_pentium-mmx";
  packages."i386_pentium-mmx"."base".sha256 = "0rhasmhf1zphx701gamnccn8lbwdp79f085sdngz871009zqq42q";
  packages."i386_pentium-mmx"."luci".sha256 = "1am4sg669iaca6dg8qcq6zp506imk3qrpz1w9ffbyfc2k2fxwyyx";
  packages."i386_pentium-mmx"."packages".sha256 = "1br3a9b8sknbgzbyg82hpk6yjbnk0wb342jd24917gfw78w1f1yh";
  packages."i386_pentium-mmx"."routing".sha256 = "1cmzglfnpmcx3i46vcb6dqga2wcxp0lijyi7q71zdx2lqi9wc0fj";
  packages."i386_pentium-mmx"."telephony".sha256 = "1k9yjcp1ma06mp96fksckv5wyz2s1j1jjagwpgipsrl8k67509cz";
  targets."x86"."geode".sha256 = "13l3y2y4j7j6iw96h3ssj62il039087kzi9kyckqznqcjsaw3b5x";
  targets."x86"."geode".packagesArch = "i386_pentium-mmx";
  targets."x86"."64".sha256 = "1k60rq5dr7bxwvv8kj194x2j8m73i55rn3kzzaqngqm7la5vyrad";
  targets."x86"."64".packagesArch = "x86_64";
  packages."x86_64"."base".sha256 = "0jr4zrmc21gzd77spibp2mwra3jdwy73hw7vkbxykkg5xkpxif71";
  packages."x86_64"."luci".sha256 = "0blj6jaiwm8arhvx9vpa59w6d5shph8jmbxvpypkcqb03k3nxc34";
  packages."x86_64"."packages".sha256 = "0jncksna7kqsg0ja5sx6y4gc54g95ik4swa1ajh72vw2yaxww59r";
  packages."x86_64"."routing".sha256 = "1b1s2zdyvyjsxxcjxglpwb5zy5jd0rjrj6xy770hxhfdz50x49df";
  packages."x86_64"."telephony".sha256 = "0723csdmlgjgxbx0q4q9vv5gpkd47s7y7yicl0kldxy3907qgf7v";
  targets."realtek"."rtl838x".sha256 = "0fxh6jy5c86lwm5543dy4zzm09pgwis5rqni19xadx7ag8cgi6pj";
  targets."realtek"."rtl838x".packagesArch = "mips_4kec";
  packages."mips_4kec"."base".sha256 = "10nx730j302cd3mqwr2b03j7p0ppkgankwgrzwjypj7fjb6r6yfr";
  packages."mips_4kec"."luci".sha256 = "1547bgva1l9br9maq2finnhd2jknxywm1hkrkjns4zhc3mmrrwql";
  packages."mips_4kec"."packages".sha256 = "0chhkg258y067bs6das2npnqbsn4frw6zxblhgnv2d27icyscjcj";
  packages."mips_4kec"."routing".sha256 = "1fqwffwp1amwqmqn7lwmkq3msg108zpq278yhp9lkw8w36b3p848";
  packages."mips_4kec"."telephony".sha256 = "0i5v161nmwg48a1ch8ci1364n34ga8swlpz4wnq7n532nvgci9rw";
  targets."realtek"."rtl930x".sha256 = "0l2xb3dsqwbdgh2zi00ma05vrc2gahahbxi0fjr7blwbmg6fk95v";
  targets."realtek"."rtl930x".packagesArch = "mips_24kc";
  packages."mips_24kc"."base".sha256 = "1cdkamd9xakcqk5x3h58dxa5zx3fy93vq41982sd7fmzh85w9mnr";
  packages."mips_24kc"."luci".sha256 = "1w4ifnz4xi0s8hznimrbydzvlswhzca6vqvy4sdn7jr8l24ll31c";
  packages."mips_24kc"."packages".sha256 = "06xjxhy2907v9l9svp7c1cwxrg44i8l2rc9z0i5ji79cpsas4qpl";
  packages."mips_24kc"."routing".sha256 = "1h3vzjbnbc1jirnx697ss817ri2kri0y8968pn7jbdmr1in46kqc";
  packages."mips_24kc"."telephony".sha256 = "07dxj1irz3p9cnrqcf2cjlqpa3qydq8av40fif15k899gwkpv4a6";
  targets."realtek"."rtl931x".sha256 = "1wwpwgj6qcgl8gyhac77qxiydpgsxiwmvlr721cjn5d34aajw70m";
  targets."realtek"."rtl839x".sha256 = "1zjkig5pxwa4ylg9fjbd7khqwwhlifv18xsnh75mbyyjxmri3lps";
  targets."realtek"."rtl839x".packagesArch = "mips_24kc";
  targets."armvirt"."32".sha256 = "02jh4dkd5j988b0m6d8ncna8zw3r33xzn1qgky4fj3sjbh7zdfkr";
  targets."armvirt"."64".sha256 = "1q48wh0981jri65x4iaqxwsn7qivf5ni42rcixlvsa50gnrzkpms";
  targets."kirkwood"."generic".sha256 = "19gm75w2q6n8w0mxj4p7wwqq88451y58jlz3qqsy7ljp080xvssr";
  targets."kirkwood"."generic".packagesArch = "arm_xscale";
  packages."arm_xscale"."base".sha256 = "1rvw785l5jzmm1k3l78d35rznzr8a4ss22zzpvlklv9m6nv42baz";
  packages."arm_xscale"."luci".sha256 = "1h3i8kcxys7vxgwfl56raaa92srybnfg8ys593iravxxxsknnjzf";
  packages."arm_xscale"."packages".sha256 = "0w5f091xgach7araza1cykm8iljl1qlb1nchwgr300mp1qawb1yf";
  packages."arm_xscale"."routing".sha256 = "0s9ppvknjcfgy7q97ra6wvj89w7nz3raj8z0mx2n4i60v8wwrd8a";
  packages."arm_xscale"."telephony".sha256 = "0s9fbbdf2cc9dxdzxi8z3m2hhfgry2xgcriaal5b2r80i541mb83";
  targets."ath79"."generic".sha256 = "0kk1v0dh6y6kzii57r55jv6h6alydkabmjxfcijb27d54df8xy7g";
  targets."ath79"."generic".packagesArch = "mips_24kc";
  targets."ath79"."mikrotik".sha256 = "1819xn4wjwx2w7wjq95k58awbv9rwzjzcs9rhsasc5g1n3ybl68r";
  targets."ath79"."mikrotik".packagesArch = "mips_24kc";
  targets."ath79"."nand".sha256 = "1y0hbsrxkzdlfxva42pajbvxizpyq09zca57d9833slx5qqdby7n";
  targets."ath79"."nand".packagesArch = "mips_24kc";
  targets."ath79"."tiny".sha256 = "0q2sw9np4z9jvx19cp6ck1c4fh5mn7x7w7ijy79zky7a702i795k";
  targets."ath79"."tiny".packagesArch = "mips_24kc";
  targets."archs38"."generic".sha256 = "0dvl8qzkv4g3x1lkhyg0la8mvqnn6ix706npw58m88r7rk915fj1";
  targets."archs38"."generic".packagesArch = "arc_archs";
  packages."arc_archs"."base".sha256 = "1qi9png4dcl2srhnzx3l9k8vpviq23r4has65qp3han2fx4i26hj";
  packages."arc_archs"."luci".sha256 = "0f9rgwrq1x32gcdnk13q0a1m9hfkijya29q7jjyc5pdlncnk32jj";
  packages."arc_archs"."packages".sha256 = "1bbgdgdx6fd8nyah1s4zk6zav4jcp34hvp7rhxgf80zxa47jgl27";
  packages."arc_archs"."routing".sha256 = "05cb877am4wrwfzpa1vvbyh4n0fdmix8qa27lbmdja9sn8bz2mvn";
  packages."arc_archs"."telephony".sha256 = "0plajrya1ixflasjv3lfgmk0pxicx3chidcazxg0valr7b06kazp";
  targets."ath25"."generic".sha256 = "0yhhxmcr7gml1jar6jk4143mzrdz5l60c3db344yc78ynp43ghl1";
  targets."ath25"."generic".packagesArch = "mips_mips32";
  targets."apm821xx"."nand".sha256 = "15mrqjqwg2d4iky77hjj8cqhzkhv9515z9cpxf9gyk39dj9ym4ab";
  targets."apm821xx"."nand".packagesArch = "powerpc_464fp";
  packages."powerpc_464fp"."base".sha256 = "0v22cpzx27mgdjc008hwjazgh8dgmgjbikcpm9pybk0fkqzxjdxf";
  packages."powerpc_464fp"."luci".sha256 = "1arfigv7hpkzmz9qqzif1261x4rn4f487ffs8nz79gqsxxvzslyl";
  packages."powerpc_464fp"."packages".sha256 = "0ph6wnq4y21lj8jspcsiqyx4nxvksdisfbsrby5zmlgsbbwf7ijk";
  packages."powerpc_464fp"."routing".sha256 = "02w98dvspq56qqs76gldi5i8z1kijki8gwvwcra9pbwx26hiw72d";
  packages."powerpc_464fp"."telephony".sha256 = "1851j592yr5lx47ykkr9djlaah2gsn5gik5fxfspcffmbjgka9d2";
  targets."apm821xx"."sata".sha256 = "155vpd7aghm6axfg4hk58wdx2k4fqghlyv2x4qj2cwdp0w3ap9b7";
  targets."apm821xx"."sata".packagesArch = "powerpc_464fp";
  targets."bcm53xx"."generic".sha256 = "1zxgqnx8jlr8q4qs7xxh2691b0dg5d03kh05kw3g7aic6hvimmxr";
  targets."bcm53xx"."generic".packagesArch = "arm_cortex-a9";
  packages."arm_cortex-a9"."base".sha256 = "14iwwb0b5jynilr69fcx2gmki21gmp39cr7llkg10aw02aj3k2q4";
  packages."arm_cortex-a9"."luci".sha256 = "0lrg422swg2g4a2izqvs7x16pky3mpvkmv8akdkbmg9kj0wqyngr";
  packages."arm_cortex-a9"."packages".sha256 = "1k1f8fy2k38c96px9j0hdm70x3z7zpx1bh0m4vah9j3hgy1almdn";
  packages."arm_cortex-a9"."routing".sha256 = "01969p88nyp7q6iwyzgqkzv0cs1zc2ywclk6ndip74jxqn5fqp54";
  packages."arm_cortex-a9"."telephony".sha256 = "1bl7gfq8832qpvfslfva5dcz2fy1aih76qgbdn74kpvslflwiyic";
  targets."ramips"."mt76x8".sha256 = "1q0zcvczbg2852k02mmya1d20bvrkjkqcg9p4lnn117qfkdij5k3";
  targets."ramips"."mt76x8".packagesArch = "mipsel_24kc";
  packages."mipsel_24kc"."base".sha256 = "1sinfi864vi2wq9cbv3cpn699ix1q80jbmk0pi6bi7fkcmhnk770";
  packages."mipsel_24kc"."luci".sha256 = "11pprvz9jp7h7sbsn9lkzb920p9q49ki6mcvl0nkqcsk9kjv71x1";
  packages."mipsel_24kc"."packages".sha256 = "1cslgznwjg7xiy0c6zlmhvlg7amjdf0ipxj277pcb70in8m134xc";
  packages."mipsel_24kc"."routing".sha256 = "1ar2l65gb3cp3swhczn6s69swz89fn8gc1yknqkqdnd5lzpfmpkp";
  packages."mipsel_24kc"."telephony".sha256 = "03jmfcpfixkrgqi9jasbdzb1d9qzwl0myn2vw0iypllfh80dzr05";
  targets."ramips"."mt7620".sha256 = "1byklm3b5iq5nl0rxpvxprh2sxry4l9c37ny7jmfc10d37pxpwxz";
  targets."ramips"."mt7620".packagesArch = "mipsel_24kc";
  targets."ramips"."rt3883".sha256 = "0d0kwcq3cf1rcbfzcndnypnws9a46c0z2nr3dapcgyxlv2j39csj";
  targets."ramips"."rt3883".packagesArch = "mipsel_74kc";
  targets."ramips"."rt305x".sha256 = "1jqzhia12ghyxl7fhx6ls3rxl23n1nfyb4bqfncnxixdihq5bihn";
  targets."ramips"."rt305x".packagesArch = "mipsel_24kc";
  targets."ramips"."mt7621".sha256 = "1zx6zmchlhlbjws642rc7bws4qilqrjdwi87vfxd3lpfrlcflwc8";
  targets."ramips"."mt7621".packagesArch = "mipsel_24kc";
  targets."ramips"."rt288x".sha256 = "1r9j9sdcj20ivmpc3kqi7wb39p5bm3f44w1zjnwscf71ngb8pdwf";
  targets."ramips"."rt288x".packagesArch = "mipsel_24kc";
  targets."lantiq"."xrx200".sha256 = "0y44vlxkai5x7i3jxv6vwb1rrrnn1wzhr5zcdzn1zhn10pc2y5aj";
  targets."lantiq"."xrx200".packagesArch = "mips_24kc";
  targets."lantiq"."ase".sha256 = "1vgjbh01h9cqyi3brmmkjyvfb60hrh005rcnjyvc3d1p34sdjp3n";
  targets."lantiq"."xway".sha256 = "0mmdhli7r9198bj11p2c5qmihc862bkr1pdnhwlsfv9g3ykpfd8h";
  targets."lantiq"."xway".packagesArch = "mips_24kc";
  targets."lantiq"."xway_legacy".sha256 = "1gjdyzj6vj3h91b1wcqybrhfb2qrfzmf9ahf8dw0zdqx67ph80ma";
  targets."octeon"."generic".sha256 = "0jnzg58gidb7vrb7nip1s8mf64j5jrmwbnrw0m6g1x8hyg4lx91q";
  targets."octeon"."generic".packagesArch = "mips64_octeonplus";
  packages."mips64_octeonplus"."base".sha256 = "1a3nka7cfxxjlkvsgyyir5gsiav3x3iaj4wv05f77ifdfmzg43zx";
  packages."mips64_octeonplus"."luci".sha256 = "1bg2nmsxjdgqdpgn7vnzlvsffz2w6i6fgdihl9974bsps974y4id";
  packages."mips64_octeonplus"."packages".sha256 = "1p6ba7vi1pvgfbslh7grklp3bpmz3gr5i0xjvfa3srm69pcjwgbr";
  packages."mips64_octeonplus"."routing".sha256 = "14dm3y297mghwd1cx17xnbpj1822qvl27yl0ajr2bkj331c31xk9";
  packages."mips64_octeonplus"."telephony".sha256 = "0xr32w7wcwn038yyxvf9zlhif0ixip38bqfkgmrl6kvxjs6zk87f";
  targets."pistachio"."generic".sha256 = "0qixk1cqwar8nb9hg9kfy7hirjb4b21pdpbj5ybylkrc979nla5m";
  targets."pistachio"."generic".packagesArch = "mipsel_24kc_24kf";
  packages."mipsel_24kc_24kf"."base".sha256 = "148qngsfhv2qwbq55006yviqzpyp23mx4zjs3pwshckjc75cps0w";
  packages."mipsel_24kc_24kf"."luci".sha256 = "0cfas7mhjclqb10ldjdgzq253rlcinnbak1dwv5n6wb9jc1r6qya";
  packages."mipsel_24kc_24kf"."packages".sha256 = "1d3l49qmq71fhsa3c512x0v6lqj37f54k7yylkslm2pg3rb55lps";
  packages."mipsel_24kc_24kf"."routing".sha256 = "1lrwdgf4jx6s63ag60s9szzw5sxh3wm6h6bk8pzp1nk312a1n6h3";
  packages."mipsel_24kc_24kf"."telephony".sha256 = "1v3lj0l3rx59zsq7k0j83mql20iibng50pmyqkbppip4vff1wvkw";
  targets."layerscape"."armv8_64b".sha256 = "0a0g30xkrz27bsj4dzla62h6rmgj2n1468bvwbcgka0xkxxpvldn";
  targets."layerscape"."armv8_64b".packagesArch = "aarch64_generic";
  targets."layerscape"."armv7".sha256 = "1n7v85x7lz19kfjcj7i239r322qg433g4ww5hy652vbnsi2mymbm";
  targets."layerscape"."armv7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."omap"."generic".sha256 = "1ssgvy5rb13i943ykx9g2n7mnww2fwabgzg52jibdwjdphpgj6y9";
  targets."omap"."generic".packagesArch = "arm_cortex-a8_vfpv3";
  targets."tegra"."generic".sha256 = "102asn4jckpgjay1yras2chd8ql85428k1wvx7rqwjqvqk3cksl5";
  targets."tegra"."generic".packagesArch = "arm_cortex-a9_vfpv3-d16";
  targets."bcm4908"."generic".sha256 = "08042mdbr15m66qxw9m5qvndphw6mkpclvpmpq8vphxmyjqlb9g2";
  targets."bcm4908"."generic".packagesArch = "aarch64_cortex-a53";
}
