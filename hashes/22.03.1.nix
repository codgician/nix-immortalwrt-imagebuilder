{
  targets."oxnas"."ox820".sha256 = "1mh5ypn106l59zjaqbh6sjwm2vf0skda0q6fbihplsk2nr6zf2cd";
  targets."oxnas"."ox820".packagesArch = "arm_mpcore";
  packages."arm_mpcore"."base".sha256 = "1ygdprsm4lrqkwc0waz64i7rhvgx61wmq9146ll67fcdm54syp0g";
  packages."arm_mpcore"."luci".sha256 = "0bc045sbmgagxn64lzqaxk7khdzczb0mmjghc9hhg777l9mxqmqh";
  packages."arm_mpcore"."packages".sha256 = "0d2b6z0rddpkc7s6bbwf0das9p8if5mvcxxbfr15r8sb7rjvkgc4";
  packages."arm_mpcore"."routing".sha256 = "03945whpf10masr5phla02brcqbfdrm9w54msj1d1459gr1myiwk";
  packages."arm_mpcore"."telephony".sha256 = "0jvaw6mim7cfgd0fwf4r52a8idlrk4n2mhjr6nr2mrsk12vrd409";
  targets."mxs"."generic".sha256 = "0qvd4y6cvkh0khj5znslb32ai4m97pvvrvs115j5727li7zvnm0q";
  targets."zynq"."generic".sha256 = "0wdi90bqh48fw4cpz6g6asx7anb0z5a385652xfg8dlpplvbpkfv";
  targets."zynq"."generic".packagesArch = "arm_cortex-a9_neon";
  packages."arm_cortex-a9_neon"."base".sha256 = "05bf0zmaca9daf165fq5l2q861k98ali792s0j6l6wqjk1f0lkd6";
  packages."arm_cortex-a9_neon"."luci".sha256 = "1550ix0pkkxbv1sbg3rh6jahnac19nkx5bsgyqq8qv7axkyfgn9d";
  packages."arm_cortex-a9_neon"."packages".sha256 = "09sqmw3rh64jw28ly3rd8vh04ffhilk1pxpgzip8ryv5cnshp97j";
  packages."arm_cortex-a9_neon"."routing".sha256 = "12xjrynsrw8d9bh1mjbjm0r1hs11ifd93f0icr75dp6l12f36ir5";
  packages."arm_cortex-a9_neon"."telephony".sha256 = "1c55jcybmbrpb35yjzk5ijjqysbn1zj8mnc1bzj80qjw5hqw6qrw";
  targets."bcm63xx"."generic".sha256 = "1rwfgg6wjrik02ziwsprvq56z8fgcj7djpm23rsadi89rrl3j771";
  targets."bcm63xx"."generic".packagesArch = "mips_mips32";
  packages."mips_mips32"."base".sha256 = "1jrhqz7b4shd82852zvr364hgyr06ninq1bbcvkyhka0kbg6vp4y";
  packages."mips_mips32"."luci".sha256 = "0138312150r2q1n1ryk93w2w0wg7iwlp8j7482rrj2k2d5jjdkn9";
  packages."mips_mips32"."packages".sha256 = "0y5jv7vvp6mwg9jqh09z2gdam7c4iv079fyxcxpx8pl0xr5jwbxy";
  packages."mips_mips32"."routing".sha256 = "0ck5p6llpd8nil6rsxva8lrpdhplmji1z8ghdciry5sh69nj9has";
  packages."mips_mips32"."telephony".sha256 = "1nj03zzxd34fqmlk1am9ddzzxm6wrvimf64nkaa9xsm9qygaxvvr";
  targets."bcm63xx"."smp".sha256 = "1qna4c8bkxmlnbl6x589jw8awg2wzq00vh61gaszyvn7zh8894in";
  targets."bcm63xx"."smp".packagesArch = "mips_mips32";
  targets."bcm47xx"."generic".sha256 = "0pbnbkamd43rpddchk32287wxpwiiwb2cxzmc6hki5zpm8xk7yn6";
  targets."bcm47xx"."generic".packagesArch = "mipsel_mips32";
  packages."mipsel_mips32"."base".sha256 = "12mps56pgx4w69ipyz01n0zi2nh810hiclkkjxj4qjn85vwx4rzp";
  packages."mipsel_mips32"."luci".sha256 = "11gm1f7iw4gk76wbgnpgkm0vdvanw6z4f4g4hgcdakl4b45kx04r";
  packages."mipsel_mips32"."packages".sha256 = "0zh782hzcpynwj5f4a1k69xanickyn57yjhwmyhl7j42cpbd54k3";
  packages."mipsel_mips32"."routing".sha256 = "0rssp9ab5hnihi2bf9x156i9wr41xq4bysxq4dlhrrn3xpps53wv";
  packages."mipsel_mips32"."telephony".sha256 = "14vi2c9ri5hyj6flid8nndxpv74agxk4dcrr4ikmckq9r1596kmi";
  targets."bcm47xx"."legacy".sha256 = "116289k6w0gjyggacn0w1ps3xvp87f08qx2m3gzibvmvdmfm8d5c";
  targets."bcm47xx"."legacy".packagesArch = "mipsel_mips32";
  targets."bcm47xx"."mips74k".sha256 = "01sc47a3bkamp67mqci8xr2sldwz7vmgznw8ywqfsdmj2cyq2a2c";
  targets."bcm47xx"."mips74k".packagesArch = "mipsel_74kc";
  packages."mipsel_74kc"."base".sha256 = "0cf0vis15abxwqq20xcjwgicjx0fv11yk2hw65wgbisdz3xnvacm";
  packages."mipsel_74kc"."luci".sha256 = "01wv83apkaxr01qdy5xmy3n9hlwy5icqfqdrxff3s1m42qhnm4wq";
  packages."mipsel_74kc"."packages".sha256 = "031w05xh4g1gjdiajzy0r0xlif20q4dkypcn72mxr3b5wbs1lj6q";
  packages."mipsel_74kc"."routing".sha256 = "091kazf3gh6wgwzwcmcbsby8fp0pdydlnw5dyf72fd3i2yxn2gs7";
  packages."mipsel_74kc"."telephony".sha256 = "06xxmpmc3dnkww9l0sk07m7rg0rwcwcv6z2wv46fm8kjbfhq9k7n";
  targets."bcm27xx"."bcm2711".sha256 = "0parkjz64sl9vsgviadqlgwy3if6h0n37kkbw7qryfinah2snha2";
  targets."bcm27xx"."bcm2711".packagesArch = "aarch64_cortex-a72";
  packages."aarch64_cortex-a72"."base".sha256 = "1vcvpw7ygwvkr2ir6cbpby5pnh2qyq908xp0av500dm38xq4y0kw";
  packages."aarch64_cortex-a72"."luci".sha256 = "0hcg4ccmak44sxzw3g2z2szqd4nrnf4mlc7w7vawb9n1sgam8vba";
  packages."aarch64_cortex-a72"."packages".sha256 = "1q4fncwxyxmf75yv6x3p85jx09076izgsdn07sdp8lgpyi4lpxjj";
  packages."aarch64_cortex-a72"."routing".sha256 = "0w0w5x817yl55kww4j6ll22bj4840pzd88wgw2zr577byh60984f";
  packages."aarch64_cortex-a72"."telephony".sha256 = "0gnagkhqmj6w7q4v616rvfkyg2q6jiakzwcp4j9pkympqzlgizmr";
  targets."bcm27xx"."bcm2708".sha256 = "1v7mm0lbkmwfysl70jyal5dflxgl3awxvdcfm8f8cm46z27gyj09";
  targets."bcm27xx"."bcm2708".packagesArch = "arm_arm1176jzf-s_vfp";
  packages."arm_arm1176jzf-s_vfp"."base".sha256 = "0zs74pf8wnnchbkkr5p8gxlwqff7p5m30p0vgxa39glapsq2g28s";
  packages."arm_arm1176jzf-s_vfp"."luci".sha256 = "0cmsf953qvld2byxlwk3r38mrniqc2nbqfjgl19fvh5z9k5g1y4g";
  packages."arm_arm1176jzf-s_vfp"."packages".sha256 = "1rs3lgsz0a2gcxbsld52marpiww3148yhjs7bhjqry9ri9mw1hab";
  packages."arm_arm1176jzf-s_vfp"."routing".sha256 = "1x0cqffcxa1bj1n217nzpmdb95nf8ysllghky598drz7pgwj3qia";
  packages."arm_arm1176jzf-s_vfp"."telephony".sha256 = "17hynx5qkv3mn2qv1gjhkvkymdly0l88qjgwnn52qi931q8k0wxr";
  targets."bcm27xx"."bcm2709".sha256 = "1vfgz8zivcd3vc8w9ilkinir9m9x5qnawyclmwdgv12xnr89mlww";
  targets."bcm27xx"."bcm2709".packagesArch = "arm_cortex-a7_neon-vfpv4";
  packages."arm_cortex-a7_neon-vfpv4"."base".sha256 = "0c8yxgnk5pwka2lk47r8z2xb1wqdh2syn8zl041mmmgzi10gpy5x";
  packages."arm_cortex-a7_neon-vfpv4"."luci".sha256 = "1gllv3k907g34bmsnihvaldgbc99yc5lnw4j36x89n18668avpz7";
  packages."arm_cortex-a7_neon-vfpv4"."packages".sha256 = "06ds0i0cqznh8z85jbykx3dyl66r0667d6hj47b8nvz11il5r5vv";
  packages."arm_cortex-a7_neon-vfpv4"."routing".sha256 = "17wpfk7xg62hwh40rrypjmwx4wkfvak1idkf2l941pvx6j30kgnm";
  packages."arm_cortex-a7_neon-vfpv4"."telephony".sha256 = "14k78cr682rabyxmcdmxb1kk0v7smr6vsli2rgbdwc2kih4l1xzh";
  targets."bcm27xx"."bcm2710".sha256 = "0s3wr15jljhlg090ms1l44lra86lkwmqndg3c6c0q6y0wp68v4fi";
  targets."bcm27xx"."bcm2710".packagesArch = "aarch64_cortex-a53";
  packages."aarch64_cortex-a53"."base".sha256 = "09ran5mpzhcy23lm6m9cm0p5sg1b3z5gmqxxvv2w15n296kq6g0f";
  packages."aarch64_cortex-a53"."luci".sha256 = "0v110cz0c6k76j436fnnl53abyj2n9k2pb7a0nla9a5w596fy8aa";
  packages."aarch64_cortex-a53"."packages".sha256 = "09khwyx59gn575c07vf3xzwf3ywcfyrs7q4x909rw26vs1dvxsf4";
  packages."aarch64_cortex-a53"."routing".sha256 = "1k8j0jhgz1fhwfjb8lw9q9qg2a5vq61zivmcbxkf45b1ixxrph6k";
  packages."aarch64_cortex-a53"."telephony".sha256 = "02i8yff7m4apmpb1n35sd8k126srz0qr398yif726jsr164mbra3";
  targets."mvebu"."cortexa53".sha256 = "11bnizsac9pl9s162hygnssjsmxyyf6qwix5ly24mlypr5ixj4g3";
  targets."mvebu"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."mvebu"."cortexa72".sha256 = "1vcfgm92bgyzwi9az2yggz4l0x63saviz6sr8sm98jamxsxjizk7";
  targets."mvebu"."cortexa72".packagesArch = "aarch64_cortex-a72";
  targets."mvebu"."cortexa9".sha256 = "1w0gghb1n039lrx0ly0g6f1r09lmwcadjj1sv31s14yfmkk62ixm";
  targets."mvebu"."cortexa9".packagesArch = "arm_cortex-a9_vfpv3-d16";
  packages."arm_cortex-a9_vfpv3-d16"."base".sha256 = "1r4ffvckaz8ff54mk8d5ms287bh6xq15z88cwqmqzlidh6b1h3bc";
  packages."arm_cortex-a9_vfpv3-d16"."luci".sha256 = "13prbmxpn44lsqplyzdr1dcrm67h26s08ikjdi60yrjmsgmw79wq";
  packages."arm_cortex-a9_vfpv3-d16"."packages".sha256 = "15cx6yv97nk5b0zdfa8dlywcmm95c0iv3mymnb6issn9scf7yhfz";
  packages."arm_cortex-a9_vfpv3-d16"."routing".sha256 = "07jyny3h60zqpm1ycic9ams7n8gjnk2gbjz29rhwgwkwcpmmyycg";
  packages."arm_cortex-a9_vfpv3-d16"."telephony".sha256 = "0dylmfjqsqfab4jv0snf7r94wgn52zwzafp8k6x3y7i0z1rrrpnr";
  targets."at91"."sam9x".sha256 = "0zzw395p95b7ymaycmdpqc3w0k7xb4k3r8xa42ws25awk3wb14iz";
  targets."at91"."sam9x".packagesArch = "arm_arm926ej-s";
  packages."arm_arm926ej-s"."base".sha256 = "0c9592mc22nk4av969rwm2gzzlcbwdgzygmwrvq7xgfza3l5l7k4";
  packages."arm_arm926ej-s"."luci".sha256 = "0mjfmj9rmq0xf4fdv0pj9ap534329y1lslmp01bijp0j7r6kg9fb";
  packages."arm_arm926ej-s"."packages".sha256 = "1ivrbbhmyibndwarwgqrbcgxa4wlwqk1yvpdmaj9jipvb2l4gl5w";
  packages."arm_arm926ej-s"."routing".sha256 = "1qkh1km1x7gknzzbmm6ib45fm8mr3gr2s5d3hfqib7h7qww6c8fj";
  packages."arm_arm926ej-s"."telephony".sha256 = "0gd25c7wnny9i3zh6q8hhk33byyzshzbwkqdq8n4wj7nq4wzyyjw";
  targets."at91"."sama7".sha256 = "0px8lq15262glv92rrb3l9rav1044zlk8i44998878vz8zschn9s";
  targets."at91"."sama7".packagesArch = "arm_cortex-a7_vfpv4";
  packages."arm_cortex-a7_vfpv4"."base".sha256 = "1l1y6a5f433lbj800g1ih45aqjxv4yr0ssfpbmg2mcj8gcinc1wx";
  packages."arm_cortex-a7_vfpv4"."luci".sha256 = "0rf1m4l7brgx5d19yzs9fv02ax194wzlg83059m8nhcp7psqzr6b";
  packages."arm_cortex-a7_vfpv4"."packages".sha256 = "15jzrk1091sw21lx6pbif1h0fm79i9mvksk34q9kpbhkzmc960iw";
  packages."arm_cortex-a7_vfpv4"."routing".sha256 = "0xq4jzfjnx6lg1lb7bybdcwj5m2zfprk56rcm8p5arin8md66sga";
  packages."arm_cortex-a7_vfpv4"."telephony".sha256 = "0xpvvidza6i7znjm4bhjrq7i9wl6kxvnyvvjkf5vcs8lfvd1alxl";
  targets."at91"."sama5".sha256 = "1afr7w4c44a0wmasgjrk9x57x0i22xxa4j6mjcnr9q5jcw1wimw6";
  targets."at91"."sama5".packagesArch = "arm_cortex-a5_vfpv4";
  packages."arm_cortex-a5_vfpv4"."base".sha256 = "0f4sxcln9j5lg8qmml1fqid0p3cgmiw08kl5df6kkjk9ymv1hg4k";
  packages."arm_cortex-a5_vfpv4"."luci".sha256 = "0whgcgis6axjd4v1zxkwv0cxf2rrabgnra9hpbfnji9ivfilzhxh";
  packages."arm_cortex-a5_vfpv4"."packages".sha256 = "06bm2yfa0rkig8lsmk6786v2lx92hq4d4ir84b7k7ibfacrrf27v";
  packages."arm_cortex-a5_vfpv4"."routing".sha256 = "1rwqijs8snkqnj5kya9qhcak0z8kaxsgzkskk25g011yk5h7i2rq";
  packages."arm_cortex-a5_vfpv4"."telephony".sha256 = "0i86rld31l1kgwb40h1cpag47ijcm4np5bls31jqjz6ypii7c6pc";
  targets."gemini"."generic".sha256 = "0z2z4728rxgz2ilkw0bdsa1a681l5sy3bwflidn3jh2v00pa90n4";
  targets."gemini"."generic".packagesArch = "arm_fa526";
  packages."arm_fa526"."base".sha256 = "0is9cqk8s6qkaii4cy1gxchzx1m8p9zrzv3ac99ah555i7kp5ns4";
  packages."arm_fa526"."luci".sha256 = "04552x74l61iwz1acg8cav5yvwrqs41bfpg9aa4m6vv4hh8cw6r3";
  packages."arm_fa526"."packages".sha256 = "1nkm3bpig9b8l7xj361bqachfn8wc0v0w46scrsnnmb6bx0hqhy0";
  packages."arm_fa526"."routing".sha256 = "0pafb33v9wmgdrc78gcp0plqnagzq2agcyx0xzcgrnr49i78pakl";
  packages."arm_fa526"."telephony".sha256 = "170jwdz8fr467qk5h8f1grqcmc1mhsk5f8ybkhyhnarha4rwn1z0";
  targets."octeontx"."generic".sha256 = "1vnamfh7rzs0fmqlilczz45swlyv2q40v2lxr2mv2jipngcnvd6q";
  targets."ipq40xx"."generic".sha256 = "0hrm3xwlzvwrbjq7hy06j7xkga5avg338zbk4s8908mw21n5w9n7";
  targets."ipq40xx"."generic".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."ipq40xx"."mikrotik".sha256 = "10lrznvngv7m0j317i006j2lag969mhkk8y11w78k223q49ifpdb";
  targets."ipq40xx"."mikrotik".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7623".sha256 = "1a18pvgb6hay27kndwqqsqxlyrvmgvhfg8sy0rh510dfp1cv47pi";
  targets."mediatek"."mt7623".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7629".sha256 = "0rfdvw3z7wqp7fl5zxplqmhmqjfv5crqnp4l0hrp5xq7l2qvfjdk";
  targets."mediatek"."mt7629".packagesArch = "arm_cortex-a7";
  packages."arm_cortex-a7"."base".sha256 = "0s2ywcjd9y5d6cyjpclfmg7spj9xki88ycci5cjfla17nn8c33a2";
  packages."arm_cortex-a7"."luci".sha256 = "0ky8v7cw613484pdbbz99z5n3f83zzmi5f0mpq7lbj24xgj0s2sz";
  packages."arm_cortex-a7"."packages".sha256 = "07cl1kk71kv35q9a33xm9dr1gl92rqdxl6in3dgvynwg5isl810s";
  packages."arm_cortex-a7"."routing".sha256 = "0crl759dkip798vgxmlxcqx1lzrkfyywqkxn3i29qqfrjcwmyayd";
  packages."arm_cortex-a7"."telephony".sha256 = "04dfgs12bjciqbdgdcha48ixchij977p42c6ahvd69yq2ph5acxq";
  targets."mediatek"."mt7622".sha256 = "1shwr1gpi06mff61q6pcl3w1c52f1q2k75klnnhhxpg47q1b9gkm";
  targets."mediatek"."mt7622".packagesArch = "aarch64_cortex-a53";
  targets."malta"."be".sha256 = "1himf65l262da5z4nxzbixlnxclxl0xv4in0xfwsvs37nvaswpfm";
  targets."rockchip"."armv8".sha256 = "1wdk36vckfj5r28niwg9a73a5dxgpdf38mf6vkvqk06s6acn1a3r";
  targets."rockchip"."armv8".packagesArch = "aarch64_generic";
  packages."aarch64_generic"."base".sha256 = "1985pjsf9an85z5mliq0gnl4jr14mcmqhw1x7g34bs6cyncciqfd";
  packages."aarch64_generic"."luci".sha256 = "1lrnw97lhf2q6k9ygszv8pmklbr2h08xs058ci2g16x7dx3dwhww";
  packages."aarch64_generic"."packages".sha256 = "1f9qci2vz7qx8q1r7kp1gv939rpra511s94cfwwjjrybmck0phiv";
  packages."aarch64_generic"."routing".sha256 = "0sav6w5sl9pn6xmrkxanvxwqdi42m0r9548mk9b3fwbc5i38j2cl";
  packages."aarch64_generic"."telephony".sha256 = "1mkmwnq1wr6ix34270nsfbnqnb3hjm4z729vigqks93jw61517h4";
  targets."ipq806x"."generic".sha256 = "0vjg4cc40xlxrap33a5xcw7daic4wb3vyjpd56ihpm30fxphlz3s";
  targets."ipq806x"."generic".packagesArch = "arm_cortex-a15_neon-vfpv4";
  packages."arm_cortex-a15_neon-vfpv4"."base".sha256 = "0780qrv0v7yv52vrq5lvji2bjkh5hps403qbb88sh2x6ak15wd0q";
  packages."arm_cortex-a15_neon-vfpv4"."luci".sha256 = "1366aiap6j2ipqzs0f7d4n3wwal9y2bavl3zavh75pqs508f0309";
  packages."arm_cortex-a15_neon-vfpv4"."packages".sha256 = "1gi8k17nb64jhqc2y24izwdm17h7bx76y5mkzwj9mr6qa79rdgzw";
  packages."arm_cortex-a15_neon-vfpv4"."routing".sha256 = "0frcdmsdarywzn9rfzrhmx9jicmh92qbl6l85m8qz7jsagya1j6b";
  packages."arm_cortex-a15_neon-vfpv4"."telephony".sha256 = "01jch51jjiagrpzwpbhd8zqy3v0izj4029r6l31jrsd6v4p3qkqi";
  targets."sunxi"."cortexa8".sha256 = "0ih74vgalhdbcpall5gnm20ahrvkdsn1nm3548vdn9nmbcjs3hkq";
  targets."sunxi"."cortexa8".packagesArch = "arm_cortex-a8_vfpv3";
  packages."arm_cortex-a8_vfpv3"."base".sha256 = "07mz9g9xl06f72hg5smi25xhrn61z7mrrhsg9im64l87w7dkh44q";
  packages."arm_cortex-a8_vfpv3"."luci".sha256 = "0d15qa1m5ymxhjpbn7lrkai40drykxa5xqh0bc8avpy8qbyc6zh0";
  packages."arm_cortex-a8_vfpv3"."packages".sha256 = "1g1kq8r415qa12k4hnrqwy7hnppmd3wc3s87sm34w41hvc5iz7j1";
  packages."arm_cortex-a8_vfpv3"."routing".sha256 = "0lhprngqczpl2wnps566chk3m4ws2bzixpjig4dz6g6f0gga4wqm";
  packages."arm_cortex-a8_vfpv3"."telephony".sha256 = "0pzxj5zgswzlc890x34hvk1838xa7brbrdiznii65vkfx67pxcam";
  targets."sunxi"."cortexa53".sha256 = "0cfwac4i921jj1432mmpwi5hv6hm71v07jd224rdq7indhqgh6i1";
  targets."sunxi"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."sunxi"."cortexa7".sha256 = "0dk7nr1c85f2kkzkidlhmjfr0gcz73yh0dj687haags0qny36nnf";
  targets."sunxi"."cortexa7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mpc85xx"."p1010".sha256 = "0v8a3yxpqh961ny776am72ldfvq6xdmspi794nmkv6agxgj6z5fq";
  targets."mpc85xx"."p1010".packagesArch = "powerpc_8540";
  packages."powerpc_8540"."base".sha256 = "1q103x60cinxf7qijrk8h77b2lda9kpiyifyfmm59sg9dr2gsni1";
  packages."powerpc_8540"."luci".sha256 = "051hq6lg6vbwkzzgn63bydr5x04knf6r886i7r9rdr47wqnf2ryr";
  packages."powerpc_8540"."packages".sha256 = "1al1v58flbmq0dzbz3qzqxhg77p9xia032zyscdpraydyd9xkw1r";
  packages."powerpc_8540"."routing".sha256 = "03g7zv72s2c451qr3lzg6p0vxxypvi18z9jd1fvlsk6gbdmbz41b";
  packages."powerpc_8540"."telephony".sha256 = "02k8df6022169ayvjx3mm4ifn1bvvd3w959mihqhmhx0k8rrzlva";
  targets."mpc85xx"."p2020".sha256 = "06f8z5qhpc1jrbmcf7b62lcrhj5rg1x9bxxjqsi71fb5w7f9ah5v";
  targets."mpc85xx"."p2020".packagesArch = "powerpc_8540";
  targets."mpc85xx"."p1020".sha256 = "0dwmjjg0cfs38dskxk4rizr0fx3jnpmv5hdx77qr886d7fs00w8g";
  targets."mpc85xx"."p1020".packagesArch = "powerpc_8540";
  targets."imx"."cortexa7".sha256 = "1rcvn0cbswnbb65mdr600wxhnzjbajpq81r3fns6wsiggs101bf8";
  targets."imx"."cortexa9".sha256 = "1761f60ysikcm7r4cn7ffqc2hf4cm9vm0vh7xr7zdgfzyb4s8xki";
  targets."imx"."cortexa9".packagesArch = "arm_cortex-a9_neon";
  targets."x86"."generic".sha256 = "0dn4kfjxbk8kvf393lp1si23kfcxf6klcbhyv2zdqpffx0sjkq7f";
  targets."x86"."generic".packagesArch = "i386_pentium4";
  packages."i386_pentium4"."base".sha256 = "0h5cja1dp1kbidpnlmaxab3vm1h9fk6cqfr08w265cycl0a6yk8x";
  packages."i386_pentium4"."luci".sha256 = "1sxikqj94w46k8hrzl5p08nq0s7rbhnsa8sn10ydq6aqz4wml11a";
  packages."i386_pentium4"."packages".sha256 = "13lvsy68k5m44j78w62gj3cqjrzpw75jhw4cb9fgaa9rmzyl7l7z";
  packages."i386_pentium4"."routing".sha256 = "1cbfckiv6n50bmqasvm36gfh5glkyz2q2ya3i1yhg2sjdabggx7w";
  packages."i386_pentium4"."telephony".sha256 = "1372vdmngvg7y2s5npndx8p97kkjvpksdhqng7sadhhlb87k6m05";
  targets."x86"."legacy".sha256 = "0bbhhx8yyq2v3kj45362g09bd7yhdm5rnlgszy5kfzccivncm10p";
  targets."x86"."legacy".packagesArch = "i386_pentium-mmx";
  packages."i386_pentium-mmx"."base".sha256 = "0n06cskbppjlsj6yh3hfjmy59i6qq1wkgfjfl2hgdp06gd3sci6y";
  packages."i386_pentium-mmx"."luci".sha256 = "0ff5zdmvzni3vh94cvlr0cj1qfcypvnrvl2w22v0kmgam00sm2yb";
  packages."i386_pentium-mmx"."packages".sha256 = "0gqlr9lsk87xds1xxgskbz83x8s8w6cr8gazjr70ypv3z3xfla1h";
  packages."i386_pentium-mmx"."routing".sha256 = "152ps6b844q44zy1w9lyxw62f9xpys2klwdkv1ab582jdh4frkx1";
  packages."i386_pentium-mmx"."telephony".sha256 = "168k6g9lcjzd0rvirz6w18kyhrhznil70s90iiymg8lbznm2azmr";
  targets."x86"."geode".sha256 = "13l3y2y4j7j6iw96h3ssj62il039087kzi9kyckqznqcjsaw3b5x";
  targets."x86"."geode".packagesArch = "i386_pentium-mmx";
  targets."x86"."64".sha256 = "1k60rq5dr7bxwvv8kj194x2j8m73i55rn3kzzaqngqm7la5vyrad";
  targets."x86"."64".packagesArch = "x86_64";
  packages."x86_64"."base".sha256 = "195pjy1g965xh4h1184sfnqsi1asqjp1787p57xnmxcc03c8j6l0";
  packages."x86_64"."luci".sha256 = "1p89kymawazahy5j3mqfjc7b6ppq1fcpnc6ikxdwkkjsbz3z5wsl";
  packages."x86_64"."packages".sha256 = "0v452pg29w4ygia9df84vkcrg63jlq2n6vikgcm1sqf0z71cy93j";
  packages."x86_64"."routing".sha256 = "1fcqvrjl0i6z0xlmk4kh01254d57fy7l738y4g5fcpkc2v3rkxri";
  packages."x86_64"."telephony".sha256 = "0za21bksmc2qjz4rz3ypvjbi3j20y2i9bagrn9381dbf53qfw3a3";
  targets."realtek"."rtl838x".sha256 = "0fxh6jy5c86lwm5543dy4zzm09pgwis5rqni19xadx7ag8cgi6pj";
  targets."realtek"."rtl838x".packagesArch = "mips_4kec";
  packages."mips_4kec"."base".sha256 = "1jnrm4y9zvdyvnabnbnnnhk751kb4xxjgh7c2mq9f0jydid3pkx5";
  packages."mips_4kec"."luci".sha256 = "0d45aa94q83s8dvvq9z6ik6sm9daclyy0lwlzvn33vrw52s53d8m";
  packages."mips_4kec"."packages".sha256 = "1i2i1ip2zvr7gyjsjw5ld4vp8dr6vidkhwy6idwiwvpr29hj9wrg";
  packages."mips_4kec"."routing".sha256 = "04kbm0qhy1h1f6b2y47i0vkp9dmszbcl8k75mmw5v2whq87216zc";
  packages."mips_4kec"."telephony".sha256 = "14n900qgb7p3yvr9b9iq8jy7n2gq21mmvw25lzfja6j5q0zgb443";
  targets."realtek"."rtl930x".sha256 = "0l2xb3dsqwbdgh2zi00ma05vrc2gahahbxi0fjr7blwbmg6fk95v";
  targets."realtek"."rtl930x".packagesArch = "mips_24kc";
  packages."mips_24kc"."base".sha256 = "173bz0vcvwnss8l0dgcd96cv4dn0bb0by1ailkrrshqp3xs5z130";
  packages."mips_24kc"."luci".sha256 = "0dag8c2hkmhgcm0fcavq4sfairba9xprf21bpjkd6qqq75g0jyl1";
  packages."mips_24kc"."packages".sha256 = "1rhsg2xn9856dkbsmj307qcvnsrhflcdqz8jjihi72v3qp44sg7d";
  packages."mips_24kc"."routing".sha256 = "0x6cl3prjq37ls6hqfpsf6m7fa46y0f1jh08jb34c63fg9x3nchc";
  packages."mips_24kc"."telephony".sha256 = "09q7vxwi326q3fh2mrsfs2j9imfdgrapv2xwy5pbnjgqxsmkb5wb";
  targets."realtek"."rtl931x".sha256 = "1wwpwgj6qcgl8gyhac77qxiydpgsxiwmvlr721cjn5d34aajw70m";
  targets."realtek"."rtl839x".sha256 = "1zjkig5pxwa4ylg9fjbd7khqwwhlifv18xsnh75mbyyjxmri3lps";
  targets."realtek"."rtl839x".packagesArch = "mips_24kc";
  targets."armvirt"."32".sha256 = "02jh4dkd5j988b0m6d8ncna8zw3r33xzn1qgky4fj3sjbh7zdfkr";
  targets."armvirt"."64".sha256 = "1q48wh0981jri65x4iaqxwsn7qivf5ni42rcixlvsa50gnrzkpms";
  targets."kirkwood"."generic".sha256 = "19gm75w2q6n8w0mxj4p7wwqq88451y58jlz3qqsy7ljp080xvssr";
  targets."kirkwood"."generic".packagesArch = "arm_xscale";
  packages."arm_xscale"."base".sha256 = "0rfn1qdz6w0ggd1vf4yj31a416w9cpvznhhcx9a0jxjg7w0c89i9";
  packages."arm_xscale"."luci".sha256 = "02812frwry3yy6yk723k3shj32bncv2h3lsy7df0i0xz1i7174lg";
  packages."arm_xscale"."packages".sha256 = "19g4pjpxmp2hkw9vvba9b5kpf3lm032b8a9jgmzz1nvl5vc3zwd3";
  packages."arm_xscale"."routing".sha256 = "0wbaiif49k76g8i8skqmzfwk5c1q6nar5yhfx4jwplis97w2wyxh";
  packages."arm_xscale"."telephony".sha256 = "0l062ljyb9ykwj5f99frxw182w29b6cl7la7s5309qxxrbsljkrk";
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
  packages."arc_archs"."base".sha256 = "0ynj5nrn3smkxxzrnmbd0vrlyyzi8rjkwcbcvsaxcvib1ylhnjy0";
  packages."arc_archs"."luci".sha256 = "0fdshzyhcf7hkcnbxb2iwvjggcdgxancs3djf9y6fcxf4bzmdray";
  packages."arc_archs"."packages".sha256 = "0nl55nnyf4ykn1ljbn7g3xysqihan04kfly8ga7r3sls5cnwr7ch";
  packages."arc_archs"."routing".sha256 = "0ga2kan2s19i6s97xdzmbvjjy5v8d88xlm7220s886pyqbzma10b";
  packages."arc_archs"."telephony".sha256 = "1r50jdgj7vksssqmc5jwadffrsmn8m6bl228sq79ikg0kvsqirrx";
  targets."ath25"."generic".sha256 = "0yhhxmcr7gml1jar6jk4143mzrdz5l60c3db344yc78ynp43ghl1";
  targets."ath25"."generic".packagesArch = "mips_mips32";
  targets."apm821xx"."nand".sha256 = "15mrqjqwg2d4iky77hjj8cqhzkhv9515z9cpxf9gyk39dj9ym4ab";
  targets."apm821xx"."nand".packagesArch = "powerpc_464fp";
  packages."powerpc_464fp"."base".sha256 = "0id5ysmh3wapch01z5h9avapi3zxlvpq79d8zn852nsr3vbd5gid";
  packages."powerpc_464fp"."luci".sha256 = "0x1sbdd9i6a7kxixmrnh94zqlxd03jg38inma1bfc97c8v5yyrzw";
  packages."powerpc_464fp"."packages".sha256 = "1qf3dzypqm3xzgb703vsdswndfsi9q1sw3lrb8570g9d5lji1p3p";
  packages."powerpc_464fp"."routing".sha256 = "04z2wv28x1fwqkqy5zdj4xwh71jpsz2mid2278caqfxcwljz7c3f";
  packages."powerpc_464fp"."telephony".sha256 = "02cgpf3ygp497lh8xn3ssanrhrlcyapsjw4k8d7bim45flaxn0y2";
  targets."apm821xx"."sata".sha256 = "155vpd7aghm6axfg4hk58wdx2k4fqghlyv2x4qj2cwdp0w3ap9b7";
  targets."apm821xx"."sata".packagesArch = "powerpc_464fp";
  targets."bcm53xx"."generic".sha256 = "1zxgqnx8jlr8q4qs7xxh2691b0dg5d03kh05kw3g7aic6hvimmxr";
  targets."bcm53xx"."generic".packagesArch = "arm_cortex-a9";
  packages."arm_cortex-a9"."base".sha256 = "0gcrg230cvfznxph18x7qmq8asx7k8sqzwc4qg2shawsjd32rhhm";
  packages."arm_cortex-a9"."luci".sha256 = "0hi9ycv898svg8d83bqy07gjd6w889yfma2rhxbxl5l0070flnnm";
  packages."arm_cortex-a9"."packages".sha256 = "1iv6ldgfp9mkgimh38ij8r1v1sbsz0r9s6hrrmic1572jg9pvgpd";
  packages."arm_cortex-a9"."routing".sha256 = "1ghpammp6kpiqz8b28jzxqns0v01cyds72wzh5mb7wc5nnbqvhpg";
  packages."arm_cortex-a9"."telephony".sha256 = "1sc2arlwbklq5nnwcc61b8q7jfl8cc135qhzpf4657h0bj8062cj";
  targets."ramips"."mt76x8".sha256 = "1q0zcvczbg2852k02mmya1d20bvrkjkqcg9p4lnn117qfkdij5k3";
  targets."ramips"."mt76x8".packagesArch = "mipsel_24kc";
  packages."mipsel_24kc"."base".sha256 = "05s4zzkh7jpkrr8z9qir82ldcd3gawy2cgar1bpri7l2snhgjyby";
  packages."mipsel_24kc"."luci".sha256 = "1c8f9vrwmqk3ixjd8p1f4s6h906ad9bjbm0149bsbhwmqxfaymc6";
  packages."mipsel_24kc"."packages".sha256 = "1lpc7xajq97i8f28g9dw2yazpp7rz6m3ylg5l388ajamlqkl4kix";
  packages."mipsel_24kc"."routing".sha256 = "1f2a4bc7pnlqijl3dy4nngb7b40s5sjwy32brn3xh7d7s1wznl1l";
  packages."mipsel_24kc"."telephony".sha256 = "1mdcgi9dzcsqa94s9kihf5v8rfm0rcpj331hh5d7px6hhqk6hlai";
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
  packages."mips64_octeonplus"."base".sha256 = "1rbrcfrm6i74db6baliv2ajmiznhgyw0dp3810wjh8msrvbpscx3";
  packages."mips64_octeonplus"."luci".sha256 = "1zhvhi634yiv7iz6pf6z2cnavj0i809l5csjkbpqj0xn883irzdz";
  packages."mips64_octeonplus"."packages".sha256 = "1m3sdcbba1cpfgx3lwyjx2kq438i7zcfpvjldrvjsy7syld7xm41";
  packages."mips64_octeonplus"."routing".sha256 = "1qy2h9gczw61dcwr95h1mxisx46glkdy6alwjkax0xg2b2jlf1f4";
  packages."mips64_octeonplus"."telephony".sha256 = "11kz1w39g1s92bwa2mbmh3fzjmbv1n1wbg70dl7c6bdsa3jq6mwp";
  targets."pistachio"."generic".sha256 = "0qixk1cqwar8nb9hg9kfy7hirjb4b21pdpbj5ybylkrc979nla5m";
  targets."pistachio"."generic".packagesArch = "mipsel_24kc_24kf";
  packages."mipsel_24kc_24kf"."base".sha256 = "090kv6krs04yhyc4bv6rrslacx5nynpfmhas1ap930319lqh7ain";
  packages."mipsel_24kc_24kf"."luci".sha256 = "01lx2w583dirf440ff2p1h8nckzpy7ywad71wg4q26zz0xnxl3y2";
  packages."mipsel_24kc_24kf"."packages".sha256 = "10crpfhfsb0l5bnhb6rj9s1409rxy1kpni2ab3c8g42jha5slbwx";
  packages."mipsel_24kc_24kf"."routing".sha256 = "076c446g0nn8wnc2ybknwa7v4yf85yslpcflxpnkw67wbb26kxgy";
  packages."mipsel_24kc_24kf"."telephony".sha256 = "1n9fmqkg7vqmkp4zdnri9993kc6di932ngkkmg597zw9ghzsnwp9";
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
