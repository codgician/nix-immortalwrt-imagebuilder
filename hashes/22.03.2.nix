{
  targets."oxnas"."ox820".sha256 = "1423q4vg8xxs27zii32d2bdlhqks0m7nxyqi8n1qzzhdrj4041nk";
  targets."oxnas"."ox820".packagesArch = "arm_mpcore";
  packages."arm_mpcore"."base".sha256 = "1axbwjazaivppph793ybhmdsifcp8lfq26z2p84dmh6pj6basgb1";
  packages."arm_mpcore"."luci".sha256 = "0aqhaj697gg7871anh9nndb5p5g9k10ysr83zvdjjx2jsr43jkdy";
  packages."arm_mpcore"."packages".sha256 = "0r40b2z26fsij89j0w7h9jhqvpqc30l3ghxz34s6r5a2qz5kgsk8";
  packages."arm_mpcore"."routing".sha256 = "04r15mly42s0xb9k9acv0nwb953anrb9i0rw9is298h1347z1c5z";
  packages."arm_mpcore"."telephony".sha256 = "0kfzk9gkqyfkkgzz30pg0a2gysx5bf15y2jknp3f7vzqk32ykdyc";
  targets."mxs"."generic".sha256 = "1ajs8rl6dvvimdg5cxpsvdsw82za4nrsnql27biv7snncwlm5js8";
  targets."zynq"."generic".sha256 = "03942bqyyknijvcvmfcdjc2mpqiss6sjv5xn7ry6ci1j25qgrx3j";
  targets."zynq"."generic".packagesArch = "arm_cortex-a9_neon";
  packages."arm_cortex-a9_neon"."base".sha256 = "1n0pr4aaxa5gv87mjf51a3b5s610hc2wvz7r53rl8gnlw06a6swd";
  packages."arm_cortex-a9_neon"."luci".sha256 = "0vfchy5k5qwjn3nllal6y47l7pwn2wy0pgf920dm7mbqvhzn0w62";
  packages."arm_cortex-a9_neon"."packages".sha256 = "0jzf7qb63gmblgpgx7j4il49f8yz81cp7q145spq0fr02hg82z1s";
  packages."arm_cortex-a9_neon"."routing".sha256 = "0asfx83d9lklpk30pz1lfpamil98ra7svs0s15hab7cqxvz68qg4";
  packages."arm_cortex-a9_neon"."telephony".sha256 = "0v71wvq3xhhpblfwqc0bq9mlhm2lzjz1hy1wfm22dbz9d998y4sp";
  targets."bcm63xx"."generic".sha256 = "1xa45gpqvq36q939wfrnxhix2rw431hs32l54lwczgcy9a3n9nqn";
  targets."bcm63xx"."generic".packagesArch = "mips_mips32";
  packages."mips_mips32"."base".sha256 = "0viw29n4d4vg65q2h7vwnp6dfl3f5ckfc7dyqw1w4gpy6kkbcdv0";
  packages."mips_mips32"."luci".sha256 = "118n5winfg3iq0aizq96m20kw08cwzaw6p7333q64hl80619sxn5";
  packages."mips_mips32"."packages".sha256 = "0rf9z3cc32swd2gvvz7lzpr7i25krxzhm2p8j1bkq72pm784b903";
  packages."mips_mips32"."routing".sha256 = "1n09gphwssi6hz5i7kq6gsf36310giidnm0k01nnrb9bmjhd7sn4";
  packages."mips_mips32"."telephony".sha256 = "08vcqswgw9baz8hny5j8826mdgapqinbcjwygs0140wj6dxh4pqv";
  targets."bcm63xx"."smp".sha256 = "04rhic1w3d0bv8g1kmj2a06ab6r4z8g770bkls975r791y105dr3";
  targets."bcm63xx"."smp".packagesArch = "mips_mips32";
  targets."bcm47xx"."generic".sha256 = "0lqnbsdsi1ri80f7w6lyn84rqx5lffd9dbfd7w803sx4pfqbpl59";
  targets."bcm47xx"."generic".packagesArch = "mipsel_mips32";
  packages."mipsel_mips32"."base".sha256 = "17nsakkd5pij2vkbiy02m7q30d9yqkhcdminp37bqlirnq8ckpf3";
  packages."mipsel_mips32"."luci".sha256 = "120dpznjf439m2qijdzm43sv3y1knkb4qkk6p1jrwsv926lh4lgk";
  packages."mipsel_mips32"."packages".sha256 = "1bpd8khl3ssach52c8w8xll52gr2yv9fl55pxh0m5cpzp5laz6q5";
  packages."mipsel_mips32"."routing".sha256 = "1qbbzjyb3i9y7xz5npk6h5rqc8h673pajj2j8nlns06mdgx966za";
  packages."mipsel_mips32"."telephony".sha256 = "0sxslghdyl0crwqxjl3bm1rh5fhx3schj0kjwmwcw4qw4g6ac9az";
  targets."bcm47xx"."legacy".sha256 = "17ygscdjlk0k6g4p4z38x8jkqh01glzd3hwl2panccj8bgdhaq6c";
  targets."bcm47xx"."legacy".packagesArch = "mipsel_mips32";
  targets."bcm47xx"."mips74k".sha256 = "04qbzkhqilf5vk96bsqq8hhlidgpjwiv5lzvimbbpxj50r1qk313";
  targets."bcm47xx"."mips74k".packagesArch = "mipsel_74kc";
  packages."mipsel_74kc"."base".sha256 = "0qi6xdv9mli6wam16y19viwpvzig5xp7k7v4v4g4p2748gdgyhdj";
  packages."mipsel_74kc"."luci".sha256 = "0yr8x8kw6mighy4zfvmwp9y6vw28xbrd2np3aih13p2w1w9wgxsq";
  packages."mipsel_74kc"."packages".sha256 = "0h3x0071ivnl9gb4r20hrxw0k6q8iiq1bl0p3mamgqlccni0y1p4";
  packages."mipsel_74kc"."routing".sha256 = "0fdj0bfkc80cdmiz39kx983zini7g17jpayvxd0af3dn2bgjw0nd";
  packages."mipsel_74kc"."telephony".sha256 = "1wa4wijpdsxp4wli34zagsrpf9k541vvfdl14ps2q8z88fgx2lh4";
  targets."bcm27xx"."bcm2711".sha256 = "1w5razcr815vmjg8hw29zr1swrj60idjn2g9qd73dddr4jwwfvzf";
  targets."bcm27xx"."bcm2711".packagesArch = "aarch64_cortex-a72";
  packages."aarch64_cortex-a72"."base".sha256 = "1a1gpcjzd437sgy1f2vn5xd1gfra3byaj0hsw615gz3wylkwy84l";
  packages."aarch64_cortex-a72"."luci".sha256 = "1ld9qsif5pngslqravh5ki3kwwfvalskbk75r5nx5ils5zlbif5j";
  packages."aarch64_cortex-a72"."packages".sha256 = "184pdw57qr7ks3v0jym85spa2qadabxjljlkgrh10bbpmgsnmnsv";
  packages."aarch64_cortex-a72"."routing".sha256 = "02nkxnp9p308libck7w4arip3rrzcx3mj9pyvdn6s813rf2jryk1";
  packages."aarch64_cortex-a72"."telephony".sha256 = "06l6nsm6k3rqy3lds69kwslx30jq753cqgag6mm7hnr70h9yp14d";
  targets."bcm27xx"."bcm2708".sha256 = "0f5vhdk7f1mjd6pawrg47kph64af8vv5fsrw75bl8qj31b5bq0rj";
  targets."bcm27xx"."bcm2708".packagesArch = "arm_arm1176jzf-s_vfp";
  packages."arm_arm1176jzf-s_vfp"."base".sha256 = "0qkgqq7lnxywmcavzx4nlyi6qjjyrmv4f8nr1hygqj54yvrcy698";
  packages."arm_arm1176jzf-s_vfp"."luci".sha256 = "0xlz5k2arr4nvd314hm80ml7n97j56alahzbv47q3ds0lv7iwgy7";
  packages."arm_arm1176jzf-s_vfp"."packages".sha256 = "1wqxymsdcjvh1xn0ia7j51cqw2qah999wjzxc42c9wqzk3155wba";
  packages."arm_arm1176jzf-s_vfp"."routing".sha256 = "1x0383ix1p3sbj3hki3smav9ra6amgs9avy9b93wqhhbxxxxyh5y";
  packages."arm_arm1176jzf-s_vfp"."telephony".sha256 = "0l8wjjm6av9mqji9d8cbdwcc33j9wfnkmc263rga08gavapk1iwa";
  targets."bcm27xx"."bcm2709".sha256 = "0ydzrbp8i65wkizrmclhssq9w7fsc2h43wp20iad7l1jj1vdbif4";
  targets."bcm27xx"."bcm2709".packagesArch = "arm_cortex-a7_neon-vfpv4";
  packages."arm_cortex-a7_neon-vfpv4"."base".sha256 = "01vwzwnal7zgbkj5ql3y2j2nqfyny7iaa83d7kcy277wxy9hygsp";
  packages."arm_cortex-a7_neon-vfpv4"."luci".sha256 = "0ckv16g6rxkliypxyqi4rpw18s89snfm6070c1lmn68s4vr0cgik";
  packages."arm_cortex-a7_neon-vfpv4"."packages".sha256 = "1aas622gjvxk8am6yjshjj1rxqqdp0x6sba06vg85zg04x80j1bw";
  packages."arm_cortex-a7_neon-vfpv4"."routing".sha256 = "0yb78m39abq8fxns9r7kcqmbfmag7nbdc39w44jwx74v8f48hjz2";
  packages."arm_cortex-a7_neon-vfpv4"."telephony".sha256 = "0hscaqjdh894cmbzym5i0yq1pi0p7392m79kw44z5s9yax5cfhnz";
  targets."bcm27xx"."bcm2710".sha256 = "1d96ln0nyyw61jf44f3a65gd3s53b3dpjg687cp0nswny3gwajif";
  targets."bcm27xx"."bcm2710".packagesArch = "aarch64_cortex-a53";
  packages."aarch64_cortex-a53"."base".sha256 = "1j30hp8axbj20swndyvqhn33k98922giz3n34ldc1qc8gfbdi6zg";
  packages."aarch64_cortex-a53"."luci".sha256 = "0cjkhjw8vblf3mi12mgqj6pn065wymsgf7mk73n78nvl6v3vwmvf";
  packages."aarch64_cortex-a53"."packages".sha256 = "19vzbnnxbzcclx7gj5z6hlq2nvvldi9nkv9r3w7z1n9rhk3ki41j";
  packages."aarch64_cortex-a53"."routing".sha256 = "1k63js26i72yfmwzna5qam9h67zkjjpb49ljaynsysz650j3pmgk";
  packages."aarch64_cortex-a53"."telephony".sha256 = "0fl32pk3xqa2xdcvwz7g4r5fhxy9ka11pd8qyipmrb6ij0ky9ljz";
  targets."mvebu"."cortexa53".sha256 = "0lk2yjww5xf7mw79j820i36r6xb7dfa7yka9q3msf0llqlncy8dv";
  targets."mvebu"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."mvebu"."cortexa72".sha256 = "1z1p5f1d4k13gr0q2rb8qz4r7gc7cj72s7dbz4k9qp5rr653pv58";
  targets."mvebu"."cortexa72".packagesArch = "aarch64_cortex-a72";
  targets."mvebu"."cortexa9".sha256 = "193c3c2fvpm1pyg9q6cgd5rn7zw9sx65bj9w5yychnhm22vgbvxj";
  targets."mvebu"."cortexa9".packagesArch = "arm_cortex-a9_vfpv3-d16";
  packages."arm_cortex-a9_vfpv3-d16"."base".sha256 = "0s2z6ghmcpz8pwi3nn620f4rycsgkirlgv7z38sq56cxsszm7336";
  packages."arm_cortex-a9_vfpv3-d16"."luci".sha256 = "1g003y7kqx19g97cxk9i11jrpvbwjkgx8as2ijl81cqbc88dhbvl";
  packages."arm_cortex-a9_vfpv3-d16"."packages".sha256 = "1610yag61sagp5kxlvyy3yqhligp9j5nfnz4qzlya92xiv6z83yd";
  packages."arm_cortex-a9_vfpv3-d16"."routing".sha256 = "0qfscyhdp1y95h660dkb0dj1vx75pmi8vnagy8ja2x94v82jmnk2";
  packages."arm_cortex-a9_vfpv3-d16"."telephony".sha256 = "1ym69ngaaa78xa5abjj308zi9qbi5mag7qmf8db93nzgngff430w";
  targets."at91"."sam9x".sha256 = "12d4pplnyc3977nvahgp90yvy02pm52zgiqn65fh2di4xg0j938z";
  targets."at91"."sam9x".packagesArch = "arm_arm926ej-s";
  packages."arm_arm926ej-s"."base".sha256 = "0cnxpcy586fid1ljv4q38swid4yi3cbc7wq8da8yfyk4znbnqpyw";
  packages."arm_arm926ej-s"."luci".sha256 = "1pvw6ija41fynhb4hrnd6x5qhbyra8l96y8dwg314vi9z04vcqwv";
  packages."arm_arm926ej-s"."packages".sha256 = "183wjj4s9rixwsqj0slg33i6n27jmj9i56ms6j9f6hq9911mf3dm";
  packages."arm_arm926ej-s"."routing".sha256 = "0nybkks0ag1b6yxrcdsagp1fk7iyyv2iz3a91xwfw7i0fxp618dd";
  packages."arm_arm926ej-s"."telephony".sha256 = "0vzmnm927sx8xav4lv2yb3v2l0pajlvq0h2vymha8f2gk5i2rgm9";
  targets."at91"."sama7".sha256 = "10cqbgvlbasfidyya9w3s5v8qjclljkcgn3kihxd1i4kv32cdyf9";
  targets."at91"."sama7".packagesArch = "arm_cortex-a7_vfpv4";
  packages."arm_cortex-a7_vfpv4"."base".sha256 = "04bihb3ld9zw0791lpzads7lwqib0ibr1q2x4953mjg1y7m0ac8z";
  packages."arm_cortex-a7_vfpv4"."luci".sha256 = "05wnbhr5rj88jwz0j9ccisa4q1lm1s0jjr4nci2ml1ks1kr76pz4";
  packages."arm_cortex-a7_vfpv4"."packages".sha256 = "1cgj4j1767b0m7j0nnjdgzzkf8b0gabxaslq14idnsvq4rcnkc0v";
  packages."arm_cortex-a7_vfpv4"."routing".sha256 = "04kwkiyjdac8pg6xq97hbp26b7sk3lcv4pi7rgahqhbqla7ci2gi";
  packages."arm_cortex-a7_vfpv4"."telephony".sha256 = "01lvia3dzvfwn97ksifdj72a560mcvn7ifgc01ykbvq8vs2w4b8w";
  targets."at91"."sama5".sha256 = "0g69v1ar213iwxzbn56kxp7ff3k0m2dj3g9h8vpbwr2g2jrf83n4";
  targets."at91"."sama5".packagesArch = "arm_cortex-a5_vfpv4";
  packages."arm_cortex-a5_vfpv4"."base".sha256 = "1bj2r0jvp86vgrywykbb4707z7z09jvmpf40x08fxq4z3j7h85qc";
  packages."arm_cortex-a5_vfpv4"."luci".sha256 = "113dy9krx2qayh6nphc2nbs30xxxls92y2cvvbplhs81z4a6qf47";
  packages."arm_cortex-a5_vfpv4"."packages".sha256 = "1h05jlk2hnmpzkzavsvfknad49px17297h7yd2idbpzdmqqhpqqz";
  packages."arm_cortex-a5_vfpv4"."routing".sha256 = "0n66z7q81cjkg11rad7jl702jcbqqwmmrrd8gl2v8y47w9361kiq";
  packages."arm_cortex-a5_vfpv4"."telephony".sha256 = "1ivqr0hb31irjzfwlf0r9rg8xdhjj5rx4vxbdiywyi2dvaassfy7";
  targets."gemini"."generic".sha256 = "1pg3n40al1vinfpqyy5m0d9k20h7s0bs556j68qvhj2nmxf1sd2d";
  targets."gemini"."generic".packagesArch = "arm_fa526";
  packages."arm_fa526"."base".sha256 = "0mflmmpy08gs3hmvm83lp07190qdh0mhiggvv9lgrqnyj6hvaf24";
  packages."arm_fa526"."luci".sha256 = "0syvp2j1fgcbvasvbfcr9swih75dlz7yq5zhkr41sy3ybi6q46yj";
  packages."arm_fa526"."packages".sha256 = "1km9ad3v04x52p2fjp83ssjhnmzpnn7ipln6q2f1vmm2xja8h188";
  packages."arm_fa526"."routing".sha256 = "0g91wnwbp2l3cyk5n541j0if43f9lzib8amnjsfn0d5850hf6w0g";
  packages."arm_fa526"."telephony".sha256 = "0afxpq6kr88vikykrcmhxi195clzjyhxig2c0bda232sy5v0ambx";
  targets."octeontx"."generic".sha256 = "1jmv4hrd96zn7crx4ql1x2ngbi6xz5vhpkv87sb4x7lxq5lp4pw2";
  targets."ipq40xx"."generic".sha256 = "0y12qfdd2zlapspabr1ahmwys32pv83g4mqqlacpfpyxn520aikv";
  targets."ipq40xx"."generic".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."ipq40xx"."mikrotik".sha256 = "1dqyf6javsmksqwgsfmq6vmxhzk1lcq18lphvrmgdng72b3qp5my";
  targets."ipq40xx"."mikrotik".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7623".sha256 = "1p33izbz392yr8mqc43gdx7727i8rqpl4c21xd3a80blssqlhafq";
  targets."mediatek"."mt7623".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7629".sha256 = "07k79xyv552bi72nbvf69xgkvhqank2945j18xlpav6saqa198ks";
  targets."mediatek"."mt7629".packagesArch = "arm_cortex-a7";
  packages."arm_cortex-a7"."base".sha256 = "08cl5bi8slvpgqqq6858h7nm7hjs10hiag5269r2ams7pl0hf11j";
  packages."arm_cortex-a7"."luci".sha256 = "0bjgbbjaqj8an7gkxdqx096msqn7caazzzp9dl1382l4iq4dc5q9";
  packages."arm_cortex-a7"."packages".sha256 = "1p2m0j54arxaaphdlz2lq60s0nlmw3c4f7jx2bkl0pqp680l6hgd";
  packages."arm_cortex-a7"."routing".sha256 = "1h33j6zpsfsb9mid4mk8r4mc1ldm3nxj9xpvx7s348wj92r0ws8n";
  packages."arm_cortex-a7"."telephony".sha256 = "0w3spskjs1sjlvzk7jrgwx7wsld2wzxn4y0lgzdnabkfv9azq24m";
  targets."mediatek"."mt7622".sha256 = "1pgfg3y0hd077fyfmq8i43d6vbb7biky61ha0bjn0r6ks3h56idl";
  targets."mediatek"."mt7622".packagesArch = "aarch64_cortex-a53";
  targets."malta"."be".sha256 = "1lydvd4l5674lr9wynz870pisz6k1rhwnq8mlvmkzf56r6i0b4jh";
  targets."rockchip"."armv8".sha256 = "08f4c1r6mhc669q2pn3km3y4bd720zjz63js7zm2izp5dm9lhj9k";
  targets."rockchip"."armv8".packagesArch = "aarch64_generic";
  packages."aarch64_generic"."base".sha256 = "08yhy8xks6klg6za4d0ryp6glf6svdizhiiirxx7i77vnv9ii3d1";
  packages."aarch64_generic"."luci".sha256 = "151dar8gznxg6mx76r8qyk3q7jg9hvxyvksj694ljny9ri1w8mkh";
  packages."aarch64_generic"."packages".sha256 = "04ihn8s4c2bp5d909nci4jfpy10lrhv477n2rja14x1ywvsq6n6l";
  packages."aarch64_generic"."routing".sha256 = "0h1wwarn2y76phihxrx0cdnmmfnwzy3cw72gh04dbizs5fxg2ihv";
  packages."aarch64_generic"."telephony".sha256 = "1hnybin6hka9vlnq2kdja7m65xr071qsh5xd922fr5ws91rd2dd8";
  targets."ipq806x"."generic".sha256 = "09a10mr4gazjlwckk2i08ha62vzc66lxnlvhc9rlcsj9c5pdz7br";
  targets."ipq806x"."generic".packagesArch = "arm_cortex-a15_neon-vfpv4";
  packages."arm_cortex-a15_neon-vfpv4"."base".sha256 = "00a8ql048j4r5y44in8z3bl84fh0sbl5bkgjgfgklivxjs0nq90y";
  packages."arm_cortex-a15_neon-vfpv4"."luci".sha256 = "0zza1hcb3sgprpmmdlvl88a6wn9m3hdg6r0g9wznawvsnpvg8dsz";
  packages."arm_cortex-a15_neon-vfpv4"."packages".sha256 = "17h9vjrqx8li0d5y3hikli6qj94w01xyyar271whjrm988w5wgvn";
  packages."arm_cortex-a15_neon-vfpv4"."routing".sha256 = "0c0vrl141hhybb80gz3m55az79k3pkd4z5jxlzf18a2d0fw7jwaa";
  packages."arm_cortex-a15_neon-vfpv4"."telephony".sha256 = "0xk90ki833giz3cvaw9pj907kbflyknpk9f8r6brcypwkc4w3cdf";
  targets."sunxi"."cortexa8".sha256 = "0wzcs39annls7kzj6r4bn453nkxmry1wvdndgkmpyk4ziap7qwc3";
  targets."sunxi"."cortexa8".packagesArch = "arm_cortex-a8_vfpv3";
  packages."arm_cortex-a8_vfpv3"."base".sha256 = "0c3dycgmpc1bi4fhy0abdc3vi7ydhpzw7x5035b6xrfisnjcc0s9";
  packages."arm_cortex-a8_vfpv3"."luci".sha256 = "0akrz6wrqgmiamd1qlr7y313i9srsm15vir2f8c7a0xnl81m7gfy";
  packages."arm_cortex-a8_vfpv3"."packages".sha256 = "0aymwq4cg6vsixxdacp90gf0f3p4wyflm8x2mxi866v18dh5kmdv";
  packages."arm_cortex-a8_vfpv3"."routing".sha256 = "1b2ywwppjmpx379k94f943grds1psghm99p5h4jmmsxd2j4zb3yz";
  packages."arm_cortex-a8_vfpv3"."telephony".sha256 = "1f5rilgwqc71mmkhs7b7pi4cy6rgchxwynf8xjny3ywj4ains300";
  targets."sunxi"."cortexa53".sha256 = "0f3qhk8bl257hi7dy4zqfyv3kr08s6km4zaiamg88bmakqqcvrhn";
  targets."sunxi"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."sunxi"."cortexa7".sha256 = "1kkm3pdy309b464xmbm95qjw6w04y8ir8q9jpwbgk0ygcwffsgy0";
  targets."sunxi"."cortexa7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mpc85xx"."p1010".sha256 = "0wl9aqgv67wlr926nvlmphn2wrrqvm9n98z5vd9srd1wxd8jl4x4";
  targets."mpc85xx"."p1010".packagesArch = "powerpc_8540";
  packages."powerpc_8540"."base".sha256 = "17ssw1c9j79hpmglkr2921gbyyd355jn1y3pvw5g60jflcxaki1k";
  packages."powerpc_8540"."luci".sha256 = "1zkm687nkj6jz933dncndnj3qxglhf78asbgcph3yjv18i5gjyb2";
  packages."powerpc_8540"."packages".sha256 = "0hx7v4pflbj8zkm7hnf34qm8xw0wf51b1fpfkgi0xwsy2msbx8dk";
  packages."powerpc_8540"."routing".sha256 = "1gzwg7akv3nc0lgjyi31969fbd1hd8v47xc3r0lw3dcrx61pv9gy";
  packages."powerpc_8540"."telephony".sha256 = "0bik0shyhr7kwgn8ca4amij79xzsrkpkqj21px64mlmgqz0gm8k0";
  targets."mpc85xx"."p2020".sha256 = "1983sj0f05785fr021bp46ykl0gypv7ivzc0a7fczcx7wzp0pg9z";
  targets."mpc85xx"."p2020".packagesArch = "powerpc_8540";
  targets."mpc85xx"."p1020".sha256 = "10azyznslmdiylq25jxr2cyvyrvc1nxi0l54rnq2ic5ajz83jdb8";
  targets."mpc85xx"."p1020".packagesArch = "powerpc_8540";
  targets."imx"."cortexa7".sha256 = "1vg1qw59p0aawps9q9ikp2cvy0dwjr7p93fi297fj8zi0ak6fb62";
  targets."imx"."cortexa9".sha256 = "050m97l77902467anv2ydpjfng83g89zqmxdw1rmdmn23214ynaq";
  targets."imx"."cortexa9".packagesArch = "arm_cortex-a9_neon";
  targets."x86"."generic".sha256 = "1r3d1vrmzg1zvra48d28v625hl2mf5gxdscysi9sq9qqp7m1bwiq";
  targets."x86"."generic".packagesArch = "i386_pentium4";
  packages."i386_pentium4"."base".sha256 = "1zh07swah8g5j9yy7kzi21q4p3g5qfg7ig5giz7h45283h319ifx";
  packages."i386_pentium4"."luci".sha256 = "16djzka1dm9iy1iln0vrcs9wr1jaq9spg98jf1bmn8favvlg7n3m";
  packages."i386_pentium4"."packages".sha256 = "1ykbxwrc9z5rblk97mkyvpaw60l441f25sgynzyr46pm88447xb8";
  packages."i386_pentium4"."routing".sha256 = "0l329x2v86ydfzhcay0d8b1q9fda31j6xjwjq8px4kkqq4l85zk9";
  packages."i386_pentium4"."telephony".sha256 = "0gz6mb4miy31vblmgc1kbrgc5n6pnmr4p3dhy7m8i8s3vdm2bz16";
  targets."x86"."legacy".sha256 = "0jpyh6a6b2n3cc4gx3csnnv2p6fxqgv1lbiaq3mf30k3189mrksv";
  targets."x86"."legacy".packagesArch = "i386_pentium-mmx";
  packages."i386_pentium-mmx"."base".sha256 = "0ag9ygr2jrbv8c1hiq112sq17mnm95llxjwq6z0drcr7l2s96ax0";
  packages."i386_pentium-mmx"."luci".sha256 = "0cw296k1ld82kjq1yqizrihi46cif2s944zhzivmr82wvr5sxf4s";
  packages."i386_pentium-mmx"."packages".sha256 = "1w35k2lzgkmzc1b1psmpfp3121h4nn7qlbiyx8bgx8x3154kkcqw";
  packages."i386_pentium-mmx"."routing".sha256 = "0wmii6c0r615a6ka4aqy1ndbgf1b22g6mvkl69dj5rdg1kxn41mc";
  packages."i386_pentium-mmx"."telephony".sha256 = "0n03fwdd6k3ab97yd6niczhfz4qlbq484zkfvknfpd91yxj38l3l";
  targets."x86"."geode".sha256 = "1pfscsw20n9y0fwp31x1fbawqxdvxy5pk08g71wjvv138pxpff4k";
  targets."x86"."geode".packagesArch = "i386_pentium-mmx";
  targets."x86"."64".sha256 = "1clsq2xlk10fk7dyz7hw9ki7zlyfg3f7km6g4zacia8jgrwpwm0d";
  targets."x86"."64".packagesArch = "x86_64";
  packages."x86_64"."base".sha256 = "1i2hy3vgigj31gk9f6mk70bfskyvllc37d20bz19yvhn8rkphcw5";
  packages."x86_64"."luci".sha256 = "0jrxg936rfn7ykyw6bdrqrxgkrhj4zd65bpdwzkc76i0zad8irzz";
  packages."x86_64"."packages".sha256 = "0ng6ds0ckza7swg551xm1d8k4k3345zg5pc3i4mxij9qm9ddq68y";
  packages."x86_64"."routing".sha256 = "0klskdahi1v94638582b28lw78a7j6zcbs2ky683b7170pa3wik3";
  packages."x86_64"."telephony".sha256 = "01lczvh3bpabxbda4i9wcgqk0kbqcv54xlsj4g7xgx81d8ix358m";
  targets."realtek"."rtl838x".sha256 = "0fjn045siyk2c46vfs15k0hpms9bigrsc7hdqk7j6jidlf21dkgb";
  targets."realtek"."rtl838x".packagesArch = "mips_4kec";
  packages."mips_4kec"."base".sha256 = "1h8pfxrfnsx3jrgd6pkqyd2kfcryzzjy5041ivdd56i99zmf9idk";
  packages."mips_4kec"."luci".sha256 = "1cacr10m53549gdf6cjxkpsjax18iyv6mqs7rfh3mm1864gqpq72";
  packages."mips_4kec"."packages".sha256 = "1675n940mcikdk8zs3ycaf1h51hizi43nlkximy9yg7fnni8qkqq";
  packages."mips_4kec"."routing".sha256 = "165bgchd71dspmg75dkk858pf83xxqq43gnmbbdsrwdnz2gmq40p";
  packages."mips_4kec"."telephony".sha256 = "009lm8ysf04s351d699qf0pyzhbk15kxhv1qj510zh6p9aqay98m";
  targets."realtek"."rtl930x".sha256 = "0vijwfxsg1hv7apxjknw7lyds4wjl2zfkip4awmmfnim65rg7zgc";
  targets."realtek"."rtl930x".packagesArch = "mips_24kc";
  packages."mips_24kc"."base".sha256 = "1syagazcvxmhszxiglhzvrwvxxm4wqy3i0xz877ki4599v7h7wbm";
  packages."mips_24kc"."luci".sha256 = "0kklj5h3c2qgrg6yqk4gyvwb8i6bdx7bj2jfwa47awjkvmvn3vbl";
  packages."mips_24kc"."packages".sha256 = "00a4az2pzdd59j40jzcwqd8w59qs8jmsp0daas2c4w70cxqphkaq";
  packages."mips_24kc"."routing".sha256 = "0sq49d5hr20mlmdgg66ls8zx8rnwv9h23gns14xv6b4dshaid7j1";
  packages."mips_24kc"."telephony".sha256 = "1h04khg6mjigdmbrjvshx4207myic7pn0x20g8ays3dk73lp79za";
  targets."realtek"."rtl931x".sha256 = "1wmzglm869zwqjaxdp13xkyzyr93rpamnxi0h6lzykjqj02xpg1m";
  targets."realtek"."rtl839x".sha256 = "1vn334qxg082hrwbrm3zyicah42dch6pbibcymzcki90mpfg0j2m";
  targets."realtek"."rtl839x".packagesArch = "mips_24kc";
  targets."armvirt"."32".sha256 = "1rzi9h59f1b8w8wybf6i709y5h7pj957v47ihjcrwn7prxlhvy1x";
  targets."armvirt"."64".sha256 = "0rwxjxsz2951ss9l61b6zb6zbfinhflw60ppkvmhqrgphhj2l887";
  targets."kirkwood"."generic".sha256 = "03m7aqj6n11wsiprpbw1r5snlx4q00j8vqgdnjvh0pjpj0qlnr1j";
  targets."kirkwood"."generic".packagesArch = "arm_xscale";
  packages."arm_xscale"."base".sha256 = "188qkbm3dh9q3kbbm2l3f05kj23vav54akzbfigfpx7ph4fb1zvf";
  packages."arm_xscale"."luci".sha256 = "0c0q02c2fh45slin4v4xnfqzvy65rpp86ky7pfbjawa86qs3iay7";
  packages."arm_xscale"."packages".sha256 = "1a1qvca4vwh9yj6r6sjc3ykqyfys04hhgp023141q5xaspya0kqy";
  packages."arm_xscale"."routing".sha256 = "0qiwkkl3fd58g9h108hsz404cgsbl3brh3qqg3xhfzwhpddlk45x";
  packages."arm_xscale"."telephony".sha256 = "1q4vz2bcv6svkfphnxyng5kl4m4wbshraz6j6fdvbigv3bj89yh1";
  targets."ath79"."generic".sha256 = "102ybika2im9rw3f9z3lgn6svcpq4h2pwl1ildk6vqwp6pr960xl";
  targets."ath79"."generic".packagesArch = "mips_24kc";
  targets."ath79"."mikrotik".sha256 = "13sgv1jgrr27idk77qalibpbjl09jjg7paq7fs0y5p8hrqh7nhlj";
  targets."ath79"."mikrotik".packagesArch = "mips_24kc";
  targets."ath79"."nand".sha256 = "0nzfhp1b36phhlas0fr4fyz5b6ylk6x9i24iza2r6mmvqhs7h68l";
  targets."ath79"."nand".packagesArch = "mips_24kc";
  targets."ath79"."tiny".sha256 = "1a29q3949vdxdcjq5zdbvsai1lzymfa08hbvacclr28qmnsnr3il";
  targets."ath79"."tiny".packagesArch = "mips_24kc";
  targets."archs38"."generic".sha256 = "1y6hksfrbasgq4n14wnrrsawhbl0kvsd2nbg9cb538blqlc6lg68";
  targets."archs38"."generic".packagesArch = "arc_archs";
  packages."arc_archs"."base".sha256 = "017snygjj1wylds8b3kywqf28mfn6m7a9av6p9y1f0szzza88k4l";
  packages."arc_archs"."luci".sha256 = "1xmfzpxk5873qad840avd8f6w47jdhm53wzm9y7bnx30xfq9qqd9";
  packages."arc_archs"."packages".sha256 = "0ls9gasxh72rawj0qajzksx5wxkh54izkh3pvcpg99nrw68jxj92";
  packages."arc_archs"."routing".sha256 = "1famp4xcl456w43h9p1ya4yr48maxyzhzqpvzgc4335qq5zll4d1";
  packages."arc_archs"."telephony".sha256 = "07lzz1nrx17n1q4lsd6mssnln2f5jps3jd57n2mkzsc17jg8l0kz";
  targets."ath25"."generic".sha256 = "1663g7k7slkizm431s8chrsjz8yi3l27n885zrx00wp2s8fpqpjx";
  targets."ath25"."generic".packagesArch = "mips_mips32";
  targets."apm821xx"."nand".sha256 = "0psni7sj5s1psfhahxc31r0ia2d8cdzr99ypcigsacd9380vsghn";
  targets."apm821xx"."nand".packagesArch = "powerpc_464fp";
  packages."powerpc_464fp"."base".sha256 = "0aa9z8y5360ccs6m0mgwrz0frzih7fxq8rk93ilps6s9jdyb40q0";
  packages."powerpc_464fp"."luci".sha256 = "1hjyxxz0rxz3nwnm1xw453gq8b314jy49pbvxrv093g0k1xhxm2b";
  packages."powerpc_464fp"."packages".sha256 = "0bpyxk44s1p1w3v57xhi40fiqhisc1jc12clc44yikpvc0m05qqy";
  packages."powerpc_464fp"."routing".sha256 = "1jmpxp5cd5aaxz3jqg3zbxsi5fy78wcmm4mmdbf0wfs7rrp0x0jn";
  packages."powerpc_464fp"."telephony".sha256 = "17sjkpgbbvdcjx097vcd9zrfyxfsa9cmymb2561hspqdn6b20l8c";
  targets."apm821xx"."sata".sha256 = "1r0s9ffyfzzjbvi7i0rlvb1nrx997ran28drf1fkszsic6wbqrv8";
  targets."apm821xx"."sata".packagesArch = "powerpc_464fp";
  targets."bcm53xx"."generic".sha256 = "0m5v5g7h6ryd8h4dj0mnp8qzqkb0zk1l7261ga5zqh3wda8wq1y0";
  targets."bcm53xx"."generic".packagesArch = "arm_cortex-a9";
  packages."arm_cortex-a9"."base".sha256 = "1qg4fzgnpa66dxnwh801gkka62ymaway4kdyilzx725m9brd32h5";
  packages."arm_cortex-a9"."luci".sha256 = "0rymss8vyirs0ywgh8zwpq0vfj49z2nyf85vcyld0dzvlk5hxikw";
  packages."arm_cortex-a9"."packages".sha256 = "0yjcwzp6lmgp34bymlsaapdav6dgi9j4h77l5mh113s5z5h3z7k6";
  packages."arm_cortex-a9"."routing".sha256 = "19mh40vlrvpv3qp378b8f7mdb1hih7wq5wvbx3d689xkfi8si3qb";
  packages."arm_cortex-a9"."telephony".sha256 = "1d0cx44vpkwvj7hh694k0222332a3qcyp5dsgybfcrxdvrskdrpm";
  targets."ramips"."mt76x8".sha256 = "1cp0zjngyqa1x1ryfb21bcpwjzm8zqsfz85vi2jn4d63c2k95gvd";
  targets."ramips"."mt76x8".packagesArch = "mipsel_24kc";
  packages."mipsel_24kc"."base".sha256 = "05270wly3ap2z2lacrf6fr27l1kv6vfpnnpd506vqwlvrhlsam1x";
  packages."mipsel_24kc"."luci".sha256 = "19qxxsk9j9k42wncv9610ygz7aj7qsww81vr5cfgnk83r6wjsll3";
  packages."mipsel_24kc"."packages".sha256 = "1vwjj132rzbgj7749s8b64kggdyz84pdaw7q5714x46mjdjhvl1k";
  packages."mipsel_24kc"."routing".sha256 = "0am4536h8ady6mnhmwqbbj1l0fwkipcbzv13zpv2sgnsnflnfj22";
  packages."mipsel_24kc"."telephony".sha256 = "07l25af0ad72mjw85igydark7l9w5vszsrqc00i1r4gaqb5c1app";
  targets."ramips"."mt7620".sha256 = "170gycspw525c3js16qjgdiwc12qsmq87hlsxp2ymsa39aspirn6";
  targets."ramips"."mt7620".packagesArch = "mipsel_24kc";
  targets."ramips"."rt3883".sha256 = "1wsfb8m08girfhis91k3gc7aw92zb53bmscayrpawvw2lm4vmy0w";
  targets."ramips"."rt3883".packagesArch = "mipsel_74kc";
  targets."ramips"."rt305x".sha256 = "1zmm19hzsl6ww5g1r6s5w4640wvasz8n8dvl0kbhsbj3ps3m0fim";
  targets."ramips"."rt305x".packagesArch = "mipsel_24kc";
  targets."ramips"."mt7621".sha256 = "07pwb8rs7q1vydvsj491bz07f74ibgksq1i3x56069kwa244f729";
  targets."ramips"."mt7621".packagesArch = "mipsel_24kc";
  targets."ramips"."rt288x".sha256 = "0r0b57x0yb95nipr136wcw4qr7nwaq7967azidj148cj5ibfm329";
  targets."ramips"."rt288x".packagesArch = "mipsel_24kc";
  targets."lantiq"."xrx200".sha256 = "03c4xxn9wzi12ffhla3kw13dm50z6p1s4lsi12qsi1m74l0826g5";
  targets."lantiq"."xrx200".packagesArch = "mips_24kc";
  targets."lantiq"."ase".sha256 = "0l5wxij7rrkgjayj8l75mb6bkhjxwdk41wj11wwjyygf5nr33xzj";
  targets."lantiq"."xway".sha256 = "1nx3x1zxxwkmni7aklx3mrvmngk7zf75hqm4ks7vrp8hmmgds3z8";
  targets."lantiq"."xway".packagesArch = "mips_24kc";
  targets."lantiq"."xway_legacy".sha256 = "1a2la5nifimzhayvcpzak8y8fh823980qj3b6fqzgb21b613zz2p";
  targets."octeon"."generic".sha256 = "15yagm1di1h2xv0wsffq7walrpi9i1rj1vz0gkg8805s24362025";
  targets."octeon"."generic".packagesArch = "mips64_octeonplus";
  packages."mips64_octeonplus"."base".sha256 = "1636d3kpgq895cik3dj9kixz5fj9g9i7jyci4qpfkmmb989a4j8f";
  packages."mips64_octeonplus"."luci".sha256 = "0b7pxaz7fy6b90adsi75p6g40wa87jrkk03jlmdmnh7ym0xbq540";
  packages."mips64_octeonplus"."packages".sha256 = "1j1css19hi5bdmx8wbrlzxnggvkhpdsbbzvw9n3pnpbzaafml3jk";
  packages."mips64_octeonplus"."routing".sha256 = "1g96kjyxmd8w2k0pqnhxghwqgdxknd1ilb9f0wg27hr0cfmj5nc8";
  packages."mips64_octeonplus"."telephony".sha256 = "0lssfqni0bcyw9csmhxkzfq3vjkxps4z1yxznqxdq2fa7z7g7gws";
  targets."pistachio"."generic".sha256 = "0valsc1w507cvl96j6l23xbmi47sy9mc2ll8a258kdyqprypng7a";
  targets."pistachio"."generic".packagesArch = "mipsel_24kc_24kf";
  packages."mipsel_24kc_24kf"."base".sha256 = "1x4qfvd8jxanys766mbp60ah61fn1ac9cvr0nsss55kki2jv2kn8";
  packages."mipsel_24kc_24kf"."luci".sha256 = "1sw6zawslr9x1xm6j3zir9p0dag69mc4798marbmijdgsqr4lnsz";
  packages."mipsel_24kc_24kf"."packages".sha256 = "0g8zq50c7cwv8x2xw71kcjix7q33qxzch5alpc7qk8xd84mqda99";
  packages."mipsel_24kc_24kf"."routing".sha256 = "11n0201zs5i43k0fmqrz342f420c9nv03y3vgz2dfk02sad647ws";
  packages."mipsel_24kc_24kf"."telephony".sha256 = "0zvgmlq4v37x2kq96bp2rhr15vqsv13lfj0k58z9638lcjknmi0h";
  targets."layerscape"."armv8_64b".sha256 = "16wcqyf6bss7x503gzxnqmwjzbjjpwwr7n03zzl8y0a8rrxjkhxn";
  targets."layerscape"."armv8_64b".packagesArch = "aarch64_generic";
  targets."layerscape"."armv7".sha256 = "10hafpl6jvj2s13c2cf7nid4j7dk9dzml5g8lcv9vz2hqjf5v4y1";
  targets."layerscape"."armv7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."omap"."generic".sha256 = "1bisa5d98w8xsrv2d0fhqhysk1pwamz4mfiv4c8ya68727ymxwv6";
  targets."omap"."generic".packagesArch = "arm_cortex-a8_vfpv3";
  targets."tegra"."generic".sha256 = "04hz3gn3jpdb6vv3d7894a49yxjywl8ibmax7wps0g90khh2naxf";
  targets."tegra"."generic".packagesArch = "arm_cortex-a9_vfpv3-d16";
  targets."bcm4908"."generic".sha256 = "0ysn703ky0sacv54mfjbwayry17clvkdn453iqjhi0czczwh2jip";
  targets."bcm4908"."generic".packagesArch = "aarch64_cortex-a53";
}
