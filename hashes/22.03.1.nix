{
  targets."oxnas"."ox820".sha256 = "1mh5ypn106l59zjaqbh6sjwm2vf0skda0q6fbihplsk2nr6zf2cd";
  targets."oxnas"."ox820".packagesArch = "arm_mpcore";
  packages."arm_mpcore"."base".sha256 = "1far1kd9c679a6v79dkacjc1p0g97zdd6x47zsdjlfb7z7fryh80";
  packages."arm_mpcore"."luci".sha256 = "17lj6a00n2k3kzjin1cyf2n9zd1ngkqxgnww5vkcpj0x5wd5gh3a";
  packages."arm_mpcore"."packages".sha256 = "114kxga4d86kysp24hxjcrj1w7kz3fq1f0ycz0j4j1vwzh5nhg4f";
  packages."arm_mpcore"."routing".sha256 = "0c8i3jxnppf0y6nwqg379h2scr2ca8r80f0df143gppibh9ivqd4";
  packages."arm_mpcore"."telephony".sha256 = "1s488qsys36qbvqm807p8wkd08h4370dyw02014canwlz25w9vqm";
  targets."mxs"."generic".sha256 = "0qvd4y6cvkh0khj5znslb32ai4m97pvvrvs115j5727li7zvnm0q";
  targets."zynq"."generic".sha256 = "0wdi90bqh48fw4cpz6g6asx7anb0z5a385652xfg8dlpplvbpkfv";
  targets."zynq"."generic".packagesArch = "arm_cortex-a9_neon";
  packages."arm_cortex-a9_neon"."base".sha256 = "1nf313jlvh34p6x1q8l8h0nap2zjnpkv84xkbgc5scf66l39igfa";
  packages."arm_cortex-a9_neon"."luci".sha256 = "10nza1sp37x1lzbjwwn3kw1ccvc6pcm74xrzg6vl3gd8x3wxxqwn";
  packages."arm_cortex-a9_neon"."packages".sha256 = "1xbpgw2cnb0xkfjlyvs4wjbac5wlmsdzbcxkaq00vpkwa6kvdp5i";
  packages."arm_cortex-a9_neon"."routing".sha256 = "03v77x2csy78y0j36rh2qch9jf6hd3h5hsb521hq9k99f8jc7hg3";
  packages."arm_cortex-a9_neon"."telephony".sha256 = "05qd9ffcjhl33dzaqccpd7sq32rlkxcywvdjh18blsdfs99s5s5s";
  targets."bcm63xx"."generic".sha256 = "1rwfgg6wjrik02ziwsprvq56z8fgcj7djpm23rsadi89rrl3j771";
  targets."bcm63xx"."generic".packagesArch = "mips_mips32";
  packages."mips_mips32"."base".sha256 = "1707zwixkp4ycj3f3g4xarzvivmxc7p596a5dagcya272s43qp7y";
  packages."mips_mips32"."luci".sha256 = "1s4iv885wnmb9ck1wp7xmk8pwal4h2ys4cyhrm1l6fz1wh7nx4lm";
  packages."mips_mips32"."packages".sha256 = "01faw5mla0qmhcsjxakcx6i6iqqicximb1pggflva8mssd8wk321";
  packages."mips_mips32"."routing".sha256 = "1rmzbxgiiar27ryg2kabswl7hqkwrzx3vnc56n4c9kykqwddrzqv";
  packages."mips_mips32"."telephony".sha256 = "1a01zvylqfhrhbxcknsqkalqwi5mcaaky139hyvb4q0jdydvmf3d";
  targets."bcm63xx"."smp".sha256 = "1qna4c8bkxmlnbl6x589jw8awg2wzq00vh61gaszyvn7zh8894in";
  targets."bcm63xx"."smp".packagesArch = "mips_mips32";
  targets."bcm47xx"."generic".sha256 = "0pbnbkamd43rpddchk32287wxpwiiwb2cxzmc6hki5zpm8xk7yn6";
  targets."bcm47xx"."generic".packagesArch = "mipsel_mips32";
  packages."mipsel_mips32"."base".sha256 = "041p1yksqzm009f0j32md7cms0g2f02m3jpxa43zxnbkqqxdy51g";
  packages."mipsel_mips32"."luci".sha256 = "0qwi22b90cs2gvyg6g3vr34v9dmpy7d8lfjbxzi2ywzm86mlwk1m";
  packages."mipsel_mips32"."packages".sha256 = "0par0kr3v5k9jv9l6gswfmnx2l8q4wc9rhipnb69rmfyixjw05wl";
  packages."mipsel_mips32"."routing".sha256 = "17q83d9fl1m8bjw83850xii6jibz8pzkm3vyq2l9sdd6m7h1bzy0";
  packages."mipsel_mips32"."telephony".sha256 = "1hx0ziz72ss8qxix4d4khr64kksgy85rpxbil6mz4d110m87yldh";
  targets."bcm47xx"."legacy".sha256 = "116289k6w0gjyggacn0w1ps3xvp87f08qx2m3gzibvmvdmfm8d5c";
  targets."bcm47xx"."legacy".packagesArch = "mipsel_mips32";
  targets."bcm47xx"."mips74k".sha256 = "01sc47a3bkamp67mqci8xr2sldwz7vmgznw8ywqfsdmj2cyq2a2c";
  targets."bcm47xx"."mips74k".packagesArch = "mipsel_74kc";
  packages."mipsel_74kc"."base".sha256 = "1z0yhxws7xkvvr7kaxmbah8i8ka7scwlcwsawg1qrlj2i6m8jfmf";
  packages."mipsel_74kc"."luci".sha256 = "06km7px5627cjbqv7ygiivqhgd5zymanyv7yj0imy7ys240dcw74";
  packages."mipsel_74kc"."packages".sha256 = "0pf3g6sb0fqq95jhf47dr7vm2vddyb7q950sppnd7lbm4llq2w98";
  packages."mipsel_74kc"."routing".sha256 = "14s4dj9mrhak6jr8xfi0y4cczdb4lbbhx3873rb32f45gvwljfrr";
  packages."mipsel_74kc"."telephony".sha256 = "1zaw3m3r3z462xbv3yhfcfpbmw9ac62cqphzfjg4lw7mdb2csivd";
  targets."bcm27xx"."bcm2711".sha256 = "0parkjz64sl9vsgviadqlgwy3if6h0n37kkbw7qryfinah2snha2";
  targets."bcm27xx"."bcm2711".packagesArch = "aarch64_cortex-a72";
  packages."aarch64_cortex-a72"."base".sha256 = "1pmggjhm0817kyffhxby0p4yvqr6ajdlqzfqrp2nsxjahgcl3lj2";
  packages."aarch64_cortex-a72"."luci".sha256 = "0fx7hqpf35x5ms5lqh2zdbhxckaxzmpwiq525li4rhg4rl9ih0y2";
  packages."aarch64_cortex-a72"."packages".sha256 = "1313n9gqnnkrmq2hg9kjhjn3hcs8w4zriivvpvrylxfj3v2sjhca";
  packages."aarch64_cortex-a72"."routing".sha256 = "0pjkswbg6zzb2alzchgwavjksjaivcyavl1igkdw6v33hjg9mj0a";
  packages."aarch64_cortex-a72"."telephony".sha256 = "1snwpgy82dvpmv1304jf23gj6fsxrgsyln7m3jzwf176jgwah9fx";
  targets."bcm27xx"."bcm2708".sha256 = "1v7mm0lbkmwfysl70jyal5dflxgl3awxvdcfm8f8cm46z27gyj09";
  targets."bcm27xx"."bcm2708".packagesArch = "arm_arm1176jzf-s_vfp";
  packages."arm_arm1176jzf-s_vfp"."base".sha256 = "14llzpvz0b737i7pr9q3dbnk0j01b0mbdpzcrlrg39gazc9vdfl0";
  packages."arm_arm1176jzf-s_vfp"."luci".sha256 = "1ng54xb0ff8c1f9xpiqzn6qixkd56hr1nr2npc4yanjj8m53a37p";
  packages."arm_arm1176jzf-s_vfp"."packages".sha256 = "1zira2sza5a9sqmdx0k97w08rb2pi45a4rsj03n1pjjcv3w9mnxk";
  packages."arm_arm1176jzf-s_vfp"."routing".sha256 = "1vaccgi2hifx3kijxxwjgswi4h1y0rhb7x7m38fyfg4q4pq4h70x";
  packages."arm_arm1176jzf-s_vfp"."telephony".sha256 = "1qxzqfl4wwbgsjmbszkky3jb63j97ir5ja0qj2a0npasz2q4k797";
  targets."bcm27xx"."bcm2709".sha256 = "1vfgz8zivcd3vc8w9ilkinir9m9x5qnawyclmwdgv12xnr89mlww";
  targets."bcm27xx"."bcm2709".packagesArch = "arm_cortex-a7_neon-vfpv4";
  packages."arm_cortex-a7_neon-vfpv4"."base".sha256 = "01v8pyb6f4ikjxvqcdxdbq1d757vc1jpwcxvjx1l9a4cmv140q3w";
  packages."arm_cortex-a7_neon-vfpv4"."luci".sha256 = "1zq38cp0dg4pgn2yh3hxhyjibk3iii7hw0pbk1cj5gh6mhirqsbz";
  packages."arm_cortex-a7_neon-vfpv4"."packages".sha256 = "1mxjq7i352q0d9qjfwq80jq6q85v66ji8x4li4vga001020aharg";
  packages."arm_cortex-a7_neon-vfpv4"."routing".sha256 = "0mri1139jkvyg82r86iaimc4lcq3bdqng3355r9hyr2cf8jvs2nf";
  packages."arm_cortex-a7_neon-vfpv4"."telephony".sha256 = "0z2y6nynf3845xv4pibzq7kfbkxrisnyk6ys0priv7janx5l06mv";
  targets."bcm27xx"."bcm2710".sha256 = "0s3wr15jljhlg090ms1l44lra86lkwmqndg3c6c0q6y0wp68v4fi";
  targets."bcm27xx"."bcm2710".packagesArch = "aarch64_cortex-a53";
  packages."aarch64_cortex-a53"."base".sha256 = "04vizkjcyglv9464n2n3yrf8i56apmxhz9hv9laqjqlkscjnjsxs";
  packages."aarch64_cortex-a53"."luci".sha256 = "1r2nfyyq6d81zs8djp6jwxd98w71s7d58w5gs9vlwdjd8z3fhj9i";
  packages."aarch64_cortex-a53"."packages".sha256 = "1ksxblnhllzjrs52p0gcny52mb9zck49yjcqldhl4lgg5a3lcb00";
  packages."aarch64_cortex-a53"."routing".sha256 = "013vvjv4aarc5pax3dd7gpsgp0qska6vyhpiaxsm556zgvsdnf6j";
  packages."aarch64_cortex-a53"."telephony".sha256 = "0ilqiv4ldkaxyyjg40vbjp84m49mixhbgpl26dcq79si32720kpv";
  targets."mvebu"."cortexa53".sha256 = "11bnizsac9pl9s162hygnssjsmxyyf6qwix5ly24mlypr5ixj4g3";
  targets."mvebu"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."mvebu"."cortexa72".sha256 = "1vcfgm92bgyzwi9az2yggz4l0x63saviz6sr8sm98jamxsxjizk7";
  targets."mvebu"."cortexa72".packagesArch = "aarch64_cortex-a72";
  targets."mvebu"."cortexa9".sha256 = "1w0gghb1n039lrx0ly0g6f1r09lmwcadjj1sv31s14yfmkk62ixm";
  targets."mvebu"."cortexa9".packagesArch = "arm_cortex-a9_vfpv3-d16";
  packages."arm_cortex-a9_vfpv3-d16"."base".sha256 = "00sqrfalj77i7ljdinbqxhyp6yk0xswfha5lik9rbbd4vhrjsvds";
  packages."arm_cortex-a9_vfpv3-d16"."luci".sha256 = "0insbxj5kyivi12bzmnj5b069vq0wrd9nw0rac7vjnnj0qddd67i";
  packages."arm_cortex-a9_vfpv3-d16"."packages".sha256 = "0a8qgddh5324j2jna3v4dxa1dqikg47vjhj47rvdg3z0ikcs0zpk";
  packages."arm_cortex-a9_vfpv3-d16"."routing".sha256 = "0m8cv2cb9h0q3bjqv58vin1q7lh3hhb9czzl9v4z5wi663vphjcq";
  packages."arm_cortex-a9_vfpv3-d16"."telephony".sha256 = "0lqjz2h3c4zbcsf9aazwxzciswlw0axwcwg5d17pcq5s27cxxvjg";
  targets."at91"."sam9x".sha256 = "0zzw395p95b7ymaycmdpqc3w0k7xb4k3r8xa42ws25awk3wb14iz";
  targets."at91"."sam9x".packagesArch = "arm_arm926ej-s";
  packages."arm_arm926ej-s"."base".sha256 = "14y1lwykafj0kiizpq7b5z786g5x71gppj9l4k5fk1fi7k99bkm1";
  packages."arm_arm926ej-s"."luci".sha256 = "14rvrpb5y49dbb4zb9yrz2vj6cbyxqhp6a8a2s30djag4bmniwgb";
  packages."arm_arm926ej-s"."packages".sha256 = "0b1q79dy9iadm5718md8mjmrp729jlmw2pnmwn9zrq2yi53j2b7z";
  packages."arm_arm926ej-s"."routing".sha256 = "0rbp354al3dl3fj5pihk01728hy3bq47lsanwgibdji7higr6fd6";
  packages."arm_arm926ej-s"."telephony".sha256 = "11v7aprxm4v8bldd4y4ldb4p24hpl4ks42glm7fxskxai3b5lvc7";
  targets."at91"."sama7".sha256 = "0px8lq15262glv92rrb3l9rav1044zlk8i44998878vz8zschn9s";
  targets."at91"."sama7".packagesArch = "arm_cortex-a7_vfpv4";
  packages."arm_cortex-a7_vfpv4"."base".sha256 = "161afjw9w6l9an97il4n5w2401slwln6xw12l7jpznfrsy3xywmx";
  packages."arm_cortex-a7_vfpv4"."luci".sha256 = "1cldp7iw8vzbb57nn4ivxzg5v8g5qybaw5p1sipljvid9gla2c1s";
  packages."arm_cortex-a7_vfpv4"."packages".sha256 = "0742qq041m3kigl9h6ryzdf61i6b8a1d8cj8c7nrqr8f9v5d6zsl";
  packages."arm_cortex-a7_vfpv4"."routing".sha256 = "15ba0awddm4yx0ajk9lxnwvynjzkd2a179jpky218w7vcvhdfgrd";
  packages."arm_cortex-a7_vfpv4"."telephony".sha256 = "18j5a90nbs3ffz2idvxmj4wg09ks0b4inlyn3ynpg3r49kspvhn5";
  targets."at91"."sama5".sha256 = "1afr7w4c44a0wmasgjrk9x57x0i22xxa4j6mjcnr9q5jcw1wimw6";
  targets."at91"."sama5".packagesArch = "arm_cortex-a5_vfpv4";
  packages."arm_cortex-a5_vfpv4"."base".sha256 = "1mj3xxy4bmj8s4x0rv6rmvbfq7w0z8xl0zi17kmgq94cmk6n7w9b";
  packages."arm_cortex-a5_vfpv4"."luci".sha256 = "18pbd8203ipc0k9yj3i7imphrdpmq1wm4dppxj2awpn5nwk3lb88";
  packages."arm_cortex-a5_vfpv4"."packages".sha256 = "0bz1jjd8dgf204fsyi65bw3cqhn06yh3vab0ahx10y02d7dryap8";
  packages."arm_cortex-a5_vfpv4"."routing".sha256 = "1m6bn8im75d052kj80rmiyip9kbl33kh8jsd16wg9ifhipddgnzn";
  packages."arm_cortex-a5_vfpv4"."telephony".sha256 = "0mwj97bq5j7h3qk6n79hdyrg3jh4np3lb3ids9ihy6byzii1knyf";
  targets."gemini"."generic".sha256 = "0z2z4728rxgz2ilkw0bdsa1a681l5sy3bwflidn3jh2v00pa90n4";
  targets."gemini"."generic".packagesArch = "arm_fa526";
  packages."arm_fa526"."base".sha256 = "1gzxmczk3ikvmng1fqsxycbn2lz6zhaidhhxy5naz2vhz8rarwqc";
  packages."arm_fa526"."luci".sha256 = "0jmiw5p2zhrn7svzxfphvgc13sqk83gy4ljr2p6vlsx1x5mh0l7n";
  packages."arm_fa526"."packages".sha256 = "1f2w1q4n17kpmf1pgj9j0igqyg5r90a6i8kif128kavw4a4ykjr3";
  packages."arm_fa526"."routing".sha256 = "1bknkdz8pn6wmjx3c46lpk13pbnfzwya8m9176rdw29jr7drzvs7";
  packages."arm_fa526"."telephony".sha256 = "0ykfprxhmjlvnab4a6n2s0sv50snpvzbvvgmi6693qn86636vvaj";
  targets."octeontx"."generic".sha256 = "1vnamfh7rzs0fmqlilczz45swlyv2q40v2lxr2mv2jipngcnvd6q";
  targets."ipq40xx"."generic".sha256 = "0hrm3xwlzvwrbjq7hy06j7xkga5avg338zbk4s8908mw21n5w9n7";
  targets."ipq40xx"."generic".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."ipq40xx"."mikrotik".sha256 = "10lrznvngv7m0j317i006j2lag969mhkk8y11w78k223q49ifpdb";
  targets."ipq40xx"."mikrotik".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7623".sha256 = "1a18pvgb6hay27kndwqqsqxlyrvmgvhfg8sy0rh510dfp1cv47pi";
  targets."mediatek"."mt7623".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7629".sha256 = "0rfdvw3z7wqp7fl5zxplqmhmqjfv5crqnp4l0hrp5xq7l2qvfjdk";
  targets."mediatek"."mt7629".packagesArch = "arm_cortex-a7";
  packages."arm_cortex-a7"."base".sha256 = "1c0r89aw6hcssxxfdqcby0wydbpym1m7fjvsq7r5z7jyzrgq7s25";
  packages."arm_cortex-a7"."luci".sha256 = "1gwp4vi707584sk3gxrihlc28xfh7mc2h1xchjjh4w7pmb3y6h07";
  packages."arm_cortex-a7"."packages".sha256 = "1v7lfw0fqbc34g1f086ji9gdx8m21p39frr4x8gpf92qvlrfcmm9";
  packages."arm_cortex-a7"."routing".sha256 = "1j1vxsi33vaxx8pcnyxlhgjll4d4saxpldr4v1dr7smvw4h7imk4";
  packages."arm_cortex-a7"."telephony".sha256 = "04d16k3a2i77vbvm67ndlhhy67k08dq05v6dyxp66adsrzwi8zqw";
  targets."mediatek"."mt7622".sha256 = "1shwr1gpi06mff61q6pcl3w1c52f1q2k75klnnhhxpg47q1b9gkm";
  targets."mediatek"."mt7622".packagesArch = "aarch64_cortex-a53";
  targets."malta"."be".sha256 = "1himf65l262da5z4nxzbixlnxclxl0xv4in0xfwsvs37nvaswpfm";
  targets."rockchip"."armv8".sha256 = "1wdk36vckfj5r28niwg9a73a5dxgpdf38mf6vkvqk06s6acn1a3r";
  targets."rockchip"."armv8".packagesArch = "aarch64_generic";
  packages."aarch64_generic"."base".sha256 = "1xcaqs93a30xj9hgqzfxy59arwz56xyc94142p0vgr03xamiw604";
  packages."aarch64_generic"."luci".sha256 = "1000r7cxrci8aycpll99ybh885js4ryk6fdvx39xl929nhabx3sh";
  packages."aarch64_generic"."packages".sha256 = "042xqphl4ahjrwfbzvhivaw9czaj12m01vpyf5r7f24p6qdc0rbc";
  packages."aarch64_generic"."routing".sha256 = "0j8pczk04cx6acpr4b25yrrm22n4kasagag6s7i4mzl8gv9bay93";
  packages."aarch64_generic"."telephony".sha256 = "0hhaxsdsfnhhkl6arkcv0fxlga7663jvbww57hjdyiaiyys977b3";
  targets."ipq806x"."generic".sha256 = "0vjg4cc40xlxrap33a5xcw7daic4wb3vyjpd56ihpm30fxphlz3s";
  targets."ipq806x"."generic".packagesArch = "arm_cortex-a15_neon-vfpv4";
  packages."arm_cortex-a15_neon-vfpv4"."base".sha256 = "0iza5i3y47jw2z5gakwzx62w18fxak5vg6a3da7m3qblhr05ns7f";
  packages."arm_cortex-a15_neon-vfpv4"."luci".sha256 = "15hivxn4prilx29isbq4xilhd1mg7j7lah0cj6nz6d8xdb5q48ga";
  packages."arm_cortex-a15_neon-vfpv4"."packages".sha256 = "070gqxgz8qlrg8vd4iyqym3k13gm7dbq5vl9sd0gfhg3pk6hnrfa";
  packages."arm_cortex-a15_neon-vfpv4"."routing".sha256 = "0piqa3ki603rv0bsj8wcyf9720771qszkd6z4qi54qr5j1wx2hjn";
  packages."arm_cortex-a15_neon-vfpv4"."telephony".sha256 = "0gxvy3rq4xdwqzi0iyv23j7dkd638qqzq4cx91dwl9azv9h70i8f";
  targets."sunxi"."cortexa8".sha256 = "0ih74vgalhdbcpall5gnm20ahrvkdsn1nm3548vdn9nmbcjs3hkq";
  targets."sunxi"."cortexa8".packagesArch = "arm_cortex-a8_vfpv3";
  packages."arm_cortex-a8_vfpv3"."base".sha256 = "1zfhhj5yiygg215jy2895ryjcq6awa86wwr9n5h16p1i6r0a8c04";
  packages."arm_cortex-a8_vfpv3"."luci".sha256 = "12znm2cljdsjzx9w5v1adhxf0pnjznv62cnsin285c3w59frjfl2";
  packages."arm_cortex-a8_vfpv3"."packages".sha256 = "0myrf192785qs51r401smq280ya8757cdivljmp0qsl0a951zzdi";
  packages."arm_cortex-a8_vfpv3"."routing".sha256 = "1zkmv2ywgnnj0vh7jkybbacpkh11r9a5wcwybrns0wkkpc8cn6vh";
  packages."arm_cortex-a8_vfpv3"."telephony".sha256 = "036p59m0km3r3a8h4gc261hd1kkj28d7sglx076r954hxz8p1rfl";
  targets."sunxi"."cortexa53".sha256 = "0cfwac4i921jj1432mmpwi5hv6hm71v07jd224rdq7indhqgh6i1";
  targets."sunxi"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."sunxi"."cortexa7".sha256 = "0dk7nr1c85f2kkzkidlhmjfr0gcz73yh0dj687haags0qny36nnf";
  targets."sunxi"."cortexa7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mpc85xx"."p1010".sha256 = "0v8a3yxpqh961ny776am72ldfvq6xdmspi794nmkv6agxgj6z5fq";
  targets."mpc85xx"."p1010".packagesArch = "powerpc_8540";
  packages."powerpc_8540"."base".sha256 = "1rcqzfnwny9jjkz8iv2r4kxhrykgk190rx5jx7cj2wfw1hnk41kn";
  packages."powerpc_8540"."luci".sha256 = "0r11c761f01yisvgihvkrd3rgsbdkf50wrjf7ld3znxb1zy4yhn3";
  packages."powerpc_8540"."packages".sha256 = "0y6jwcsqzdfmq8w5f95p8z3q2cr1pxa8layhy9052prqrqy7vi7a";
  packages."powerpc_8540"."routing".sha256 = "0gai5yymph87gwq1ss2nd74ckgyi0pjfcx67daphfklkgh3alixh";
  packages."powerpc_8540"."telephony".sha256 = "1ymz5js5xgzr40jgyzhypgxsrf363q7ja9z76313q864rxlb49cs";
  targets."mpc85xx"."p2020".sha256 = "06f8z5qhpc1jrbmcf7b62lcrhj5rg1x9bxxjqsi71fb5w7f9ah5v";
  targets."mpc85xx"."p2020".packagesArch = "powerpc_8540";
  targets."mpc85xx"."p1020".sha256 = "0dwmjjg0cfs38dskxk4rizr0fx3jnpmv5hdx77qr886d7fs00w8g";
  targets."mpc85xx"."p1020".packagesArch = "powerpc_8540";
  targets."imx"."cortexa7".sha256 = "1rcvn0cbswnbb65mdr600wxhnzjbajpq81r3fns6wsiggs101bf8";
  targets."imx"."cortexa9".sha256 = "1761f60ysikcm7r4cn7ffqc2hf4cm9vm0vh7xr7zdgfzyb4s8xki";
  targets."imx"."cortexa9".packagesArch = "arm_cortex-a9_neon";
  targets."x86"."generic".sha256 = "0dn4kfjxbk8kvf393lp1si23kfcxf6klcbhyv2zdqpffx0sjkq7f";
  targets."x86"."generic".packagesArch = "i386_pentium4";
  packages."i386_pentium4"."base".sha256 = "0piq931b870w30gcjllz1zs51siw503sixlsb8xg5hnbnk3d3c3w";
  packages."i386_pentium4"."luci".sha256 = "0k6p37ld3va31f0gb54nj4cdzaalyg62i6r3pws4hzwcqb9dfj50";
  packages."i386_pentium4"."packages".sha256 = "1mnpiaj3cbkjkpjl80r68iz1h71wbfaydk22smv37rakhl9h18sc";
  packages."i386_pentium4"."routing".sha256 = "1cz0cp9iad6hwg629n8wjbpi1h8dd9gys74ynaikw1mzvw4vn2zl";
  packages."i386_pentium4"."telephony".sha256 = "1krj33a8wa8jx0pqfj8sa0n2ksyr0aac1yzg4g4crhk6s8r3858i";
  targets."x86"."legacy".sha256 = "0bbhhx8yyq2v3kj45362g09bd7yhdm5rnlgszy5kfzccivncm10p";
  targets."x86"."legacy".packagesArch = "i386_pentium-mmx";
  packages."i386_pentium-mmx"."base".sha256 = "13vp7hxyxgijpv6wzf375r4si262iiym7hjxd6d546hzclmb6hkd";
  packages."i386_pentium-mmx"."luci".sha256 = "05zy5qimqr82byna4bxs8s6iqbazx1r2f8kj3g8r3zfqjrd6zypf";
  packages."i386_pentium-mmx"."packages".sha256 = "11kibsdzbmi72ls0mj7s7dnd0hxqbg5aqyl05mah51lrqwpf27da";
  packages."i386_pentium-mmx"."routing".sha256 = "1amvp5mxjzcahh3j6w1nbjbdvkznhr2qmh5wrjb5i5swf17s31iw";
  packages."i386_pentium-mmx"."telephony".sha256 = "12r2z138ka5pqnqs2wkibv7vgahis9jb0fidvxxldw7f51jil5dm";
  targets."x86"."geode".sha256 = "13l3y2y4j7j6iw96h3ssj62il039087kzi9kyckqznqcjsaw3b5x";
  targets."x86"."geode".packagesArch = "i386_pentium-mmx";
  targets."x86"."64".sha256 = "1k60rq5dr7bxwvv8kj194x2j8m73i55rn3kzzaqngqm7la5vyrad";
  targets."x86"."64".packagesArch = "x86_64";
  packages."x86_64"."base".sha256 = "0y2xyshj9f5w6xrm5ss2vg9y7y10ilgskga51dzb4a477gh0agm7";
  packages."x86_64"."luci".sha256 = "040393b0b57y2cf6g8vprwm3fvg6c6dmiacwm8qq48jpa2ia4zq0";
  packages."x86_64"."packages".sha256 = "0ksnr9b00ychws4gsy928x5wfkxd7yk19cafrn1ii7n86gwsaxxj";
  packages."x86_64"."routing".sha256 = "12c5iafknl89kp0knqcq4jpr6fg9bv8998g3y31x22xm2zdl5rsd";
  packages."x86_64"."telephony".sha256 = "1w0bm8hpzm9ncaza45v9y44dzfdjammpdic9raspla9h1xv7vkai";
  targets."realtek"."rtl838x".sha256 = "0fxh6jy5c86lwm5543dy4zzm09pgwis5rqni19xadx7ag8cgi6pj";
  targets."realtek"."rtl838x".packagesArch = "mips_4kec";
  packages."mips_4kec"."base".sha256 = "12plwr5m78y49cxwwrhy17dqlkwkhkh4d0xjrs1gdypql2rf2a7x";
  packages."mips_4kec"."luci".sha256 = "0ygm1adgv2kawa3d484ly01jxv83khhjxvlbdwmj39sgazhxjhcd";
  packages."mips_4kec"."packages".sha256 = "12si8cmd9iv2wcfnqxrcyh3qygqaaixdr9bd9sjd5ck3r5shnjja";
  packages."mips_4kec"."routing".sha256 = "1m4fnszz0i4lvlnvmc0wr1ybs3vn4b5rv6qng32rah7q6wpamsbf";
  packages."mips_4kec"."telephony".sha256 = "1dqf2rrl1fslwx2fc0gfg92949cll4p4yj54i94j8kiff6vfv3x9";
  targets."realtek"."rtl930x".sha256 = "0l2xb3dsqwbdgh2zi00ma05vrc2gahahbxi0fjr7blwbmg6fk95v";
  targets."realtek"."rtl930x".packagesArch = "mips_24kc";
  packages."mips_24kc"."base".sha256 = "0n4v1p9mdrp3l9id5y8dfp035d76y00qzm6py09iamqjz7cnsmzn";
  packages."mips_24kc"."luci".sha256 = "0zlfblgfwa4prd298gmydd70zjllhi519g4aqxlcc11aasv215rm";
  packages."mips_24kc"."packages".sha256 = "1sfsigpqv10h5npvcdi5qhfrllmhbi1qajnz6mg3733wqnxrl88w";
  packages."mips_24kc"."routing".sha256 = "1l3y2dnm2hxfwy5s2jyn1dkgz8xvjcpaxyrhprx0100z8jhhzkgh";
  packages."mips_24kc"."telephony".sha256 = "1p3nkb0f9x3jdcfp6ly0s9kk6jbp0jkx9icc0nrn4h2mciqxhiz3";
  targets."realtek"."rtl931x".sha256 = "1wwpwgj6qcgl8gyhac77qxiydpgsxiwmvlr721cjn5d34aajw70m";
  targets."realtek"."rtl839x".sha256 = "1zjkig5pxwa4ylg9fjbd7khqwwhlifv18xsnh75mbyyjxmri3lps";
  targets."realtek"."rtl839x".packagesArch = "mips_24kc";
  targets."armvirt"."32".sha256 = "02jh4dkd5j988b0m6d8ncna8zw3r33xzn1qgky4fj3sjbh7zdfkr";
  targets."armvirt"."64".sha256 = "1q48wh0981jri65x4iaqxwsn7qivf5ni42rcixlvsa50gnrzkpms";
  targets."kirkwood"."generic".sha256 = "19gm75w2q6n8w0mxj4p7wwqq88451y58jlz3qqsy7ljp080xvssr";
  targets."kirkwood"."generic".packagesArch = "arm_xscale";
  packages."arm_xscale"."base".sha256 = "02qxds1ywmg7qj82qvi2brfvgh9z5mcpvv079dw7vyi6cyrr8j1d";
  packages."arm_xscale"."luci".sha256 = "1px94lqnphklhwm5jzhfkizk1sk4ppm5zp5xpszbna758ibg4bwf";
  packages."arm_xscale"."packages".sha256 = "031iqljq4hf6d60j3igs3wd4nkzv538cb2w5jd89m62vmrwc7fbz";
  packages."arm_xscale"."routing".sha256 = "0d9ynirjbkhb8px9p5makb3rk2gmwsg0w226hsi0qsvbilwrxqm4";
  packages."arm_xscale"."telephony".sha256 = "1v9mc6z9fw28k309dq6kgw8jsr2g0mjgkgxwzq2l6cmih768xp2z";
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
  packages."arc_archs"."base".sha256 = "1dc1gajjfw6czcyf6ii8qnjd0h7l5j8gc4wvxqzryxyby419y572";
  packages."arc_archs"."luci".sha256 = "0kxyvfly9m9dahr8k3pm8j205v0m6s2p7lq957l9h0zqaa3z5d0w";
  packages."arc_archs"."packages".sha256 = "112fa4r36jf8k9czxkdrcyvd80c5brqpkb543xrc1sm9s6s26004";
  packages."arc_archs"."routing".sha256 = "0751g7y38a70qpfs1ir56bkhqxb3nbnw4am2gz2jisfpw77i5wcd";
  packages."arc_archs"."telephony".sha256 = "0gpv5b0rxpxb2s8961ra4fnh61bi00igbxx02man2h8hi97xylaj";
  targets."ath25"."generic".sha256 = "0yhhxmcr7gml1jar6jk4143mzrdz5l60c3db344yc78ynp43ghl1";
  targets."ath25"."generic".packagesArch = "mips_mips32";
  targets."apm821xx"."nand".sha256 = "15mrqjqwg2d4iky77hjj8cqhzkhv9515z9cpxf9gyk39dj9ym4ab";
  targets."apm821xx"."nand".packagesArch = "powerpc_464fp";
  packages."powerpc_464fp"."base".sha256 = "0f5ypn9q77055q0vglq2yz46qycwysdzh764mx2ibz9drbqrwkf2";
  packages."powerpc_464fp"."luci".sha256 = "1d50w754gidmiy3lkzjqnllx607k08382bv1sd8884by9s79q5sr";
  packages."powerpc_464fp"."packages".sha256 = "1ycc5qyilzfxccskipvsws9pbc7x3l0rmv8gfcny286fx4w3xiqn";
  packages."powerpc_464fp"."routing".sha256 = "1pvsl9lijz6icnkkh0p8mhpz5bf9v74mbgck38njwk9rcgcjwp1p";
  packages."powerpc_464fp"."telephony".sha256 = "1aapl2361bhjia7qkznrnj80dm8z6ff8bdk295fvv147h9yqgawf";
  targets."apm821xx"."sata".sha256 = "155vpd7aghm6axfg4hk58wdx2k4fqghlyv2x4qj2cwdp0w3ap9b7";
  targets."apm821xx"."sata".packagesArch = "powerpc_464fp";
  targets."bcm53xx"."generic".sha256 = "1zxgqnx8jlr8q4qs7xxh2691b0dg5d03kh05kw3g7aic6hvimmxr";
  targets."bcm53xx"."generic".packagesArch = "arm_cortex-a9";
  packages."arm_cortex-a9"."base".sha256 = "0lpab8cyl39vaqc351jr2lllswqa20fhlxhb6z28spfgcf0qsldg";
  packages."arm_cortex-a9"."luci".sha256 = "1xjjg5kxw4dss992a1ca9q4wg3chl78fvairk8g3d93w4kq7q89g";
  packages."arm_cortex-a9"."packages".sha256 = "1w1iya6n1bkca3bzwwqcvzcnclmm89kabks669prmmif9ldqxzmq";
  packages."arm_cortex-a9"."routing".sha256 = "025hl9x89vk76ykjc9gd1rw91wyrkx72767bvr1znh9hj2yi3lh7";
  packages."arm_cortex-a9"."telephony".sha256 = "0ga2lhc1bxn4j3fyg4h2qwkrhry7v15c7lqs2kaiimqcrmnqyrgr";
  targets."ramips"."mt76x8".sha256 = "1q0zcvczbg2852k02mmya1d20bvrkjkqcg9p4lnn117qfkdij5k3";
  targets."ramips"."mt76x8".packagesArch = "mipsel_24kc";
  packages."mipsel_24kc"."base".sha256 = "008j0nd149m9psb157q3v578brr3p2clcl2a8cl01xmplzgpaabb";
  packages."mipsel_24kc"."luci".sha256 = "1g8yaz4hwy5lwz538c0gy3llzrvxybd0k8v8q7k1xsgz7abihq4g";
  packages."mipsel_24kc"."packages".sha256 = "1361vkfynba7nb5fk1m2lcpzm4j17yfcjhcc5a77yi4qq8hsqwk2";
  packages."mipsel_24kc"."routing".sha256 = "05ilsa19m5r5h0wk2v58mvmxnlrhkyfq47n2dpqszxcfd8bl9a5z";
  packages."mipsel_24kc"."telephony".sha256 = "0841ymhmn602hyvcy21bi2gif8v5yscjcpfh3y5xd2b3mjrq8nvx";
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
  packages."mips64_octeonplus"."base".sha256 = "1zdy4q3v3dm9wprjzymr2iwgscc9m9a13q5b7qy6wy00w1wyl7zj";
  packages."mips64_octeonplus"."luci".sha256 = "1x5m4j4hx7yvvj07z4nxc5izl5mk4vi0vwrfk6qw406waay564zx";
  packages."mips64_octeonplus"."packages".sha256 = "1ph2j29r65xz4j3ja8yqk06k0ymrzmk357zh6qv650a0bc1v9wii";
  packages."mips64_octeonplus"."routing".sha256 = "0w693sq50jqflyy8zpjixg89ajnpy8qalrs6j0lw6wcpvwzd4ric";
  packages."mips64_octeonplus"."telephony".sha256 = "1flw0branqg68kr6s37vf522gjg682gsb1y8pi4gcmjyxpy2x8kx";
  targets."pistachio"."generic".sha256 = "0qixk1cqwar8nb9hg9kfy7hirjb4b21pdpbj5ybylkrc979nla5m";
  targets."pistachio"."generic".packagesArch = "mipsel_24kc_24kf";
  packages."mipsel_24kc_24kf"."base".sha256 = "1zmk79d9wrvdzbxbcq9sd87wxz0fba8k571xiili2qlfi44grnbn";
  packages."mipsel_24kc_24kf"."luci".sha256 = "1va2c0m8lgxma84ii5yr3i73gkrkd3bhlss0q4w59wnyf6p9dahi";
  packages."mipsel_24kc_24kf"."packages".sha256 = "1jalvcaf3apx70vkhp6aqzkvcvf8npylcwgw2d8d4vyqzi7g0v8r";
  packages."mipsel_24kc_24kf"."routing".sha256 = "1m2gj5qrd4j4cm220v7kc2jvrgb5ymbl20xc5lmz44w2vjimhayl";
  packages."mipsel_24kc_24kf"."telephony".sha256 = "0l64iksysm8hakphs9v2kll6sspgvl6yd616pza042qkfhpr32d9";
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
