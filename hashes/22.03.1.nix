{
  targets."oxnas"."ox820".sha256 = "1mh5ypn106l59zjaqbh6sjwm2vf0skda0q6fbihplsk2nr6zf2cd";
  targets."oxnas"."ox820".packagesArch = "arm_mpcore";
  packages."arm_mpcore"."base".sha256 = "08wsp3yjxgky4b4gji1dkzf6w8az5sw7p1pnrs1x4y2wlc6br0k0";
  packages."arm_mpcore"."packages".sha256 = "0sbxi6yjz1s5r9d4bgm3xflwvg6p7xa2afs39nlvl7qaqx40mla5";
  packages."arm_mpcore"."routing".sha256 = "175zca41lfndcx7a1z893ql9x8xyr39jrjlyl5qcrqg7mf5fhznc";
  packages."arm_mpcore"."telephony".sha256 = "0cylvb3yqj3mic3pyhpmvf9w4gj5d1a0ysmiibfal5m343fvhmfg";
  targets."mxs"."generic".sha256 = "0qvd4y6cvkh0khj5znslb32ai4m97pvvrvs115j5727li7zvnm0q";
  targets."zynq"."generic".sha256 = "0wdi90bqh48fw4cpz6g6asx7anb0z5a385652xfg8dlpplvbpkfv";
  targets."zynq"."generic".packagesArch = "arm_cortex-a9_neon";
  packages."arm_cortex-a9_neon"."base".sha256 = "1i5yagrbscx444554z70v60jn1yxvqikw2883kf5hnnkgz4ar5sm";
  packages."arm_cortex-a9_neon"."packages".sha256 = "1cf765jl7r0gd2ydd5vsl635yddkmw74qs6h43ivl3vknxv4wvbk";
  packages."arm_cortex-a9_neon"."routing".sha256 = "0wa5ydrjnb2hfcp3x3czr24h6x0n7jm4h2q838wvhi0ds18ag2fb";
  packages."arm_cortex-a9_neon"."telephony".sha256 = "0nnn61zlzi3dydvglrvm90rfjgbgr0bslwzlc0zx1lljww823fq2";
  targets."bcm63xx"."generic".sha256 = "1rwfgg6wjrik02ziwsprvq56z8fgcj7djpm23rsadi89rrl3j771";
  targets."bcm63xx"."generic".packagesArch = "mips_mips32";
  packages."mips_mips32"."base".sha256 = "03386zcj3kvx06zd3gs2qffng3idh71y0ndw8b3fzfmgxfdrhvhf";
  packages."mips_mips32"."packages".sha256 = "0fld0l2kyvf3lxbxqkm8qvjfhj4mv0kiga0fkczv6lbj3q4lbn81";
  packages."mips_mips32"."routing".sha256 = "1ixn8f52irpwd93vymxf264w6xz2mk4wp8n1qilgb94vzqa7nwp2";
  packages."mips_mips32"."telephony".sha256 = "16ygmhjj67cjzm3sad3ns9blpkc0jjwsyxrq58zvgdfgqc8j8f8x";
  targets."bcm63xx"."smp".sha256 = "1qna4c8bkxmlnbl6x589jw8awg2wzq00vh61gaszyvn7zh8894in";
  targets."bcm63xx"."smp".packagesArch = "mips_mips32";
  targets."bcm47xx"."generic".sha256 = "0pbnbkamd43rpddchk32287wxpwiiwb2cxzmc6hki5zpm8xk7yn6";
  targets."bcm47xx"."generic".packagesArch = "mipsel_mips32";
  packages."mipsel_mips32"."base".sha256 = "16crn4q6ga63yy39m7hg0nhq3hg71zvsskjnh9all8bs8s8nd1v8";
  packages."mipsel_mips32"."packages".sha256 = "1hiwj7f86y3gq301y408f1nw31azhiwm8x8gvykh47qpa9ca4f31";
  packages."mipsel_mips32"."routing".sha256 = "14n3hxrqf5jqdyndspnb7py98iv0q7i9gdy62mcj1vvmbfy3l5cv";
  packages."mipsel_mips32"."telephony".sha256 = "0lz03c7xsxfa2xca0rmx6m666rx7y5w3fz8rhr2kibim4lymr2s0";
  targets."bcm47xx"."legacy".sha256 = "116289k6w0gjyggacn0w1ps3xvp87f08qx2m3gzibvmvdmfm8d5c";
  targets."bcm47xx"."legacy".packagesArch = "mipsel_mips32";
  targets."bcm47xx"."mips74k".sha256 = "01sc47a3bkamp67mqci8xr2sldwz7vmgznw8ywqfsdmj2cyq2a2c";
  targets."bcm47xx"."mips74k".packagesArch = "mipsel_74kc";
  packages."mipsel_74kc"."base".sha256 = "0w8qscbp8k911k14wag1k22hhigrgl8dj576hbqwfxlbfxhjcyvr";
  packages."mipsel_74kc"."packages".sha256 = "0wyy6llnwzx9i93bbwpqbjyf843cyymczwfv7w32jhbjm9bh1k0c";
  packages."mipsel_74kc"."routing".sha256 = "195p2674l9763hys2bjd8g654670cm2ylddwc99b4jq719zkwwj1";
  packages."mipsel_74kc"."telephony".sha256 = "0nskzgg7w9vjxzmha3psj6d5hdl5q188n4x63flzxcilz8c5svmb";
  targets."bcm27xx"."bcm2711".sha256 = "0parkjz64sl9vsgviadqlgwy3if6h0n37kkbw7qryfinah2snha2";
  targets."bcm27xx"."bcm2711".packagesArch = "aarch64_cortex-a72";
  packages."aarch64_cortex-a72"."base".sha256 = "05swjgq8gby6480drfi09y8h3v653hbq4y49cs6bh222syza6gf8";
  packages."aarch64_cortex-a72"."packages".sha256 = "1psrhdgd7mssm57hvli00c1r0rdaisw2a9ybbrnharwmnvx3pmb4";
  packages."aarch64_cortex-a72"."routing".sha256 = "1ll3312s8qq2g7ml6hlp9ghm57fz6a263whv9gvvkpczgdzr8wds";
  packages."aarch64_cortex-a72"."telephony".sha256 = "0m6mkc8a4mjz65idx3k6z3xxmi75m5rg1vxs0kypiihjm53jj1g9";
  targets."bcm27xx"."bcm2708".sha256 = "1v7mm0lbkmwfysl70jyal5dflxgl3awxvdcfm8f8cm46z27gyj09";
  targets."bcm27xx"."bcm2708".packagesArch = "arm_arm1176jzf-s_vfp";
  packages."arm_arm1176jzf-s_vfp"."base".sha256 = "03a6cmq6widhlmd4xswrr39y4bgwcf43jh140fc8p3wr0wg3wmzw";
  packages."arm_arm1176jzf-s_vfp"."packages".sha256 = "0qdn30ga02m3yspf6cgk09ppjdlna73zdrhvgx5pwfj520hq9jin";
  packages."arm_arm1176jzf-s_vfp"."routing".sha256 = "1h30sfqr7dmihav5si8n3y420mhsrqll2ys0ywfccmcx5hnqdyp2";
  packages."arm_arm1176jzf-s_vfp"."telephony".sha256 = "1jx6szmbr8xrd2gfc8x4cjm709q7r4iz5bbggswxjrdkbylm67c5";
  targets."bcm27xx"."bcm2709".sha256 = "1vfgz8zivcd3vc8w9ilkinir9m9x5qnawyclmwdgv12xnr89mlww";
  targets."bcm27xx"."bcm2709".packagesArch = "arm_cortex-a7_neon-vfpv4";
  packages."arm_cortex-a7_neon-vfpv4"."base".sha256 = "015a14q2q11aqyl8xkckgwnkyjwyv7ahlwwmlgbp6x6dgkr7vn2l";
  packages."arm_cortex-a7_neon-vfpv4"."packages".sha256 = "1p0i5fj6ryv1mpnzhm3davcnwyd64wgb4h63siri8lkf4b81ll77";
  packages."arm_cortex-a7_neon-vfpv4"."routing".sha256 = "1zcs6w5dpxd5g0i5rhr5p0gdwjhw1d5k2jjgv7rm4iv9pnvjiy7y";
  packages."arm_cortex-a7_neon-vfpv4"."telephony".sha256 = "0fj6y3hd4r4mwn1rw7darz1cfhlccqh2c8qqk0ms8c663gmy020z";
  targets."bcm27xx"."bcm2710".sha256 = "0s3wr15jljhlg090ms1l44lra86lkwmqndg3c6c0q6y0wp68v4fi";
  targets."bcm27xx"."bcm2710".packagesArch = "aarch64_cortex-a53";
  packages."aarch64_cortex-a53"."base".sha256 = "168r39ai1p48d172ibi79dpj3n201269jn9flyrwvx9x2yl8dswg";
  packages."aarch64_cortex-a53"."packages".sha256 = "0dxpm3rrhcafd5k3j00vfhjfdjxmr3l0rlv0xnf81biwr4b2sdjv";
  packages."aarch64_cortex-a53"."routing".sha256 = "1am2jq7fgr0vsrpsfdmblr2afvkbfmwgnd8z9vm8w56ybmdllpg0";
  packages."aarch64_cortex-a53"."telephony".sha256 = "1sdgph7kbkdnh669s3w5kzdsxkxwhrlzbzyjfhbjny4ab3qfzv0p";
  targets."mvebu"."cortexa53".sha256 = "11bnizsac9pl9s162hygnssjsmxyyf6qwix5ly24mlypr5ixj4g3";
  targets."mvebu"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."mvebu"."cortexa72".sha256 = "1vcfgm92bgyzwi9az2yggz4l0x63saviz6sr8sm98jamxsxjizk7";
  targets."mvebu"."cortexa72".packagesArch = "aarch64_cortex-a72";
  targets."mvebu"."cortexa9".sha256 = "1w0gghb1n039lrx0ly0g6f1r09lmwcadjj1sv31s14yfmkk62ixm";
  targets."mvebu"."cortexa9".packagesArch = "arm_cortex-a9_vfpv3-d16";
  packages."arm_cortex-a9_vfpv3-d16"."base".sha256 = "08w1kdvg27zpsnmhjbbclklrqrwclwbiamn1hxzhkdihigwqvrgq";
  packages."arm_cortex-a9_vfpv3-d16"."packages".sha256 = "0cr93kckvi4ifdfi9jf955nnppkfcdrq6cqvbqvl40wajij8m52y";
  packages."arm_cortex-a9_vfpv3-d16"."routing".sha256 = "0n9xhnsrl22qw2wcwqrh761iqi1bzi2wknpa4d9wqv6bs8fkvimv";
  packages."arm_cortex-a9_vfpv3-d16"."telephony".sha256 = "094sxbcf767a3yss2y8vazvy9ma3by6n1i0zmxdsfrwl157jl8yb";
  targets."at91"."sam9x".sha256 = "0zzw395p95b7ymaycmdpqc3w0k7xb4k3r8xa42ws25awk3wb14iz";
  targets."at91"."sam9x".packagesArch = "arm_arm926ej-s";
  packages."arm_arm926ej-s"."base".sha256 = "1adj8w52wpgqdizfx0w2ddjsnidzn8kld1xf8dbmqix2sm4sv9x8";
  packages."arm_arm926ej-s"."packages".sha256 = "0ibad4yszndpksm9slrk0zs7a6f2nyy5m25nbx9n4mmqrrrw7jvm";
  packages."arm_arm926ej-s"."routing".sha256 = "07nd7i64qpy7ila6r47w4q8pj42dhq0rcagkp2b9galjzs5zwby2";
  packages."arm_arm926ej-s"."telephony".sha256 = "0xdgs8by6l62qjg60q5d7aa9j4afs759g1za42iwhzhkg111ldv6";
  targets."at91"."sama7".sha256 = "0px8lq15262glv92rrb3l9rav1044zlk8i44998878vz8zschn9s";
  targets."at91"."sama7".packagesArch = "arm_cortex-a7_vfpv4";
  packages."arm_cortex-a7_vfpv4"."base".sha256 = "1jg9llcj7qpms2qs05cfw8h0mykw0yyx6q0bfzrcq6qm4kjl1cj9";
  packages."arm_cortex-a7_vfpv4"."packages".sha256 = "070m2x1mafbm4jbj91lds7v0p5zwfzmj2z7piinjhhk7x8k9l9pd";
  packages."arm_cortex-a7_vfpv4"."routing".sha256 = "0hy6p6s765k66vrms8ai8pqr7idbp1f8zf0p8y81ias8qp7mhw8p";
  packages."arm_cortex-a7_vfpv4"."telephony".sha256 = "0z03qg76q3123z2l8zxkgb19jmrdq6w4nb9ff5h82wsvlcs383jl";
  targets."at91"."sama5".sha256 = "1afr7w4c44a0wmasgjrk9x57x0i22xxa4j6mjcnr9q5jcw1wimw6";
  targets."at91"."sama5".packagesArch = "arm_cortex-a5_vfpv4";
  packages."arm_cortex-a5_vfpv4"."base".sha256 = "1gn0h2y1az5qfimikwdls9khlgp18y6m35pi5fll8503bb75shnp";
  packages."arm_cortex-a5_vfpv4"."packages".sha256 = "1xkv3f6czkyzm07mzwj8i9sh5j4nygc247g4gcj02f1xbmfnyb6h";
  packages."arm_cortex-a5_vfpv4"."routing".sha256 = "1wad5vvkyn2fbq1hz1ggndnaywpk4cl75si4fjmzjlrhz85zq2qa";
  packages."arm_cortex-a5_vfpv4"."telephony".sha256 = "036kjsb759ns1zcm80jn1sv1ilasc5gbij8nslqxkik3qfp52hy3";
  targets."gemini"."generic".sha256 = "0z2z4728rxgz2ilkw0bdsa1a681l5sy3bwflidn3jh2v00pa90n4";
  targets."gemini"."generic".packagesArch = "arm_fa526";
  packages."arm_fa526"."base".sha256 = "07hmz69qs9rcwvn0ifylmyn787z58qhdn9miv78x08drysgyz9s1";
  packages."arm_fa526"."packages".sha256 = "1c20jy354r564vcwk1i6xqi2prgwnf64hqw4mqisx6shzds1x5j5";
  packages."arm_fa526"."routing".sha256 = "158mgxrby3w3v5968baq139390vdrbpxp1dd60n6wx4ynl2q0syb";
  packages."arm_fa526"."telephony".sha256 = "06khcc8dgs2az1128pza0msj2n1dj3kpcf45m60km0x9xskvw6ix";
  targets."octeontx"."generic".sha256 = "1vnamfh7rzs0fmqlilczz45swlyv2q40v2lxr2mv2jipngcnvd6q";
  targets."ipq40xx"."generic".sha256 = "0hrm3xwlzvwrbjq7hy06j7xkga5avg338zbk4s8908mw21n5w9n7";
  targets."ipq40xx"."generic".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."ipq40xx"."mikrotik".sha256 = "10lrznvngv7m0j317i006j2lag969mhkk8y11w78k223q49ifpdb";
  targets."ipq40xx"."mikrotik".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7623".sha256 = "1a18pvgb6hay27kndwqqsqxlyrvmgvhfg8sy0rh510dfp1cv47pi";
  targets."mediatek"."mt7623".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7629".sha256 = "0rfdvw3z7wqp7fl5zxplqmhmqjfv5crqnp4l0hrp5xq7l2qvfjdk";
  targets."mediatek"."mt7629".packagesArch = "arm_cortex-a7";
  packages."arm_cortex-a7"."base".sha256 = "0jskg4b4bcsp1dpyzk8qgdjlbf5k2csm8q0d48zi0y8jbv1x14cc";
  packages."arm_cortex-a7"."packages".sha256 = "19cbv5xvgwp5135fxsfqsl7hb0n7447xy72v1dhb6z25lpi3ar3l";
  packages."arm_cortex-a7"."routing".sha256 = "1d32yrsfs2pnk0bi7q98nl1n4lkab52dd3sn0l5hbqiypp4rprkf";
  packages."arm_cortex-a7"."telephony".sha256 = "1ljvj3dppd8kx14zghzbkjfrwlf18jwyfdfx02zj2ayzdgxi46vq";
  targets."mediatek"."mt7622".sha256 = "1shwr1gpi06mff61q6pcl3w1c52f1q2k75klnnhhxpg47q1b9gkm";
  targets."mediatek"."mt7622".packagesArch = "aarch64_cortex-a53";
  targets."malta"."be".sha256 = "1himf65l262da5z4nxzbixlnxclxl0xv4in0xfwsvs37nvaswpfm";
  targets."rockchip"."armv8".sha256 = "1wdk36vckfj5r28niwg9a73a5dxgpdf38mf6vkvqk06s6acn1a3r";
  targets."rockchip"."armv8".packagesArch = "aarch64_generic";
  packages."aarch64_generic"."base".sha256 = "0lsilwhi56chlbl6q1phjwrmgic3f87vvq4d2gqlds5kpj2b84sr";
  packages."aarch64_generic"."packages".sha256 = "1kwjhq6vypbr4pycxdnwjl0whwhrcrvfsiw0amplp4h9w9wmzrph";
  packages."aarch64_generic"."routing".sha256 = "0yv4siymmicpkk4hyypvy5lvb2cl5kvzs0k59xwmi8qva8m22lgd";
  packages."aarch64_generic"."telephony".sha256 = "0fgmgynxi9vdmjfsdklxqpnvmkssm9gh04hcpgz9rnihgjh9l3rh";
  targets."ipq806x"."generic".sha256 = "0vjg4cc40xlxrap33a5xcw7daic4wb3vyjpd56ihpm30fxphlz3s";
  targets."ipq806x"."generic".packagesArch = "arm_cortex-a15_neon-vfpv4";
  packages."arm_cortex-a15_neon-vfpv4"."base".sha256 = "1jvs4fap78yy1vsxc7hl2g391i1zg9kmn0y2ir23m7h9zhirxksa";
  packages."arm_cortex-a15_neon-vfpv4"."packages".sha256 = "0bkrbla6ccwy39q8mhmk7sbgfaqykbi14mqyp5mclq3rrjhrc2b6";
  packages."arm_cortex-a15_neon-vfpv4"."routing".sha256 = "138qdl3h3zwqyh35rmvz349kr9a2wzqw0av2vlvvblfiv5w68rl5";
  packages."arm_cortex-a15_neon-vfpv4"."telephony".sha256 = "0jjnpjsdq91qmsnq3sbk9pffmz7vbp9nz791ab6kypbxkmzw5fr5";
  targets."sunxi"."cortexa8".sha256 = "0ih74vgalhdbcpall5gnm20ahrvkdsn1nm3548vdn9nmbcjs3hkq";
  targets."sunxi"."cortexa8".packagesArch = "arm_cortex-a8_vfpv3";
  packages."arm_cortex-a8_vfpv3"."base".sha256 = "19h0fbkmkpp1ckz7ihkvqycb7iyb7w15qilj8s61ysh4ixvmyqwd";
  packages."arm_cortex-a8_vfpv3"."packages".sha256 = "014jhlfdh0dm4ndjb958yydhr50mbmg5wd5vmi8bkhhv7d3qkg31";
  packages."arm_cortex-a8_vfpv3"."routing".sha256 = "0wx9py7k4zi9fg00ggxihc1w804m7j1vnry7gck2jqpnhhcfi12g";
  packages."arm_cortex-a8_vfpv3"."telephony".sha256 = "1d6vcwq63vi59vv3gm9m1905817fpcsp2ky4sgznigvfy4y4jlzf";
  targets."sunxi"."cortexa53".sha256 = "0cfwac4i921jj1432mmpwi5hv6hm71v07jd224rdq7indhqgh6i1";
  targets."sunxi"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."sunxi"."cortexa7".sha256 = "0dk7nr1c85f2kkzkidlhmjfr0gcz73yh0dj687haags0qny36nnf";
  targets."sunxi"."cortexa7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mpc85xx"."p1010".sha256 = "0v8a3yxpqh961ny776am72ldfvq6xdmspi794nmkv6agxgj6z5fq";
  targets."mpc85xx"."p1010".packagesArch = "powerpc_8540";
  packages."powerpc_8540"."base".sha256 = "09dclxi15xc4drkl5fxcq540d036bqbsmsnm5jnpnx6k1h4aamr6";
  packages."powerpc_8540"."packages".sha256 = "06xz27h3r4d4hfld9sv651ny9imjp6xbh8fpvbl139fh299gahhn";
  packages."powerpc_8540"."routing".sha256 = "0z9yp550vqz9rliqcavh8154ary6v79wy27xcacsg8sgkvvyp5ni";
  packages."powerpc_8540"."telephony".sha256 = "1plh4anw3w4qlmw6wqrv9jl19gc8nlpz8pivzh7s08m397yg5x1n";
  targets."mpc85xx"."p2020".sha256 = "06f8z5qhpc1jrbmcf7b62lcrhj5rg1x9bxxjqsi71fb5w7f9ah5v";
  targets."mpc85xx"."p2020".packagesArch = "powerpc_8540";
  targets."mpc85xx"."p1020".sha256 = "0dwmjjg0cfs38dskxk4rizr0fx3jnpmv5hdx77qr886d7fs00w8g";
  targets."mpc85xx"."p1020".packagesArch = "powerpc_8540";
  targets."imx"."cortexa7".sha256 = "1rcvn0cbswnbb65mdr600wxhnzjbajpq81r3fns6wsiggs101bf8";
  targets."imx"."cortexa9".sha256 = "1761f60ysikcm7r4cn7ffqc2hf4cm9vm0vh7xr7zdgfzyb4s8xki";
  targets."imx"."cortexa9".packagesArch = "arm_cortex-a9_neon";
  targets."x86"."generic".sha256 = "0dn4kfjxbk8kvf393lp1si23kfcxf6klcbhyv2zdqpffx0sjkq7f";
  targets."x86"."generic".packagesArch = "i386_pentium4";
  packages."i386_pentium4"."base".sha256 = "0mj1gjsqqdy8a39aa956h8mkkc27w92nzl5vkfvx51yapbqfb20w";
  packages."i386_pentium4"."packages".sha256 = "0w77050rf8np7605z2rqy7h04jqs9g9l9iayvkpnih760qy9yclj";
  packages."i386_pentium4"."routing".sha256 = "0ml55988pzidqpd8cnmhyhzxh2ypk0jv5x906h6km0f54l2nbp84";
  packages."i386_pentium4"."telephony".sha256 = "1lkl363xcjg3ws5hmz23w5mwwlxgl6pn32iv7rfprsqivivng9wb";
  targets."x86"."legacy".sha256 = "0bbhhx8yyq2v3kj45362g09bd7yhdm5rnlgszy5kfzccivncm10p";
  targets."x86"."legacy".packagesArch = "i386_pentium-mmx";
  packages."i386_pentium-mmx"."base".sha256 = "0cbzdbhmksk8vawbh33khydhk4a36xjlc3dwh3g5fpq97g7h3g6v";
  packages."i386_pentium-mmx"."packages".sha256 = "1h6zhxpyy1wwp8gli4c0zzv6km9qqbp1h74yyq8hlzaqfghzr0ms";
  packages."i386_pentium-mmx"."routing".sha256 = "1cw75lsb4jigbk7bmx14n3f8p3ww5rjlx2xgmqkk5x53k2vgj095";
  packages."i386_pentium-mmx"."telephony".sha256 = "0jz3b4j8z244fv37s3nphh1nnkmj05h7f4jjd1mvpsf1csdfdnpw";
  targets."x86"."geode".sha256 = "13l3y2y4j7j6iw96h3ssj62il039087kzi9kyckqznqcjsaw3b5x";
  targets."x86"."geode".packagesArch = "i386_pentium-mmx";
  targets."x86"."64".sha256 = "1k60rq5dr7bxwvv8kj194x2j8m73i55rn3kzzaqngqm7la5vyrad";
  targets."x86"."64".packagesArch = "x86_64";
  packages."x86_64"."base".sha256 = "06fzkhij8iqqa43cnh452mwvkjin7c470ap65akmmnk6ng167pgl";
  packages."x86_64"."packages".sha256 = "0mlwsq53aywzsa70s1l6r49airaxhnfbiz6ad12kfmvjk15996kr";
  packages."x86_64"."routing".sha256 = "0hrm97nss0m0fljg161sbm73dwpqph51fyqfmnfjdhp34rz5hr23";
  packages."x86_64"."telephony".sha256 = "11k6lk8nrjnkyqx7096yk1kfql5d3ghg4bahnwwfjpfrfzr30n0w";
  targets."realtek"."rtl838x".sha256 = "0fxh6jy5c86lwm5543dy4zzm09pgwis5rqni19xadx7ag8cgi6pj";
  targets."realtek"."rtl838x".packagesArch = "mips_4kec";
  packages."mips_4kec"."base".sha256 = "0l5phrdpmpmgixr3in4hwmyzgm6pp6ppa8cmbwp3i1jrnmp7grzx";
  packages."mips_4kec"."packages".sha256 = "1h8ljavcdq8as24l83ibfjwn4175pvp75bccpln26c9w5gpdzr17";
  packages."mips_4kec"."routing".sha256 = "0vzd51acb7l8idjpnjsnvcxcb0ljn1b2ca0zw9zxnbr8grv37i4z";
  packages."mips_4kec"."telephony".sha256 = "0bgi8mfli6vvnz5cqwzl0hcp1dmxfnh3k7n5ij2cbqrmhz00lb4h";
  targets."realtek"."rtl930x".sha256 = "0l2xb3dsqwbdgh2zi00ma05vrc2gahahbxi0fjr7blwbmg6fk95v";
  targets."realtek"."rtl930x".packagesArch = "mips_24kc";
  packages."mips_24kc"."base".sha256 = "13i1f8hwkpss6wvwk1vl8lw7blhr4w914ilbckcfdy30ff754shy";
  packages."mips_24kc"."packages".sha256 = "0j59qkyz1f62nviqf6kqr105bkmzhf58b93f6xxlvlgi8z3z7gqc";
  packages."mips_24kc"."routing".sha256 = "1mp85qk45cfr5szb27hhdnf3qqd0ga3vx79azyw07lyss269y1kw";
  packages."mips_24kc"."telephony".sha256 = "1cb2r6lldjjgibl5nfx3b7pqsdh5cyqzkhy6am9rq28lbnry7z5a";
  targets."realtek"."rtl931x".sha256 = "1wwpwgj6qcgl8gyhac77qxiydpgsxiwmvlr721cjn5d34aajw70m";
  targets."realtek"."rtl839x".sha256 = "1zjkig5pxwa4ylg9fjbd7khqwwhlifv18xsnh75mbyyjxmri3lps";
  targets."realtek"."rtl839x".packagesArch = "mips_24kc";
  targets."armvirt"."32".sha256 = "02jh4dkd5j988b0m6d8ncna8zw3r33xzn1qgky4fj3sjbh7zdfkr";
  targets."armvirt"."64".sha256 = "1q48wh0981jri65x4iaqxwsn7qivf5ni42rcixlvsa50gnrzkpms";
  targets."kirkwood"."generic".sha256 = "19gm75w2q6n8w0mxj4p7wwqq88451y58jlz3qqsy7ljp080xvssr";
  targets."kirkwood"."generic".packagesArch = "arm_xscale";
  packages."arm_xscale"."base".sha256 = "1a2bml7sgix7vc72ip17msbj1yvf5ddwx5jd90kx2m5rzl9xzxpi";
  packages."arm_xscale"."packages".sha256 = "0j3h7ixxi9n00146xn9hj1bl28brmwagp9qj2vjk2qy3mnq5pmfq";
  packages."arm_xscale"."routing".sha256 = "0qrh8zizlhkpyh0w81szida5d1dd19n7fz2jp4rllx5w5hkxbwl5";
  packages."arm_xscale"."telephony".sha256 = "14ccf3x9ay3p2j0ilw27xx8y39x11cvf6whym5kbj1xb2lc5l40y";
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
  packages."arc_archs"."base".sha256 = "1jmglryssmj81k6c72lgbccnygbr80y5rrggahx23kbp1fh306v4";
  packages."arc_archs"."packages".sha256 = "1yirfzf2y0yiaw4n1p9ah4vrz1g2xlkxs5g1h1m87ki2s1bik6a1";
  packages."arc_archs"."routing".sha256 = "1rpqr5w86b9bgaxr9yaqa5gz2llv4rx8sg7pznc8kr6yr2ih9djw";
  packages."arc_archs"."telephony".sha256 = "10dlqwqfbip6qlrwvrl99r60hw3qq13yq62xmhy0frfkcgclcib1";
  targets."ath25"."generic".sha256 = "0yhhxmcr7gml1jar6jk4143mzrdz5l60c3db344yc78ynp43ghl1";
  targets."ath25"."generic".packagesArch = "mips_mips32";
  targets."apm821xx"."nand".sha256 = "15mrqjqwg2d4iky77hjj8cqhzkhv9515z9cpxf9gyk39dj9ym4ab";
  targets."apm821xx"."nand".packagesArch = "powerpc_464fp";
  packages."powerpc_464fp"."base".sha256 = "1kjgzjfy7vq9yjrg1d59jr1b47ai2f5s7d80j0grp2h2lvdk7ww7";
  packages."powerpc_464fp"."packages".sha256 = "0xlaz8sviirshk8wkf3ys2b6kq5df7pa8s91r6wsllpazzbbf4pp";
  packages."powerpc_464fp"."routing".sha256 = "05qphk10avm5d97qvls9a5mfvab0awi4nbnh641xass69w3jaih3";
  packages."powerpc_464fp"."telephony".sha256 = "124mgkd2x2hvinxysx7djg3szgmy9fkr0z34vn1sn719xr9dri6g";
  targets."apm821xx"."sata".sha256 = "155vpd7aghm6axfg4hk58wdx2k4fqghlyv2x4qj2cwdp0w3ap9b7";
  targets."apm821xx"."sata".packagesArch = "powerpc_464fp";
  targets."bcm53xx"."generic".sha256 = "1zxgqnx8jlr8q4qs7xxh2691b0dg5d03kh05kw3g7aic6hvimmxr";
  targets."bcm53xx"."generic".packagesArch = "arm_cortex-a9";
  packages."arm_cortex-a9"."base".sha256 = "0xvri8llhvyjkk8d98a8war3h9wy17jpm82bvxrhr6hky1430nnr";
  packages."arm_cortex-a9"."packages".sha256 = "18dw4q2j5k0xfg6c447p1jxybni0af8zl6hrs2igikij5lgqcx2n";
  packages."arm_cortex-a9"."routing".sha256 = "1q7zl1dvhpzq0i6xqp9pf72wxiqagrymkbiaymxa0dszcb53hi37";
  packages."arm_cortex-a9"."telephony".sha256 = "1adzyibwl1mb5651s7vddg01pg4kmqx49jl5bpl1dafafa9sbyrg";
  targets."ramips"."mt76x8".sha256 = "1q0zcvczbg2852k02mmya1d20bvrkjkqcg9p4lnn117qfkdij5k3";
  targets."ramips"."mt76x8".packagesArch = "mipsel_24kc";
  packages."mipsel_24kc"."base".sha256 = "0nf9gwr4z6kqr2cnh6dpj86h327d03dh3x0lz6ys1ry5qn1fkx7m";
  packages."mipsel_24kc"."packages".sha256 = "19847kj03qjhgy7zlkivrv6s49rnh18qq0w88kp36hr60ag9b7h9";
  packages."mipsel_24kc"."routing".sha256 = "141dnm4pbqkabg071x3s23d8gndgw8r8vklsmvjj2shyfv8n23ac";
  packages."mipsel_24kc"."telephony".sha256 = "0q4pf25xzmyq9fwq1if21m7liwlgxv63x4ajb9j0q7mlmpqnjd88";
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
  packages."mips64_octeonplus"."base".sha256 = "1j07m2ib4y83hw89fh7pv1kppmhd6p0f25sdqp338qmwvnrprm31";
  packages."mips64_octeonplus"."packages".sha256 = "0l4yrqbhj4z2yvvqsa4yfazzrijdk6gbcpw46pz8dslbcbalg2gz";
  packages."mips64_octeonplus"."routing".sha256 = "0jaclk48w8sp0aqi5bnzr8pwjcrs4w1cdvnj73rd279plpq72wql";
  packages."mips64_octeonplus"."telephony".sha256 = "115wjh16csfx8lkg7zgxyf2y3y8ypscn4c0wvp7dwymd5h4xjvnd";
  targets."pistachio"."generic".sha256 = "0qixk1cqwar8nb9hg9kfy7hirjb4b21pdpbj5ybylkrc979nla5m";
  targets."pistachio"."generic".packagesArch = "mipsel_24kc_24kf";
  packages."mipsel_24kc_24kf"."base".sha256 = "02wq5p4s72sd0hhz72jn5afm4czcqix29kj54yzcbjqhhp171i3m";
  packages."mipsel_24kc_24kf"."packages".sha256 = "1gzbqrkcw7ps7yrhwlpmx00ka0ibp75kcvmbfp0akbylrl9v32ja";
  packages."mipsel_24kc_24kf"."routing".sha256 = "1lmzznndc1ps63kzifkwwl4rm0xk2is6mhb7q3m2fpaxar3rv6sz";
  packages."mipsel_24kc_24kf"."telephony".sha256 = "002xdxvh03b3w43csrcil1bh1i53dcvy5vn60cz8kgyknqq9yyq2";
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
