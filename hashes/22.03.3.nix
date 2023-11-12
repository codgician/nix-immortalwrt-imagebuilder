{
  targets."oxnas"."ox820".sha256 = "1pmjrwf18kn2jvbxha2fl6yi5an7gr30l74pnzpgihd7hq9l1j2j";
  targets."oxnas"."ox820".packagesArch = "arm_mpcore";
  packages."arm_mpcore"."base".sha256 = "0da2r0r25gn2q4cd3n005j1szks2sccn3ds7yhx6m3pf15y8l1y4";
  packages."arm_mpcore"."luci".sha256 = "0p1n26453sp5v9rnh5q7zqj4s3rj88byr6m1f09hmcskf2iiyk72";
  packages."arm_mpcore"."packages".sha256 = "00jzpn9v88md4kk6mgns7xw0pdf77zg4ji249f3qmlwsxgvigfgk";
  packages."arm_mpcore"."routing".sha256 = "00xn1zbwbyfl5px5p0z9hc465z37nnppprxyh9i1i8dm576dqsvi";
  packages."arm_mpcore"."telephony".sha256 = "1srzc93wh2vnbmv4r4xvhbyrn4ih3hfbag5gyjmh8r0wpdnh616a";
  targets."mxs"."generic".sha256 = "03aq00i260951iw75zyidkz095y10br20p7dqnna7sixnms0hi14";
  targets."zynq"."generic".sha256 = "1l9lalzan33sfd7mikm8fq1ahp7ps1qgmnplg8xqxhvyhdp8gi12";
  targets."zynq"."generic".packagesArch = "arm_cortex-a9_neon";
  packages."arm_cortex-a9_neon"."base".sha256 = "0i9bl4z053lvg05s9s2kdw82k22mxh7hpsfainx81cfzyyfjxy16";
  packages."arm_cortex-a9_neon"."luci".sha256 = "14xzx0j7nnf51bjmhaxkmrnx4cpvjmw80ijqvgilp1nqvcb2ixmr";
  packages."arm_cortex-a9_neon"."packages".sha256 = "0xkibn5rnskmjy7z3qnl5ng8pzl1pxi90mm8ddi30q41l2dkinhs";
  packages."arm_cortex-a9_neon"."routing".sha256 = "1qww5cw6730qq93wx8z5lid97n3wa5blcg5mll8kli9dwhm6cw47";
  packages."arm_cortex-a9_neon"."telephony".sha256 = "00kjid6xfl90l951r9zfv74c2lcxivmwphm17iy3sam57kkb6a81";
  targets."bcm63xx"."generic".sha256 = "0jr1rjyqkc5j6pvwg4m4w3zsv7jjyipzm9zgxa6n2s8djzfhxvrk";
  targets."bcm63xx"."generic".packagesArch = "mips_mips32";
  packages."mips_mips32"."base".sha256 = "18rj43n3a9kd0ybg8qy9af8mp1y1j04ilrvkq1ki181dalp23a9i";
  packages."mips_mips32"."luci".sha256 = "0x24w7qwwk1l3xqvavav7lc142kbs59vwdi70sygkkb4j0pvvxxp";
  packages."mips_mips32"."packages".sha256 = "0wvskpw7f7kzf9ycqczrl45vm33gih3fa5dyqi9hd6q8f5bjlnf7";
  packages."mips_mips32"."routing".sha256 = "1g4xlmdxbxpk1xw6ngw0mwfl9nfn68c99s7xiib44jdj8gnl0lpr";
  packages."mips_mips32"."telephony".sha256 = "0akyaw09xsvjm4w4vllxglgnxpgvhzn7w87xif3rblkx5abrzzmc";
  targets."bcm63xx"."smp".sha256 = "19qj9rabjhc75jm6ndhm53mcnwksax182c9g5j00k3ybgnmar07b";
  targets."bcm63xx"."smp".packagesArch = "mips_mips32";
  targets."bcm47xx"."generic".sha256 = "19rim6dnd8lj7v39056xi95g81xm8hgwdzm38v94f1151iycli28";
  targets."bcm47xx"."generic".packagesArch = "mipsel_mips32";
  packages."mipsel_mips32"."base".sha256 = "0acqlfmi0phcqn65vlq83g251m2w714h2nlgnqpxym3wyd6agpfq";
  packages."mipsel_mips32"."luci".sha256 = "0saimk3bc6b0i3cl1362a2yiivvgdp1zxlkqpv4jqbsh6m7g2w55";
  packages."mipsel_mips32"."packages".sha256 = "1fb8jqdcq3rg0a8dh7zzzcv86cyjx0nfzn76a510cinahpgnl7wc";
  packages."mipsel_mips32"."routing".sha256 = "0l0klfmb9wnw9sfg3n8nshnk5w44n7sjl2a0aw0cf79a8w48r1v1";
  packages."mipsel_mips32"."telephony".sha256 = "08grky38vdpq1cyzclhqb90b3hd5qmdqf1s91vxz660y65xmr05l";
  targets."bcm47xx"."legacy".sha256 = "0gy1hpr5ac68rxj1282f20b6xf1pnnqcvl7g9kzc1wmwlrw6mzz8";
  targets."bcm47xx"."legacy".packagesArch = "mipsel_mips32";
  targets."bcm47xx"."mips74k".sha256 = "059y101ka09gjbnmyg7frz0pgf257spdjwia4qd71lyq0nqhmwy9";
  targets."bcm47xx"."mips74k".packagesArch = "mipsel_74kc";
  packages."mipsel_74kc"."base".sha256 = "11xlmi35hc597i0w4dydfhv70kq1a8dkk1d34pi8sydjl0lhbkpq";
  packages."mipsel_74kc"."luci".sha256 = "0hqxdich7w1bkmaa9zy3979agvdrghraxxhdj5yqfcbbya9gm2ip";
  packages."mipsel_74kc"."packages".sha256 = "1rzm14w407ibi4wli6zhi20ss0z1gx59igq2yrmisx2avsclxag7";
  packages."mipsel_74kc"."routing".sha256 = "1gnx0mr70qa1zgj0wq9wp44n1ipcy7jxmmgljpkqvzsahaiap9bw";
  packages."mipsel_74kc"."telephony".sha256 = "0w2b2ppln8b5r6j38dvwf04flwb0zgcwvingaxjd7y2mvmkyfra1";
  targets."bcm27xx"."bcm2711".sha256 = "1079hjbv2cy0kbdf6wl5ymgfk5c6h3r2jkgms7wjdcicq9nnxgz7";
  targets."bcm27xx"."bcm2711".packagesArch = "aarch64_cortex-a72";
  packages."aarch64_cortex-a72"."base".sha256 = "12rvhx8mxc92ywm8fvrlbkdr2klxbnp3zpqxm5nilgimssvnmnvy";
  packages."aarch64_cortex-a72"."luci".sha256 = "0diar9pbpcbziqh07kigab57fxwnsmavq8pxjswcnhah7gl5kabl";
  packages."aarch64_cortex-a72"."packages".sha256 = "0bblphpv2lxip0wzlf6ch1z69bkqc2zwh2cq1h9ry4yfmv2y3qrc";
  packages."aarch64_cortex-a72"."routing".sha256 = "0s9nb1s4bnzhpbhiamgylcf1ibi62hdq0g1vznhjcphhaczpz055";
  packages."aarch64_cortex-a72"."telephony".sha256 = "036qna3fyj42acwrcwrj33bkclh7midk5hzm4cplpkd6qnx3vlmz";
  targets."bcm27xx"."bcm2708".sha256 = "1ik02j5lk4zqfj8483b5k2sjyyp58zl72v1haq119vjl5glgpvnb";
  targets."bcm27xx"."bcm2708".packagesArch = "arm_arm1176jzf-s_vfp";
  packages."arm_arm1176jzf-s_vfp"."base".sha256 = "1xlxrq5isyjn1wq0r6jgkxdbh0vzsm4pfah3053wci5blg3prs8g";
  packages."arm_arm1176jzf-s_vfp"."luci".sha256 = "1sanlxmpc68jwn07p28i9bsysnn1md3jzvc3yc4m9pc1y6jn7k9m";
  packages."arm_arm1176jzf-s_vfp"."packages".sha256 = "0k15awafdzphs8xif3h7hxr7jnn1yymc2qb7r17rw00l8hissdxd";
  packages."arm_arm1176jzf-s_vfp"."routing".sha256 = "16qri6anlhq7h7gdba2zz3bgf5aqjcjqbjd9dz2dxsqcav4khfi2";
  packages."arm_arm1176jzf-s_vfp"."telephony".sha256 = "00kw466ablxdfjbdcygq57nfsrm03fkssbab7fm377fywqkh5wl1";
  targets."bcm27xx"."bcm2709".sha256 = "1mdjkw9fv44fi1d0mw6n6jgx8hz0lrc8vz9hmwzq27df13sx2g9b";
  targets."bcm27xx"."bcm2709".packagesArch = "arm_cortex-a7_neon-vfpv4";
  packages."arm_cortex-a7_neon-vfpv4"."base".sha256 = "0qqbfkcdkz6pmb335376n205f7xndjhzrx1qm9akvnf88qfja7vc";
  packages."arm_cortex-a7_neon-vfpv4"."luci".sha256 = "0hcacbj87i9p9jl5p41qshnigpjyvjvxzgcmprqa5slyb6kv6dqv";
  packages."arm_cortex-a7_neon-vfpv4"."packages".sha256 = "0frrnv8xdfqbb5q4pf7hzqfz95dazl9264n82lkxss2lgjizc9yv";
  packages."arm_cortex-a7_neon-vfpv4"."routing".sha256 = "137hfp5dwjb1wg9ah7lwpcfya0qawvhpiz8r4h4myvdb8jbhn9vj";
  packages."arm_cortex-a7_neon-vfpv4"."telephony".sha256 = "0if13b0wr05p3kvsflh25xif4xlcz5gip8vx01p0605gksjf4scs";
  targets."bcm27xx"."bcm2710".sha256 = "1v6xbwqaz6an84m30ncvrc7hznw5s9p3gb06vh1xswbzj90lppxj";
  targets."bcm27xx"."bcm2710".packagesArch = "aarch64_cortex-a53";
  packages."aarch64_cortex-a53"."base".sha256 = "08dqmc81by7wavazdlkxaq680kwhd19ihsxj9j79xd89h14cpkcf";
  packages."aarch64_cortex-a53"."luci".sha256 = "1zpyfgw916gfh45xq1wpkabbzvpa3hka56157gdxfdq9zfxg63ww";
  packages."aarch64_cortex-a53"."packages".sha256 = "0c48rvc21fhrzbi54l6q51pbzrb8g7n7jl6whx3xpihdl474cawj";
  packages."aarch64_cortex-a53"."routing".sha256 = "0d0c59qq2rh6hkp1niliwa48yf81lkrgyq89ps3r6nyxmns3x987";
  packages."aarch64_cortex-a53"."telephony".sha256 = "1cjdriry84anvglvm8d39zk2z2mha0q65cvaiz8cmhyjyky4bwg0";
  targets."mvebu"."cortexa53".sha256 = "001jc55jv8s6yg17fkbgzq0917w7cb8gsq8gfyn6r3vdwnkn5qmq";
  targets."mvebu"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."mvebu"."cortexa72".sha256 = "06xqc82ggswlhkvkksb1ypgb2lx3nf7dazwrv4y59aj7mldkqccz";
  targets."mvebu"."cortexa72".packagesArch = "aarch64_cortex-a72";
  targets."mvebu"."cortexa9".sha256 = "0gh4lyhcf037i4k5y0p2bwhyniz6ivl1kyg0an8qml50rzi26kiz";
  targets."mvebu"."cortexa9".packagesArch = "arm_cortex-a9_vfpv3-d16";
  packages."arm_cortex-a9_vfpv3-d16"."base".sha256 = "0h168hjl75mgqli6cwisw0i6qv86pky4zg7pn7why11k574lvgi0";
  packages."arm_cortex-a9_vfpv3-d16"."luci".sha256 = "0gpg47hggnva9y8mp94kkxgk4ikhwv8jb7acan84qndxvpksvd50";
  packages."arm_cortex-a9_vfpv3-d16"."packages".sha256 = "08nx20asf5yyz1gqp6hcb2khkajp6vw17slpiihxjihrbrna7sj6";
  packages."arm_cortex-a9_vfpv3-d16"."routing".sha256 = "1prz1jman8xv6hwgg3vyw58yr4rpdbc7p5kcs92ix8qvwrjqcn83";
  packages."arm_cortex-a9_vfpv3-d16"."telephony".sha256 = "1mk28908lvmfp1b7rbj7xw11qn3x6y7hfc09ickbj4nfhaj2742m";
  targets."at91"."sam9x".sha256 = "0mn3mpphy2b6plr287frjxb77z1vganp071bv732pgd08b59aa5p";
  targets."at91"."sam9x".packagesArch = "arm_arm926ej-s";
  packages."arm_arm926ej-s"."base".sha256 = "0kgh622nd37wh1qxrdvbv8yp4l2rn8xavdpqsd3kaa4plv7dfs30";
  packages."arm_arm926ej-s"."luci".sha256 = "03ziw1l658h5yy1pm52nqnhn2xnb01bwd66z1ymxfyv9s4ip1ay0";
  packages."arm_arm926ej-s"."packages".sha256 = "1jjzdzrc39xmlnzhg3dcm96j4wm0c2rflbq6wnx9bdbsa40506z4";
  packages."arm_arm926ej-s"."routing".sha256 = "1wjv8xjgkb9hiwhg461jhr1rvc27ayyzm717n1fcpkzp0vyr0s5n";
  packages."arm_arm926ej-s"."telephony".sha256 = "122608sd3r8hysf0iqx7ijxbdllrdvrg65adyb5kv40lzi3ysjy6";
  targets."at91"."sama7".sha256 = "0xf1lbkbg5q0bsn7qh6m2bnrv649yzni9fk9fhypch0kzpbiwl86";
  targets."at91"."sama7".packagesArch = "arm_cortex-a7_vfpv4";
  packages."arm_cortex-a7_vfpv4"."base".sha256 = "0xpp4l6m1gf88aj060j0xjvd6rxxmpni6ri7sp295492gmwg7bim";
  packages."arm_cortex-a7_vfpv4"."luci".sha256 = "0paqj8savgx616biwvchr520lvrk1w7mj50ahf369jfrz7273dcq";
  packages."arm_cortex-a7_vfpv4"."packages".sha256 = "0c0c6my0sk93axl8sn4kmpbzg6fx643ar8w2ljnvbjn3f29bkl8f";
  packages."arm_cortex-a7_vfpv4"."routing".sha256 = "059p3sak44ahbj8975kjcz30vigjybacydif442mm4751h3r7n17";
  packages."arm_cortex-a7_vfpv4"."telephony".sha256 = "0yid6al7zis1d2s8h4dpa607c68h3prj8v9ir549wj37kn5lp8a8";
  targets."at91"."sama5".sha256 = "0bcqg6bw2bwa6wg1aidc815vg7n2140wjkak0byjc8v4crl3fdcs";
  targets."at91"."sama5".packagesArch = "arm_cortex-a5_vfpv4";
  packages."arm_cortex-a5_vfpv4"."base".sha256 = "1751x3yw02gh8vw9bzcqivd4ax5p021jh9p7hhh0gd2bxxb1zdda";
  packages."arm_cortex-a5_vfpv4"."luci".sha256 = "0543l5pn5l5m48c5jja7zrrq6ds1p61j8fik5h89lcq6ih3jfs1z";
  packages."arm_cortex-a5_vfpv4"."packages".sha256 = "1kl0lvhg8h0bsginkja0ql2wnhjdp187nssysjcj8x1bigzr20nl";
  packages."arm_cortex-a5_vfpv4"."routing".sha256 = "01dkr1db203gwah1fzf16ss7gi1chrhxvyflmj1whfjj3bn1aibc";
  packages."arm_cortex-a5_vfpv4"."telephony".sha256 = "076xbkivw53xxa0y9kcqws7hgq6yalwi2644viwjlj88zq2815hg";
  targets."gemini"."generic".sha256 = "05r9hf85wgxbzp14997cafs9j20ngy9djyyq8jwlafwz8higzlbj";
  targets."gemini"."generic".packagesArch = "arm_fa526";
  packages."arm_fa526"."base".sha256 = "0kpml7k190vdfj97mqlacqi8ka3i43hx11gcjyyca9vhw22nhc8l";
  packages."arm_fa526"."luci".sha256 = "16ys3577afq9mm7gafai0sl3zmbpakhd83m8039y6ydvnmw219v6";
  packages."arm_fa526"."packages".sha256 = "1z9ylb5ciqkdbdshgjfw26xhrsk9ci32gqakbxnn4a8pvwfa4x4a";
  packages."arm_fa526"."routing".sha256 = "1aicnnqk7pdwdc4w70bpqqx1kkpmkml3al0m8sk9x2xsn0zpjndw";
  packages."arm_fa526"."telephony".sha256 = "02kcw9hlqxgjp0d4j6rxrcvms8p3kgns8clfichisxpy052v3x4w";
  targets."octeontx"."generic".sha256 = "0b8p5n2y8rx5sajy3f0jfmkp005p4ikdjq6qqz4hpd1sw6f39glg";
  targets."ipq40xx"."generic".sha256 = "0fg68f0hp2dczf7pznjfw79ljs8nfcnss4rw5m5gpvbmh6s95b0w";
  targets."ipq40xx"."generic".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."ipq40xx"."mikrotik".sha256 = "1jvmflq64kx5ba388hd1ysgyzszf7316ywywwfb6fxmp62b8j6j8";
  targets."ipq40xx"."mikrotik".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7623".sha256 = "021ylj9gy4zsm8bjyxswxl4laiqbd55alqpf2bl7gbk31lyjsrxz";
  targets."mediatek"."mt7623".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7629".sha256 = "0kd0k57sb4gsqd853f7nr897716b59s60wvpvjrdm4g1vlwr9mq5";
  targets."mediatek"."mt7629".packagesArch = "arm_cortex-a7";
  packages."arm_cortex-a7"."base".sha256 = "1vp1s0czqhwssl9ss943vk0mnj5w8p68xb1cj1q5p35j5bk3d794";
  packages."arm_cortex-a7"."luci".sha256 = "1i5h1f7hnry1p2lz7r225v3pp0dyhhlvz3cp54vpi96jicax6w3z";
  packages."arm_cortex-a7"."packages".sha256 = "06hy93yviqj5c0m4pma70pk6bpc90pm0x9jykhnym1c05cj0c414";
  packages."arm_cortex-a7"."routing".sha256 = "00ing5b63l09y439hhjxcqazyj2d4vaala6jrz4ds9l30f07my1h";
  packages."arm_cortex-a7"."telephony".sha256 = "1nqh7an03mjqil9msbvax8w5256jlgv0l9dpyi4n3nk62zigfx7x";
  targets."mediatek"."mt7622".sha256 = "0kf05vs0qfir31h6ks2ly7gncpbqxskw848h0mp8iq59p9q3cxx6";
  targets."mediatek"."mt7622".packagesArch = "aarch64_cortex-a53";
  targets."malta"."be".sha256 = "1mhfp7awbkipiv9ckkdiw3pa2mp82j3i8vswb7h7nslcq62wwyqk";
  targets."rockchip"."armv8".sha256 = "14m0dmk1v76jz6ib8b2ma1qj189am8y3lw3zxykdpxfs6wnirg1a";
  targets."rockchip"."armv8".packagesArch = "aarch64_generic";
  packages."aarch64_generic"."base".sha256 = "00g4z0nq49i1w55vf7114h6fbj14wc2if27v8xddakq0jpqa175v";
  packages."aarch64_generic"."luci".sha256 = "0x9ppbzs7mvlmc5mcd6a82qg0p545vixmcvrkvxcpngzvaknvfmm";
  packages."aarch64_generic"."packages".sha256 = "04kympvx9wci5cnff9dcayz8wz1l57ijxxd2a3vsv3hm49lg96ns";
  packages."aarch64_generic"."routing".sha256 = "1x6gacxfjlyq8v84385qdfjwcg80wbv293l1l5vr1r0fs4x4jfc3";
  packages."aarch64_generic"."telephony".sha256 = "1dirqcvhgfl9b1ii5k63mbcszhajf944m0sa379cmzd4nvshw8hc";
  targets."ipq806x"."generic".sha256 = "114vqjxbwjblsyp78x3699g5kfag70sb4c7lr35vy59xh95sg8y1";
  targets."ipq806x"."generic".packagesArch = "arm_cortex-a15_neon-vfpv4";
  packages."arm_cortex-a15_neon-vfpv4"."base".sha256 = "1kba8ybpi16fngl7ww103vfgkwgqw6lgbcn5s2zwwycyyk2bmhrm";
  packages."arm_cortex-a15_neon-vfpv4"."luci".sha256 = "1718s5in729sd18s01fsvcax7nxnfppmmnaj1gx8ynhf2izb0jy7";
  packages."arm_cortex-a15_neon-vfpv4"."packages".sha256 = "05prfrd305j6jg3fymwjak8mwrzbqgz807zvgsbbxh0pr0dsxs5w";
  packages."arm_cortex-a15_neon-vfpv4"."routing".sha256 = "161v4kig6gwi2kv1i02nmz2l3vhsbk3c5sxngkjn6bz5hlipinf1";
  packages."arm_cortex-a15_neon-vfpv4"."telephony".sha256 = "13hwikdlcqwi0w80n3lz773amnqscldr1qqg11laf48cl6c2j8js";
  targets."sunxi"."cortexa8".sha256 = "0q00adj2i1vdbc334xgwzv02gggb6zyb6146fhc6c2l0d27ylly8";
  targets."sunxi"."cortexa8".packagesArch = "arm_cortex-a8_vfpv3";
  packages."arm_cortex-a8_vfpv3"."base".sha256 = "0rd3xcdy24jrz85ksgdsimg2alc78l5n90kaybx2d1qja2cbg0ma";
  packages."arm_cortex-a8_vfpv3"."luci".sha256 = "1pg5c643k9911cdvi5i8cnanl0i6w1dwnk8k8glxn4azh2lb8dnm";
  packages."arm_cortex-a8_vfpv3"."packages".sha256 = "1n15lp32hqmvr1f5c8yjrmn774nc785blq2sfilw49z0n4n89px9";
  packages."arm_cortex-a8_vfpv3"."routing".sha256 = "1cdv8ypkhzd7rqmxdm9pvcq0icpb038bzzllw1xc9dzngw8p16a0";
  packages."arm_cortex-a8_vfpv3"."telephony".sha256 = "0vda0xfmm1as72isvpl13qrql85smd62ingdwkcdkvg0r7dn9gkf";
  targets."sunxi"."cortexa53".sha256 = "0mmvmdh928pnkgrd9c8cjzjqr37fgh5i8d04mwz82v1mpyglwa09";
  targets."sunxi"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."sunxi"."cortexa7".sha256 = "0zq1s083pbi7xly1ax2vdhf8r81fqi1sswfba1i7x32ihlkh7g5l";
  targets."sunxi"."cortexa7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mpc85xx"."p1010".sha256 = "016hvl39x5frcvp9273c0ks0ipaymvw8c43r3kckib2icaqs376v";
  targets."mpc85xx"."p1010".packagesArch = "powerpc_8540";
  packages."powerpc_8540"."base".sha256 = "14kckz6va3vb4jc2d73zrxsj08y2zvq5szj6ng2hpw3v326vghps";
  packages."powerpc_8540"."luci".sha256 = "02z259y3pfjzgdd2v9wc5ibsbk55s1fwciy489a80vk08cy8rgkr";
  packages."powerpc_8540"."packages".sha256 = "11dixs8bnjiylza96xdn17pvcwbiagjkwazf0ps466cyg8128m5b";
  packages."powerpc_8540"."routing".sha256 = "09sdqh7fr0f0whyscvcw5qjgm4n080k2mp3zsy86a2b2mjs6his9";
  packages."powerpc_8540"."telephony".sha256 = "1xryb1icpv6x9p685yvsli6dkkarlvqj4cipcp8s79sy0z41s9zv";
  targets."mpc85xx"."p2020".sha256 = "1s4m5d2pdiq3jhzq00n761ymvzdc98q69gyi66lja89xra1i37ab";
  targets."mpc85xx"."p2020".packagesArch = "powerpc_8540";
  targets."mpc85xx"."p1020".sha256 = "1vw1vvam25h4y96zbj86g7jpncpb4yi08iy68zlar2bkw2f1yybf";
  targets."mpc85xx"."p1020".packagesArch = "powerpc_8540";
  targets."imx"."cortexa7".sha256 = "1pzmbg69wn7kf4yqlwlr8qyqbiixxhwh04pxmp0lq2ab600zbbmf";
  targets."imx"."cortexa9".sha256 = "1rbgcihhmfwqmkh39im9dcrvw5pkvkmbl100jrnhrnsqa53flbwh";
  targets."imx"."cortexa9".packagesArch = "arm_cortex-a9_neon";
  targets."x86"."generic".sha256 = "1icwvfssv8l2vqql2vbgzaqkilvnzf5ivb710mhid68874x53xhq";
  targets."x86"."generic".packagesArch = "i386_pentium4";
  packages."i386_pentium4"."base".sha256 = "157kwf63f4s275ik5frzgan228pqvv9917x7383gvxvilrg1f8fq";
  packages."i386_pentium4"."luci".sha256 = "0d5p5x0iphdbs9a4r7mmd5ijzy251kb1zc8q92ynpm8i42bandy3";
  packages."i386_pentium4"."packages".sha256 = "05d415rypmjhc9rxam6d61njbmp86bwlh6xfpv167bviwhjaaq1q";
  packages."i386_pentium4"."routing".sha256 = "1f2vg25fpcslw1ggab4xq56fq4pppxjc2h7kwpl99aaa3sgxhh2n";
  packages."i386_pentium4"."telephony".sha256 = "03vyry4llkb9ppfm2cdw4v5j6iih6x48pycfpdikzh38ap99md88";
  targets."x86"."legacy".sha256 = "0hqds2j5w748p4987xzz5af2i15kn8dbnl24c63hzdhrcmi3ajpd";
  targets."x86"."legacy".packagesArch = "i386_pentium-mmx";
  packages."i386_pentium-mmx"."base".sha256 = "1sz67z0300xs54yp68vjwxxm0ywgwf778iq7gxp4y89ac9pphcc1";
  packages."i386_pentium-mmx"."luci".sha256 = "07rymh365fd0bj6myssq0jhzdmy67499pljvjpfyrfka05q9b3bh";
  packages."i386_pentium-mmx"."packages".sha256 = "1m9jsr2dvrsvlbqy52sip493dhpdv02q4jydharnwr9dkw2yblzm";
  packages."i386_pentium-mmx"."routing".sha256 = "1ninxmd30zx429pl3j271vrj3afsd67lmm8z1mmrarijrpwrmnvg";
  packages."i386_pentium-mmx"."telephony".sha256 = "1zyfz7azyvmvpca519ykxm60ypi4s5zmanfaq12dysf7c5mq36bb";
  targets."x86"."geode".sha256 = "0k9ys4cy5pynxl6cwcq14y252yyhkdxvinhi618b1sgsz3pw29py";
  targets."x86"."geode".packagesArch = "i386_pentium-mmx";
  targets."x86"."64".sha256 = "1qxskbc277facjwlbraflc1g1pjffl8x4bjsyahsb30k23xhpwmm";
  targets."x86"."64".packagesArch = "x86_64";
  packages."x86_64"."base".sha256 = "1xzl05z344h9g53m1czbfqknly78kzqp8qvf9p26izmvqi6ga98y";
  packages."x86_64"."luci".sha256 = "1pjjs7w8rl7rbrh98pc808yw8j6qw4g7lvbysr89z981ayr82zcx";
  packages."x86_64"."packages".sha256 = "1rb9h9r8nwdjpkmz5gi3wf96ixrr2sfx5fd8n6spvjr0nbv11v3h";
  packages."x86_64"."routing".sha256 = "0kzajriz0932djiz4saqdr0khrj1wb8mm0dw2gizpj7nydszd1s0";
  packages."x86_64"."telephony".sha256 = "0jh3gllbi20pican3j88svq218979rljs6pxgaarsfv8vi63bn86";
  targets."realtek"."rtl838x".sha256 = "017b02blvz9sdkrwq3ap027i1kkl23kz1hwpf090mcywcpa87m4x";
  targets."realtek"."rtl838x".packagesArch = "mips_4kec";
  packages."mips_4kec"."base".sha256 = "1fjd862c7351kgka2l95g8r9n24q8qzqx265hwycx52i0pw7179i";
  packages."mips_4kec"."luci".sha256 = "1yr05c98qps28ip1qhqy3ilihsxrc4y3s157hi2yfj7k4jw08fkg";
  packages."mips_4kec"."packages".sha256 = "1z5pw9zd1w0pg3m243nydv35kwhvdsb14kjirnfiwxhlz05wra6g";
  packages."mips_4kec"."routing".sha256 = "1wqczscg9nq1fdv9g2yyfzqbx3nhxrnfzsy0mvr955iv384w4afp";
  packages."mips_4kec"."telephony".sha256 = "1nzrdh0ysnfjal0p71kqnrxs5mxgsqdn3glma4a0hhz3djl2pcvf";
  targets."realtek"."rtl930x".sha256 = "0dq2gabdhzh2zy1a25mma4j9835xn52427bjdfgwxkjaq2z6zdw0";
  targets."realtek"."rtl930x".packagesArch = "mips_24kc";
  packages."mips_24kc"."base".sha256 = "13cmp7cjkm0lkwb61v96bx704s6jsp9kqy3vmpfyr55ycl60r2ql";
  packages."mips_24kc"."luci".sha256 = "1jqdj495igyh2cp2hnl66bgrqjzm17innzxvqk20x4i3cphfqf7i";
  packages."mips_24kc"."packages".sha256 = "0l9dpbhdjgy8q5f28gapradrf43a4ymjgn31dw6i1aaxbhbpamc5";
  packages."mips_24kc"."routing".sha256 = "1vwhx0mlmvgrl66rx58xxl9fbryg6ldr3rfmvbkhvxd6bf7snniz";
  packages."mips_24kc"."telephony".sha256 = "1zk4k528l28dr7vyj3bhdinry6mnr42wsvyvaqmzdv51xbsipqz6";
  targets."realtek"."rtl931x".sha256 = "1409gc70h0h2pgn11hrlxsp475mr6l4ifp07hzwx7bjlg1aqmkmp";
  targets."realtek"."rtl839x".sha256 = "0kfc3g53fwi23kppryifs084vjzp3n4m71h8nzwswwarxyh80qvn";
  targets."realtek"."rtl839x".packagesArch = "mips_24kc";
  targets."armvirt"."32".sha256 = "0k4d1wz7kw3n1l601y6lsva64dxnr4334xyf5p83m71m7z84iqzc";
  targets."armvirt"."64".sha256 = "1yai3w39s9ysqmdl7ykyrqr0q08vc8502yfqbhlhmwgdv2ylwa8v";
  targets."kirkwood"."generic".sha256 = "16ghvv4g109rqh922wi3rbngcvr8nyqc07x86lxjrfp0x33ib36q";
  targets."kirkwood"."generic".packagesArch = "arm_xscale";
  packages."arm_xscale"."base".sha256 = "0vbh61y0hinx9lj722nlrgad9j1skdclibv2ghy2n6mbh72kk1m9";
  packages."arm_xscale"."luci".sha256 = "1zs6lwri0rrbnhc5r8fvhpngkhzg6xiycqwr5a0hsnihff3a309b";
  packages."arm_xscale"."packages".sha256 = "02zi3y40114kzk2qx5b99vi1cl6v048l38mhlym612fg1ksv6lx7";
  packages."arm_xscale"."routing".sha256 = "1r5vrnpww0c0nf3l0i02gg2gwnibcxy8dpcqwvkwmjm9kp7lgd0k";
  packages."arm_xscale"."telephony".sha256 = "1h81vgn2jdd4jca7f40pjvr00n0rwhdgcd1l9lp6im7s6949135r";
  targets."ath79"."generic".sha256 = "06l5i1qijdjh9d3imakv4bjr1cgiianjwa45vf6k60yll1461svr";
  targets."ath79"."generic".packagesArch = "mips_24kc";
  targets."ath79"."mikrotik".sha256 = "1jlsnjggpcii45mfhl9hclp3g687z01kynkpvi7wqkg21zh7m71v";
  targets."ath79"."mikrotik".packagesArch = "mips_24kc";
  targets."ath79"."nand".sha256 = "1ck7mcr8j7xqwqavawp8cgl5x3fgqhbp2yipbdsz2hgpx557aaf0";
  targets."ath79"."nand".packagesArch = "mips_24kc";
  targets."ath79"."tiny".sha256 = "1fyk4al5xp4c2f5cc50wscfy8x6jpwbr36yvd4i8jd6xvh80p96m";
  targets."ath79"."tiny".packagesArch = "mips_24kc";
  targets."archs38"."generic".sha256 = "1qam5h8kgxhckzycpf21xirnnv05lc5f3dqaspamz9936na96rbd";
  targets."archs38"."generic".packagesArch = "arc_archs";
  packages."arc_archs"."base".sha256 = "03pgikqllcpmrrnqgcxgd2n30md7shqkqismsz3yzl44lsd1h5xs";
  packages."arc_archs"."luci".sha256 = "0k5sh4w0k4akirwm7mv8c2mmvqrch5y15q0z3822nscvsvg2n6kc";
  packages."arc_archs"."packages".sha256 = "02rvz8dynkxvrj2c36fa2qxcish80dzslnjcsxg0kkd8mhl70rpw";
  packages."arc_archs"."routing".sha256 = "0hxli4c8j7fmml9b1h819whnfyvwxfwmicf7ragfdkh7dqnhk4by";
  packages."arc_archs"."telephony".sha256 = "0r30c0biv7aimm47qpj47sh4jmlpjl76l9p8afajs0pnzlbpid08";
  targets."ath25"."generic".sha256 = "118n53c546dy4rli216xqzcy2s0shzvhprr8kxmiygr0vmfxsl1j";
  targets."ath25"."generic".packagesArch = "mips_mips32";
  targets."apm821xx"."nand".sha256 = "1wd3dl9sfg0y7y2p1zv0gy6r9mfckg1p0pk4xklpmy9w3kdrn5b3";
  targets."apm821xx"."nand".packagesArch = "powerpc_464fp";
  packages."powerpc_464fp"."base".sha256 = "1vqww4aaimqvajyk0w6jpyc5x44jbwww12m2zl8rdvfx0jcpb6aq";
  packages."powerpc_464fp"."luci".sha256 = "1lrb4dfjj70j6hlsq0dpx942ph7r1hiilzrgv3qsh4vz0agikd6m";
  packages."powerpc_464fp"."packages".sha256 = "11cdgkfwy3z3rrh487v7kwiwzlksljvn1v4bzhm4i66g56agb5hy";
  packages."powerpc_464fp"."routing".sha256 = "1yin5ivd2jkip7gvjwskpgb9nr9wqqdvv1ghq7amy6460bczkd4r";
  packages."powerpc_464fp"."telephony".sha256 = "060bq5nb8zi336ifkbb1pz3as1mfxbnq0klmpjgk9visvgxi12g2";
  targets."apm821xx"."sata".sha256 = "1pgl6q5cp869x58qv1mg659alvmq7x78bpq04ikfrvzlcppy1jah";
  targets."apm821xx"."sata".packagesArch = "powerpc_464fp";
  targets."bcm53xx"."generic".sha256 = "119aj52qvda9gp16qig3a2qyx8kchpqyzwarg127ai2h0f0yaxb3";
  targets."bcm53xx"."generic".packagesArch = "arm_cortex-a9";
  packages."arm_cortex-a9"."base".sha256 = "0asvl7g99n8v9bwfvz1agcg5qcz6n9409h5wva6153a0jfpx9xx8";
  packages."arm_cortex-a9"."luci".sha256 = "0ijpn46f04id0n8d6hzivh079y92six8cxvg28dcir9m7vz7b6h7";
  packages."arm_cortex-a9"."packages".sha256 = "0sqa6gfw1ck5a07w1yv7wlsfdbwk4nhg79l47g7jhh1g3s3amnjn";
  packages."arm_cortex-a9"."routing".sha256 = "17wyibph0gdhwqkf0v91v61pzniw9xk2awc52wxnl25a31807d0y";
  packages."arm_cortex-a9"."telephony".sha256 = "1mlbyw1slzmsl20dffbnm6gkwh41h4kiz4g3pmg9g4xjr9j0zars";
  targets."ramips"."mt76x8".sha256 = "11kg6x4mca7kawsvkla09qhmix42lbfs3r9c20mw4acz8mp8sw93";
  targets."ramips"."mt76x8".packagesArch = "mipsel_24kc";
  packages."mipsel_24kc"."base".sha256 = "0lq3w1fs0szgrsgq53xh4cq1pcgphy85ahknrzwyfh3pn7vp1dpd";
  packages."mipsel_24kc"."luci".sha256 = "11lfnfs49qr8169pkvjxvn5rppdbmlnjw6rbxzp0pmblc5dq379m";
  packages."mipsel_24kc"."packages".sha256 = "1xy40jnar8x9w4swxbw7p30g4pw1123lz5brkbjc1xf0rr2vll23";
  packages."mipsel_24kc"."routing".sha256 = "1lkpbj665ppng5lp7ngf9l50kc27vgh06dwwhfk3hjfdda9bhqh9";
  packages."mipsel_24kc"."telephony".sha256 = "045j1fg0r0i1d53lr5gsz8xrbqbkbmr2drriba0qz7nilmv34y88";
  targets."ramips"."mt7620".sha256 = "0vbqdp93sgl8lvjcfri3bwk768s6g3pfkghnyf92ag5lg4yrlm60";
  targets."ramips"."mt7620".packagesArch = "mipsel_24kc";
  targets."ramips"."rt3883".sha256 = "05bbc2yvp1125gs2cqm5sd1n1ay3904pjn81wz83966wfyxgdy2h";
  targets."ramips"."rt3883".packagesArch = "mipsel_74kc";
  targets."ramips"."rt305x".sha256 = "1qwx8hcv81s7hd0l7czpqg4kral9gbcj1lr62508cdz5i2kc1i1w";
  targets."ramips"."rt305x".packagesArch = "mipsel_24kc";
  targets."ramips"."mt7621".sha256 = "1g5kyj2aar0q5d3grgc1w1cg3fxp90lmyyx1171lalr22ikrvsij";
  targets."ramips"."mt7621".packagesArch = "mipsel_24kc";
  targets."ramips"."rt288x".sha256 = "16n66dhyfzsw17f1ycfrscjxpv1x2p9gwjw6gl8pw47v9ylxizkp";
  targets."ramips"."rt288x".packagesArch = "mipsel_24kc";
  targets."lantiq"."xrx200".sha256 = "1s32s6v4k3qmkrin6xfk2l69xifx44syrjp4bmh83j9p9dayhynf";
  targets."lantiq"."xrx200".packagesArch = "mips_24kc";
  targets."lantiq"."ase".sha256 = "13chk2l16pl21v2nkgq6clyg0g44dpy7qyww6s2xkc165d2d2dn4";
  targets."lantiq"."xway".sha256 = "1fza2czfz0xj0kg8shv0bvlvc5nnq3qwmvcz4r9cmsjbzzjy3yvq";
  targets."lantiq"."xway".packagesArch = "mips_24kc";
  targets."lantiq"."xway_legacy".sha256 = "125nadpjal5i3dhxiq93f96x8qjhhrip93z2wqjk00wy31ayq9ia";
  targets."octeon"."generic".sha256 = "0avyb66xqdly6pbcxxm4rgmljxnax0x68lsxvdpg7zziarqgihgk";
  targets."octeon"."generic".packagesArch = "mips64_octeonplus";
  packages."mips64_octeonplus"."base".sha256 = "0xshc765kxpwq3pdfbx49gyaxfvh2a1nr84r14rij3165hwm7dgj";
  packages."mips64_octeonplus"."luci".sha256 = "0jjxwab2bf2qi9m9kf7fpmif074xy639aqsn1w6xmnl36k9zz109";
  packages."mips64_octeonplus"."packages".sha256 = "1ys86i98fjknf2p1fw94vihdnvs3l0wwpk1bdiwkmzjlb8zdq411";
  packages."mips64_octeonplus"."routing".sha256 = "08pmghs6qsi56f07rad2rnxac1fhjhnz4k56dpyi2jqrhpp80bhh";
  packages."mips64_octeonplus"."telephony".sha256 = "1bl3rwcwi3rxfzlpm4xhc4jqx8i7n1rwfpm14q2ga22d5bpfbfc9";
  targets."pistachio"."generic".sha256 = "024g3l6ykp8knkkp0sfiyix22mvh7v6d352y4ys8g7ibn6fpf425";
  targets."pistachio"."generic".packagesArch = "mipsel_24kc_24kf";
  packages."mipsel_24kc_24kf"."base".sha256 = "10s2y0ihcrc4n004d8spp0axc73xmxhi5qi9vicx7adzcsaffzfh";
  packages."mipsel_24kc_24kf"."luci".sha256 = "15xcv687x4sxvkj4qqaazccjy150n95yh8rq1ihlxx6mwfxvkn8q";
  packages."mipsel_24kc_24kf"."packages".sha256 = "1kdvzaa0rcqyk5f15m2w4wx5xw8r36p97q5fxkc2i92gz7yy8jl5";
  packages."mipsel_24kc_24kf"."routing".sha256 = "0n53wci2ap70psgvkcrwvzjcizv109jnvjnh1g0fr2xm2r1218cq";
  packages."mipsel_24kc_24kf"."telephony".sha256 = "0q71ldsp1dgz7qcyv2fmv0favl3yhd26zf0xa3g2lgfqn8vp9r6f";
  targets."layerscape"."armv8_64b".sha256 = "1hdwrxlwxwsys9hpb88qli6xb3lg16bv1qm7s80q86ydsbfjvsdv";
  targets."layerscape"."armv8_64b".packagesArch = "aarch64_generic";
  targets."layerscape"."armv7".sha256 = "0xxiifdg19wx2a4d1l3ifd3a611hl3ls9bkmvw2xv9ks8h07n39s";
  targets."layerscape"."armv7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."omap"."generic".sha256 = "1rgdxcm2wiss2ccp9a1aiwxnzhnp04qxr17pz9zjqsr2r9xh08cy";
  targets."omap"."generic".packagesArch = "arm_cortex-a8_vfpv3";
  targets."tegra"."generic".sha256 = "17mwhlihk7w50pn7xla2gklr6f39aqhi1rnk3x61b3nnbsg6iga6";
  targets."tegra"."generic".packagesArch = "arm_cortex-a9_vfpv3-d16";
  targets."bcm4908"."generic".sha256 = "1526j3hmq2jgzpmgiqpghl2bbznj1wprak2lf3519sb3bji7pz09";
  targets."bcm4908"."generic".packagesArch = "aarch64_cortex-a53";
}
