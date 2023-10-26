{
  targets."oxnas"."ox820".sha256 = "1423q4vg8xxs27zii32d2bdlhqks0m7nxyqi8n1qzzhdrj4041nk";
  targets."oxnas"."ox820".packagesArch = "arm_mpcore";
  packages."arm_mpcore"."base".sha256 = "12sxvx18fghw4d57l4hf4zfv5jhn3d74668zdzf5fj2y1rqhkpl8";
  packages."arm_mpcore"."luci".sha256 = "03h63ndcakx98gfr0l7gd7m8r7bjryb3m10vc137mpjanxsaik8d";
  packages."arm_mpcore"."packages".sha256 = "14ajwcmkzzhns9brbgw2zqyd79724yysq1ikzvdar9d8i53md31j";
  packages."arm_mpcore"."routing".sha256 = "0p5q2an55jlgs975w20q6zswx2qw57sh1ffhdg5r7ck25ll2s9q1";
  packages."arm_mpcore"."telephony".sha256 = "1xjzxd23vd1g1ilprpx8i1ck7ji8mjrwpnhzvbky57iwm6q4l281";
  targets."mxs"."generic".sha256 = "1ajs8rl6dvvimdg5cxpsvdsw82za4nrsnql27biv7snncwlm5js8";
  targets."zynq"."generic".sha256 = "03942bqyyknijvcvmfcdjc2mpqiss6sjv5xn7ry6ci1j25qgrx3j";
  targets."zynq"."generic".packagesArch = "arm_cortex-a9_neon";
  packages."arm_cortex-a9_neon"."base".sha256 = "16kdsxmpmpkhqmf6dad3cv3ipnsb2vjlci5n41vrsp9rykfw6qvd";
  packages."arm_cortex-a9_neon"."luci".sha256 = "07gv0lmhn84z4m4wikd8q45r1j36497kj0z2hi3i54cjvwfzzp1n";
  packages."arm_cortex-a9_neon"."packages".sha256 = "1qx1ppm22vrqdpmfi67xfmg702mwa3v4v05pnh7cwzmgfp02bl35";
  packages."arm_cortex-a9_neon"."routing".sha256 = "1qlrbn9q77dc3cfbpmxxamqiiz0y9rq9pfs3q1bj07fwn2n1i8g3";
  packages."arm_cortex-a9_neon"."telephony".sha256 = "16qdx7mgdwv739acji3w3d4b7bi9gd70pwjh3nsxfsvg7isvva3v";
  targets."bcm63xx"."generic".sha256 = "1xa45gpqvq36q939wfrnxhix2rw431hs32l54lwczgcy9a3n9nqn";
  targets."bcm63xx"."generic".packagesArch = "mips_mips32";
  packages."mips_mips32"."base".sha256 = "1vwwb6kn6w578wy3xp2s7sbjcbkip11cd2l1hxmzq02fg94z3997";
  packages."mips_mips32"."luci".sha256 = "03m5rmbvmf00ynzamigmd1kz5ghgipxcmylvz3gsi5y35zfsrc7x";
  packages."mips_mips32"."packages".sha256 = "0sl3pqa5q4qx4r94d55h59x19x0xjaarykad665rlldrbg9q8z0d";
  packages."mips_mips32"."routing".sha256 = "1mnh1xyv08w05rcnhqpr2rjfg7x796zhplc3xlybsbfg2pzdg0a0";
  packages."mips_mips32"."telephony".sha256 = "0mlwc57570wv141d1l52y6rhqsnv0y6l0p22dkw8ksfpwj96bpyc";
  targets."bcm63xx"."smp".sha256 = "04rhic1w3d0bv8g1kmj2a06ab6r4z8g770bkls975r791y105dr3";
  targets."bcm63xx"."smp".packagesArch = "mips_mips32";
  targets."bcm47xx"."generic".sha256 = "0lqnbsdsi1ri80f7w6lyn84rqx5lffd9dbfd7w803sx4pfqbpl59";
  targets."bcm47xx"."generic".packagesArch = "mipsel_mips32";
  packages."mipsel_mips32"."base".sha256 = "1jpjy80a8nj1l9pfhrp5jdvqnyakgng4lllsb2kaxb3xvlf0b8n5";
  packages."mipsel_mips32"."luci".sha256 = "0ryax74gd4f55gr2qjablwly6dm35v72v6vyamlqayag3li1c7zi";
  packages."mipsel_mips32"."packages".sha256 = "1hpla7wbx8i3546qyqg49r1z2pk76g8la21w6q53j5svd679r0gy";
  packages."mipsel_mips32"."routing".sha256 = "1p1qcwsb4cz7lnf8yr98j26ycb05xac5bipywlan2i6y99614902";
  packages."mipsel_mips32"."telephony".sha256 = "0sja3sdaha8lxayvl7srgvfsn4rxyr9gcr6h215r3ck8dg9qd8zf";
  targets."bcm47xx"."legacy".sha256 = "17ygscdjlk0k6g4p4z38x8jkqh01glzd3hwl2panccj8bgdhaq6c";
  targets."bcm47xx"."legacy".packagesArch = "mipsel_mips32";
  targets."bcm47xx"."mips74k".sha256 = "04qbzkhqilf5vk96bsqq8hhlidgpjwiv5lzvimbbpxj50r1qk313";
  targets."bcm47xx"."mips74k".packagesArch = "mipsel_74kc";
  packages."mipsel_74kc"."base".sha256 = "0gdgmj12pz05n0zj9kkl8wlcx4w954bgygxc6ibg1azpbil9li0x";
  packages."mipsel_74kc"."luci".sha256 = "01v17v2dfbv7bq03nl1cyd1cs1nsvvbdp3wym7qghmbkgwzqf5zx";
  packages."mipsel_74kc"."packages".sha256 = "0v4mv01mcnn1az8w52yx133lfja7bx00mx690jg615djwy18miqf";
  packages."mipsel_74kc"."routing".sha256 = "03jd9df5rpildg134p0cvijd1z59jwfzjhb1yplspkbn3pdjmhlh";
  packages."mipsel_74kc"."telephony".sha256 = "1myxr2rlbdpwhm4nn9wpf3ilh59ll7n9r2km8jn693j1n8ybk5fg";
  targets."bcm27xx"."bcm2711".sha256 = "1w5razcr815vmjg8hw29zr1swrj60idjn2g9qd73dddr4jwwfvzf";
  targets."bcm27xx"."bcm2711".packagesArch = "aarch64_cortex-a72";
  packages."aarch64_cortex-a72"."base".sha256 = "0yyz45cv9fvi27v3cdhlkdqi13mpigrinaq00sjswlnfwnwsq03w";
  packages."aarch64_cortex-a72"."luci".sha256 = "1hv4swr4wrzzdl0f0r1q7jh9bqs6czsyd3xqridxkwxp8d565sv1";
  packages."aarch64_cortex-a72"."packages".sha256 = "16qvxscnbcspg9phz2nwld9mqp5qhw7ya0vhlbp0fr3n4srvfb1m";
  packages."aarch64_cortex-a72"."routing".sha256 = "0slmbq7i9803lsyx7kbdlsjsrskh67hxa6gsi9km9674dxg7lsc9";
  packages."aarch64_cortex-a72"."telephony".sha256 = "163hp9j3lls492nzpgd6cmnrdwz0bkndlh5pp3p4279ich3pglxc";
  targets."bcm27xx"."bcm2708".sha256 = "0f5vhdk7f1mjd6pawrg47kph64af8vv5fsrw75bl8qj31b5bq0rj";
  targets."bcm27xx"."bcm2708".packagesArch = "arm_arm1176jzf-s_vfp";
  packages."arm_arm1176jzf-s_vfp"."base".sha256 = "0sslsaakavw7acf289ivwx7w65rakwvfwx7fb1cyyj0y1mnql4s2";
  packages."arm_arm1176jzf-s_vfp"."luci".sha256 = "1kfizlzqvybd2j6w7hlb429babhz79ym6v1vld7y31riz6rad80k";
  packages."arm_arm1176jzf-s_vfp"."packages".sha256 = "0109p3wwxzfi9fc1vd9rkxamla5jgk41y9zadsmpv7x2qwi7afli";
  packages."arm_arm1176jzf-s_vfp"."routing".sha256 = "1ygn1a3r9ivgw9dnmry1598l4qywfhhxvki52xvzj56zxahylh2v";
  packages."arm_arm1176jzf-s_vfp"."telephony".sha256 = "0lz13mldydr6r5f5gsxv1m3wl1lf9fxfrmxma5nqx4266s9haajg";
  targets."bcm27xx"."bcm2709".sha256 = "0ydzrbp8i65wkizrmclhssq9w7fsc2h43wp20iad7l1jj1vdbif4";
  targets."bcm27xx"."bcm2709".packagesArch = "arm_cortex-a7_neon-vfpv4";
  packages."arm_cortex-a7_neon-vfpv4"."base".sha256 = "02gy0jwq2wcxcfz567l5mds5yfl0xxdbszzkngfmsx5vxpqfgw03";
  packages."arm_cortex-a7_neon-vfpv4"."luci".sha256 = "0dcx1cb9nh1wj5a727rjs7hj877aj6rsl1pcybq5dqln7iffnr9w";
  packages."arm_cortex-a7_neon-vfpv4"."packages".sha256 = "0887ajlidxyxw8mwwz8c96hj5pbfayrf93jwbj018plms7dfnyp5";
  packages."arm_cortex-a7_neon-vfpv4"."routing".sha256 = "174hd4fsj1xfz9ikvhnk46hfdhg8vj2qf6awfcbx85nm31kvmqgk";
  packages."arm_cortex-a7_neon-vfpv4"."telephony".sha256 = "1b99bsadcrqqgbfyisnsil7qkjbn97k01l7hvb7pgwbmn9xki8qc";
  targets."bcm27xx"."bcm2710".sha256 = "1d96ln0nyyw61jf44f3a65gd3s53b3dpjg687cp0nswny3gwajif";
  targets."bcm27xx"."bcm2710".packagesArch = "aarch64_cortex-a53";
  packages."aarch64_cortex-a53"."base".sha256 = "1hqsf195rha8zrpbjj2wsw78420x1lkcfqqysd75zvap9273568w";
  packages."aarch64_cortex-a53"."luci".sha256 = "1cj27irqvz5fmrm1a2hzxjn6fip43bi2kmqsc8w5f8d4npdg8adn";
  packages."aarch64_cortex-a53"."packages".sha256 = "1azpfbkrv3q2wr3wc24112m3x2m53k1flz9bbkpj4qragir1sl67";
  packages."aarch64_cortex-a53"."routing".sha256 = "1g528np2p8p51lj1syw04cd8p5ivxbwmlmzd5q3iwbqyl9g20rfl";
  packages."aarch64_cortex-a53"."telephony".sha256 = "1cllnvazny37lq9izw2rn561jsgp0v1b3pff2rz1qb8ms5g4nlbg";
  targets."mvebu"."cortexa53".sha256 = "0lk2yjww5xf7mw79j820i36r6xb7dfa7yka9q3msf0llqlncy8dv";
  targets."mvebu"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."mvebu"."cortexa72".sha256 = "1z1p5f1d4k13gr0q2rb8qz4r7gc7cj72s7dbz4k9qp5rr653pv58";
  targets."mvebu"."cortexa72".packagesArch = "aarch64_cortex-a72";
  targets."mvebu"."cortexa9".sha256 = "193c3c2fvpm1pyg9q6cgd5rn7zw9sx65bj9w5yychnhm22vgbvxj";
  targets."mvebu"."cortexa9".packagesArch = "arm_cortex-a9_vfpv3-d16";
  packages."arm_cortex-a9_vfpv3-d16"."base".sha256 = "0gskfb5l6rc3vdf422mm9x12nckdmnwl1wvbrflw65lvzs9z2k0i";
  packages."arm_cortex-a9_vfpv3-d16"."luci".sha256 = "0x8lbl8x6cx61rhy2ia2v82kw4j7i4v193pf3wyscnlb5hk9r8c8";
  packages."arm_cortex-a9_vfpv3-d16"."packages".sha256 = "1fzn1zwcnglfz24j2s7vvm27mhsil83kk8jkalvf8i0kvcsqbgkj";
  packages."arm_cortex-a9_vfpv3-d16"."routing".sha256 = "0j94ql7jcshkdnb8jw410kak22qsjicif2dk6ph1snl8fh03a61n";
  packages."arm_cortex-a9_vfpv3-d16"."telephony".sha256 = "0zb66qfm2bc2nz4c3k5cdpvm7kwl4x8q4gz5p3ddrkp20aqcywkn";
  targets."at91"."sam9x".sha256 = "12d4pplnyc3977nvahgp90yvy02pm52zgiqn65fh2di4xg0j938z";
  targets."at91"."sam9x".packagesArch = "arm_arm926ej-s";
  packages."arm_arm926ej-s"."base".sha256 = "1rgk31yz82krmngy7qizywkri9yfynx29iq5cwhxrrm1alairrsm";
  packages."arm_arm926ej-s"."luci".sha256 = "0dbzjcl2w5zdan4m6rggw8xxgd35gi2c0cgrww4h8xks73imff1h";
  packages."arm_arm926ej-s"."packages".sha256 = "10dcc7dvwad27hb6j8lyi8alb05jn3zsn10rhx8m2qjilada2d82";
  packages."arm_arm926ej-s"."routing".sha256 = "1kkjhaj2l5c85n8z8wv6an6cx88bhgnl9kzas86bhc0mrs9p4h61";
  packages."arm_arm926ej-s"."telephony".sha256 = "182d6ss6cwihin797q0m7p6qrsa7d2am72advgrqwi4dwqsf7qzi";
  targets."at91"."sama7".sha256 = "10cqbgvlbasfidyya9w3s5v8qjclljkcgn3kihxd1i4kv32cdyf9";
  targets."at91"."sama7".packagesArch = "arm_cortex-a7_vfpv4";
  packages."arm_cortex-a7_vfpv4"."base".sha256 = "0i7jh2q2iakwvb9pp3kcn2ll7av9k9pfc57wxvd51v8vpf395fz3";
  packages."arm_cortex-a7_vfpv4"."luci".sha256 = "0dlzlmarb5n85bkbxb41iclkxa06cgxyimlvsa3i3sxjsyggsn85";
  packages."arm_cortex-a7_vfpv4"."packages".sha256 = "1ad0q47n9fp77x3d17921mp3197cr02xj9k6yx4m1l371ayd825b";
  packages."arm_cortex-a7_vfpv4"."routing".sha256 = "1cxbwykif2zs1x7qayr4ywxmimmahfy4i40k0b72nvkckqnlgg28";
  packages."arm_cortex-a7_vfpv4"."telephony".sha256 = "0czd3k920wg8s0mk7rlnmn6f9arqxnbz85pm312wzi03nd8qhg3a";
  targets."at91"."sama5".sha256 = "0g69v1ar213iwxzbn56kxp7ff3k0m2dj3g9h8vpbwr2g2jrf83n4";
  targets."at91"."sama5".packagesArch = "arm_cortex-a5_vfpv4";
  packages."arm_cortex-a5_vfpv4"."base".sha256 = "1zk9ahjgbjbyqq3rkqz0hl02lkdy01pd9bai4i0d46dimm8q1jcd";
  packages."arm_cortex-a5_vfpv4"."luci".sha256 = "0sj0ryxzqf4rdnl6s704cgn3ygx6n4y007rsy6j7n16zhnap5rif";
  packages."arm_cortex-a5_vfpv4"."packages".sha256 = "1rx149nfmxcd08i5r4cq7bf9dkh471q4lhrmkzy3bzjq11iikqzw";
  packages."arm_cortex-a5_vfpv4"."routing".sha256 = "030kam1my17nl4qi6j1wc1a18yj5ydhiwg7qivd7mz7ci9ijsxk7";
  packages."arm_cortex-a5_vfpv4"."telephony".sha256 = "0vmcs6zyw2f7ln4qli1nxr5yp5msl132zw3rcq77b667lp3dgm8x";
  targets."gemini"."generic".sha256 = "1pg3n40al1vinfpqyy5m0d9k20h7s0bs556j68qvhj2nmxf1sd2d";
  targets."gemini"."generic".packagesArch = "arm_fa526";
  packages."arm_fa526"."base".sha256 = "1hbnacxnc695wifnrj0bhwykjgihmicg0vy67hpdjdfw04v4sim6";
  packages."arm_fa526"."luci".sha256 = "191mfg6xnx770h3alchnbqw46ar4iwzzcxh64pbjx3df0h5xzp9d";
  packages."arm_fa526"."packages".sha256 = "0wpa0sgx9j5w5wkwgyb5l89qml6fbsk9j65lbjn7nlkav66n1x7b";
  packages."arm_fa526"."routing".sha256 = "1zgjz5f4krp7gfsacn4dny42vav6imnriba1rjjqkhdjih5cpjfv";
  packages."arm_fa526"."telephony".sha256 = "12qn1yq7y8dpvgwmnx6yzay386cm3na6xcv419lwqa1spq4j5qjv";
  targets."octeontx"."generic".sha256 = "1jmv4hrd96zn7crx4ql1x2ngbi6xz5vhpkv87sb4x7lxq5lp4pw2";
  targets."ipq40xx"."generic".sha256 = "0y12qfdd2zlapspabr1ahmwys32pv83g4mqqlacpfpyxn520aikv";
  targets."ipq40xx"."generic".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."ipq40xx"."mikrotik".sha256 = "1dqyf6javsmksqwgsfmq6vmxhzk1lcq18lphvrmgdng72b3qp5my";
  targets."ipq40xx"."mikrotik".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7623".sha256 = "1p33izbz392yr8mqc43gdx7727i8rqpl4c21xd3a80blssqlhafq";
  targets."mediatek"."mt7623".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7629".sha256 = "07k79xyv552bi72nbvf69xgkvhqank2945j18xlpav6saqa198ks";
  targets."mediatek"."mt7629".packagesArch = "arm_cortex-a7";
  packages."arm_cortex-a7"."base".sha256 = "1zm3vc278v8ams2vzgmcqrqdp81ayk69magldm333n7a3syiq6p8";
  packages."arm_cortex-a7"."luci".sha256 = "0k7z6bpnm8qzd84xbfg5xzq7sqm6wdxvg91d8jcdn4cgqcabnpg2";
  packages."arm_cortex-a7"."packages".sha256 = "050znws8934m61zrfrgb11ljnw4r8jcf2jrrwzzbdwiyc3h2hp7j";
  packages."arm_cortex-a7"."routing".sha256 = "024j9qpl8rbnhf8gpd4zg8fmmbharwm9w2faa54r12vna3i45hly";
  packages."arm_cortex-a7"."telephony".sha256 = "05j9gl8q5xv7mnp5rw1ivngdmfc4zgk5j3wvnxsx3rw81cb2qdqk";
  targets."mediatek"."mt7622".sha256 = "1pgfg3y0hd077fyfmq8i43d6vbb7biky61ha0bjn0r6ks3h56idl";
  targets."mediatek"."mt7622".packagesArch = "aarch64_cortex-a53";
  targets."malta"."be".sha256 = "1lydvd4l5674lr9wynz870pisz6k1rhwnq8mlvmkzf56r6i0b4jh";
  targets."rockchip"."armv8".sha256 = "08f4c1r6mhc669q2pn3km3y4bd720zjz63js7zm2izp5dm9lhj9k";
  targets."rockchip"."armv8".packagesArch = "aarch64_generic";
  packages."aarch64_generic"."base".sha256 = "0dapnaszdhmkvx5z81argvdzzj7wjhmb89vn9bzc26mvcg911jyq";
  packages."aarch64_generic"."luci".sha256 = "1923mjr88n0jfiq82cmaralvm84b2y0cxb01ac2wm5cz3bgllha3";
  packages."aarch64_generic"."packages".sha256 = "1jfibyyhc53cx5r7dnixnjczqz4dr4h1mm0fxgvs5wficcnylg4d";
  packages."aarch64_generic"."routing".sha256 = "1z2f50fafh72nvkhlrkcf26v7whvgl085d7ypz1jgx2ckpph6fjn";
  packages."aarch64_generic"."telephony".sha256 = "0dgqvb2906w9lzmfyawc4x3i5g7m4i3fyyclvmg93h4n1hl3ypyz";
  targets."ipq806x"."generic".sha256 = "09a10mr4gazjlwckk2i08ha62vzc66lxnlvhc9rlcsj9c5pdz7br";
  targets."ipq806x"."generic".packagesArch = "arm_cortex-a15_neon-vfpv4";
  packages."arm_cortex-a15_neon-vfpv4"."base".sha256 = "1myld3m231y8a1hvx8vi1ky25ggjlmqnb5p9sj0nr13mvfn1fvww";
  packages."arm_cortex-a15_neon-vfpv4"."luci".sha256 = "0d2nw9brr6l26z27slqzhj6yrjmfmy0m34qmwzrxk873pwk6h3wl";
  packages."arm_cortex-a15_neon-vfpv4"."packages".sha256 = "10amnj61n11xbfs3wh7fqf61cs2g3j3f4c1xl2yipnsrnkzwhqx6";
  packages."arm_cortex-a15_neon-vfpv4"."routing".sha256 = "1klvwh3vz5pyxjfj5hh5byxk2q961min8wl3sjba65lll66sxrkd";
  packages."arm_cortex-a15_neon-vfpv4"."telephony".sha256 = "06kk2q9a1bas6azp0wxsnch3r1v1yzcfn7s0wm9xidxa7zprp2ni";
  targets."sunxi"."cortexa8".sha256 = "0wzcs39annls7kzj6r4bn453nkxmry1wvdndgkmpyk4ziap7qwc3";
  targets."sunxi"."cortexa8".packagesArch = "arm_cortex-a8_vfpv3";
  packages."arm_cortex-a8_vfpv3"."base".sha256 = "0grnb6wkva86ibc4iipdcpimr9b69594lsqvk9d42wg9mvdwc8v2";
  packages."arm_cortex-a8_vfpv3"."luci".sha256 = "1nqab345895ihp8gzpkfhqg442285dd85apdi4n4x6hlln5v8mc6";
  packages."arm_cortex-a8_vfpv3"."packages".sha256 = "08w1gnixgyfx1ixa82gb8z88q5gdh60crma27rbbjipm1n2ia1a5";
  packages."arm_cortex-a8_vfpv3"."routing".sha256 = "1jgn2xyw2ps4y3sr7wwhm2wy01v061gsqvwm4i6371xy0csbi6xl";
  packages."arm_cortex-a8_vfpv3"."telephony".sha256 = "0r4rg739l7kvrv1ng6kh6sdlmdz309af5mvx7zh9ap8q0na8cc5y";
  targets."sunxi"."cortexa53".sha256 = "0f3qhk8bl257hi7dy4zqfyv3kr08s6km4zaiamg88bmakqqcvrhn";
  targets."sunxi"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."sunxi"."cortexa7".sha256 = "1kkm3pdy309b464xmbm95qjw6w04y8ir8q9jpwbgk0ygcwffsgy0";
  targets."sunxi"."cortexa7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mpc85xx"."p1010".sha256 = "0wl9aqgv67wlr926nvlmphn2wrrqvm9n98z5vd9srd1wxd8jl4x4";
  targets."mpc85xx"."p1010".packagesArch = "powerpc_8540";
  packages."powerpc_8540"."base".sha256 = "1yf0jcyxg128wq6ps2ir64wxqjg31ygmf9j2rja80mvmlgn6nbn7";
  packages."powerpc_8540"."luci".sha256 = "1yj5a4p3cq3jml26bz6ikb9b3qbb82xd143xq8allxxp78l4qfsp";
  packages."powerpc_8540"."packages".sha256 = "03p5271j2n0f16d5yvgzr1fyadzyxvr0jzf9b2wfabdkwy4pqlw0";
  packages."powerpc_8540"."routing".sha256 = "0yscjdh7sznr0jzik48jlad6v2dlsl1lm6md3danxkxa7xg3ga1z";
  packages."powerpc_8540"."telephony".sha256 = "0yxismp6rq0j00y7nnjy04sskcqv497aq3li7p9pppx40c3i03gk";
  targets."mpc85xx"."p2020".sha256 = "1983sj0f05785fr021bp46ykl0gypv7ivzc0a7fczcx7wzp0pg9z";
  targets."mpc85xx"."p2020".packagesArch = "powerpc_8540";
  targets."mpc85xx"."p1020".sha256 = "10azyznslmdiylq25jxr2cyvyrvc1nxi0l54rnq2ic5ajz83jdb8";
  targets."mpc85xx"."p1020".packagesArch = "powerpc_8540";
  targets."imx"."cortexa7".sha256 = "1vg1qw59p0aawps9q9ikp2cvy0dwjr7p93fi297fj8zi0ak6fb62";
  targets."imx"."cortexa9".sha256 = "050m97l77902467anv2ydpjfng83g89zqmxdw1rmdmn23214ynaq";
  targets."imx"."cortexa9".packagesArch = "arm_cortex-a9_neon";
  targets."x86"."generic".sha256 = "1r3d1vrmzg1zvra48d28v625hl2mf5gxdscysi9sq9qqp7m1bwiq";
  targets."x86"."generic".packagesArch = "i386_pentium4";
  packages."i386_pentium4"."base".sha256 = "0r582fv3616wsq8q48rihakgvfsz5hzhg2px97rfv6pk2kxbgvmc";
  packages."i386_pentium4"."luci".sha256 = "1iczdr61n32rxmfb0dyhxzpkhwnk69zw49wsvala1a1r4yvhk3pv";
  packages."i386_pentium4"."packages".sha256 = "18iqi3k9m3ps6f7hi6bwl12fiy1a53gj20663zvc8g9b24fhpgxi";
  packages."i386_pentium4"."routing".sha256 = "0c9c211aam3i0whym8pvasxqpsn4mrwfy5fxiyn6c7daxpnkh6fq";
  packages."i386_pentium4"."telephony".sha256 = "1aqw1npaw137b7na9wqpwxpfx44d7gaz15fpfv7nrw6j608zahnf";
  targets."x86"."legacy".sha256 = "0jpyh6a6b2n3cc4gx3csnnv2p6fxqgv1lbiaq3mf30k3189mrksv";
  targets."x86"."legacy".packagesArch = "i386_pentium-mmx";
  packages."i386_pentium-mmx"."base".sha256 = "0a4zhm2kg3mkrh9pqa6ry9ka6xjm8vaail637z7y8gr9c1afbr1w";
  packages."i386_pentium-mmx"."luci".sha256 = "1zxp0053z22v6i8whjx0fa6prxws7pgs2z42fzp3mal7395phd80";
  packages."i386_pentium-mmx"."packages".sha256 = "0h36cgknrmzc1zhmw5rbar2jfj3zkyais5wn67yablr9096ms3jr";
  packages."i386_pentium-mmx"."routing".sha256 = "0d76sjynqs8dgxj1fq698sa42jgki58m90ldza26kzhd0zxda9fk";
  packages."i386_pentium-mmx"."telephony".sha256 = "1y5bwxi1nyw52bk4g45j17fwqpp8hmql3rambjwwn9n2r8knl2py";
  targets."x86"."geode".sha256 = "1pfscsw20n9y0fwp31x1fbawqxdvxy5pk08g71wjvv138pxpff4k";
  targets."x86"."geode".packagesArch = "i386_pentium-mmx";
  targets."x86"."64".sha256 = "1clsq2xlk10fk7dyz7hw9ki7zlyfg3f7km6g4zacia8jgrwpwm0d";
  targets."x86"."64".packagesArch = "x86_64";
  packages."x86_64"."base".sha256 = "0ffj66fzz0nwx20qwxijybligfhykpxxdha8nfnjyssrqlwbh2zv";
  packages."x86_64"."luci".sha256 = "1c7bhngbznis6rsdfb44z46805j0qjvlm4cnmx4h6yfhbf988wjx";
  packages."x86_64"."packages".sha256 = "020nhg9rfsgzwyvh4pm0pz26kpcwv8xz05bszd15h6ddy9bgsh7i";
  packages."x86_64"."routing".sha256 = "0w47njm7x04xk0bb180s3ifxkama8xjc2xh7zv4jy73djg8byspl";
  packages."x86_64"."telephony".sha256 = "192kqgczmxhc81n3xrk5jgn50q75pzv7hg7c4hppszl4zmjw293h";
  targets."realtek"."rtl838x".sha256 = "0fjn045siyk2c46vfs15k0hpms9bigrsc7hdqk7j6jidlf21dkgb";
  targets."realtek"."rtl838x".packagesArch = "mips_4kec";
  packages."mips_4kec"."base".sha256 = "1pd8ddajfri4rxjv15mg8zja7ms7736ip282nzhxw1kpa48q01al";
  packages."mips_4kec"."luci".sha256 = "1yfsfhxj8lfqxavx01rb480ix326x60vn7543ah4vjmijxm4kclj";
  packages."mips_4kec"."packages".sha256 = "1pc577gmd5ssy5k3n0rv5vjjmrnnsvnd0mf1wnl3ar09zsydlzcs";
  packages."mips_4kec"."routing".sha256 = "0is73lsi0incwzwajak5gcd2pr307bhsaxk6qvyi8l5biihzsyry";
  packages."mips_4kec"."telephony".sha256 = "0isffb1xya63imz1bc2xxjlji7z3c18d5j7zzm5k1kmshhr8xiwl";
  targets."realtek"."rtl930x".sha256 = "0vijwfxsg1hv7apxjknw7lyds4wjl2zfkip4awmmfnim65rg7zgc";
  targets."realtek"."rtl930x".packagesArch = "mips_24kc";
  packages."mips_24kc"."base".sha256 = "1s9ibsr2niws2cx2sjiigrpbvf4c3sxrxk33j3gldgrjlswd5cqp";
  packages."mips_24kc"."luci".sha256 = "1vhlz8d1hl42g3srw56k1x8wi9svzi3aba41ir07y5lybabmzvy4";
  packages."mips_24kc"."packages".sha256 = "0hzp2nkbyvxld6mirwi04qgsdiirzi2ihnwsrs13f2rin9n0sx1k";
  packages."mips_24kc"."routing".sha256 = "11s4l9zcjz7dfhvcsizmil0isa96san2r7185j972z6krafrgc9z";
  packages."mips_24kc"."telephony".sha256 = "01331i5bpklq5k4cn64998abj3jqsdrb5w72r6nlp00qj561az6f";
  targets."realtek"."rtl931x".sha256 = "1wmzglm869zwqjaxdp13xkyzyr93rpamnxi0h6lzykjqj02xpg1m";
  targets."realtek"."rtl839x".sha256 = "1vn334qxg082hrwbrm3zyicah42dch6pbibcymzcki90mpfg0j2m";
  targets."realtek"."rtl839x".packagesArch = "mips_24kc";
  targets."armvirt"."32".sha256 = "1rzi9h59f1b8w8wybf6i709y5h7pj957v47ihjcrwn7prxlhvy1x";
  targets."armvirt"."64".sha256 = "0rwxjxsz2951ss9l61b6zb6zbfinhflw60ppkvmhqrgphhj2l887";
  targets."kirkwood"."generic".sha256 = "03m7aqj6n11wsiprpbw1r5snlx4q00j8vqgdnjvh0pjpj0qlnr1j";
  targets."kirkwood"."generic".packagesArch = "arm_xscale";
  packages."arm_xscale"."base".sha256 = "19cpj72kvswanjab4wpn5bmyw1qxw95lppgy9w8qsqfgy88kvlmm";
  packages."arm_xscale"."luci".sha256 = "1c7cwxjib41828dbhpvw69w3phm7bclmmk0lpjvcdxg9nwnj354l";
  packages."arm_xscale"."packages".sha256 = "0z6vlxndwjfwhvi4fxb6kx9k3a5zg2w5br989j4p04sk4n5gzl2w";
  packages."arm_xscale"."routing".sha256 = "033ymcvxll1layklfbflndgnxg32cjlbjmdc2qr40hkqvxc967j1";
  packages."arm_xscale"."telephony".sha256 = "0vxdr95arhxqdchwhh0nngw6xzb5v8ywwrxa416rs2p0yqhxn62x";
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
  packages."arc_archs"."base".sha256 = "0b8pzss6dk791axymn5y8x2c0h6rda5jzgrzhabvgsg4vaqmrgpf";
  packages."arc_archs"."luci".sha256 = "1zdy0qhykabhbfp76i39lqrpva8lxnxb6r66cm90scryf03ysf1m";
  packages."arc_archs"."packages".sha256 = "098f6jnpvvyvxrrwk8vbqxxyiy9zcf98b30r0nv2mgcn7fi7lpqp";
  packages."arc_archs"."routing".sha256 = "1vbyw6hdp72lrph5y46s687cschymql3yf090ib2dqpxw5c1yg99";
  packages."arc_archs"."telephony".sha256 = "0b3f0hdfs20cdwh8dpim3jwp3hfq665pyla8k5lxqfndxb2sj6kv";
  targets."ath25"."generic".sha256 = "1663g7k7slkizm431s8chrsjz8yi3l27n885zrx00wp2s8fpqpjx";
  targets."ath25"."generic".packagesArch = "mips_mips32";
  targets."apm821xx"."nand".sha256 = "0psni7sj5s1psfhahxc31r0ia2d8cdzr99ypcigsacd9380vsghn";
  targets."apm821xx"."nand".packagesArch = "powerpc_464fp";
  packages."powerpc_464fp"."base".sha256 = "1xx9jg4xib0raq3d399zbks5gqsjkrqcsxxrpfr3n8w42ngj3q7w";
  packages."powerpc_464fp"."luci".sha256 = "1phqsdwa921c7mx2yj7ys8ysr9dlgf6pyf9f48sv1812r5zivfwz";
  packages."powerpc_464fp"."packages".sha256 = "10xz2by3yg5kmpc2gg0xr4if7mz4vii5fi19sr9pwzd9fvy37kay";
  packages."powerpc_464fp"."routing".sha256 = "094pwjp9lkgs2q60i5k2nsx0f1vadh5a7892zzqzm6yj9fchdw2d";
  packages."powerpc_464fp"."telephony".sha256 = "0za5nhphi3k06z77qb5x981nzmqni2znmnl22xy3s6hzvm22wk56";
  targets."apm821xx"."sata".sha256 = "1r0s9ffyfzzjbvi7i0rlvb1nrx997ran28drf1fkszsic6wbqrv8";
  targets."apm821xx"."sata".packagesArch = "powerpc_464fp";
  targets."bcm53xx"."generic".sha256 = "0m5v5g7h6ryd8h4dj0mnp8qzqkb0zk1l7261ga5zqh3wda8wq1y0";
  targets."bcm53xx"."generic".packagesArch = "arm_cortex-a9";
  packages."arm_cortex-a9"."base".sha256 = "1zii8568xv11pb0r63d7fmdjbqgn1py8iaikd5h8433ywkcf7jyy";
  packages."arm_cortex-a9"."luci".sha256 = "1bgiv9wvpi5zh7j42dxq1zr5yzc0m4zbndzync0yyyrffx718bvw";
  packages."arm_cortex-a9"."packages".sha256 = "0h92fswz2mqlkybhi8k4q7kdd7ipl241w7mvnd08n9acd9fdn04s";
  packages."arm_cortex-a9"."routing".sha256 = "1ndljbx83bfhd3izjh94x54cg0c1fvvl9b85h8sjw39l4h0p7yij";
  packages."arm_cortex-a9"."telephony".sha256 = "0sld9cyc40sc2dp4f25p8f9avg07m72rn1ysd3zcryxzrwwqmx46";
  targets."ramips"."mt76x8".sha256 = "1cp0zjngyqa1x1ryfb21bcpwjzm8zqsfz85vi2jn4d63c2k95gvd";
  targets."ramips"."mt76x8".packagesArch = "mipsel_24kc";
  packages."mipsel_24kc"."base".sha256 = "1qd42a2071vyc5h9yhkr0f2zx8qbcs7bcycr828zcz1l57xwi753";
  packages."mipsel_24kc"."luci".sha256 = "1v6g9a5si3v6s2f98ivmq8dykib5w07slkbmbnvwp1yqsvm7fb9a";
  packages."mipsel_24kc"."packages".sha256 = "0q0ki2ihlcpp6qklmcvlyidci042xwqw9v7nz6msbw3b8yj8qsrs";
  packages."mipsel_24kc"."routing".sha256 = "1ilj2ly80v2frz0a2zjv8laxqh3xby1ml7vbs8z2cr6lgaashjvi";
  packages."mipsel_24kc"."telephony".sha256 = "14kggpk60bycsn8a8w3v9ybis68acm1s31hmq7kzvymk3x4yfxh8";
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
  packages."mips64_octeonplus"."base".sha256 = "1mknqydl9pnya0j64kz7vffya7mp840xhr3v8awl1bfaqa28p41n";
  packages."mips64_octeonplus"."luci".sha256 = "09m7d3xzd9phd9j9fqd9q3aknrnspsy3h2jgmhr0137ffx9xwqzh";
  packages."mips64_octeonplus"."packages".sha256 = "10hkfdajgp20lmxypjhsv59hwy3h9c8icwg7w26rskg0vnifyd3b";
  packages."mips64_octeonplus"."routing".sha256 = "0wp1hbpbyf45b5chyscba7rj9gszz88zj1bifigjn8dywhxjafqw";
  packages."mips64_octeonplus"."telephony".sha256 = "02ixm6p7144xvd90lhsg186mwxs6lh59hvlp9sh2v4g6lfm8i8bl";
  targets."pistachio"."generic".sha256 = "0valsc1w507cvl96j6l23xbmi47sy9mc2ll8a258kdyqprypng7a";
  targets."pistachio"."generic".packagesArch = "mipsel_24kc_24kf";
  packages."mipsel_24kc_24kf"."base".sha256 = "110792ijzfqnmxwahhljy5wzw3pb4azpr101fhv5v0mx4cxw3fmq";
  packages."mipsel_24kc_24kf"."luci".sha256 = "1mpzfjbx1zcch1lha6pzfkkyngxwsj0qwb1h27zz1m12hjkmbw2z";
  packages."mipsel_24kc_24kf"."packages".sha256 = "0ag2jyskzdmjia6ficfwmnhh6hkrxnj9qyq0p8hzs7485nv7m1cc";
  packages."mipsel_24kc_24kf"."routing".sha256 = "1l6kg0qlaab6z8sym6j1zgbpmp6jdhx8n8bzmvy277zgj97rdpzs";
  packages."mipsel_24kc_24kf"."telephony".sha256 = "1zynzi0kzvb9b6sjg7cwbqclqqx3yi87jj4bxj400j2b764l4f9i";
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
