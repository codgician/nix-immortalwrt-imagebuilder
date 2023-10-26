{
  targets."oxnas"."ox820".sha256 = "06xn30il1lzis0g7ig64idlrnmgx2dzmpj0rvqs4gypg5h53a1vg";
  targets."oxnas"."ox820".packagesArch = "arm_mpcore";
  packages."arm_mpcore"."base".sha256 = "12sxvx18fghw4d57l4hf4zfv5jhn3d74668zdzf5fj2y1rqhkpl8";
  packages."arm_mpcore"."luci".sha256 = "03h63ndcakx98gfr0l7gd7m8r7bjryb3m10vc137mpjanxsaik8d";
  packages."arm_mpcore"."packages".sha256 = "14ajwcmkzzhns9brbgw2zqyd79724yysq1ikzvdar9d8i53md31j";
  packages."arm_mpcore"."routing".sha256 = "0p5q2an55jlgs975w20q6zswx2qw57sh1ffhdg5r7ck25ll2s9q1";
  packages."arm_mpcore"."telephony".sha256 = "1xjzxd23vd1g1ilprpx8i1ck7ji8mjrwpnhzvbky57iwm6q4l281";
  targets."mxs"."generic".sha256 = "0z7szy7y8rkyk4qg43sklj5j7r51fmj8idl9x15zynq9vz1lgzhb";
  targets."zynq"."generic".sha256 = "0gyn106q46xx95q7jfrfvg569cydwdbz2hj8x3zhvx6vpyv8pwzl";
  targets."zynq"."generic".packagesArch = "arm_cortex-a9_neon";
  packages."arm_cortex-a9_neon"."base".sha256 = "16kdsxmpmpkhqmf6dad3cv3ipnsb2vjlci5n41vrsp9rykfw6qvd";
  packages."arm_cortex-a9_neon"."luci".sha256 = "07gv0lmhn84z4m4wikd8q45r1j36497kj0z2hi3i54cjvwfzzp1n";
  packages."arm_cortex-a9_neon"."packages".sha256 = "1qx1ppm22vrqdpmfi67xfmg702mwa3v4v05pnh7cwzmgfp02bl35";
  packages."arm_cortex-a9_neon"."routing".sha256 = "1qlrbn9q77dc3cfbpmxxamqiiz0y9rq9pfs3q1bj07fwn2n1i8g3";
  packages."arm_cortex-a9_neon"."telephony".sha256 = "16qdx7mgdwv739acji3w3d4b7bi9gd70pwjh3nsxfsvg7isvva3v";
  targets."bcm63xx"."generic".sha256 = "0fnwbicx06glzjnvbxdb2bmybyrmfbxynn6dl4c93zdrjwh6f94s";
  targets."bcm63xx"."generic".packagesArch = "mips_mips32";
  packages."mips_mips32"."base".sha256 = "1vwwb6kn6w578wy3xp2s7sbjcbkip11cd2l1hxmzq02fg94z3997";
  packages."mips_mips32"."luci".sha256 = "03m5rmbvmf00ynzamigmd1kz5ghgipxcmylvz3gsi5y35zfsrc7x";
  packages."mips_mips32"."packages".sha256 = "0sl3pqa5q4qx4r94d55h59x19x0xjaarykad665rlldrbg9q8z0d";
  packages."mips_mips32"."routing".sha256 = "1mnh1xyv08w05rcnhqpr2rjfg7x796zhplc3xlybsbfg2pzdg0a0";
  packages."mips_mips32"."telephony".sha256 = "0mlwc57570wv141d1l52y6rhqsnv0y6l0p22dkw8ksfpwj96bpyc";
  targets."bcm63xx"."smp".sha256 = "0zmpx28s0npk99461gv5qk99a7a68jh81018hlwjnk1x6nygp6l6";
  targets."bcm63xx"."smp".packagesArch = "mips_mips32";
  targets."bcm47xx"."generic".sha256 = "0abmzzbpsf5368sscs6zjw2xb3rfjcy4337z0hgn0ggivq2afzlz";
  targets."bcm47xx"."generic".packagesArch = "mipsel_mips32";
  packages."mipsel_mips32"."base".sha256 = "1jpjy80a8nj1l9pfhrp5jdvqnyakgng4lllsb2kaxb3xvlf0b8n5";
  packages."mipsel_mips32"."luci".sha256 = "0ryax74gd4f55gr2qjablwly6dm35v72v6vyamlqayag3li1c7zi";
  packages."mipsel_mips32"."packages".sha256 = "1hpla7wbx8i3546qyqg49r1z2pk76g8la21w6q53j5svd679r0gy";
  packages."mipsel_mips32"."routing".sha256 = "1p1qcwsb4cz7lnf8yr98j26ycb05xac5bipywlan2i6y99614902";
  packages."mipsel_mips32"."telephony".sha256 = "0sja3sdaha8lxayvl7srgvfsn4rxyr9gcr6h215r3ck8dg9qd8zf";
  targets."bcm47xx"."legacy".sha256 = "042sidhwkj2kkiw6ddi460pkfpnb6y6v60cv6if7cxqykbf8clvf";
  targets."bcm47xx"."legacy".packagesArch = "mipsel_mips32";
  targets."bcm47xx"."mips74k".sha256 = "1m38xb93d25xacy52lv599x183s97z2ymyp29j4w71j7n2wjbjwv";
  targets."bcm47xx"."mips74k".packagesArch = "mipsel_74kc";
  packages."mipsel_74kc"."base".sha256 = "0gdgmj12pz05n0zj9kkl8wlcx4w954bgygxc6ibg1azpbil9li0x";
  packages."mipsel_74kc"."luci".sha256 = "01v17v2dfbv7bq03nl1cyd1cs1nsvvbdp3wym7qghmbkgwzqf5zx";
  packages."mipsel_74kc"."packages".sha256 = "0v4mv01mcnn1az8w52yx133lfja7bx00mx690jg615djwy18miqf";
  packages."mipsel_74kc"."routing".sha256 = "03jd9df5rpildg134p0cvijd1z59jwfzjhb1yplspkbn3pdjmhlh";
  packages."mipsel_74kc"."telephony".sha256 = "1myxr2rlbdpwhm4nn9wpf3ilh59ll7n9r2km8jn693j1n8ybk5fg";
  targets."bcm27xx"."bcm2711".sha256 = "117j9dnsv430sylz2c2yq9pkzb41gcwpybdw5hhcrawk6n9ppcgy";
  targets."bcm27xx"."bcm2711".packagesArch = "aarch64_cortex-a72";
  packages."aarch64_cortex-a72"."base".sha256 = "0yyz45cv9fvi27v3cdhlkdqi13mpigrinaq00sjswlnfwnwsq03w";
  packages."aarch64_cortex-a72"."luci".sha256 = "1hv4swr4wrzzdl0f0r1q7jh9bqs6czsyd3xqridxkwxp8d565sv1";
  packages."aarch64_cortex-a72"."packages".sha256 = "16qvxscnbcspg9phz2nwld9mqp5qhw7ya0vhlbp0fr3n4srvfb1m";
  packages."aarch64_cortex-a72"."routing".sha256 = "0slmbq7i9803lsyx7kbdlsjsrskh67hxa6gsi9km9674dxg7lsc9";
  packages."aarch64_cortex-a72"."telephony".sha256 = "163hp9j3lls492nzpgd6cmnrdwz0bkndlh5pp3p4279ich3pglxc";
  targets."bcm27xx"."bcm2708".sha256 = "1r5ynw9awxkm9cc6iqb0xzb7nlnm59z33kcvcslm522d3l16c0zz";
  targets."bcm27xx"."bcm2708".packagesArch = "arm_arm1176jzf-s_vfp";
  packages."arm_arm1176jzf-s_vfp"."base".sha256 = "0sslsaakavw7acf289ivwx7w65rakwvfwx7fb1cyyj0y1mnql4s2";
  packages."arm_arm1176jzf-s_vfp"."luci".sha256 = "1kfizlzqvybd2j6w7hlb429babhz79ym6v1vld7y31riz6rad80k";
  packages."arm_arm1176jzf-s_vfp"."packages".sha256 = "0109p3wwxzfi9fc1vd9rkxamla5jgk41y9zadsmpv7x2qwi7afli";
  packages."arm_arm1176jzf-s_vfp"."routing".sha256 = "1ygn1a3r9ivgw9dnmry1598l4qywfhhxvki52xvzj56zxahylh2v";
  packages."arm_arm1176jzf-s_vfp"."telephony".sha256 = "0lz13mldydr6r5f5gsxv1m3wl1lf9fxfrmxma5nqx4266s9haajg";
  targets."bcm27xx"."bcm2709".sha256 = "1npwda8gmv0qmfmhi2rbjfny2k9zpzbqyxl0ic1z4b2w2x8cayya";
  targets."bcm27xx"."bcm2709".packagesArch = "arm_cortex-a7_neon-vfpv4";
  packages."arm_cortex-a7_neon-vfpv4"."base".sha256 = "02gy0jwq2wcxcfz567l5mds5yfl0xxdbszzkngfmsx5vxpqfgw03";
  packages."arm_cortex-a7_neon-vfpv4"."luci".sha256 = "0dcx1cb9nh1wj5a727rjs7hj877aj6rsl1pcybq5dqln7iffnr9w";
  packages."arm_cortex-a7_neon-vfpv4"."packages".sha256 = "0887ajlidxyxw8mwwz8c96hj5pbfayrf93jwbj018plms7dfnyp5";
  packages."arm_cortex-a7_neon-vfpv4"."routing".sha256 = "174hd4fsj1xfz9ikvhnk46hfdhg8vj2qf6awfcbx85nm31kvmqgk";
  packages."arm_cortex-a7_neon-vfpv4"."telephony".sha256 = "1b99bsadcrqqgbfyisnsil7qkjbn97k01l7hvb7pgwbmn9xki8qc";
  targets."bcm27xx"."bcm2710".sha256 = "0yfsf3pdcv1bhblqxlm43zjp0rixa1g0znj54by2aklgsli18qjq";
  targets."bcm27xx"."bcm2710".packagesArch = "aarch64_cortex-a53";
  packages."aarch64_cortex-a53"."base".sha256 = "1hqsf195rha8zrpbjj2wsw78420x1lkcfqqysd75zvap9273568w";
  packages."aarch64_cortex-a53"."luci".sha256 = "1cj27irqvz5fmrm1a2hzxjn6fip43bi2kmqsc8w5f8d4npdg8adn";
  packages."aarch64_cortex-a53"."packages".sha256 = "1azpfbkrv3q2wr3wc24112m3x2m53k1flz9bbkpj4qragir1sl67";
  packages."aarch64_cortex-a53"."routing".sha256 = "1g528np2p8p51lj1syw04cd8p5ivxbwmlmzd5q3iwbqyl9g20rfl";
  packages."aarch64_cortex-a53"."telephony".sha256 = "1cllnvazny37lq9izw2rn561jsgp0v1b3pff2rz1qb8ms5g4nlbg";
  targets."mvebu"."cortexa53".sha256 = "1gxz41iwc1br74m85c5nc22hjpc19awaj16f9v2faapc4ll2fx0s";
  targets."mvebu"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."mvebu"."cortexa72".sha256 = "06i6i6in9ic3g7m0bz2gxz7dsvqacj9pnr2537lvmv8jngpxd0z6";
  targets."mvebu"."cortexa72".packagesArch = "aarch64_cortex-a72";
  targets."mvebu"."cortexa9".sha256 = "0nrj2skfc7r8lwcyfr6m9mfjx8s5kbi5a0d4pnhw3l0l9j2mlrfs";
  targets."mvebu"."cortexa9".packagesArch = "arm_cortex-a9_vfpv3-d16";
  packages."arm_cortex-a9_vfpv3-d16"."base".sha256 = "0gskfb5l6rc3vdf422mm9x12nckdmnwl1wvbrflw65lvzs9z2k0i";
  packages."arm_cortex-a9_vfpv3-d16"."luci".sha256 = "0x8lbl8x6cx61rhy2ia2v82kw4j7i4v193pf3wyscnlb5hk9r8c8";
  packages."arm_cortex-a9_vfpv3-d16"."packages".sha256 = "1fzn1zwcnglfz24j2s7vvm27mhsil83kk8jkalvf8i0kvcsqbgkj";
  packages."arm_cortex-a9_vfpv3-d16"."routing".sha256 = "0j94ql7jcshkdnb8jw410kak22qsjicif2dk6ph1snl8fh03a61n";
  packages."arm_cortex-a9_vfpv3-d16"."telephony".sha256 = "0zb66qfm2bc2nz4c3k5cdpvm7kwl4x8q4gz5p3ddrkp20aqcywkn";
  targets."at91"."sam9x".sha256 = "0k00nrxysc4z1yx5hssz74341j7rzm33703zj06qdd714gm87p94";
  targets."at91"."sam9x".packagesArch = "arm_arm926ej-s";
  packages."arm_arm926ej-s"."base".sha256 = "1rgk31yz82krmngy7qizywkri9yfynx29iq5cwhxrrm1alairrsm";
  packages."arm_arm926ej-s"."luci".sha256 = "0dbzjcl2w5zdan4m6rggw8xxgd35gi2c0cgrww4h8xks73imff1h";
  packages."arm_arm926ej-s"."packages".sha256 = "10dcc7dvwad27hb6j8lyi8alb05jn3zsn10rhx8m2qjilada2d82";
  packages."arm_arm926ej-s"."routing".sha256 = "1kkjhaj2l5c85n8z8wv6an6cx88bhgnl9kzas86bhc0mrs9p4h61";
  packages."arm_arm926ej-s"."telephony".sha256 = "182d6ss6cwihin797q0m7p6qrsa7d2am72advgrqwi4dwqsf7qzi";
  targets."at91"."sama7".sha256 = "0m1f1x6w0zrp0zr87w7r8d88fix5ygpi2pbajxds8r8d6c0qyfah";
  targets."at91"."sama7".packagesArch = "arm_cortex-a7_vfpv4";
  packages."arm_cortex-a7_vfpv4"."base".sha256 = "0i7jh2q2iakwvb9pp3kcn2ll7av9k9pfc57wxvd51v8vpf395fz3";
  packages."arm_cortex-a7_vfpv4"."luci".sha256 = "0dlzlmarb5n85bkbxb41iclkxa06cgxyimlvsa3i3sxjsyggsn85";
  packages."arm_cortex-a7_vfpv4"."packages".sha256 = "1ad0q47n9fp77x3d17921mp3197cr02xj9k6yx4m1l371ayd825b";
  packages."arm_cortex-a7_vfpv4"."routing".sha256 = "1cxbwykif2zs1x7qayr4ywxmimmahfy4i40k0b72nvkckqnlgg28";
  packages."arm_cortex-a7_vfpv4"."telephony".sha256 = "0czd3k920wg8s0mk7rlnmn6f9arqxnbz85pm312wzi03nd8qhg3a";
  targets."at91"."sama5".sha256 = "11jh6n7rm4a8pmaahx3gq436ljrq3ksg71qfwm0qakywrwlc5736";
  targets."at91"."sama5".packagesArch = "arm_cortex-a5_vfpv4";
  packages."arm_cortex-a5_vfpv4"."base".sha256 = "1zk9ahjgbjbyqq3rkqz0hl02lkdy01pd9bai4i0d46dimm8q1jcd";
  packages."arm_cortex-a5_vfpv4"."luci".sha256 = "0sj0ryxzqf4rdnl6s704cgn3ygx6n4y007rsy6j7n16zhnap5rif";
  packages."arm_cortex-a5_vfpv4"."packages".sha256 = "1rx149nfmxcd08i5r4cq7bf9dkh471q4lhrmkzy3bzjq11iikqzw";
  packages."arm_cortex-a5_vfpv4"."routing".sha256 = "030kam1my17nl4qi6j1wc1a18yj5ydhiwg7qivd7mz7ci9ijsxk7";
  packages."arm_cortex-a5_vfpv4"."telephony".sha256 = "0vmcs6zyw2f7ln4qli1nxr5yp5msl132zw3rcq77b667lp3dgm8x";
  targets."gemini"."generic".sha256 = "1hf9mdg20awwgpfcld83ry60hqf5m7bm72izxd8z3gw1fsb5qw3f";
  targets."gemini"."generic".packagesArch = "arm_fa526";
  packages."arm_fa526"."base".sha256 = "1hbnacxnc695wifnrj0bhwykjgihmicg0vy67hpdjdfw04v4sim6";
  packages."arm_fa526"."luci".sha256 = "191mfg6xnx770h3alchnbqw46ar4iwzzcxh64pbjx3df0h5xzp9d";
  packages."arm_fa526"."packages".sha256 = "0wpa0sgx9j5w5wkwgyb5l89qml6fbsk9j65lbjn7nlkav66n1x7b";
  packages."arm_fa526"."routing".sha256 = "1zgjz5f4krp7gfsacn4dny42vav6imnriba1rjjqkhdjih5cpjfv";
  packages."arm_fa526"."telephony".sha256 = "12qn1yq7y8dpvgwmnx6yzay386cm3na6xcv419lwqa1spq4j5qjv";
  targets."octeontx"."generic".sha256 = "1ki0837r8gxxldl13cn5bfnqq4kaai29k9kw4lcd5f1j819z8sjz";
  targets."ipq40xx"."generic".sha256 = "10z4snavs2hfb0pfv0mxwi85b37n6asbmlwskbbqfh9ic0q09w2j";
  targets."ipq40xx"."generic".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."ipq40xx"."mikrotik".sha256 = "10qx6fpqdf0k0fg6jgscdpg3w48wx52r04dcym1sjv9ynknaf4rn";
  targets."ipq40xx"."mikrotik".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7623".sha256 = "1k3021kymcwdjm4kqqmnr0fla64806irn64syiy03wgj1fra6xs4";
  targets."mediatek"."mt7623".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7629".sha256 = "0ahpfihlh67gq87b774l6zzyf6j69b0hjmff2ypdczcc1vzi2axm";
  targets."mediatek"."mt7629".packagesArch = "arm_cortex-a7";
  packages."arm_cortex-a7"."base".sha256 = "1zm3vc278v8ams2vzgmcqrqdp81ayk69magldm333n7a3syiq6p8";
  packages."arm_cortex-a7"."luci".sha256 = "0k7z6bpnm8qzd84xbfg5xzq7sqm6wdxvg91d8jcdn4cgqcabnpg2";
  packages."arm_cortex-a7"."packages".sha256 = "050znws8934m61zrfrgb11ljnw4r8jcf2jrrwzzbdwiyc3h2hp7j";
  packages."arm_cortex-a7"."routing".sha256 = "024j9qpl8rbnhf8gpd4zg8fmmbharwm9w2faa54r12vna3i45hly";
  packages."arm_cortex-a7"."telephony".sha256 = "05j9gl8q5xv7mnp5rw1ivngdmfc4zgk5j3wvnxsx3rw81cb2qdqk";
  targets."mediatek"."mt7622".sha256 = "1mdr0asp0hv6hl6djb8rx1i8pwcrzfynrq2hs78nxndqxzqg75w3";
  targets."mediatek"."mt7622".packagesArch = "aarch64_cortex-a53";
  targets."malta"."be".sha256 = "1h8ps9sd2ww0il6vycpmszcw3i3ih5jrbvr5krjv32f7f3b3r6jf";
  targets."rockchip"."armv8".sha256 = "1rg7g6v9qbafgm4rm481cfh8b6qpyjwh4xc1n8w3xsxgr8zh2gzl";
  targets."rockchip"."armv8".packagesArch = "aarch64_generic";
  packages."aarch64_generic"."base".sha256 = "0dapnaszdhmkvx5z81argvdzzj7wjhmb89vn9bzc26mvcg911jyq";
  packages."aarch64_generic"."luci".sha256 = "1923mjr88n0jfiq82cmaralvm84b2y0cxb01ac2wm5cz3bgllha3";
  packages."aarch64_generic"."packages".sha256 = "1jfibyyhc53cx5r7dnixnjczqz4dr4h1mm0fxgvs5wficcnylg4d";
  packages."aarch64_generic"."routing".sha256 = "1z2f50fafh72nvkhlrkcf26v7whvgl085d7ypz1jgx2ckpph6fjn";
  packages."aarch64_generic"."telephony".sha256 = "0dgqvb2906w9lzmfyawc4x3i5g7m4i3fyyclvmg93h4n1hl3ypyz";
  targets."ipq806x"."generic".sha256 = "003vgv16alm7w2rdyp6ahvz0cn5pkdkx6z6p03x335307khf0xwb";
  targets."ipq806x"."generic".packagesArch = "arm_cortex-a15_neon-vfpv4";
  packages."arm_cortex-a15_neon-vfpv4"."base".sha256 = "1myld3m231y8a1hvx8vi1ky25ggjlmqnb5p9sj0nr13mvfn1fvww";
  packages."arm_cortex-a15_neon-vfpv4"."luci".sha256 = "0d2nw9brr6l26z27slqzhj6yrjmfmy0m34qmwzrxk873pwk6h3wl";
  packages."arm_cortex-a15_neon-vfpv4"."packages".sha256 = "10amnj61n11xbfs3wh7fqf61cs2g3j3f4c1xl2yipnsrnkzwhqx6";
  packages."arm_cortex-a15_neon-vfpv4"."routing".sha256 = "1klvwh3vz5pyxjfj5hh5byxk2q961min8wl3sjba65lll66sxrkd";
  packages."arm_cortex-a15_neon-vfpv4"."telephony".sha256 = "06kk2q9a1bas6azp0wxsnch3r1v1yzcfn7s0wm9xidxa7zprp2ni";
  targets."sunxi"."cortexa8".sha256 = "1ifdik9c71in77fjmgh0kgnb7k4n6s4lfqjbwvcfkga5j4xalp94";
  targets."sunxi"."cortexa8".packagesArch = "arm_cortex-a8_vfpv3";
  packages."arm_cortex-a8_vfpv3"."base".sha256 = "0grnb6wkva86ibc4iipdcpimr9b69594lsqvk9d42wg9mvdwc8v2";
  packages."arm_cortex-a8_vfpv3"."luci".sha256 = "1nqab345895ihp8gzpkfhqg442285dd85apdi4n4x6hlln5v8mc6";
  packages."arm_cortex-a8_vfpv3"."packages".sha256 = "08w1gnixgyfx1ixa82gb8z88q5gdh60crma27rbbjipm1n2ia1a5";
  packages."arm_cortex-a8_vfpv3"."routing".sha256 = "1jgn2xyw2ps4y3sr7wwhm2wy01v061gsqvwm4i6371xy0csbi6xl";
  packages."arm_cortex-a8_vfpv3"."telephony".sha256 = "0r4rg739l7kvrv1ng6kh6sdlmdz309af5mvx7zh9ap8q0na8cc5y";
  targets."sunxi"."cortexa53".sha256 = "1vmb4pg7xfalbbhzsvxbwm93k46wj9rzlksa40193pranrxhn0wq";
  targets."sunxi"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."sunxi"."cortexa7".sha256 = "1s5z8rf8w492indd8ghh3f00jbsa0x1hj1hajbv76jv4jfczhwbl";
  targets."sunxi"."cortexa7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mpc85xx"."p1010".sha256 = "0pq7q40162lqx9p67ac0x77p9xlslrzrzfy1bhf25kvg1x6hs7pq";
  targets."mpc85xx"."p1010".packagesArch = "powerpc_8540";
  packages."powerpc_8540"."base".sha256 = "1yf0jcyxg128wq6ps2ir64wxqjg31ygmf9j2rja80mvmlgn6nbn7";
  packages."powerpc_8540"."luci".sha256 = "1yj5a4p3cq3jml26bz6ikb9b3qbb82xd143xq8allxxp78l4qfsp";
  packages."powerpc_8540"."packages".sha256 = "03p5271j2n0f16d5yvgzr1fyadzyxvr0jzf9b2wfabdkwy4pqlw0";
  packages."powerpc_8540"."routing".sha256 = "0yscjdh7sznr0jzik48jlad6v2dlsl1lm6md3danxkxa7xg3ga1z";
  packages."powerpc_8540"."telephony".sha256 = "0yxismp6rq0j00y7nnjy04sskcqv497aq3li7p9pppx40c3i03gk";
  targets."mpc85xx"."p2020".sha256 = "0msasyc20hz3a0bg0ykq07cf6qwb1g6bv3kk2rs3pa7g8s2kd4ck";
  targets."mpc85xx"."p2020".packagesArch = "powerpc_8540";
  targets."mpc85xx"."p1020".sha256 = "1q7j0x8zfb2y417pzcymmrkw0g4gs3m23xl2lkx5sqn5pyjvycwn";
  targets."mpc85xx"."p1020".packagesArch = "powerpc_8540";
  targets."imx"."cortexa7".sha256 = "0jq3gh3wn7zw0pjricy0gr0m54km6svhyfds1aq45xsr9sxdn012";
  targets."imx"."cortexa9".sha256 = "1v9l4jak3cvnnc67587klf9293cj9xswvg4b5hya5d3q56shcad6";
  targets."imx"."cortexa9".packagesArch = "arm_cortex-a9_neon";
  targets."x86"."generic".sha256 = "0pillfii20h9mv55k410y9fjj5d5fsh273givrbj0vca0d03hni4";
  targets."x86"."generic".packagesArch = "i386_pentium4";
  packages."i386_pentium4"."base".sha256 = "0r582fv3616wsq8q48rihakgvfsz5hzhg2px97rfv6pk2kxbgvmc";
  packages."i386_pentium4"."luci".sha256 = "1iczdr61n32rxmfb0dyhxzpkhwnk69zw49wsvala1a1r4yvhk3pv";
  packages."i386_pentium4"."packages".sha256 = "18iqi3k9m3ps6f7hi6bwl12fiy1a53gj20663zvc8g9b24fhpgxi";
  packages."i386_pentium4"."routing".sha256 = "0c9c211aam3i0whym8pvasxqpsn4mrwfy5fxiyn6c7daxpnkh6fq";
  packages."i386_pentium4"."telephony".sha256 = "1aqw1npaw137b7na9wqpwxpfx44d7gaz15fpfv7nrw6j608zahnf";
  targets."x86"."legacy".sha256 = "1w10s5b6ja4cgfpn4ad4360r65imm8ml1hbs8yzqd5072r2b2knr";
  targets."x86"."legacy".packagesArch = "i386_pentium-mmx";
  packages."i386_pentium-mmx"."base".sha256 = "0a4zhm2kg3mkrh9pqa6ry9ka6xjm8vaail637z7y8gr9c1afbr1w";
  packages."i386_pentium-mmx"."luci".sha256 = "1zxp0053z22v6i8whjx0fa6prxws7pgs2z42fzp3mal7395phd80";
  packages."i386_pentium-mmx"."packages".sha256 = "0h36cgknrmzc1zhmw5rbar2jfj3zkyais5wn67yablr9096ms3jr";
  packages."i386_pentium-mmx"."routing".sha256 = "0d76sjynqs8dgxj1fq698sa42jgki58m90ldza26kzhd0zxda9fk";
  packages."i386_pentium-mmx"."telephony".sha256 = "1y5bwxi1nyw52bk4g45j17fwqpp8hmql3rambjwwn9n2r8knl2py";
  targets."x86"."geode".sha256 = "1zm7727mzwkrhmk8jyzbyvvxbsglcj216x567mjgdsdrgwaj2w5h";
  targets."x86"."geode".packagesArch = "i386_pentium-mmx";
  targets."x86"."64".sha256 = "1jbn9nl58mab373g1x44527yqnmkdra8nja5nhms9saf65ibnm3a";
  targets."x86"."64".packagesArch = "x86_64";
  packages."x86_64"."base".sha256 = "0ffj66fzz0nwx20qwxijybligfhykpxxdha8nfnjyssrqlwbh2zv";
  packages."x86_64"."luci".sha256 = "1c7bhngbznis6rsdfb44z46805j0qjvlm4cnmx4h6yfhbf988wjx";
  packages."x86_64"."packages".sha256 = "020nhg9rfsgzwyvh4pm0pz26kpcwv8xz05bszd15h6ddy9bgsh7i";
  packages."x86_64"."routing".sha256 = "0w47njm7x04xk0bb180s3ifxkama8xjc2xh7zv4jy73djg8byspl";
  packages."x86_64"."telephony".sha256 = "192kqgczmxhc81n3xrk5jgn50q75pzv7hg7c4hppszl4zmjw293h";
  targets."realtek"."rtl838x".sha256 = "1lacx7bdj36c1qy634rbbk2k7s17mqg988g6fl0hl7vx4g0dx8k6";
  targets."realtek"."rtl838x".packagesArch = "mips_4kec";
  packages."mips_4kec"."base".sha256 = "1pd8ddajfri4rxjv15mg8zja7ms7736ip282nzhxw1kpa48q01al";
  packages."mips_4kec"."luci".sha256 = "1yfsfhxj8lfqxavx01rb480ix326x60vn7543ah4vjmijxm4kclj";
  packages."mips_4kec"."packages".sha256 = "1pc577gmd5ssy5k3n0rv5vjjmrnnsvnd0mf1wnl3ar09zsydlzcs";
  packages."mips_4kec"."routing".sha256 = "0is73lsi0incwzwajak5gcd2pr307bhsaxk6qvyi8l5biihzsyry";
  packages."mips_4kec"."telephony".sha256 = "0isffb1xya63imz1bc2xxjlji7z3c18d5j7zzm5k1kmshhr8xiwl";
  targets."realtek"."rtl930x".sha256 = "1awl8qlvg4j7gk2p8x12ib8li5c24d7wjm0g2lcb4ykrp2730xwz";
  targets."realtek"."rtl930x".packagesArch = "mips_24kc";
  packages."mips_24kc"."base".sha256 = "1s9ibsr2niws2cx2sjiigrpbvf4c3sxrxk33j3gldgrjlswd5cqp";
  packages."mips_24kc"."luci".sha256 = "1vhlz8d1hl42g3srw56k1x8wi9svzi3aba41ir07y5lybabmzvy4";
  packages."mips_24kc"."packages".sha256 = "0hzp2nkbyvxld6mirwi04qgsdiirzi2ihnwsrs13f2rin9n0sx1k";
  packages."mips_24kc"."routing".sha256 = "11s4l9zcjz7dfhvcsizmil0isa96san2r7185j972z6krafrgc9z";
  packages."mips_24kc"."telephony".sha256 = "01331i5bpklq5k4cn64998abj3jqsdrb5w72r6nlp00qj561az6f";
  targets."realtek"."rtl931x".sha256 = "1rhbb71w9ks30fa0v389apc758mwphyrngwqg7dqnbqbs234nr60";
  targets."realtek"."rtl839x".sha256 = "1vcpbnx8j9gcgvm38zz1nsvq83sgpafp247a7md1cb60rk2p9jnm";
  targets."realtek"."rtl839x".packagesArch = "mips_24kc";
  targets."armvirt"."32".sha256 = "1b7p9i55594mvcdhwprlkdrf66ahvzk0q18747d7aixynag5mhbn";
  targets."armvirt"."64".sha256 = "1vi4gds0jrmnmw0wnwjr68bb65lhg189m2yfn2gsqdpkcnwkyi71";
  targets."kirkwood"."generic".sha256 = "0pzxb0f95h711cklkjyllnmrg9rfivf5fmmjca17g1cak0ib4qm0";
  targets."kirkwood"."generic".packagesArch = "arm_xscale";
  packages."arm_xscale"."base".sha256 = "19cpj72kvswanjab4wpn5bmyw1qxw95lppgy9w8qsqfgy88kvlmm";
  packages."arm_xscale"."luci".sha256 = "1c7cwxjib41828dbhpvw69w3phm7bclmmk0lpjvcdxg9nwnj354l";
  packages."arm_xscale"."packages".sha256 = "0z6vlxndwjfwhvi4fxb6kx9k3a5zg2w5br989j4p04sk4n5gzl2w";
  packages."arm_xscale"."routing".sha256 = "033ymcvxll1layklfbflndgnxg32cjlbjmdc2qr40hkqvxc967j1";
  packages."arm_xscale"."telephony".sha256 = "0vxdr95arhxqdchwhh0nngw6xzb5v8ywwrxa416rs2p0yqhxn62x";
  targets."ath79"."generic".sha256 = "1i1bbwrjzw9f4p75iz1f8dcb5l1msgkq0dvdp1q8z66sr6cimczx";
  targets."ath79"."generic".packagesArch = "mips_24kc";
  targets."ath79"."mikrotik".sha256 = "1rz758r00amv6ppfh5yzjshg25j1bygivln563wc2mz905fr8x8x";
  targets."ath79"."mikrotik".packagesArch = "mips_24kc";
  targets."ath79"."nand".sha256 = "0zb4v6dw5j33k024mmw06vqr1grx6y9id9cwpnkrwyf42jih28fr";
  targets."ath79"."nand".packagesArch = "mips_24kc";
  targets."ath79"."tiny".sha256 = "1xfzvmyh15c6y8qfkili20rbkl5l350rj1whaap62hqaxp14v2x7";
  targets."ath79"."tiny".packagesArch = "mips_24kc";
  targets."archs38"."generic".sha256 = "00fd62idlj392bibaq3qfqgxpzhiv29rjrm7x2ilpf09bqcaywb9";
  targets."archs38"."generic".packagesArch = "arc_archs";
  packages."arc_archs"."base".sha256 = "0b8pzss6dk791axymn5y8x2c0h6rda5jzgrzhabvgsg4vaqmrgpf";
  packages."arc_archs"."luci".sha256 = "1zdy0qhykabhbfp76i39lqrpva8lxnxb6r66cm90scryf03ysf1m";
  packages."arc_archs"."packages".sha256 = "098f6jnpvvyvxrrwk8vbqxxyiy9zcf98b30r0nv2mgcn7fi7lpqp";
  packages."arc_archs"."routing".sha256 = "1vbyw6hdp72lrph5y46s687cschymql3yf090ib2dqpxw5c1yg99";
  packages."arc_archs"."telephony".sha256 = "0b3f0hdfs20cdwh8dpim3jwp3hfq665pyla8k5lxqfndxb2sj6kv";
  targets."ath25"."generic".sha256 = "02fmd4xmj4dcr4k7w2a1vakq61wfjjabfzr5vbjv40bv94cp4ka6";
  targets."ath25"."generic".packagesArch = "mips_mips32";
  targets."apm821xx"."nand".sha256 = "1xfy4inkyvn7pa7189is60c5abqsr476wgs7j8c4a98ld8x66aj9";
  targets."apm821xx"."nand".packagesArch = "powerpc_464fp";
  packages."powerpc_464fp"."base".sha256 = "1xx9jg4xib0raq3d399zbks5gqsjkrqcsxxrpfr3n8w42ngj3q7w";
  packages."powerpc_464fp"."luci".sha256 = "1phqsdwa921c7mx2yj7ys8ysr9dlgf6pyf9f48sv1812r5zivfwz";
  packages."powerpc_464fp"."packages".sha256 = "10xz2by3yg5kmpc2gg0xr4if7mz4vii5fi19sr9pwzd9fvy37kay";
  packages."powerpc_464fp"."routing".sha256 = "094pwjp9lkgs2q60i5k2nsx0f1vadh5a7892zzqzm6yj9fchdw2d";
  packages."powerpc_464fp"."telephony".sha256 = "0za5nhphi3k06z77qb5x981nzmqni2znmnl22xy3s6hzvm22wk56";
  targets."apm821xx"."sata".sha256 = "03hqbz98n7sw31ccmls6ndjnzc51q0m4chimbya1a93q23cly8y6";
  targets."apm821xx"."sata".packagesArch = "powerpc_464fp";
  targets."bcm53xx"."generic".sha256 = "02y5yr5mm7z9nw1rwh9hihs9y0hvsfrmgw0fh8jz4cc2l0w80276";
  targets."bcm53xx"."generic".packagesArch = "arm_cortex-a9";
  packages."arm_cortex-a9"."base".sha256 = "1zii8568xv11pb0r63d7fmdjbqgn1py8iaikd5h8433ywkcf7jyy";
  packages."arm_cortex-a9"."luci".sha256 = "1bgiv9wvpi5zh7j42dxq1zr5yzc0m4zbndzync0yyyrffx718bvw";
  packages."arm_cortex-a9"."packages".sha256 = "0h92fswz2mqlkybhi8k4q7kdd7ipl241w7mvnd08n9acd9fdn04s";
  packages."arm_cortex-a9"."routing".sha256 = "1ndljbx83bfhd3izjh94x54cg0c1fvvl9b85h8sjw39l4h0p7yij";
  packages."arm_cortex-a9"."telephony".sha256 = "0sld9cyc40sc2dp4f25p8f9avg07m72rn1ysd3zcryxzrwwqmx46";
  targets."ramips"."mt76x8".sha256 = "1ws64gr3n1c00frv57jj350b1q8f3apxb5nf970105dp0hl08i77";
  targets."ramips"."mt76x8".packagesArch = "mipsel_24kc";
  packages."mipsel_24kc"."base".sha256 = "1qd42a2071vyc5h9yhkr0f2zx8qbcs7bcycr828zcz1l57xwi753";
  packages."mipsel_24kc"."luci".sha256 = "1v6g9a5si3v6s2f98ivmq8dykib5w07slkbmbnvwp1yqsvm7fb9a";
  packages."mipsel_24kc"."packages".sha256 = "0q0ki2ihlcpp6qklmcvlyidci042xwqw9v7nz6msbw3b8yj8qsrs";
  packages."mipsel_24kc"."routing".sha256 = "1ilj2ly80v2frz0a2zjv8laxqh3xby1ml7vbs8z2cr6lgaashjvi";
  packages."mipsel_24kc"."telephony".sha256 = "14kggpk60bycsn8a8w3v9ybis68acm1s31hmq7kzvymk3x4yfxh8";
  targets."ramips"."mt7620".sha256 = "06l504s475qnygkjslwl46j30xia1p5n54q1f5n7bp1ngaqg1qyq";
  targets."ramips"."mt7620".packagesArch = "mipsel_24kc";
  targets."ramips"."rt3883".sha256 = "0g5a09zq4d3nh0imjz2fs1zj17jjpxiy9jlifpi53a3343kvmi91";
  targets."ramips"."rt3883".packagesArch = "mipsel_74kc";
  targets."ramips"."rt305x".sha256 = "14a6lfwrs6ggrz5smbvr6v8wjkf3rzw3075215wr0qs3hymkdm7p";
  targets."ramips"."rt305x".packagesArch = "mipsel_24kc";
  targets."ramips"."mt7621".sha256 = "0najlypxk08qx4vk4rsgdwn0iaks6c4phylg8y6kz92x6cjyxprz";
  targets."ramips"."mt7621".packagesArch = "mipsel_24kc";
  targets."ramips"."rt288x".sha256 = "1zbdmcymc7zna1a85pmyc1qfdl41pgvdg6vvc60gpmvcxggpmvwc";
  targets."ramips"."rt288x".packagesArch = "mipsel_24kc";
  targets."lantiq"."xrx200".sha256 = "000cm06xamrbbw16kd4i1ivc3fmp82nkfvygyzr1d10mzbdkxfqq";
  targets."lantiq"."xrx200".packagesArch = "mips_24kc";
  targets."lantiq"."ase".sha256 = "149md406a0gxlyg7a1ih75ifvsng0l6jrkcndv48p0i5k1fqg0g3";
  targets."lantiq"."xway".sha256 = "1h2s1p0g94kn79cdnhydnza3ch2h1v1d2xrr3f1hfgfy0vp5higi";
  targets."lantiq"."xway".packagesArch = "mips_24kc";
  targets."lantiq"."xway_legacy".sha256 = "0bm2a9zdv9vznjv0hdjq8gq39qxki13g05mff8qimdplk975ipwm";
  targets."octeon"."generic".sha256 = "1svbp12981gh9ldnlgln7j4bgcrhhhi4gbipmi6dm20nfnfq7rwg";
  targets."octeon"."generic".packagesArch = "mips64_octeonplus";
  packages."mips64_octeonplus"."base".sha256 = "1mknqydl9pnya0j64kz7vffya7mp840xhr3v8awl1bfaqa28p41n";
  packages."mips64_octeonplus"."luci".sha256 = "09m7d3xzd9phd9j9fqd9q3aknrnspsy3h2jgmhr0137ffx9xwqzh";
  packages."mips64_octeonplus"."packages".sha256 = "10hkfdajgp20lmxypjhsv59hwy3h9c8icwg7w26rskg0vnifyd3b";
  packages."mips64_octeonplus"."routing".sha256 = "0wp1hbpbyf45b5chyscba7rj9gszz88zj1bifigjn8dywhxjafqw";
  packages."mips64_octeonplus"."telephony".sha256 = "02ixm6p7144xvd90lhsg186mwxs6lh59hvlp9sh2v4g6lfm8i8bl";
  targets."pistachio"."generic".sha256 = "11a45pmsw0ijzgz7fji1dky7m17m6d6m2xwkqjxsmx35gfmhb75l";
  targets."pistachio"."generic".packagesArch = "mipsel_24kc_24kf";
  packages."mipsel_24kc_24kf"."base".sha256 = "110792ijzfqnmxwahhljy5wzw3pb4azpr101fhv5v0mx4cxw3fmq";
  packages."mipsel_24kc_24kf"."luci".sha256 = "1mpzfjbx1zcch1lha6pzfkkyngxwsj0qwb1h27zz1m12hjkmbw2z";
  packages."mipsel_24kc_24kf"."packages".sha256 = "0ag2jyskzdmjia6ficfwmnhh6hkrxnj9qyq0p8hzs7485nv7m1cc";
  packages."mipsel_24kc_24kf"."routing".sha256 = "1l6kg0qlaab6z8sym6j1zgbpmp6jdhx8n8bzmvy277zgj97rdpzs";
  packages."mipsel_24kc_24kf"."telephony".sha256 = "1zynzi0kzvb9b6sjg7cwbqclqqx3yi87jj4bxj400j2b764l4f9i";
  targets."layerscape"."armv8_64b".sha256 = "00cfv8i8vrrz6ycrkxmrf3x2fn63f8cbpkysvnwx9qiwrrxj3hl8";
  targets."layerscape"."armv8_64b".packagesArch = "aarch64_generic";
  targets."layerscape"."armv7".sha256 = "145ki6s41wcjhlmv1l22zkahmas321yv8nccv4j5wb11p4yncsd3";
  targets."layerscape"."armv7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."omap"."generic".sha256 = "09mlvsfyqwjwqish81d38244q2csgww8rcw7h8s8zaw8x8fv5spa";
  targets."omap"."generic".packagesArch = "arm_cortex-a8_vfpv3";
  targets."tegra"."generic".sha256 = "1951kniaj0iqcl721qynkjw29p5gaqrkshy1cadg8zhnjdrmz7gf";
  targets."tegra"."generic".packagesArch = "arm_cortex-a9_vfpv3-d16";
  targets."bcm4908"."generic".sha256 = "166z9rlax42mwqda79l00lbxjp68jy1v3hlys4lsflz1qsm35jdr";
  targets."bcm4908"."generic".packagesArch = "aarch64_cortex-a53";
}
