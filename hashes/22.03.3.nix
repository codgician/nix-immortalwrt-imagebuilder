{
  targets."oxnas"."ox820".sha256 = "1pmjrwf18kn2jvbxha2fl6yi5an7gr30l74pnzpgihd7hq9l1j2j";
  targets."oxnas"."ox820".packagesArch = "arm_mpcore";
  packages."arm_mpcore"."base".sha256 = "0lxy2fgrw22m1dbm8875rc42iwd3djkma90wc66kwlqklmzlmrdq";
  packages."arm_mpcore"."luci".sha256 = "0k68xa0511cciba40c6r42f8iqkgiq5iad8qrscgd9q3igkzrp32";
  packages."arm_mpcore"."packages".sha256 = "1f7l9xfbljsanvds65q7akiiyiy60kyw7kv3j9apia6qrzqq743l";
  packages."arm_mpcore"."routing".sha256 = "1vxji2l10n1l0yxwvjmz48qisa1fkicn5aln4y2kzq0idhwhwzzm";
  packages."arm_mpcore"."telephony".sha256 = "1w6hzr4g6v4rgjbhdgcfjdgx3inpmkjv3v85jx45mmhawyap09lv";
  targets."mxs"."generic".sha256 = "03aq00i260951iw75zyidkz095y10br20p7dqnna7sixnms0hi14";
  targets."zynq"."generic".sha256 = "1l9lalzan33sfd7mikm8fq1ahp7ps1qgmnplg8xqxhvyhdp8gi12";
  targets."zynq"."generic".packagesArch = "arm_cortex-a9_neon";
  packages."arm_cortex-a9_neon"."base".sha256 = "0h7sbbi0dn79g259q3rgnfi564vamv3q35l1djj9mi2ja390pmmd";
  packages."arm_cortex-a9_neon"."luci".sha256 = "0n3i12md2anasnfv25bv5jvx47zysa3q4d86sf1lbj9nw0s6j1a8";
  packages."arm_cortex-a9_neon"."packages".sha256 = "1frdkwvzc0iwrnq28qvl0x56aqqkp7zy12xzq4gxmdk65gr5i1da";
  packages."arm_cortex-a9_neon"."routing".sha256 = "1qq00hs59rbk0wy0x18a6q6cr4x2ms1fd1w9sgn8kfn23y9cd6gd";
  packages."arm_cortex-a9_neon"."telephony".sha256 = "0kfj4d23sp0k5fm16hkhdrzpg0jpyy9zn4w6m2v8b63dma6pnrw4";
  targets."bcm63xx"."generic".sha256 = "0jr1rjyqkc5j6pvwg4m4w3zsv7jjyipzm9zgxa6n2s8djzfhxvrk";
  targets."bcm63xx"."generic".packagesArch = "mips_mips32";
  packages."mips_mips32"."base".sha256 = "145k691krd61grpngazzhl1b5pjyvsgvah26cnw5nmv14i2a62rp";
  packages."mips_mips32"."luci".sha256 = "11jn5301n0bm0if0zh7jj8a0haqm01n2ysbr0nr6iv7qr6l3mvli";
  packages."mips_mips32"."packages".sha256 = "14cpydxiznm70px9cski5v9fxrn5ks68rbn8hkgc9skvpvzdsjki";
  packages."mips_mips32"."routing".sha256 = "04s99pk9fjrw3qlx9pss860ik4004v8ffxpzq0abibmamxxv2jlj";
  packages."mips_mips32"."telephony".sha256 = "0xs808a7gr28870r1fmmphlb4sjc4a9cc9wwlzxn758qihr21h23";
  targets."bcm63xx"."smp".sha256 = "19qj9rabjhc75jm6ndhm53mcnwksax182c9g5j00k3ybgnmar07b";
  targets."bcm63xx"."smp".packagesArch = "mips_mips32";
  targets."bcm47xx"."generic".sha256 = "19rim6dnd8lj7v39056xi95g81xm8hgwdzm38v94f1151iycli28";
  targets."bcm47xx"."generic".packagesArch = "mipsel_mips32";
  packages."mipsel_mips32"."base".sha256 = "13495d7xw5pjryrl0p8k0kqhggdi7js2rqfy7840ak2k9cvp34j2";
  packages."mipsel_mips32"."luci".sha256 = "0hbhfirn0dsv4acmk30kv5qqjck1424kfa66afhfvxvzvmmb1wpi";
  packages."mipsel_mips32"."packages".sha256 = "184ak7pgaijs15qav4pgfdjq80jzn39npi0a2k2bpvw0cajzscgn";
  packages."mipsel_mips32"."routing".sha256 = "0cigbr9md1xid5qdmg96pq1jdyg2wa9xhc701ylwyhzcra1accbx";
  packages."mipsel_mips32"."telephony".sha256 = "0nkx6hg8nx94dl91y7kvxs46nmfhqv3sihhcaqgcffh519fsw6wb";
  targets."bcm47xx"."legacy".sha256 = "0gy1hpr5ac68rxj1282f20b6xf1pnnqcvl7g9kzc1wmwlrw6mzz8";
  targets."bcm47xx"."legacy".packagesArch = "mipsel_mips32";
  targets."bcm47xx"."mips74k".sha256 = "059y101ka09gjbnmyg7frz0pgf257spdjwia4qd71lyq0nqhmwy9";
  targets."bcm47xx"."mips74k".packagesArch = "mipsel_74kc";
  packages."mipsel_74kc"."base".sha256 = "0bvvmj17ciwln1qi47995xm162m18lbpk0aal13gv06jq2hy8lxj";
  packages."mipsel_74kc"."luci".sha256 = "0wva35rkxwhrb2ak3lyghrlblwih406pcsab80148wr5ml4mkfiw";
  packages."mipsel_74kc"."packages".sha256 = "11wdys8n7jygcfw452wj2ylp6dsams85qbxxbr7g4g7jbi309w34";
  packages."mipsel_74kc"."routing".sha256 = "11kk0663axhvg6jhrgahzbpk3h2yh2rh994awnh8lfha7c4wnj87";
  packages."mipsel_74kc"."telephony".sha256 = "083yf8rxckla1lgn0y39qgxsz6izhzk5107d2cx38yb06vmlp3gn";
  targets."bcm27xx"."bcm2711".sha256 = "1079hjbv2cy0kbdf6wl5ymgfk5c6h3r2jkgms7wjdcicq9nnxgz7";
  targets."bcm27xx"."bcm2711".packagesArch = "aarch64_cortex-a72";
  packages."aarch64_cortex-a72"."base".sha256 = "03qy6fzxpcn3ngh0cc5kym74qfymkcw2v74pjd3507q39fi4jrz5";
  packages."aarch64_cortex-a72"."luci".sha256 = "0ph2c9q6858x25ngqb3ajvif2l8hjx327visz2sra8gd2l0smh4n";
  packages."aarch64_cortex-a72"."packages".sha256 = "18vc3fm5wlzz932v3js7bxyqixg2dag3s9w147sys7qyvll1h17k";
  packages."aarch64_cortex-a72"."routing".sha256 = "10nris3zby7cwcxp4j311n456ly6ridi2wkkbwyyc83w0gcapvp0";
  packages."aarch64_cortex-a72"."telephony".sha256 = "0p1h3w5fbsz5dfm8lnnxd7ywfi87kysqck0w61bpwa9022hsi816";
  targets."bcm27xx"."bcm2708".sha256 = "1ik02j5lk4zqfj8483b5k2sjyyp58zl72v1haq119vjl5glgpvnb";
  targets."bcm27xx"."bcm2708".packagesArch = "arm_arm1176jzf-s_vfp";
  packages."arm_arm1176jzf-s_vfp"."base".sha256 = "1yq8mlvmy7kxar3p0314cnqklqdjzp3biqs2jmvzvzlvwkg7l49d";
  packages."arm_arm1176jzf-s_vfp"."luci".sha256 = "1ffcxh6dzfnjqgyysmkynm2pmahx29f32yhwwb31wv0lb3gxgpsw";
  packages."arm_arm1176jzf-s_vfp"."packages".sha256 = "0d87l899dsw3g6q988jz8l5305bvs0spfwvd6jzssf9y5hzb36hh";
  packages."arm_arm1176jzf-s_vfp"."routing".sha256 = "0zgbdz6lcwkkgsmalsb8ryqii9mwfskm1by0j60rx3s6rzxkpc1m";
  packages."arm_arm1176jzf-s_vfp"."telephony".sha256 = "13x65n21qbnd64mqpwdvxw8bj9l8dsv671s2fl0bml2gysq4jgwh";
  targets."bcm27xx"."bcm2709".sha256 = "1mdjkw9fv44fi1d0mw6n6jgx8hz0lrc8vz9hmwzq27df13sx2g9b";
  targets."bcm27xx"."bcm2709".packagesArch = "arm_cortex-a7_neon-vfpv4";
  packages."arm_cortex-a7_neon-vfpv4"."base".sha256 = "1ihrzwz3lwb3vz2azs4abgg16gnkxrrd7d0r3mrpxwpwrz8p90ja";
  packages."arm_cortex-a7_neon-vfpv4"."luci".sha256 = "05wf97yjrs8anx1kyv527vijf9wdv50dkb0wq6g138fbl9mysxr9";
  packages."arm_cortex-a7_neon-vfpv4"."packages".sha256 = "17v77llskf2dd0frb94apx45qjimy571pjzi6hqsy65f09hzqh1z";
  packages."arm_cortex-a7_neon-vfpv4"."routing".sha256 = "1qk0p6d37xdrr46f3ii11my24di68gxf6zh6bd517ckdkbpix60w";
  packages."arm_cortex-a7_neon-vfpv4"."telephony".sha256 = "0l7ang9cs8bsn3192g2fyj05sy72yl59ymjm8bb7z5h6xpfgzc7y";
  targets."bcm27xx"."bcm2710".sha256 = "1v6xbwqaz6an84m30ncvrc7hznw5s9p3gb06vh1xswbzj90lppxj";
  targets."bcm27xx"."bcm2710".packagesArch = "aarch64_cortex-a53";
  packages."aarch64_cortex-a53"."base".sha256 = "1am0ipvzxqi97jlx9x1hb582q51hhh4if7mva84wqglx5c983pmk";
  packages."aarch64_cortex-a53"."luci".sha256 = "1h5nindwgi6ha9caf4lq9pxlkmjhx4j7h5906v9l8j3qlhxfq1c0";
  packages."aarch64_cortex-a53"."packages".sha256 = "1l076dmv3sd695i29qvsayaj4mcv3c86rafwwp1xd1pm7f4qym7z";
  packages."aarch64_cortex-a53"."routing".sha256 = "1vpsjcbin6gdnclj6dhm4qf98wd47q8b81b5z6wsppwvjd9blnsk";
  packages."aarch64_cortex-a53"."telephony".sha256 = "0jbqmrsg3jgwcahvam30a15v92836id0b24zhj9dd45bjcg6ilyb";
  targets."mvebu"."cortexa53".sha256 = "001jc55jv8s6yg17fkbgzq0917w7cb8gsq8gfyn6r3vdwnkn5qmq";
  targets."mvebu"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."mvebu"."cortexa72".sha256 = "06xqc82ggswlhkvkksb1ypgb2lx3nf7dazwrv4y59aj7mldkqccz";
  targets."mvebu"."cortexa72".packagesArch = "aarch64_cortex-a72";
  targets."mvebu"."cortexa9".sha256 = "0gh4lyhcf037i4k5y0p2bwhyniz6ivl1kyg0an8qml50rzi26kiz";
  targets."mvebu"."cortexa9".packagesArch = "arm_cortex-a9_vfpv3-d16";
  packages."arm_cortex-a9_vfpv3-d16"."base".sha256 = "0fpm9z80lr7h3gbklfzphvs8whhzysf576vyr269zgvkvgdq6q8c";
  packages."arm_cortex-a9_vfpv3-d16"."luci".sha256 = "0dp5bgzj8m5vz0kgh1mflpcdqq0vx9p011b6diwbncqwpwx8vj81";
  packages."arm_cortex-a9_vfpv3-d16"."packages".sha256 = "0s073d96qvpsrkwzd5lplgl8rzn87342p7f9x41p66vrsj8al3z6";
  packages."arm_cortex-a9_vfpv3-d16"."routing".sha256 = "0l14r2z76xqqh8kkqdqbfwbprbny5gmkd88hxxxn1ngn1lwbwlwb";
  packages."arm_cortex-a9_vfpv3-d16"."telephony".sha256 = "1wr25i98y8mkcdj04p3sdv6sx4fwah9jbbqpdkxiqmxws4fi2x4y";
  targets."at91"."sam9x".sha256 = "0mn3mpphy2b6plr287frjxb77z1vganp071bv732pgd08b59aa5p";
  targets."at91"."sam9x".packagesArch = "arm_arm926ej-s";
  packages."arm_arm926ej-s"."base".sha256 = "0hq157mdpkvfj8qqzhkrw77hasrn3a9ixyf2k2cyiwxazk3jngw8";
  packages."arm_arm926ej-s"."luci".sha256 = "0x6m8hvwnxdia1m7wypaxhl57xxnsxqscd51sm55ph6cdyg9mv07";
  packages."arm_arm926ej-s"."packages".sha256 = "1fvlm3rd0im9x2la0b62fjj0m1idxphibcbrykg7kgpsglpkpw4m";
  packages."arm_arm926ej-s"."routing".sha256 = "1indbqlclhqhyhsv0l0zcym2ml5nq6z713s3g7z4p6qdw1hykwl6";
  packages."arm_arm926ej-s"."telephony".sha256 = "0qxkqky8sc7sk2bbaxwxrknp9kgxh5zp872mzj03wwg1hhhsqnks";
  targets."at91"."sama7".sha256 = "0xf1lbkbg5q0bsn7qh6m2bnrv649yzni9fk9fhypch0kzpbiwl86";
  targets."at91"."sama7".packagesArch = "arm_cortex-a7_vfpv4";
  packages."arm_cortex-a7_vfpv4"."base".sha256 = "1h0mhw4cd8zfif8awwm4idhb5ghy1gclbnps0qwy6hlc4s26366j";
  packages."arm_cortex-a7_vfpv4"."luci".sha256 = "0q4y72l0fcdvhc3zffyfzn9wj4l7xjd9q4ggd7c9rirsc93a2vb3";
  packages."arm_cortex-a7_vfpv4"."packages".sha256 = "0b9hzradx8sl4ylxmj9chfx02gfg7i9yk7lqh76k3a92xzzl830z";
  packages."arm_cortex-a7_vfpv4"."routing".sha256 = "01ja0087lca4vf0l2falchzixmib0hcwa9ih61y57x5934as1m65";
  packages."arm_cortex-a7_vfpv4"."telephony".sha256 = "0k3j6p5jf7ra4k6758c5wacxaivjfdv0yhc1gzc5y0lm14nc6xrv";
  targets."at91"."sama5".sha256 = "0bcqg6bw2bwa6wg1aidc815vg7n2140wjkak0byjc8v4crl3fdcs";
  targets."at91"."sama5".packagesArch = "arm_cortex-a5_vfpv4";
  packages."arm_cortex-a5_vfpv4"."base".sha256 = "15ak6z5mm0q1fizcc6a04sy2vpzk1gxgc70x8jd48bd1vfqqjfp5";
  packages."arm_cortex-a5_vfpv4"."luci".sha256 = "1ij0893zrrfsa8i8aybva8w1ymajspagix1320kcryb0qnjchjjm";
  packages."arm_cortex-a5_vfpv4"."packages".sha256 = "1kafk7fkhyfgkalj190k3wf11y7wd7qb7165w3za57rigc13pr3g";
  packages."arm_cortex-a5_vfpv4"."routing".sha256 = "1fhlzpsrjapc4yh1x8gchsxv0lgrbrqqhrxl9dn8qy4mc78kj7iq";
  packages."arm_cortex-a5_vfpv4"."telephony".sha256 = "1ymra2qx6q5gl9zqam4j91wqa8dy2j0hr88m5r6a3xxxfdw19n7v";
  targets."gemini"."generic".sha256 = "05r9hf85wgxbzp14997cafs9j20ngy9djyyq8jwlafwz8higzlbj";
  targets."gemini"."generic".packagesArch = "arm_fa526";
  packages."arm_fa526"."base".sha256 = "0hjarb1zpcgx40c553vk4lrazb43ilxbd4m1ynym3acxpkl2z225";
  packages."arm_fa526"."luci".sha256 = "0l5y4llsyb4437fk763vmjwdfn09khv8zcs6lkbbasnsd1ym1gd7";
  packages."arm_fa526"."packages".sha256 = "03c2z371qsbk2r3hl6c6vhk9q5y0kgb46d08ssdx8f4xw90z6x7w";
  packages."arm_fa526"."routing".sha256 = "1kmkfcmib6jbpr9d0vlqca4khwgmx7xfzf1y3n2lkx3xjq4glrj3";
  packages."arm_fa526"."telephony".sha256 = "08d1pz2w1hf3xk44i4vxlq4szislsd6dffmhvjs8m8kv764zv099";
  targets."octeontx"."generic".sha256 = "0b8p5n2y8rx5sajy3f0jfmkp005p4ikdjq6qqz4hpd1sw6f39glg";
  targets."ipq40xx"."generic".sha256 = "0fg68f0hp2dczf7pznjfw79ljs8nfcnss4rw5m5gpvbmh6s95b0w";
  targets."ipq40xx"."generic".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."ipq40xx"."mikrotik".sha256 = "1jvmflq64kx5ba388hd1ysgyzszf7316ywywwfb6fxmp62b8j6j8";
  targets."ipq40xx"."mikrotik".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7623".sha256 = "021ylj9gy4zsm8bjyxswxl4laiqbd55alqpf2bl7gbk31lyjsrxz";
  targets."mediatek"."mt7623".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7629".sha256 = "0kd0k57sb4gsqd853f7nr897716b59s60wvpvjrdm4g1vlwr9mq5";
  targets."mediatek"."mt7629".packagesArch = "arm_cortex-a7";
  packages."arm_cortex-a7"."base".sha256 = "1wn1rdlpbsfqp5lrffsnrpy0sbgl13wla633wn0vghw6pd1ssshc";
  packages."arm_cortex-a7"."luci".sha256 = "0jp9zihdjary4dcakgs8lnkrjd5bpiinx36gfgh19z63bj322wpg";
  packages."arm_cortex-a7"."packages".sha256 = "06pqxax8g2qscnajz3qbb267r3smfwbkzdc8kmczmwyja7pm7y89";
  packages."arm_cortex-a7"."routing".sha256 = "0hv57i3vnh57giqw57c3dcg9558w43irrfxj0gn0njvl20g7ivdx";
  packages."arm_cortex-a7"."telephony".sha256 = "067k2bw4zgn8xmddxgi4a5r8ca1camjmjm6qr4z8s5d1pdp74nww";
  targets."mediatek"."mt7622".sha256 = "0kf05vs0qfir31h6ks2ly7gncpbqxskw848h0mp8iq59p9q3cxx6";
  targets."mediatek"."mt7622".packagesArch = "aarch64_cortex-a53";
  targets."malta"."be".sha256 = "1mhfp7awbkipiv9ckkdiw3pa2mp82j3i8vswb7h7nslcq62wwyqk";
  targets."rockchip"."armv8".sha256 = "14m0dmk1v76jz6ib8b2ma1qj189am8y3lw3zxykdpxfs6wnirg1a";
  targets."rockchip"."armv8".packagesArch = "aarch64_generic";
  packages."aarch64_generic"."base".sha256 = "0yrg7qil6xjv76w14k48x9wm69rnk4r917cd9gqxfbfxzcxj8hsz";
  packages."aarch64_generic"."luci".sha256 = "1q2s7z7lbbs7i8lcdzcr3hfk2ran7g3yk5yswmkkb462mli49plp";
  packages."aarch64_generic"."packages".sha256 = "13fy0h5gnmdv4abxcdf1c59pz23jj4hj3nplxp25659nkhyixyb3";
  packages."aarch64_generic"."routing".sha256 = "0amn332q1nb2xpxkhkmn0sqx3r41ih90ckx1amn4gn5l0rcm793w";
  packages."aarch64_generic"."telephony".sha256 = "127g6vjvp34jkaxgnjnhddk5j600i4li2f0v67vl9icpyg75vx4y";
  targets."ipq806x"."generic".sha256 = "114vqjxbwjblsyp78x3699g5kfag70sb4c7lr35vy59xh95sg8y1";
  targets."ipq806x"."generic".packagesArch = "arm_cortex-a15_neon-vfpv4";
  packages."arm_cortex-a15_neon-vfpv4"."base".sha256 = "0cjgill7acwaafbn2flb4y2mk157nv2qz156ahxv8xq165fmka59";
  packages."arm_cortex-a15_neon-vfpv4"."luci".sha256 = "13v38dhdnx8q40rnnayi5c1n8jhynnwbhij5hzfvqmd1ig7f0rwr";
  packages."arm_cortex-a15_neon-vfpv4"."packages".sha256 = "0a6glggcllicpqsz3wr8ad0gq257a9fmz649vwz7clwggv9pjzw4";
  packages."arm_cortex-a15_neon-vfpv4"."routing".sha256 = "1plqx5pnqian3s0mds6c8z0m19b5v7k4aq38a0m41srrxbsqh8ml";
  packages."arm_cortex-a15_neon-vfpv4"."telephony".sha256 = "0v9cdvnc7diz0gdcbwki2gz90pm6p45ljgmjl4fsx6p8ljy4f9pi";
  targets."sunxi"."cortexa8".sha256 = "0q00adj2i1vdbc334xgwzv02gggb6zyb6146fhc6c2l0d27ylly8";
  targets."sunxi"."cortexa8".packagesArch = "arm_cortex-a8_vfpv3";
  packages."arm_cortex-a8_vfpv3"."base".sha256 = "1rmb7y6whm9g2cyb6v0mxw603cdzamkcm5gsav6b3y1rzjv1rfx5";
  packages."arm_cortex-a8_vfpv3"."luci".sha256 = "1y4dhwzh2pf3s8xf806z4dpjdh6wnx6ygj37fm7src9r8j33pdx8";
  packages."arm_cortex-a8_vfpv3"."packages".sha256 = "0yw7dr9qvxqm7zyly973gzrim12fh0xy0vr3kv3a4x6kgx8pmkia";
  packages."arm_cortex-a8_vfpv3"."routing".sha256 = "1kq7v5b5y3mizrginb5gzs5y3pfdpd9iwhw8snln66yixmx8n24y";
  packages."arm_cortex-a8_vfpv3"."telephony".sha256 = "04yb59vbn425fpw5gqrigl4adh6r2r1x1ja1z1hkmv2w1chyfaj3";
  targets."sunxi"."cortexa53".sha256 = "0mmvmdh928pnkgrd9c8cjzjqr37fgh5i8d04mwz82v1mpyglwa09";
  targets."sunxi"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."sunxi"."cortexa7".sha256 = "0zq1s083pbi7xly1ax2vdhf8r81fqi1sswfba1i7x32ihlkh7g5l";
  targets."sunxi"."cortexa7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mpc85xx"."p1010".sha256 = "016hvl39x5frcvp9273c0ks0ipaymvw8c43r3kckib2icaqs376v";
  targets."mpc85xx"."p1010".packagesArch = "powerpc_8540";
  packages."powerpc_8540"."base".sha256 = "0nrqgv1hsglnrk6d95ygilqkvkydhya9iiv4shvkym7knc49g87g";
  packages."powerpc_8540"."luci".sha256 = "05p1zgc4962r4dp9lfgmkxckfdjaqinc4gqv9nhx24nfkz4scy7x";
  packages."powerpc_8540"."packages".sha256 = "0rc1wy7bn6xbxkyh2v03pwhkcvvzv0ms872yfazmabxczwv99w8c";
  packages."powerpc_8540"."routing".sha256 = "168110as6cixfd372dfjim1kdl04968gjpdb11a0x51xmxp9i96v";
  packages."powerpc_8540"."telephony".sha256 = "0v1bw9f9yd8n69bdkm2nqp55afyg2vx2fqj5y739a83wg9ky9wnm";
  targets."mpc85xx"."p2020".sha256 = "1s4m5d2pdiq3jhzq00n761ymvzdc98q69gyi66lja89xra1i37ab";
  targets."mpc85xx"."p2020".packagesArch = "powerpc_8540";
  targets."mpc85xx"."p1020".sha256 = "1vw1vvam25h4y96zbj86g7jpncpb4yi08iy68zlar2bkw2f1yybf";
  targets."mpc85xx"."p1020".packagesArch = "powerpc_8540";
  targets."imx"."cortexa7".sha256 = "1pzmbg69wn7kf4yqlwlr8qyqbiixxhwh04pxmp0lq2ab600zbbmf";
  targets."imx"."cortexa9".sha256 = "1rbgcihhmfwqmkh39im9dcrvw5pkvkmbl100jrnhrnsqa53flbwh";
  targets."imx"."cortexa9".packagesArch = "arm_cortex-a9_neon";
  targets."x86"."generic".sha256 = "1icwvfssv8l2vqql2vbgzaqkilvnzf5ivb710mhid68874x53xhq";
  targets."x86"."generic".packagesArch = "i386_pentium4";
  packages."i386_pentium4"."base".sha256 = "033dl7jc2pj6r7jnrwxpm1assirm4cjxx4dd0ni4spivqi1bjf1v";
  packages."i386_pentium4"."luci".sha256 = "0hj624xrmnglz7iqnapak4ji8b3rdmyzhavx7mw2n6mxgpi9la6s";
  packages."i386_pentium4"."packages".sha256 = "09yl5zggdqlyzpidaig4z4l76fva1lqqn133xk3dga9mxj77xsrz";
  packages."i386_pentium4"."routing".sha256 = "1z1w2bcjpx0cdhcd0n2ccvjnh0pi5s8w2kbzmvpcr5g5c4cdpaps";
  packages."i386_pentium4"."telephony".sha256 = "04ykf7w180cps2phry9b2m1yhl6rb6wz3clw4aw5njn4n2rb17q8";
  targets."x86"."legacy".sha256 = "0hqds2j5w748p4987xzz5af2i15kn8dbnl24c63hzdhrcmi3ajpd";
  targets."x86"."legacy".packagesArch = "i386_pentium-mmx";
  packages."i386_pentium-mmx"."base".sha256 = "08ghs0619mabil55vrlhj5y47wmiw9hcgvbcg955fi6lf43f4w1b";
  packages."i386_pentium-mmx"."luci".sha256 = "1rj556dldmgad2h3phf264m698krsc37pwm7ryg12rdpcqzv4m7l";
  packages."i386_pentium-mmx"."packages".sha256 = "0jvl4zqriw77a8gswd0fxs9mz5l74zykpghnr3jpwzy12b36v51x";
  packages."i386_pentium-mmx"."routing".sha256 = "0zya9w12dyp2v028i1fss6gym3adl9405qciqjyfhr4wyy6ql089";
  packages."i386_pentium-mmx"."telephony".sha256 = "1sy12pf1642yn31ykj7m757qhsry8w0c7s6zasqhqawb2mnjv76q";
  targets."x86"."geode".sha256 = "0k9ys4cy5pynxl6cwcq14y252yyhkdxvinhi618b1sgsz3pw29py";
  targets."x86"."geode".packagesArch = "i386_pentium-mmx";
  targets."x86"."64".sha256 = "1qxskbc277facjwlbraflc1g1pjffl8x4bjsyahsb30k23xhpwmm";
  targets."x86"."64".packagesArch = "x86_64";
  packages."x86_64"."base".sha256 = "09kgpvpzjpf7b1786ymhh1672jaw2ngzslz1ff96940rhvagwk36";
  packages."x86_64"."luci".sha256 = "0kiywv9a6rq0lhw88b83rmn7n7bxk8mf03xa827kk5iaxl9mvq0v";
  packages."x86_64"."packages".sha256 = "0c6qnq2iz8laq264f87az2px8sxl4nwkml01xkx28af9iz1cb2cb";
  packages."x86_64"."routing".sha256 = "166p8h3macd8xalk24yzkwf7qqsxfcly7djs3f52z76apwydyfbs";
  packages."x86_64"."telephony".sha256 = "0d5gn2f8hgscx3x4mn3pp75mbgbh53f8h66wm813rhrmy68kpkmb";
  targets."realtek"."rtl838x".sha256 = "017b02blvz9sdkrwq3ap027i1kkl23kz1hwpf090mcywcpa87m4x";
  targets."realtek"."rtl838x".packagesArch = "mips_4kec";
  packages."mips_4kec"."base".sha256 = "1ggmylsxns66khbv2ya5rc6j9qch06x3ggilhyliixb7idvbgf18";
  packages."mips_4kec"."luci".sha256 = "0ghy5b6ans1lngl6bfx1k773bayln1drf90a1s3i8653mq0lc30g";
  packages."mips_4kec"."packages".sha256 = "10jx1brl2nmk7rcm1jqv2z6c64v9i8ihdgm785g3s7k5lbs9fgvj";
  packages."mips_4kec"."routing".sha256 = "03wymrbn4q9dgly2cz0zwgyar7hpxl0bqdbr7zij36mw2c88q1zw";
  packages."mips_4kec"."telephony".sha256 = "0anf8a36si925ap3w29davqsrzl63iw8rmaxfdb4nvzjc53di1fl";
  targets."realtek"."rtl930x".sha256 = "0dq2gabdhzh2zy1a25mma4j9835xn52427bjdfgwxkjaq2z6zdw0";
  targets."realtek"."rtl930x".packagesArch = "mips_24kc";
  packages."mips_24kc"."base".sha256 = "0mdb2wnb0ag17cw2db40k1jr0xax27z4lddzyr3iimzvrdl2fs9r";
  packages."mips_24kc"."luci".sha256 = "0whxxfkn7iy716qij6hpgb918dy6h455wb4s5r1p75rlimakf87v";
  packages."mips_24kc"."packages".sha256 = "148hf4ninrwviyic3wxnm4m6gyia3raccfa968n1xnacgx9wp87a";
  packages."mips_24kc"."routing".sha256 = "1n67lrrm9jqn5lnsimr62hg0yz5q53r03py9h1y0vpijwbwpmf1m";
  packages."mips_24kc"."telephony".sha256 = "1j06czibqsjq3d1l1h1igblk1s29a07ay817c15df270w6pwhj6w";
  targets."realtek"."rtl931x".sha256 = "1409gc70h0h2pgn11hrlxsp475mr6l4ifp07hzwx7bjlg1aqmkmp";
  targets."realtek"."rtl839x".sha256 = "0kfc3g53fwi23kppryifs084vjzp3n4m71h8nzwswwarxyh80qvn";
  targets."realtek"."rtl839x".packagesArch = "mips_24kc";
  targets."armvirt"."32".sha256 = "0k4d1wz7kw3n1l601y6lsva64dxnr4334xyf5p83m71m7z84iqzc";
  targets."armvirt"."64".sha256 = "1yai3w39s9ysqmdl7ykyrqr0q08vc8502yfqbhlhmwgdv2ylwa8v";
  targets."kirkwood"."generic".sha256 = "16ghvv4g109rqh922wi3rbngcvr8nyqc07x86lxjrfp0x33ib36q";
  targets."kirkwood"."generic".packagesArch = "arm_xscale";
  packages."arm_xscale"."base".sha256 = "144ps2gnz02qbasi96fz182c5m7ha7r5fga5jzidl9mlrvvx65ww";
  packages."arm_xscale"."luci".sha256 = "1kvdp2ip30ml467pgpsj7w0awggdy895s4ddmcc5iam8sn10gmjr";
  packages."arm_xscale"."packages".sha256 = "1pj7j8nrascfyidmm9a7fjrxrbiwsbncs4hwqpqpxsc1s3lm41lg";
  packages."arm_xscale"."routing".sha256 = "12lfc28y3ljfk18bfjf5wci5s14cxfdw9s0fbz4f8apmi9w003j7";
  packages."arm_xscale"."telephony".sha256 = "0kp8kbfw9kb8h5nxjws2zawsfg60pllqib99fwi2ga9zgqpi4p4y";
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
  packages."arc_archs"."base".sha256 = "0h9jrqjvj7qjk7jhahs4syhxcigj16v5qffggffh7is0n3qkldck";
  packages."arc_archs"."luci".sha256 = "0mbbknb101xc2r5hwxmbxq96apica8d0dza0vwfj21rvwvv7lqdh";
  packages."arc_archs"."packages".sha256 = "1hx1vk10f1h18hdra4n870zs4c4ixw71b3n35kavsp8anrq5imz1";
  packages."arc_archs"."routing".sha256 = "0h11dakms0v8asx44ibfsb4saqm0394f0gkr8zwa31xzhynj241a";
  packages."arc_archs"."telephony".sha256 = "1smn8j9l7vv6ald64r0r9f73a5xlha4rv4a9afvgia7c8kj23l9n";
  targets."ath25"."generic".sha256 = "118n53c546dy4rli216xqzcy2s0shzvhprr8kxmiygr0vmfxsl1j";
  targets."ath25"."generic".packagesArch = "mips_mips32";
  targets."apm821xx"."nand".sha256 = "1wd3dl9sfg0y7y2p1zv0gy6r9mfckg1p0pk4xklpmy9w3kdrn5b3";
  targets."apm821xx"."nand".packagesArch = "powerpc_464fp";
  packages."powerpc_464fp"."base".sha256 = "03mziq2nmpx7nm0ws2rvri3ccsp1rn30spg6fmgakvxbsn663wz1";
  packages."powerpc_464fp"."luci".sha256 = "0gndl37hdz2ivd191vwrc37c7kw84v60gnngmpmnxk6j2fyn0kgz";
  packages."powerpc_464fp"."packages".sha256 = "0lkh2ns0jwl5dfxfc252sjnrxqpmdxahv74gd4xirmlsrw6xp22f";
  packages."powerpc_464fp"."routing".sha256 = "0xxcyn1b1xxrqa6zd5ap72qzwb663bnrcwd1b8g7flxj0cm93qgk";
  packages."powerpc_464fp"."telephony".sha256 = "0xbiy1vm84cdnmc5xq5qjrx1xxk04bqxas1x3vfi52m1y267qpwh";
  targets."apm821xx"."sata".sha256 = "1pgl6q5cp869x58qv1mg659alvmq7x78bpq04ikfrvzlcppy1jah";
  targets."apm821xx"."sata".packagesArch = "powerpc_464fp";
  targets."bcm53xx"."generic".sha256 = "119aj52qvda9gp16qig3a2qyx8kchpqyzwarg127ai2h0f0yaxb3";
  targets."bcm53xx"."generic".packagesArch = "arm_cortex-a9";
  packages."arm_cortex-a9"."base".sha256 = "0acvcri890nmv6s3jf5k453phakcbrn2pz98vrykk1qflzq7w2vs";
  packages."arm_cortex-a9"."luci".sha256 = "0i4zsfjdw0gh6d0yr2vkb82mkrbmz6gbkchvya06sba09201l3mx";
  packages."arm_cortex-a9"."packages".sha256 = "0z6106xq6mhnmn4saw7gpyjxn4vwsy2y42l963fcv9s19iazyp8i";
  packages."arm_cortex-a9"."routing".sha256 = "00bnhhkjpp8znyjvy55wflxblxh49wzln9r5ixaqfa5ny44lhvkr";
  packages."arm_cortex-a9"."telephony".sha256 = "0d9rlz8y2lqlqqk61nw7jvmi7bvb1h9zkpq2khf0k30w0ys2iv8b";
  targets."ramips"."mt76x8".sha256 = "11kg6x4mca7kawsvkla09qhmix42lbfs3r9c20mw4acz8mp8sw93";
  targets."ramips"."mt76x8".packagesArch = "mipsel_24kc";
  packages."mipsel_24kc"."base".sha256 = "07cv60hzbwg662q2jbkwl3z0bi4vzrr38xrfv7559s2waplwgk9s";
  packages."mipsel_24kc"."luci".sha256 = "074k46srw7g87vzv9k1pq8pv6hb1bw6agdh6rjp9ghk18j271cfk";
  packages."mipsel_24kc"."packages".sha256 = "04hrhfzf99z78i57nl1lckpsac2nppj55df79vj6ha2fag0jph61";
  packages."mipsel_24kc"."routing".sha256 = "0z1q64d3k75g29is0b4mvncb1lghx18ccbfz9dlhh5r2cs37077f";
  packages."mipsel_24kc"."telephony".sha256 = "1i027jgb8cf946w1dg129mw24d7yk5y9kvfi0w3pjb1y1q5492nj";
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
  packages."mips64_octeonplus"."base".sha256 = "1pdq9jdfp70wdjmx1249jfxalajdlxiv6y6hlg6p8irpvdw5a2ng";
  packages."mips64_octeonplus"."luci".sha256 = "0y7dz8d89qhvnsqn18sxv9majyijpqzq374pj89dpvyqizdjrpvz";
  packages."mips64_octeonplus"."packages".sha256 = "04fkd1v5g7m1zx1jy0naca7i4xmg1ciq2c42w98afykflyyqvr2r";
  packages."mips64_octeonplus"."routing".sha256 = "054azk6ya9qawknj5jj4km9ahwr6m57kkhrii022awh577lsazpd";
  packages."mips64_octeonplus"."telephony".sha256 = "0mkfbgkimhpdvxg9c4qclwb84k9vr4bgykaxvjc1wwv7y2dihc56";
  targets."pistachio"."generic".sha256 = "024g3l6ykp8knkkp0sfiyix22mvh7v6d352y4ys8g7ibn6fpf425";
  targets."pistachio"."generic".packagesArch = "mipsel_24kc_24kf";
  packages."mipsel_24kc_24kf"."base".sha256 = "0m7l08lg3zhfs11gkg2ghws25d9bbhbgbj0bwkxbn4kr9gk2x6ha";
  packages."mipsel_24kc_24kf"."luci".sha256 = "0cpxiaikndksy34h4d3778c68zydri526rkjv83lcz2za51gwgr5";
  packages."mipsel_24kc_24kf"."packages".sha256 = "1bgsnjdvsv0mq0d6fla6l5kdvcx62np8z8q9xnljzxx5mcsrcxp0";
  packages."mipsel_24kc_24kf"."routing".sha256 = "0znikih136yc7d35ck6y346hnpfg6d3akw4hgrhasa81i59pp1cs";
  packages."mipsel_24kc_24kf"."telephony".sha256 = "1mgi4w8a54dfv5llcb64821ad0mdlqp16vm8mhxmsb0vgvz52a5p";
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
