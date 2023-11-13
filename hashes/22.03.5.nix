{
  targets."oxnas"."ox820".sha256 = "0dkwnhm4y0r4qqr88bmqa0m3fckz2aq295zq1dy9ss4rw7xdqcg6";
  targets."oxnas"."ox820".packagesArch = "arm_mpcore";
  packages."arm_mpcore"."base".sha256 = "0da2r0r25gn2q4cd3n005j1szks2sccn3ds7yhx6m3pf15y8l1y4";
  packages."arm_mpcore"."luci".sha256 = "0p1n26453sp5v9rnh5q7zqj4s3rj88byr6m1f09hmcskf2iiyk72";
  packages."arm_mpcore"."packages".sha256 = "00jzpn9v88md4kk6mgns7xw0pdf77zg4ji249f3qmlwsxgvigfgk";
  packages."arm_mpcore"."routing".sha256 = "00xn1zbwbyfl5px5p0z9hc465z37nnppprxyh9i1i8dm576dqsvi";
  packages."arm_mpcore"."telephony".sha256 = "1srzc93wh2vnbmv4r4xvhbyrn4ih3hfbag5gyjmh8r0wpdnh616a";
  targets."mxs"."generic".sha256 = "15n5cbyk795scdn5gskjykh0kpsgxnw196vg4hmdprhxz2ifh7pl";
  targets."zynq"."generic".sha256 = "06sbq0jqy6mfn3mr910j649q9nmzyg825kjhjhi1qv24ryh7gni9";
  targets."zynq"."generic".packagesArch = "arm_cortex-a9_neon";
  packages."arm_cortex-a9_neon"."base".sha256 = "0i9bl4z053lvg05s9s2kdw82k22mxh7hpsfainx81cfzyyfjxy16";
  packages."arm_cortex-a9_neon"."luci".sha256 = "14xzx0j7nnf51bjmhaxkmrnx4cpvjmw80ijqvgilp1nqvcb2ixmr";
  packages."arm_cortex-a9_neon"."packages".sha256 = "0xkibn5rnskmjy7z3qnl5ng8pzl1pxi90mm8ddi30q41l2dkinhs";
  packages."arm_cortex-a9_neon"."routing".sha256 = "1qww5cw6730qq93wx8z5lid97n3wa5blcg5mll8kli9dwhm6cw47";
  packages."arm_cortex-a9_neon"."telephony".sha256 = "00kjid6xfl90l951r9zfv74c2lcxivmwphm17iy3sam57kkb6a81";
  targets."bcm63xx"."generic".sha256 = "1gcbil7rzikbb32ipwhycq2bs50clj8c7mn4a27z5im35lkrav9w";
  targets."bcm63xx"."generic".packagesArch = "mips_mips32";
  packages."mips_mips32"."base".sha256 = "18rj43n3a9kd0ybg8qy9af8mp1y1j04ilrvkq1ki181dalp23a9i";
  packages."mips_mips32"."luci".sha256 = "0x24w7qwwk1l3xqvavav7lc142kbs59vwdi70sygkkb4j0pvvxxp";
  packages."mips_mips32"."packages".sha256 = "0wvskpw7f7kzf9ycqczrl45vm33gih3fa5dyqi9hd6q8f5bjlnf7";
  packages."mips_mips32"."routing".sha256 = "1g4xlmdxbxpk1xw6ngw0mwfl9nfn68c99s7xiib44jdj8gnl0lpr";
  packages."mips_mips32"."telephony".sha256 = "0akyaw09xsvjm4w4vllxglgnxpgvhzn7w87xif3rblkx5abrzzmc";
  targets."bcm63xx"."smp".sha256 = "1gkzc3rdfciav16nl744ryvzv2kllp1y3ib5r3mrqzqcvn6j902j";
  targets."bcm63xx"."smp".packagesArch = "mips_mips32";
  targets."bcm47xx"."generic".sha256 = "0py43pfqnz0kpg250h2w0zjnphbag77prng0alb613sihjkg55av";
  targets."bcm47xx"."generic".packagesArch = "mipsel_mips32";
  packages."mipsel_mips32"."base".sha256 = "0acqlfmi0phcqn65vlq83g251m2w714h2nlgnqpxym3wyd6agpfq";
  packages."mipsel_mips32"."luci".sha256 = "0saimk3bc6b0i3cl1362a2yiivvgdp1zxlkqpv4jqbsh6m7g2w55";
  packages."mipsel_mips32"."packages".sha256 = "1fb8jqdcq3rg0a8dh7zzzcv86cyjx0nfzn76a510cinahpgnl7wc";
  packages."mipsel_mips32"."routing".sha256 = "0l0klfmb9wnw9sfg3n8nshnk5w44n7sjl2a0aw0cf79a8w48r1v1";
  packages."mipsel_mips32"."telephony".sha256 = "08grky38vdpq1cyzclhqb90b3hd5qmdqf1s91vxz660y65xmr05l";
  targets."bcm47xx"."legacy".sha256 = "10nb3x7fyg4hwnq6ma3bs5lwshi5c9pwjjhmdkdpswdhzq5yhl5q";
  targets."bcm47xx"."legacy".packagesArch = "mipsel_mips32";
  targets."bcm47xx"."mips74k".sha256 = "02vbcrqqvay8yzg6ca278i5p3fai4ii27zhpxf15g0idjqlrs3k8";
  targets."bcm47xx"."mips74k".packagesArch = "mipsel_74kc";
  packages."mipsel_74kc"."base".sha256 = "11xlmi35hc597i0w4dydfhv70kq1a8dkk1d34pi8sydjl0lhbkpq";
  packages."mipsel_74kc"."luci".sha256 = "0hqxdich7w1bkmaa9zy3979agvdrghraxxhdj5yqfcbbya9gm2ip";
  packages."mipsel_74kc"."packages".sha256 = "1rzm14w407ibi4wli6zhi20ss0z1gx59igq2yrmisx2avsclxag7";
  packages."mipsel_74kc"."routing".sha256 = "1gnx0mr70qa1zgj0wq9wp44n1ipcy7jxmmgljpkqvzsahaiap9bw";
  packages."mipsel_74kc"."telephony".sha256 = "0w2b2ppln8b5r6j38dvwf04flwb0zgcwvingaxjd7y2mvmkyfra1";
  targets."bcm27xx"."bcm2711".sha256 = "1qykfh6qmwx84l5mvns8497j0xbyl2k4d7c32ksmbs3cgfzb8n90";
  targets."bcm27xx"."bcm2711".packagesArch = "aarch64_cortex-a72";
  packages."aarch64_cortex-a72"."base".sha256 = "12rvhx8mxc92ywm8fvrlbkdr2klxbnp3zpqxm5nilgimssvnmnvy";
  packages."aarch64_cortex-a72"."luci".sha256 = "0diar9pbpcbziqh07kigab57fxwnsmavq8pxjswcnhah7gl5kabl";
  packages."aarch64_cortex-a72"."packages".sha256 = "0bblphpv2lxip0wzlf6ch1z69bkqc2zwh2cq1h9ry4yfmv2y3qrc";
  packages."aarch64_cortex-a72"."routing".sha256 = "0s9nb1s4bnzhpbhiamgylcf1ibi62hdq0g1vznhjcphhaczpz055";
  packages."aarch64_cortex-a72"."telephony".sha256 = "036qna3fyj42acwrcwrj33bkclh7midk5hzm4cplpkd6qnx3vlmz";
  targets."bcm27xx"."bcm2708".sha256 = "14b70zwp3c8cmhwgpa77gcnnjx6sschf10n34kln9ssvc313nq95";
  targets."bcm27xx"."bcm2708".packagesArch = "arm_arm1176jzf-s_vfp";
  packages."arm_arm1176jzf-s_vfp"."base".sha256 = "1xlxrq5isyjn1wq0r6jgkxdbh0vzsm4pfah3053wci5blg3prs8g";
  packages."arm_arm1176jzf-s_vfp"."luci".sha256 = "1sanlxmpc68jwn07p28i9bsysnn1md3jzvc3yc4m9pc1y6jn7k9m";
  packages."arm_arm1176jzf-s_vfp"."packages".sha256 = "0k15awafdzphs8xif3h7hxr7jnn1yymc2qb7r17rw00l8hissdxd";
  packages."arm_arm1176jzf-s_vfp"."routing".sha256 = "16qri6anlhq7h7gdba2zz3bgf5aqjcjqbjd9dz2dxsqcav4khfi2";
  packages."arm_arm1176jzf-s_vfp"."telephony".sha256 = "00kw466ablxdfjbdcygq57nfsrm03fkssbab7fm377fywqkh5wl1";
  targets."bcm27xx"."bcm2709".sha256 = "1317a1dl8qnbxaniqkx5pgm3ybkbcq35knqzzgih255hbbwy98zx";
  targets."bcm27xx"."bcm2709".packagesArch = "arm_cortex-a7_neon-vfpv4";
  packages."arm_cortex-a7_neon-vfpv4"."base".sha256 = "09sij8g1kc2czmr6hwnk20nd8h70k511vbknz1asmr57xbv7i9y9";
  packages."arm_cortex-a7_neon-vfpv4"."luci".sha256 = "0hcacbj87i9p9jl5p41qshnigpjyvjvxzgcmprqa5slyb6kv6dqv";
  packages."arm_cortex-a7_neon-vfpv4"."packages".sha256 = "1hm7a8aqrhml2a5bjpqii0ldarc8gqvp0s2zn60dcxwlqqid9b95";
  packages."arm_cortex-a7_neon-vfpv4"."routing".sha256 = "13sr449qbp9083arwg4l639n87zw5qnihgjfmgwckr7hd1hg8vlc";
  packages."arm_cortex-a7_neon-vfpv4"."telephony".sha256 = "0j3y9x0hn7czlgizlqkqhw1qg89r60wyrszqzkmvhzlxdhx9ci8z";
  targets."bcm27xx"."bcm2710".sha256 = "1s716py970b8j64szap2ha08xdr55lrbhdc8ld0x4xp9rcs2pb0s";
  targets."bcm27xx"."bcm2710".packagesArch = "aarch64_cortex-a53";
  packages."aarch64_cortex-a53"."base".sha256 = "08dqmc81by7wavazdlkxaq680kwhd19ihsxj9j79xd89h14cpkcf";
  packages."aarch64_cortex-a53"."luci".sha256 = "1zpyfgw916gfh45xq1wpkabbzvpa3hka56157gdxfdq9zfxg63ww";
  packages."aarch64_cortex-a53"."packages".sha256 = "0c48rvc21fhrzbi54l6q51pbzrb8g7n7jl6whx3xpihdl474cawj";
  packages."aarch64_cortex-a53"."routing".sha256 = "0d0c59qq2rh6hkp1niliwa48yf81lkrgyq89ps3r6nyxmns3x987";
  packages."aarch64_cortex-a53"."telephony".sha256 = "1cjdriry84anvglvm8d39zk2z2mha0q65cvaiz8cmhyjyky4bwg0";
  targets."mvebu"."cortexa53".sha256 = "1hpj6w5d4qpslbibck5yj5ycwiyifbpyci29scxclf4plciy6ska";
  targets."mvebu"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."mvebu"."cortexa72".sha256 = "1k6g2dwi7zw805n0qxap6gy3a9r5hjiln7q7p6c6fwxwyim9yqgx";
  targets."mvebu"."cortexa72".packagesArch = "aarch64_cortex-a72";
  targets."mvebu"."cortexa9".sha256 = "1ahgqlydlb7bkh9fsl5179wpx4pmwy7r1wikdnvhmc7hfqjmnwvl";
  targets."mvebu"."cortexa9".packagesArch = "arm_cortex-a9_vfpv3-d16";
  packages."arm_cortex-a9_vfpv3-d16"."base".sha256 = "0h168hjl75mgqli6cwisw0i6qv86pky4zg7pn7why11k574lvgi0";
  packages."arm_cortex-a9_vfpv3-d16"."luci".sha256 = "0gpg47hggnva9y8mp94kkxgk4ikhwv8jb7acan84qndxvpksvd50";
  packages."arm_cortex-a9_vfpv3-d16"."packages".sha256 = "08nx20asf5yyz1gqp6hcb2khkajp6vw17slpiihxjihrbrna7sj6";
  packages."arm_cortex-a9_vfpv3-d16"."routing".sha256 = "1prz1jman8xv6hwgg3vyw58yr4rpdbc7p5kcs92ix8qvwrjqcn83";
  packages."arm_cortex-a9_vfpv3-d16"."telephony".sha256 = "1mk28908lvmfp1b7rbj7xw11qn3x6y7hfc09ickbj4nfhaj2742m";
  targets."at91"."sam9x".sha256 = "10zyhysivh696smh3qq9d9y1qwvhg31w5ycrxgf9rb5l4vxhc0mv";
  targets."at91"."sam9x".packagesArch = "arm_arm926ej-s";
  packages."arm_arm926ej-s"."base".sha256 = "0kgh622nd37wh1qxrdvbv8yp4l2rn8xavdpqsd3kaa4plv7dfs30";
  packages."arm_arm926ej-s"."luci".sha256 = "03ziw1l658h5yy1pm52nqnhn2xnb01bwd66z1ymxfyv9s4ip1ay0";
  packages."arm_arm926ej-s"."packages".sha256 = "1jjzdzrc39xmlnzhg3dcm96j4wm0c2rflbq6wnx9bdbsa40506z4";
  packages."arm_arm926ej-s"."routing".sha256 = "1wjv8xjgkb9hiwhg461jhr1rvc27ayyzm717n1fcpkzp0vyr0s5n";
  packages."arm_arm926ej-s"."telephony".sha256 = "122608sd3r8hysf0iqx7ijxbdllrdvrg65adyb5kv40lzi3ysjy6";
  targets."at91"."sama7".sha256 = "12bvgqan2ddq3c6ym7z93dkvj0yn86z215amw9myr42i3y1vkz26";
  targets."at91"."sama7".packagesArch = "arm_cortex-a7_vfpv4";
  packages."arm_cortex-a7_vfpv4"."base".sha256 = "1fvvb4dl9ja4ydigsnk2xfcvk6lqnqsnwdzkw8daky9daglv83xj";
  packages."arm_cortex-a7_vfpv4"."luci".sha256 = "0paqj8savgx616biwvchr520lvrk1w7mj50ahf369jfrz7273dcq";
  packages."arm_cortex-a7_vfpv4"."packages".sha256 = "0v9s674jkx22xnw9nlh2dmz8d63w5ijwdjhm715f91rniagc09hp";
  packages."arm_cortex-a7_vfpv4"."routing".sha256 = "00gic68aib4669g5km8kdxy03x9czxymn959xmj3kavr5xsbvxfi";
  packages."arm_cortex-a7_vfpv4"."telephony".sha256 = "0dvssh1cvqn84gsfsjyycw25y19cn41rvp2jd5ffa057dz9p905g";
  targets."at91"."sama5".sha256 = "1y710dzh2ysr88d6793xgdi4q2662ws98y0hg6hzxfnkksjxqhbf";
  targets."at91"."sama5".packagesArch = "arm_cortex-a5_vfpv4";
  packages."arm_cortex-a5_vfpv4"."base".sha256 = "1751x3yw02gh8vw9bzcqivd4ax5p021jh9p7hhh0gd2bxxb1zdda";
  packages."arm_cortex-a5_vfpv4"."luci".sha256 = "0543l5pn5l5m48c5jja7zrrq6ds1p61j8fik5h89lcq6ih3jfs1z";
  packages."arm_cortex-a5_vfpv4"."packages".sha256 = "1kl0lvhg8h0bsginkja0ql2wnhjdp187nssysjcj8x1bigzr20nl";
  packages."arm_cortex-a5_vfpv4"."routing".sha256 = "01dkr1db203gwah1fzf16ss7gi1chrhxvyflmj1whfjj3bn1aibc";
  packages."arm_cortex-a5_vfpv4"."telephony".sha256 = "076xbkivw53xxa0y9kcqws7hgq6yalwi2644viwjlj88zq2815hg";
  targets."gemini"."generic".sha256 = "0g1zs4ici7abjy3rn3g1kf6s7bwlvwl98fy32hy4iz7a9vj13l3k";
  targets."gemini"."generic".packagesArch = "arm_fa526";
  packages."arm_fa526"."base".sha256 = "0kpml7k190vdfj97mqlacqi8ka3i43hx11gcjyyca9vhw22nhc8l";
  packages."arm_fa526"."luci".sha256 = "16ys3577afq9mm7gafai0sl3zmbpakhd83m8039y6ydvnmw219v6";
  packages."arm_fa526"."packages".sha256 = "1z9ylb5ciqkdbdshgjfw26xhrsk9ci32gqakbxnn4a8pvwfa4x4a";
  packages."arm_fa526"."routing".sha256 = "1aicnnqk7pdwdc4w70bpqqx1kkpmkml3al0m8sk9x2xsn0zpjndw";
  packages."arm_fa526"."telephony".sha256 = "02kcw9hlqxgjp0d4j6rxrcvms8p3kgns8clfichisxpy052v3x4w";
  targets."octeontx"."generic".sha256 = "1hzn23gmhp3q273qpcm5359b5clmfmq65qg961bzhib9ls7nxxhj";
  targets."ipq40xx"."generic".sha256 = "0q40p5h2l216azraxdjbfaqbd9fpkcqrwcmlh848lfrjbk4k6hvv";
  targets."ipq40xx"."generic".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."ipq40xx"."mikrotik".sha256 = "0v96rpz6qvwb3d69dlp5vh910if615hfrxrcihxgjhlfdl9ycp59";
  targets."ipq40xx"."mikrotik".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7623".sha256 = "0pczj4krrxwi4ss6ph9kcxs9xgd3gb2br5v1p43ml3qh8iipvh7v";
  targets."mediatek"."mt7623".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7629".sha256 = "02j057hpnxxybv55119dki9a4mm6sd0xk8p7xwbagmnzyym5hpm7";
  targets."mediatek"."mt7629".packagesArch = "arm_cortex-a7";
  packages."arm_cortex-a7"."base".sha256 = "1ri3x0m2x0ai984zibrhz0ypqn8hig8sjvdy50ply1rpqzvqjn7f";
  packages."arm_cortex-a7"."luci".sha256 = "1i5h1f7hnry1p2lz7r225v3pp0dyhhlvz3cp54vpi96jicax6w3z";
  packages."arm_cortex-a7"."packages".sha256 = "0qcrkgsjvj1bhh324zp2jsvvsq68bfjhwmmh2lxynq03zlx1aph1";
  packages."arm_cortex-a7"."routing".sha256 = "0g721hqysr1l7xjfsgp55chix6m9aiizgnxv8n9gysxpdxnfn7ky";
  packages."arm_cortex-a7"."telephony".sha256 = "0lydsk63c7knd7kg3zia048djiyl0qzcj9hkp051d5r5j6fwmz0x";
  targets."mediatek"."mt7622".sha256 = "1wns4dgmx4vxk3n76dp6m7n7hmvcyi6kw9qp9nmhfgrfcid425mb";
  targets."mediatek"."mt7622".packagesArch = "aarch64_cortex-a53";
  targets."malta"."be".sha256 = "1l03sjlvymjigggyslx28bzy3k8rbq8pm8p2r3akixvj4qk5w8vr";
  targets."rockchip"."armv8".sha256 = "1vg8g4jwd49fwi0dic1h2myc3gny7fn2v6rc53scyclzfcvjdcg6";
  targets."rockchip"."armv8".packagesArch = "aarch64_generic";
  packages."aarch64_generic"."base".sha256 = "00g4z0nq49i1w55vf7114h6fbj14wc2if27v8xddakq0jpqa175v";
  packages."aarch64_generic"."luci".sha256 = "0x9ppbzs7mvlmc5mcd6a82qg0p545vixmcvrkvxcpngzvaknvfmm";
  packages."aarch64_generic"."packages".sha256 = "04kympvx9wci5cnff9dcayz8wz1l57ijxxd2a3vsv3hm49lg96ns";
  packages."aarch64_generic"."routing".sha256 = "1x6gacxfjlyq8v84385qdfjwcg80wbv293l1l5vr1r0fs4x4jfc3";
  packages."aarch64_generic"."telephony".sha256 = "1dirqcvhgfl9b1ii5k63mbcszhajf944m0sa379cmzd4nvshw8hc";
  targets."ipq806x"."generic".sha256 = "1zdaliybbff5p34y3cx3qkkmigad6ssqspmczc6h3z6xnv7yjs22";
  targets."ipq806x"."generic".packagesArch = "arm_cortex-a15_neon-vfpv4";
  packages."arm_cortex-a15_neon-vfpv4"."base".sha256 = "1kba8ybpi16fngl7ww103vfgkwgqw6lgbcn5s2zwwycyyk2bmhrm";
  packages."arm_cortex-a15_neon-vfpv4"."luci".sha256 = "1718s5in729sd18s01fsvcax7nxnfppmmnaj1gx8ynhf2izb0jy7";
  packages."arm_cortex-a15_neon-vfpv4"."packages".sha256 = "05prfrd305j6jg3fymwjak8mwrzbqgz807zvgsbbxh0pr0dsxs5w";
  packages."arm_cortex-a15_neon-vfpv4"."routing".sha256 = "161v4kig6gwi2kv1i02nmz2l3vhsbk3c5sxngkjn6bz5hlipinf1";
  packages."arm_cortex-a15_neon-vfpv4"."telephony".sha256 = "13hwikdlcqwi0w80n3lz773amnqscldr1qqg11laf48cl6c2j8js";
  targets."sunxi"."cortexa8".sha256 = "08bhlgdi6imsqxlfpcpmbnmd5ak354x4p91yxxha46kqn5lpzwz2";
  targets."sunxi"."cortexa8".packagesArch = "arm_cortex-a8_vfpv3";
  packages."arm_cortex-a8_vfpv3"."base".sha256 = "0rd3xcdy24jrz85ksgdsimg2alc78l5n90kaybx2d1qja2cbg0ma";
  packages."arm_cortex-a8_vfpv3"."luci".sha256 = "1pg5c643k9911cdvi5i8cnanl0i6w1dwnk8k8glxn4azh2lb8dnm";
  packages."arm_cortex-a8_vfpv3"."packages".sha256 = "1n15lp32hqmvr1f5c8yjrmn774nc785blq2sfilw49z0n4n89px9";
  packages."arm_cortex-a8_vfpv3"."routing".sha256 = "1cdv8ypkhzd7rqmxdm9pvcq0icpb038bzzllw1xc9dzngw8p16a0";
  packages."arm_cortex-a8_vfpv3"."telephony".sha256 = "0vda0xfmm1as72isvpl13qrql85smd62ingdwkcdkvg0r7dn9gkf";
  targets."sunxi"."cortexa53".sha256 = "1dalqj58s21y8xy7c1mpj7lsc6kg5v3x8jxr6n9ds7a44fv4rfrr";
  targets."sunxi"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."sunxi"."cortexa7".sha256 = "15fzfk6qfqxl25y4i97s3kb4akg4izjkv3giq6fd23vibwlp44y8";
  targets."sunxi"."cortexa7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mpc85xx"."p1010".sha256 = "1vjv4gjmzc8hfj2xnvf42l9j4y8r6l8y51kcfb91wh5m4q1m0k6g";
  targets."mpc85xx"."p1010".packagesArch = "powerpc_8540";
  packages."powerpc_8540"."base".sha256 = "14kckz6va3vb4jc2d73zrxsj08y2zvq5szj6ng2hpw3v326vghps";
  packages."powerpc_8540"."luci".sha256 = "02z259y3pfjzgdd2v9wc5ibsbk55s1fwciy489a80vk08cy8rgkr";
  packages."powerpc_8540"."packages".sha256 = "11dixs8bnjiylza96xdn17pvcwbiagjkwazf0ps466cyg8128m5b";
  packages."powerpc_8540"."routing".sha256 = "09sdqh7fr0f0whyscvcw5qjgm4n080k2mp3zsy86a2b2mjs6his9";
  packages."powerpc_8540"."telephony".sha256 = "1xryb1icpv6x9p685yvsli6dkkarlvqj4cipcp8s79sy0z41s9zv";
  targets."mpc85xx"."p2020".sha256 = "16863gs658480jb27qjv3n6lrwszlycli9b3xlz6w6g0y5ga9yk5";
  targets."mpc85xx"."p2020".packagesArch = "powerpc_8540";
  targets."mpc85xx"."p1020".sha256 = "0cgay5wb848dkvi9jrppsrvrw6c5dpdh24f9kwc7lfr02456rlfv";
  targets."mpc85xx"."p1020".packagesArch = "powerpc_8540";
  targets."imx"."cortexa7".sha256 = "03hngks0rqh89rj7qry69s3wvi4cawii3plwmnnim9zwn9rdxiga";
  targets."imx"."cortexa9".sha256 = "1jrg7nz25cnvqyvy2cbyw3r07146cxi49cm69v4pi18vdl1mdxxd";
  targets."imx"."cortexa9".packagesArch = "arm_cortex-a9_neon";
  targets."x86"."generic".sha256 = "0jsqn2d038qp51wmq6kc6lpfyy38g864nhs7fjrcc47a0zaahjny";
  targets."x86"."generic".packagesArch = "i386_pentium4";
  packages."i386_pentium4"."base".sha256 = "157kwf63f4s275ik5frzgan228pqvv9917x7383gvxvilrg1f8fq";
  packages."i386_pentium4"."luci".sha256 = "0d5p5x0iphdbs9a4r7mmd5ijzy251kb1zc8q92ynpm8i42bandy3";
  packages."i386_pentium4"."packages".sha256 = "05d415rypmjhc9rxam6d61njbmp86bwlh6xfpv167bviwhjaaq1q";
  packages."i386_pentium4"."routing".sha256 = "1f2vg25fpcslw1ggab4xq56fq4pppxjc2h7kwpl99aaa3sgxhh2n";
  packages."i386_pentium4"."telephony".sha256 = "03vyry4llkb9ppfm2cdw4v5j6iih6x48pycfpdikzh38ap99md88";
  targets."x86"."legacy".sha256 = "0l0cwaxda838l4m3sw28mi4xa4n3q5i265sky5afw9w1qy4jc475";
  targets."x86"."legacy".packagesArch = "i386_pentium-mmx";
  packages."i386_pentium-mmx"."base".sha256 = "1sz67z0300xs54yp68vjwxxm0ywgwf778iq7gxp4y89ac9pphcc1";
  packages."i386_pentium-mmx"."luci".sha256 = "07rymh365fd0bj6myssq0jhzdmy67499pljvjpfyrfka05q9b3bh";
  packages."i386_pentium-mmx"."packages".sha256 = "1m9jsr2dvrsvlbqy52sip493dhpdv02q4jydharnwr9dkw2yblzm";
  packages."i386_pentium-mmx"."routing".sha256 = "1ninxmd30zx429pl3j271vrj3afsd67lmm8z1mmrarijrpwrmnvg";
  packages."i386_pentium-mmx"."telephony".sha256 = "1zyfz7azyvmvpca519ykxm60ypi4s5zmanfaq12dysf7c5mq36bb";
  targets."x86"."geode".sha256 = "0cf12l74j7p1g111zvmm8vci96cg67w98chq8bnmjxxlq721yayx";
  targets."x86"."geode".packagesArch = "i386_pentium-mmx";
  targets."x86"."64".sha256 = "14mavvmnsfr98avlg521xryzp1ll2yxirsagj633mhr3ky4dmhw2";
  targets."x86"."64".packagesArch = "x86_64";
  packages."x86_64"."base".sha256 = "1xzl05z344h9g53m1czbfqknly78kzqp8qvf9p26izmvqi6ga98y";
  packages."x86_64"."luci".sha256 = "1pjjs7w8rl7rbrh98pc808yw8j6qw4g7lvbysr89z981ayr82zcx";
  packages."x86_64"."packages".sha256 = "1rb9h9r8nwdjpkmz5gi3wf96ixrr2sfx5fd8n6spvjr0nbv11v3h";
  packages."x86_64"."routing".sha256 = "0kzajriz0932djiz4saqdr0khrj1wb8mm0dw2gizpj7nydszd1s0";
  packages."x86_64"."telephony".sha256 = "0jh3gllbi20pican3j88svq218979rljs6pxgaarsfv8vi63bn86";
  targets."realtek"."rtl838x".sha256 = "1429ysdmryd0ah07kw6pz6q9b1m0r535dcvzaria9c1vmlf1ngh9";
  targets."realtek"."rtl838x".packagesArch = "mips_4kec";
  packages."mips_4kec"."base".sha256 = "1fjd862c7351kgka2l95g8r9n24q8qzqx265hwycx52i0pw7179i";
  packages."mips_4kec"."luci".sha256 = "1yr05c98qps28ip1qhqy3ilihsxrc4y3s157hi2yfj7k4jw08fkg";
  packages."mips_4kec"."packages".sha256 = "1245li21arbqqpzqpmkmjfq8z8ad23rzybxd3c47ykgp1vrm7hv2";
  packages."mips_4kec"."routing".sha256 = "1i1w08caqianwvv0398n4lp1i745v6pl1pg9p1imyfmivdvxzqji";
  packages."mips_4kec"."telephony".sha256 = "0xysshb81hwrhixb3d897f4abys6a06sxyd1n3mj35wir19zjh6a";
  targets."realtek"."rtl930x".sha256 = "1r7c9ndr15f2n3fjky1a19bnh4nszp21a0524qnaayaczvlbxing";
  targets."realtek"."rtl930x".packagesArch = "mips_24kc";
  packages."mips_24kc"."base".sha256 = "0c4cq8i8fv1s8zzd6ki9jipdapyz2lcjfn68pyys3m4fswxryali";
  packages."mips_24kc"."luci".sha256 = "1jqdj495igyh2cp2hnl66bgrqjzm17innzxvqk20x4i3cphfqf7i";
  packages."mips_24kc"."packages".sha256 = "10d2adrb9frhmw1y1mb4hxqig25hzpsjqrqny4cdmjifj7i66pkv";
  packages."mips_24kc"."routing".sha256 = "0xpiq0hjb6jbngi3x45vfkrkfcbdvzwa1m0fmq8iw4b8hj7bgqjb";
  packages."mips_24kc"."telephony".sha256 = "0iflqfyz3w2yd55lapp3kq82a1626dw3p31mjalz3ly0lx6qqgrg";
  targets."realtek"."rtl931x".sha256 = "1gh4zxmj63lh29pg6aff4x4h2qli12l16ndd19sp8wlww3idhm7j";
  targets."realtek"."rtl839x".sha256 = "1vyidlr34h5p4ap389qb87g65zwxi8p6jgxy5yzaaj35hj4whsil";
  targets."realtek"."rtl839x".packagesArch = "mips_24kc";
  targets."armvirt"."32".sha256 = "1m7zgyw9jkw4b21b7prw0xg22gdaxr0cmx7drjdb184l1y54rs97";
  targets."armvirt"."64".sha256 = "11ciscm5ddh1mdn2c03sb5yf79yjlcmimqaaw9mjli9y0j2yzsr2";
  targets."kirkwood"."generic".sha256 = "02b92pv8fkmhd9flgynp7frjhpmj3bn4xspqb3yl8ljc4nzfviky";
  targets."kirkwood"."generic".packagesArch = "arm_xscale";
  packages."arm_xscale"."base".sha256 = "0vbh61y0hinx9lj722nlrgad9j1skdclibv2ghy2n6mbh72kk1m9";
  packages."arm_xscale"."luci".sha256 = "1zs6lwri0rrbnhc5r8fvhpngkhzg6xiycqwr5a0hsnihff3a309b";
  packages."arm_xscale"."packages".sha256 = "02zi3y40114kzk2qx5b99vi1cl6v048l38mhlym612fg1ksv6lx7";
  packages."arm_xscale"."routing".sha256 = "1r5vrnpww0c0nf3l0i02gg2gwnibcxy8dpcqwvkwmjm9kp7lgd0k";
  packages."arm_xscale"."telephony".sha256 = "1h81vgn2jdd4jca7f40pjvr00n0rwhdgcd1l9lp6im7s6949135r";
  targets."ath79"."generic".sha256 = "1fp3n4gdjc8ar7lb8dskbhikgw35qn3cqq87dvvc7d7q0z8fk7wy";
  targets."ath79"."generic".packagesArch = "mips_24kc";
  targets."ath79"."mikrotik".sha256 = "185ah7v2shh9if7p8j1a46vrndgrrbkf4x0kxlk5bc81dv6hcg60";
  targets."ath79"."mikrotik".packagesArch = "mips_24kc";
  targets."ath79"."nand".sha256 = "1p6516l5h45kk3q7a159wg2l36mpf5p76qah4kj9z41b64q1qfii";
  targets."ath79"."nand".packagesArch = "mips_24kc";
  targets."ath79"."tiny".sha256 = "0b2581w0005dnn7fpj4shi2ln89kdwj2a2ay2jdy40zsw55hsb2p";
  targets."ath79"."tiny".packagesArch = "mips_24kc";
  targets."archs38"."generic".sha256 = "087kln2q6hs5jm8s1jvfbliav2pn387161683k0c8ycdh9x0yj0p";
  targets."archs38"."generic".packagesArch = "arc_archs";
  packages."arc_archs"."base".sha256 = "03pgikqllcpmrrnqgcxgd2n30md7shqkqismsz3yzl44lsd1h5xs";
  packages."arc_archs"."luci".sha256 = "0k5sh4w0k4akirwm7mv8c2mmvqrch5y15q0z3822nscvsvg2n6kc";
  packages."arc_archs"."packages".sha256 = "02rvz8dynkxvrj2c36fa2qxcish80dzslnjcsxg0kkd8mhl70rpw";
  packages."arc_archs"."routing".sha256 = "0hxli4c8j7fmml9b1h819whnfyvwxfwmicf7ragfdkh7dqnhk4by";
  packages."arc_archs"."telephony".sha256 = "0r30c0biv7aimm47qpj47sh4jmlpjl76l9p8afajs0pnzlbpid08";
  targets."ath25"."generic".sha256 = "0md42dvx2qxqg4h62h3dabfqr2jxgkxsxifc9y98yjmchq8ar6df";
  targets."ath25"."generic".packagesArch = "mips_mips32";
  targets."apm821xx"."nand".sha256 = "1xlrcnddb0jqpv831j1x3n8bf41hm2wkcj9hywx0lgzbcyqbd0df";
  targets."apm821xx"."nand".packagesArch = "powerpc_464fp";
  packages."powerpc_464fp"."base".sha256 = "1vqww4aaimqvajyk0w6jpyc5x44jbwww12m2zl8rdvfx0jcpb6aq";
  packages."powerpc_464fp"."luci".sha256 = "1lrb4dfjj70j6hlsq0dpx942ph7r1hiilzrgv3qsh4vz0agikd6m";
  packages."powerpc_464fp"."packages".sha256 = "11cdgkfwy3z3rrh487v7kwiwzlksljvn1v4bzhm4i66g56agb5hy";
  packages."powerpc_464fp"."routing".sha256 = "1yin5ivd2jkip7gvjwskpgb9nr9wqqdvv1ghq7amy6460bczkd4r";
  packages."powerpc_464fp"."telephony".sha256 = "060bq5nb8zi336ifkbb1pz3as1mfxbnq0klmpjgk9visvgxi12g2";
  targets."apm821xx"."sata".sha256 = "1ssxq2x4jzl6c4z24xdy7pvlyin8n63swh7hgpx4w85wcm1n9adk";
  targets."apm821xx"."sata".packagesArch = "powerpc_464fp";
  targets."bcm53xx"."generic".sha256 = "0nxzixzwjw5cp0asi80b666dgcrkrlkgal1v5z4gyjqcicrnkyhq";
  targets."bcm53xx"."generic".packagesArch = "arm_cortex-a9";
  packages."arm_cortex-a9"."base".sha256 = "0asvl7g99n8v9bwfvz1agcg5qcz6n9409h5wva6153a0jfpx9xx8";
  packages."arm_cortex-a9"."luci".sha256 = "0ijpn46f04id0n8d6hzivh079y92six8cxvg28dcir9m7vz7b6h7";
  packages."arm_cortex-a9"."packages".sha256 = "0sqa6gfw1ck5a07w1yv7wlsfdbwk4nhg79l47g7jhh1g3s3amnjn";
  packages."arm_cortex-a9"."routing".sha256 = "17wyibph0gdhwqkf0v91v61pzniw9xk2awc52wxnl25a31807d0y";
  packages."arm_cortex-a9"."telephony".sha256 = "1mlbyw1slzmsl20dffbnm6gkwh41h4kiz4g3pmg9g4xjr9j0zars";
  targets."ramips"."mt76x8".sha256 = "0jldlhqg7yxiii3hzp3mjh34ymwy0vi3xrxk0hrm94m8vqnjs3ij";
  targets."ramips"."mt76x8".packagesArch = "mipsel_24kc";
  packages."mipsel_24kc"."base".sha256 = "0mzxj29xb2qfv8znqlg1l4j0dm3v562d4fvmi5nqhi7a3p3wlnia";
  packages."mipsel_24kc"."luci".sha256 = "11lfnfs49qr8169pkvjxvn5rppdbmlnjw6rbxzp0pmblc5dq379m";
  packages."mipsel_24kc"."packages".sha256 = "1hjwkazcy1gmchacnbrrb3sb0ngdglkfgmr5l4j14jp34jjqvz9a";
  packages."mipsel_24kc"."routing".sha256 = "18ikk4mvy8v1db1f1dldy6506im644axhbfc3j102l57vfban2gs";
  packages."mipsel_24kc"."telephony".sha256 = "1gswalfjs6sh49l6vb40m3aw4qfak8w43gbjp042xlqq66c8lnxa";
  targets."ramips"."mt7620".sha256 = "09xadynhfjzrrdhybw73i90djr25v9m9cx2j6mybwsgfryp7qik2";
  targets."ramips"."mt7620".packagesArch = "mipsel_24kc";
  targets."ramips"."rt3883".sha256 = "1ax3ialwag52n24awdf8cb4i34nv662hik4q5fxij275l7gmhk36";
  targets."ramips"."rt3883".packagesArch = "mipsel_74kc";
  targets."ramips"."rt305x".sha256 = "14wxyf4rkjsdjani84kcc2nk50ypqyrwsd1hiswal5vd44rp1nhp";
  targets."ramips"."rt305x".packagesArch = "mipsel_24kc";
  targets."ramips"."mt7621".sha256 = "131cx4hgrgscssdd82ksid67nqpfzfxfsv9g913n4inmj5mg1y6s";
  targets."ramips"."mt7621".packagesArch = "mipsel_24kc";
  targets."ramips"."rt288x".sha256 = "1qma5a1x87z085sn4dixzry7i8mpzgzg65m51vp893ih26lppcsv";
  targets."ramips"."rt288x".packagesArch = "mipsel_24kc";
  targets."lantiq"."xrx200".sha256 = "1zywm58skwsb60zsfvrfisrxjd8666zabsaamjci170ira60015h";
  targets."lantiq"."xrx200".packagesArch = "mips_24kc";
  targets."lantiq"."ase".sha256 = "1fw20gmb6npjn9abknfn8ikpxm16qviavq4k354aa1ylplmkvwyr";
  targets."lantiq"."xway".sha256 = "0556234pj5wvynaqphfwvf9xyyy7yc4sqncdvi1kvmppg90qx52b";
  targets."lantiq"."xway".packagesArch = "mips_24kc";
  targets."lantiq"."xway_legacy".sha256 = "1yj0q6702nyb01ixwa40fgyd70ap5irrkn6zyahf8xz6f5rdcfm0";
  targets."octeon"."generic".sha256 = "09z7lvr0h37q9ibqf1w38m9w9djr01fmsny79r9s68knrkccmghq";
  targets."octeon"."generic".packagesArch = "mips64_octeonplus";
  packages."mips64_octeonplus"."base".sha256 = "0xshc765kxpwq3pdfbx49gyaxfvh2a1nr84r14rij3165hwm7dgj";
  packages."mips64_octeonplus"."luci".sha256 = "0jjxwab2bf2qi9m9kf7fpmif074xy639aqsn1w6xmnl36k9zz109";
  packages."mips64_octeonplus"."packages".sha256 = "1ys86i98fjknf2p1fw94vihdnvs3l0wwpk1bdiwkmzjlb8zdq411";
  packages."mips64_octeonplus"."routing".sha256 = "08pmghs6qsi56f07rad2rnxac1fhjhnz4k56dpyi2jqrhpp80bhh";
  packages."mips64_octeonplus"."telephony".sha256 = "1bl3rwcwi3rxfzlpm4xhc4jqx8i7n1rwfpm14q2ga22d5bpfbfc9";
  targets."pistachio"."generic".sha256 = "12gsk9j72pvvw7j9rn4iwpnaada1z6w8cd96qxvgynhnpfci5fc5";
  targets."pistachio"."generic".packagesArch = "mipsel_24kc_24kf";
  packages."mipsel_24kc_24kf"."base".sha256 = "1bjvbfgbzdck4bii0zd70ls1h2z4hppxxz2qd3ziqxw068rj98dv";
  packages."mipsel_24kc_24kf"."luci".sha256 = "15xcv687x4sxvkj4qqaazccjy150n95yh8rq1ihlxx6mwfxvkn8q";
  packages."mipsel_24kc_24kf"."packages".sha256 = "19ik5zqh9a4jr90q28jhjrqqdmzgv9jd9wpg8ji6g72pxmm15258";
  packages."mipsel_24kc_24kf"."routing".sha256 = "07nhsjvwys1z6nyxi3wff35mq11kfliyy2zkk57hk7rzzlnaxrb7";
  packages."mipsel_24kc_24kf"."telephony".sha256 = "048yg77a94i19s0khqlx229r30s3arpav6kiwxhyfxp6c45vqqsf";
  targets."layerscape"."armv8_64b".sha256 = "0566vsbx38r033dp9ayhwx1fmsqfqjhjr26hv1wvn6s3dlw1l063";
  targets."layerscape"."armv8_64b".packagesArch = "aarch64_generic";
  targets."layerscape"."armv7".sha256 = "1lslg9i1hf9l17y1c4gy21sdz7hwkdcg5dqy64i5843q7778gnhg";
  targets."layerscape"."armv7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."omap"."generic".sha256 = "1d7na594j9dc73bjkj7d6h561n6pz8h1b8d093gaaqkam463g19n";
  targets."omap"."generic".packagesArch = "arm_cortex-a8_vfpv3";
  targets."tegra"."generic".sha256 = "0mdpa94pa4zxi3dpjvppwd53lchwnlx9gqwzcyb27nnmbcdyf89j";
  targets."tegra"."generic".packagesArch = "arm_cortex-a9_vfpv3-d16";
  targets."bcm4908"."generic".sha256 = "061357k7shpqs343ic27pv5qk2d6q39369a4cpj0fz01pbs0iga0";
  targets."bcm4908"."generic".packagesArch = "aarch64_cortex-a53";
}
