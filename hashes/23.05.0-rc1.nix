{
  targets."oxnas"."ox820".sha256 = "0zh4s898835yhlc1mpaldbpx39jhd3fqyg2rfkm4anla472kx107";
  targets."oxnas"."ox820".packagesArch = "arm_mpcore";
  packages."arm_mpcore"."base".sha256 = "07p0nas8xfhm851byfxhfb0d9fycpifjfh9prmx2ypcwlx411k0n";
  packages."arm_mpcore"."luci".sha256 = "0c4ngfgcw3agpvbl6k5b6x7643sa8khqp6aargnr81vqs9j24512";
  packages."arm_mpcore"."packages".sha256 = "0nbwrspfh8z9d076x06vh54n78flkvyg21vg592hy0y10m2jd7ym";
  packages."arm_mpcore"."routing".sha256 = "12q86g5b9yafs3r5z2wf602c8dd6s6gg10rgffk8gjid0d9mcmd3";
  packages."arm_mpcore"."telephony".sha256 = "05hbb2mdsv1fg615gf4xnbzcy4laxiypys1y5bx7kb8h6y6a9rvb";
  targets."ipq807x"."generic".sha256 = "0mqi8pgh757644g3w1px46yfzsrsz661ra6an4k8601lypilwpxf";
  targets."ipq807x"."generic".packagesArch = "aarch64_cortex-a53";
  packages."aarch64_cortex-a53"."base".sha256 = "1kyjy5nfzgma4i6wz71b7pmjzx4wcsr6cybnl4sg3hl187mblwfl";
  packages."aarch64_cortex-a53"."luci".sha256 = "1qlyqy95mymcmxf8gj4733x8wlngz3b11r9xldz85395kpwjyhqd";
  packages."aarch64_cortex-a53"."packages".sha256 = "05cf5jgzhapayisnkkhwlir11n8knssckrvpgngdv0jbky56n1lw";
  packages."aarch64_cortex-a53"."routing".sha256 = "0x9nxs8iqf9v6ail5vhdya4sn1i239l7z75hm6x41mp8m5azlzhg";
  packages."aarch64_cortex-a53"."telephony".sha256 = "1xd349dibcglawkvkkvfn5xbx5nscjnjdaf4d7pcyh02zcjf74kb";
  targets."mxs"."generic".sha256 = "1l9y8y55fqvp1lnmg0v4rp55pixq25442qd9m71p8b3jz99hzddf";
  targets."zynq"."generic".sha256 = "0wgsbj3ywz7zsm3ll6wk5ci1qkq3l129yl0dgj10w7m333gs8jjq";
  targets."zynq"."generic".packagesArch = "arm_cortex-a9_neon";
  packages."arm_cortex-a9_neon"."base".sha256 = "0747f4034x7zng81m7ihpv73377lvs5hyq0svhp34mlvjrqmzr0r";
  packages."arm_cortex-a9_neon"."luci".sha256 = "1v6a4hmj4mdlf01wl576p37hpnbmm4xx2bqgf8m4py88vw2lvpvf";
  packages."arm_cortex-a9_neon"."packages".sha256 = "1bki1v17hgk5nbsgrp4kxmz46233k8ijl5xb9hfdc3vwyq05m67d";
  packages."arm_cortex-a9_neon"."routing".sha256 = "1b9nacsyg9l34lg3prlqsd6lgzpg1yr9im01z1wzq1c3yna6sffm";
  packages."arm_cortex-a9_neon"."telephony".sha256 = "033qzs85pyhwqkvjn0xla3hvxdmps0wfpni1y0a32xkg6vk37wpi";
  targets."bcm63xx"."generic".sha256 = "0rjlygn2hdlv97sidgqdg8ar2c4hf79qqcdjwfa52gkc1sf40x4s";
  targets."bcm63xx"."generic".packagesArch = "mips_mips32";
  packages."mips_mips32"."base".sha256 = "0izmydy8cclmww5lnad8syynmsc4c92jd62v8v1mwkw4j72d7604";
  packages."mips_mips32"."luci".sha256 = "0wg861qf1x412lqfv5ygksr5my6nak1i8fw3dmmxcka21q9pghwx";
  packages."mips_mips32"."packages".sha256 = "1i1f44ha8250m93jiggpdy6bi0g7jryjbysvfi7w1g0bvhnc0sgf";
  packages."mips_mips32"."routing".sha256 = "1mn11fnl3sh8jw3ppivmarmywd1vsd1k4y8y1likwcpmxjm3s9g1";
  packages."mips_mips32"."telephony".sha256 = "1sjf8wb8ij09awly6zm67fsgh1q1w1zirn7v38gwk199yjlan667";
  targets."bcm63xx"."smp".sha256 = "192fbclg4db3ymc1vg7a1v12p59g27hnq86cmygxac774fcs82gy";
  targets."bcm63xx"."smp".packagesArch = "mips_mips32";
  targets."bcm47xx"."generic".sha256 = "0vqyrga7mgcx3jyhw2cx738zawvyi7b67wwbz1l6dx18papiy57l";
  targets."bcm47xx"."generic".packagesArch = "mipsel_mips32";
  packages."mipsel_mips32"."base".sha256 = "1jiv5srkwm8dcigdl987dbwnj3pkw3wngbnn3x0n9fh6yj75lwpi";
  packages."mipsel_mips32"."luci".sha256 = "1mlb2g93g6vxb4z0xnm9508kqfy8gjnkqwglzx3wp9q8bzyilznj";
  packages."mipsel_mips32"."packages".sha256 = "1n325qavd1z02zkmyrawiy7hixkscz4vk2668gdl5l4xgbs2y5gf";
  packages."mipsel_mips32"."routing".sha256 = "1jmcp0lyy1phni8y53hrxrwq1nyly8z565bfybz679h488l75yhk";
  packages."mipsel_mips32"."telephony".sha256 = "1s35zlwmrff26cgdhqxzkbq081fgbw8r0dxyrrpx0cyc8cby07sl";
  targets."bcm47xx"."legacy".sha256 = "0hz40yvb0i7l7cgyc3a7cn9lk714sm3564l37bhia8qkapm3r9im";
  targets."bcm47xx"."legacy".packagesArch = "mipsel_mips32";
  targets."bcm47xx"."mips74k".sha256 = "0yls32bjanzlzjxnv2m42hc6ya6ha2rqxsl6njbzdfjnbfb6zc9n";
  targets."bcm47xx"."mips74k".packagesArch = "mipsel_74kc";
  packages."mipsel_74kc"."base".sha256 = "0fasb18ysg40060bw35n4g8p0p191a7lpmd0ga46n5jf8fdqdjkg";
  packages."mipsel_74kc"."luci".sha256 = "1i0fx22kpk98y3cm3f1vbrz7hc5s8xmahj61ha5lns0wkv0kb26n";
  packages."mipsel_74kc"."packages".sha256 = "1m72fm9fwrrwkzw8h0g5nar7knfdcdwgx4mjxspm9hjc05ipz3lx";
  packages."mipsel_74kc"."routing".sha256 = "02dmy1xlw2ybbpzkrdzhqbac1gavhg3cwrh5yr94xkdc66wdal1q";
  packages."mipsel_74kc"."telephony".sha256 = "1kr77s8b1idh5dp533yvcb5px6rq8n1w3w3j9vilqv8ggnh6cv4s";
  targets."bcm27xx"."bcm2711".sha256 = "1mcrc154528jlq0zpgsa5i153chqyync3yb0ngrz3fvqmjwhmr0s";
  targets."bcm27xx"."bcm2711".packagesArch = "aarch64_cortex-a72";
  packages."aarch64_cortex-a72"."base".sha256 = "10jwmr69vnafky4haywr6xf22v7r32vhv9wfhhi2c4mjvfam6a6r";
  packages."aarch64_cortex-a72"."luci".sha256 = "1fra58z198f48dl1gljavcg70xscjrl8a1vvdj4ifgqs7h9yyzp1";
  packages."aarch64_cortex-a72"."packages".sha256 = "165y0x085p9fmwhywkxwjbvqvz5yj1xi0hkqay928a4c9cysjsqd";
  packages."aarch64_cortex-a72"."routing".sha256 = "0zjx1jyxrjb9npc23w0d02xj10bpnn2hb0gpilr5ihg6xm88fq97";
  packages."aarch64_cortex-a72"."telephony".sha256 = "08w5cxfxfc0d5jl8mnlkly8glsimxgmk8nyps3q05whjdlv2z244";
  targets."bcm27xx"."bcm2708".sha256 = "1sb4d2lqayxs8b77x7f2wq3kz18s03yp38xj024v0caw218n8piy";
  targets."bcm27xx"."bcm2708".packagesArch = "arm_arm1176jzf-s_vfp";
  packages."arm_arm1176jzf-s_vfp"."base".sha256 = "0j8w61fsf8bc334gpzg16flgbmhxf99f98pdywgfx4j0d4m0xjd5";
  packages."arm_arm1176jzf-s_vfp"."luci".sha256 = "01mzvmlvhlzpvxym6k8ysrbx900msfrsgblsljl5wzxd4dylxdw6";
  packages."arm_arm1176jzf-s_vfp"."packages".sha256 = "0p7yircvmm663sxny6kw21c2yism5pax5vbm61ms7wrihw6zidbb";
  packages."arm_arm1176jzf-s_vfp"."routing".sha256 = "1aviyhqhaxq549c5yy0bllrv0d5hgssimi9l5is8v8kvdfahr06y";
  packages."arm_arm1176jzf-s_vfp"."telephony".sha256 = "1w38whspgna6qrfrd535v0dyz6n72j7ny7qrz8172m5y215aa6rn";
  targets."bcm27xx"."bcm2709".sha256 = "1yh7ckgayw5jdn09z21wbrsx0gw63slv3yva5nrip5n9cm8hdd7z";
  targets."bcm27xx"."bcm2709".packagesArch = "arm_cortex-a7_neon-vfpv4";
  packages."arm_cortex-a7_neon-vfpv4"."base".sha256 = "0f6xchjsh3pwxyvzyba47ddg10j51sx1qd7f6ws16kysa9m81f7d";
  packages."arm_cortex-a7_neon-vfpv4"."luci".sha256 = "0ig2a9240604j4ibbj48kdifwz99xv0lc15s6xmd9albf6ib6wg5";
  packages."arm_cortex-a7_neon-vfpv4"."packages".sha256 = "1wdrhhhid30qksfdr7wrrcmbpdycmqbwsa6lhf7w47cgrnf54y42";
  packages."arm_cortex-a7_neon-vfpv4"."routing".sha256 = "0zzd876ba4c1xi9rkvz6mm2ddqj8p9f74hjmxchwd3xfi0mb3dgd";
  packages."arm_cortex-a7_neon-vfpv4"."telephony".sha256 = "0krsc6z0fy62iqjcwv3jc88zqghd4dg6sl4h1rxm3cbx3rcmcdvh";
  targets."bcm27xx"."bcm2710".sha256 = "0lbi69jj88vm4sniqwp1c6fdyq3fil22ns14vmvjjlfnrpjg2gq6";
  targets."bcm27xx"."bcm2710".packagesArch = "aarch64_cortex-a53";
  targets."mvebu"."cortexa53".sha256 = "049pphsbl17i4ld76w9nff1dg0n9bhs4iy8d53qvibvmlii0ywaa";
  targets."mvebu"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."mvebu"."cortexa72".sha256 = "1j951lqh17crw58dhgbx5xcxyv4ysl7hy2islww9x0nb17gq35jz";
  targets."mvebu"."cortexa72".packagesArch = "aarch64_cortex-a72";
  targets."mvebu"."cortexa9".sha256 = "1izy2v22m6i0a3nkhjdxj8yfw60n4srjih75mvn2q1izarw4p6fm";
  targets."mvebu"."cortexa9".packagesArch = "arm_cortex-a9_vfpv3-d16";
  packages."arm_cortex-a9_vfpv3-d16"."base".sha256 = "0f8i8ypcm7rmcglq9wrsj6kyhq7xyqzjvggvvr1h3hj95b173mji";
  packages."arm_cortex-a9_vfpv3-d16"."luci".sha256 = "0nxiwqj8dxswrzd1ia6pvkzxcvxw2gfqqyv0hff6s98c5z8s8vg6";
  packages."arm_cortex-a9_vfpv3-d16"."packages".sha256 = "0dcpbzxy0s3z22h3pqpz529cpm2yl5ajdbx3dbnpmhpj1g1694my";
  packages."arm_cortex-a9_vfpv3-d16"."routing".sha256 = "0ad50fy4208v0x9016r227g8szz1gif7cbif570wxv2wq7p0fksh";
  packages."arm_cortex-a9_vfpv3-d16"."telephony".sha256 = "004kli6cifq2n0sd4njdbx5al4y5wsfcf05ziqng75awp8l8zbd7";
  targets."at91"."sam9x".sha256 = "1433vn1rvm76jlrw1v661wmqdbgmkyjh15ca89a2088z44z0x72f";
  targets."at91"."sam9x".packagesArch = "arm_arm926ej-s";
  packages."arm_arm926ej-s"."base".sha256 = "04n10fbw1ii9pap9z5grn6m4djr8k7wsqpnhyvadvy2mvdsjpxrn";
  packages."arm_arm926ej-s"."luci".sha256 = "1xrm7mpflnz4n8hylzpcc1p0xrr46a7vkcan66m0418mmqn9727i";
  packages."arm_arm926ej-s"."packages".sha256 = "1pdmz763p5mg69h1ci6gx9yahh84hagvpaf15jqir2v44bxvi6kp";
  packages."arm_arm926ej-s"."routing".sha256 = "1996ak04dn3ym82plfgr13qihs22mkg4qfri742kybgbl0ppvgd4";
  packages."arm_arm926ej-s"."telephony".sha256 = "17nnsxhpya5bv0a9kizqnr4ksp7z3dwjgj2x5rvz8ghzsixrbrfc";
  targets."at91"."sama7".sha256 = "1g7qp1sfczya4m0jnnd5mgqwiaqzcnql678fcaa5bi379dqklp7m";
  targets."at91"."sama7".packagesArch = "arm_cortex-a7_vfpv4";
  packages."arm_cortex-a7_vfpv4"."base".sha256 = "0gmm4g7x8803yk6xwks99j4mfpd8wi58fqwdwpc6yacxb13gjgxy";
  packages."arm_cortex-a7_vfpv4"."luci".sha256 = "169j6ap96sr00xm2mj5vm57zs5y7iclw782p399d8ad6bl6q1zws";
  packages."arm_cortex-a7_vfpv4"."packages".sha256 = "1543ql00saglr6m6j3xj76ykfpvxkr2lp66cp00cy8d2p897hz5a";
  packages."arm_cortex-a7_vfpv4"."routing".sha256 = "0sxv92f0faj46wykhaizk5j41wlmw6m674b6a9ri33n1wlym810n";
  packages."arm_cortex-a7_vfpv4"."telephony".sha256 = "0zapzzksj2h8ky9r3xg4yivxaqhvr2lj0ixjkk28izrfjp5w6nil";
  targets."at91"."sama5".sha256 = "1d5w0lwpfjfl85xlpxbiizikwfxcygj9fxpaczbxhnd0jq8vzqn5";
  targets."at91"."sama5".packagesArch = "arm_cortex-a5_vfpv4";
  packages."arm_cortex-a5_vfpv4"."base".sha256 = "0sdqvbny8x10cf2dwwkhy3d7yfvij7hqdw417yhr60q60rpspgq4";
  packages."arm_cortex-a5_vfpv4"."luci".sha256 = "1a9d59cs07jivj4flb99prqdmziaawz3r65c4z4k75pzpjg83yml";
  packages."arm_cortex-a5_vfpv4"."packages".sha256 = "1d46gpizngkykckiin43ibrh8dmbdz64xkvyas9x2q8c8g2asklp";
  packages."arm_cortex-a5_vfpv4"."routing".sha256 = "0x8jf8zl5k4sh0b8mlcczik0c5kvkrbmzdzv6xpysxj418wn58xg";
  packages."arm_cortex-a5_vfpv4"."telephony".sha256 = "0ha0zz7ip5kxpa3xybpsy26r49mx7wz1swbkv6nilr9hfbk7j9zg";
  targets."gemini"."generic".sha256 = "19vs381plni0h0zx9w265lhdxjmrm0gvdq0faafwp2x5r9qjdi1a";
  targets."gemini"."generic".packagesArch = "arm_fa526";
  packages."arm_fa526"."base".sha256 = "1qw0iw8a2v2xm659jnvyinvkx5pcggijx7nddz3jpsfa7fcqgidm";
  packages."arm_fa526"."luci".sha256 = "1509dibvq5jvgn01789si5pjz03mbq49y7fdbsgq2nblpmjvdnpp";
  packages."arm_fa526"."packages".sha256 = "1prl115xz1v7030ya75qa7gm7ndqcndhlhvy8f9s8yf1g5yw3yq4";
  packages."arm_fa526"."routing".sha256 = "09646s8n6ggpbkqpfqr5mnppqf6gdb87ab4mi833hp7hldplxfil";
  packages."arm_fa526"."telephony".sha256 = "04w53dcfvxgv2pzbm3xl0lbz4m5djyrck8gpq7aw0i64a1968ivl";
  targets."octeontx"."generic".sha256 = "0343c75fm8kwz0iwadw4piwcy7n29mj8gmcszf4h9wms678jsl2y";
  targets."ipq40xx"."generic".sha256 = "1i294vvs5hcrcxmkck4a08snv7z1im5ngg1cagn1w581wxdvgssc";
  targets."ipq40xx"."generic".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."ipq40xx"."mikrotik".sha256 = "0p0bg2y29q1a8926gkqigi2vdj85lm7lhw9jix1z0fs6c1ckgdxa";
  targets."ipq40xx"."mikrotik".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."ipq40xx"."chromium".sha256 = "0gbb5bp4vw2qcivcmwig91z8pd7c7inkd4jd49blk89ijl6hfjdb";
  targets."ipq40xx"."chromium".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7623".sha256 = "1g1aaaylp5fcl2mr0bcamp95zbqjyhmnp5da2ajpa7h7cwa26cm1";
  targets."mediatek"."mt7623".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7629".sha256 = "1dr16lxbs49il3bx5sp7nx2g784qigbirgqaxnws4ia1y0jmdv5n";
  targets."mediatek"."mt7629".packagesArch = "arm_cortex-a7";
  packages."arm_cortex-a7"."base".sha256 = "1vc8df709x7adyb0syrqdl7m0pirv5b2n6356qzl36ypwwnxj7mk";
  packages."arm_cortex-a7"."luci".sha256 = "1wlz2g77c386yf6gi32ax5cg79vf34qzxbl8h47h7qdsxm2n32h1";
  packages."arm_cortex-a7"."packages".sha256 = "041vcmzkvalsivgv54j013xv5d8pg9p66zzy11i5s6vgp1qzmbgh";
  packages."arm_cortex-a7"."routing".sha256 = "0fcql3phl6r416vmb8777ay3klz2jfh5cwr95q1ipq4sibhqxw7n";
  packages."arm_cortex-a7"."telephony".sha256 = "0z8axmjwl5im10wf4wils54g2avjjlc5xgwxw9dxxsg4w1yfqqs3";
  targets."mediatek"."mt7622".sha256 = "0wk4n0jdz5sc4fp0wq8rncfffkv5kbpcfxb1rbr9mj0cdr96azlm";
  targets."mediatek"."mt7622".packagesArch = "aarch64_cortex-a53";
  targets."mediatek"."filogic".sha256 = "08591lchxb6xpn1lada4rcsch3hc8x5wmqmzmmxcri0lgjy1saf9";
  targets."mediatek"."filogic".packagesArch = "aarch64_cortex-a53";
  targets."malta"."be".sha256 = "0dyklxiwibha7iyjvfk9ca3q6zii2skghx9q5406fccwj744i4m7";
  targets."rockchip"."armv8".sha256 = "1a7y7460cpdc26ajy5747d79p2bz2rhnxqyf75h0qik328ijrkvv";
  targets."rockchip"."armv8".packagesArch = "aarch64_generic";
  packages."aarch64_generic"."base".sha256 = "0wj4asp84cagardgsmjqqagg72afdlpfi6gr53jwkq275yhy0zg2";
  packages."aarch64_generic"."luci".sha256 = "09szqa8dmqi7mnw7fv5x68dv9yf123aqjczw360x6kfgpkhfhwqd";
  packages."aarch64_generic"."packages".sha256 = "0mchf6bas8bhihjgy40sy2k2wqybw6v0f4sinn9yrwxgw41avfjl";
  packages."aarch64_generic"."routing".sha256 = "0chxgcx3qizkgnai54wxmipkm5sq01mxiw8bb42jf3m049wp9wd0";
  packages."aarch64_generic"."telephony".sha256 = "0fqhkx6qzwags3l8x337jx3dxscd6vq22a4w0xc1c7r3bf5j5gf8";
  targets."ipq806x"."generic".sha256 = "0c01pvcr1xfncn5zm1289h742gg83fyzs3aqr8fxxbrh72yhcx8l";
  targets."ipq806x"."generic".packagesArch = "arm_cortex-a15_neon-vfpv4";
  packages."arm_cortex-a15_neon-vfpv4"."base".sha256 = "0qy7jn3qjafmk5ac5p7xiw9ms20scba1nf3r9v7z58kg3ihycl94";
  packages."arm_cortex-a15_neon-vfpv4"."luci".sha256 = "1ql7q7wjv91sp7xsf26qraxbms02m1bgwm5x1w1gj0s4ba2xgcml";
  packages."arm_cortex-a15_neon-vfpv4"."packages".sha256 = "0a4mv7v57x25nk83kqx6lsc6rxbcfj5vfmzrydsa69kmg1hnm3v1";
  packages."arm_cortex-a15_neon-vfpv4"."routing".sha256 = "0yh71w4xavwzxr1820zwnl64x4ydbl9m1bxi6q3ifnnivjgx5gwr";
  packages."arm_cortex-a15_neon-vfpv4"."telephony".sha256 = "1hakwr7gbgqam2lgm8c8wrc48xwc15mxprkwhwc975gyylz24lj3";
  targets."ipq806x"."chromium".sha256 = "0d8kgwjiikn775ydlb9fj645v1vv9i1i62vw142syf0vsws2bhvy";
  targets."ipq806x"."chromium".packagesArch = "arm_cortex-a15_neon-vfpv4";
  targets."sunxi"."cortexa8".sha256 = "18zyjqx47ss11v74s4d7ckzrl17sjzrhj77n3ciai6vi39q9bbjx";
  targets."sunxi"."cortexa8".packagesArch = "arm_cortex-a8_vfpv3";
  packages."arm_cortex-a8_vfpv3"."base".sha256 = "1qwwf8fpnfv0xscdiq1sp7n2ih25lgnpjrk6hc0spcsgb48wqf02";
  packages."arm_cortex-a8_vfpv3"."luci".sha256 = "11nxrwfgxk2p1v3hkyyj8db2drrr6i437s8q4infka7shf0l7mx6";
  packages."arm_cortex-a8_vfpv3"."packages".sha256 = "0lfb1yb8lp0zhf00f7wdlpxiwii30wa4h0xk8dxp5a57kb7rmv8q";
  packages."arm_cortex-a8_vfpv3"."routing".sha256 = "11igb5bgpwk4hwgl89vkb13682pmj1fp54y6bc6wlmvsanr73ccd";
  packages."arm_cortex-a8_vfpv3"."telephony".sha256 = "1zmn0dr3pjdivxfg2kp2r30k4mi1xx5vv0z318v39d44jr9i9k85";
  targets."sunxi"."cortexa53".sha256 = "0dn86ynqhnp787nalxb0f8p9a7ylc24hpck942jdbv0an8hylmw4";
  targets."sunxi"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."sunxi"."cortexa7".sha256 = "09ygbxns65jbzv4l0vbgals2kmpzslz5b9n55g7w6p0ni1ybzgf1";
  targets."sunxi"."cortexa7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mpc85xx"."p1010".sha256 = "09rgrzr7n5xsnyshwhggcsg9fgi908xr6fmvsphligvh1rh7p5kp";
  targets."mpc85xx"."p1010".packagesArch = "powerpc_8548";
  packages."powerpc_8548"."base".sha256 = "1r39d7p45hqdidsalb50mxqh67xqx9017l3zqd3sfk5n0g330a3x";
  packages."powerpc_8548"."luci".sha256 = "1sbg4hsjs0wbcdrpgdg199ikr7m5122z0lsbhyb95vn8h4i1dk8p";
  packages."powerpc_8548"."packages".sha256 = "14wm7vgwzc7rj5qp4whva8nz1q5apy4ja08bs57m9knmvmi1nnb6";
  packages."powerpc_8548"."routing".sha256 = "11pjk75jpn626dnr7k37g6x0qif8qzy0bqnl85yfjm26j7k3pmqg";
  packages."powerpc_8548"."telephony".sha256 = "0k0g7sc6jr5v925f39yycpvaczj6y53j73v4az0lxjhp5z1hr2qy";
  targets."mpc85xx"."p2020".sha256 = "1jf43pf0ygm9353q8swmhmx39vjhwhhn6i21d6rv6b8mcf4fx271";
  targets."mpc85xx"."p2020".packagesArch = "powerpc_8548";
  targets."mpc85xx"."p1020".sha256 = "160bgscs842yg0q0inp5ldjkqgg6hfn5jgp94y86hpibqzc8b9p0";
  targets."mpc85xx"."p1020".packagesArch = "powerpc_8548";
  targets."imx"."cortexa7".sha256 = "1c3vc0i47gqm200s1l0716hlkhm8x9xywfinjak1b7p9p7p85rrm";
  targets."imx"."cortexa7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."imx"."cortexa9".sha256 = "01mmsb7gwilgzzlqvd26vdy8a0kv7j566s21k9pbjml17n4brm30";
  targets."imx"."cortexa9".packagesArch = "arm_cortex-a9_neon";
  targets."x86"."generic".sha256 = "01g2pidlkw55hwb1rinrah38a51sx4h82d555g0d1byi90r9ip1c";
  targets."x86"."generic".packagesArch = "i386_pentium4";
  packages."i386_pentium4"."base".sha256 = "1qgmmf2pfvpjrgjsrkyp68acbnz4gyjrij5bw0xnzdppn0dny0vm";
  packages."i386_pentium4"."luci".sha256 = "1s056avx3y0gaaddp1bk98i6r2w65f86rdn27fpypksfnrmjsini";
  packages."i386_pentium4"."packages".sha256 = "1axn8nxi1m62f0hd3k0wnv84vh5j5pw0hq4fbgbixm1vp70f00d7";
  packages."i386_pentium4"."routing".sha256 = "0iqyr8smmdf1dkxs3fjy80i2xpn36l3wvyygvs1axgn47bkqgvwd";
  packages."i386_pentium4"."telephony".sha256 = "130wq0f80xd05d31x7pryzpzmpnhas40cwn7c5gh015an3kvqzc5";
  targets."x86"."legacy".sha256 = "0x2iv0a40kjy6xclhkmvlfndf6bs938l7avn8c2kb9piw83qmm22";
  targets."x86"."legacy".packagesArch = "i386_pentium-mmx";
  packages."i386_pentium-mmx"."base".sha256 = "1qns4y7chzvvszw8hs04cam316kars8dmdd9l1iqnckml0p5wq6s";
  packages."i386_pentium-mmx"."luci".sha256 = "1pkkp7b8mgwm16l6idn2xr99wzdm149fmlav9jj9dcwyxckyhcsl";
  packages."i386_pentium-mmx"."packages".sha256 = "03wz558bfsr95h9hiz5g42cj5xhc0v3nwyxfp4gv8wwc9qpjdvqj";
  packages."i386_pentium-mmx"."routing".sha256 = "02ypf9q6zh0c28m9rlpxiqqm10dbdvgzqgr9zrd9pizcc95q40x5";
  packages."i386_pentium-mmx"."telephony".sha256 = "0cs1mlyw2iyhwf0y1z83d2y1skny3vicc772hlycyw6wvk3krjs4";
  targets."x86"."geode".sha256 = "1ilpphpjw21irdkrrnvyl1plhq3hi812457acal9cvz2a7rki63z";
  targets."x86"."geode".packagesArch = "i386_pentium-mmx";
  targets."x86"."64".sha256 = "08v6csjghf50g2n37xkml0bwzvqmn86f3i05dhhdw15z4qzr0c01";
  targets."x86"."64".packagesArch = "x86_64";
  packages."x86_64"."base".sha256 = "07s14dq3ryn7l1h127y0r5z4d73z2gfsynsg6xbp4c2ph5djfpn0";
  packages."x86_64"."luci".sha256 = "1k80wignvwmkd7i2ljmzq189vgv7d7plk0jszkcdijffw9llgykg";
  packages."x86_64"."packages".sha256 = "02bq3lnm18lq3423m5rbja5m3k5aq2k5z7jnjd37ml7j8b9m4aym";
  packages."x86_64"."routing".sha256 = "047j75682iyvszy7pz4xds5w29sp8lb2xszd23xki82a896hs6zk";
  packages."x86_64"."telephony".sha256 = "14lr2ban664lq0gy6i0xjjaaxlnz0x3sx9pyspy5iwprsbnfvx1y";
  targets."realtek"."rtl838x".sha256 = "1indvq6x6p1xza7h5lcdr11sqiflnp6fqclbklsgq0ywazl3znz6";
  targets."realtek"."rtl838x".packagesArch = "mips_4kec";
  packages."mips_4kec"."base".sha256 = "0ialj8v0930ycf1csyw4iq0m5dx6j92lsh9wrcv98jrmz7l9kbs2";
  packages."mips_4kec"."luci".sha256 = "14ms2d8pk99kb8p8rp2pixs0gzfjicz6862p245yf3lnxgx7llvl";
  packages."mips_4kec"."packages".sha256 = "0df8vhm8d11v3hyhpq9lgdqhlpwp1a15k3fz3lxl743f5qjfnj33";
  packages."mips_4kec"."routing".sha256 = "1f0hwkpjszv8w40rdj64vcpx0wif0dj8vsppw4hcc9vb2cvrmy1n";
  packages."mips_4kec"."telephony".sha256 = "0nin66sndys5lyzq7fhxh3x9v2fk1j8pk42v1zf3hhi98qs7jfgx";
  targets."realtek"."rtl930x".sha256 = "0rjrkmrvci4b6xxng858a300pi6gj600mgqx3z6m5wh4j5j4r2c3";
  targets."realtek"."rtl930x".packagesArch = "mips_24kc";
  packages."mips_24kc"."base".sha256 = "1pin54c916z2j8ji1yplx6sm8hfm00swm4v15j1wrj8w5plin8jg";
  packages."mips_24kc"."luci".sha256 = "0c0zcywg7205740c2ljs24ggxviy03icsyf7qsrmzdn6c6np4i1r";
  packages."mips_24kc"."packages".sha256 = "0ibpj6qy1j6skb4fsdpbnb0cx7ka6gz4464vcyijzamyrfry4q0n";
  packages."mips_24kc"."routing".sha256 = "148hkh0kq43g4k4rm48qgf8dbsqa9s1my0s5c7lbq8qhfwkarkkf";
  packages."mips_24kc"."telephony".sha256 = "1jj6ilpsjn8a2cx9sj7mgxc22w0fn16ncwmh6wli9hq65clmci47";
  targets."realtek"."rtl931x".sha256 = "1a4rjgq4jlh9nzqb4w96z1fc7rcja6ydhfx5xcx9nhfmsyz6xxgy";
  targets."realtek"."rtl839x".sha256 = "1fcry76lg4sc575vrnx4sry0rwycl1xvcps7w3878na4hgfn3ns9";
  targets."realtek"."rtl839x".packagesArch = "mips_24kc";
  targets."armvirt"."32".sha256 = "04g7ibyb002ias0gig8z1wm1dgshixipqci6y2rrhwg3fjxhbfbq";
  targets."armvirt"."64".sha256 = "01l8vi18g2vg2qn13flw6rav0dbv9hqqcdv6b47mprk3mfmcbf0z";
  targets."kirkwood"."generic".sha256 = "0qlgjnz8n0igssdn2dq9m3aycn4ma7ikksbgasfbmg9gih88qv7b";
  targets."kirkwood"."generic".packagesArch = "arm_xscale";
  packages."arm_xscale"."base".sha256 = "0da0qzylzhf0xwdvy7031hxsmr6c75867wyc6r07fb1ljqzjrxs4";
  packages."arm_xscale"."luci".sha256 = "10kfr23rjn0yji2c01igglsryzy69ra65i79vzgrl7igsbwqbkhk";
  packages."arm_xscale"."packages".sha256 = "1gv3jjly3i1fr3fr62kqm582xiz4sajagqa102v6irx1kmqdyg0y";
  packages."arm_xscale"."routing".sha256 = "0pjr31391628jqivvhcxf9h28kmy2s34ayikyymzb3d2jd1cax9r";
  packages."arm_xscale"."telephony".sha256 = "1vh3is89h1yv8yryj7ryfbl5vcmklisln554xk625y4g7ljihg4m";
  targets."ath79"."generic".sha256 = "0dr5rl9nwqls9ylkr0di3w468aqnq5va60sa6q5i87y5my78lbch";
  targets."ath79"."generic".packagesArch = "mips_24kc";
  targets."ath79"."mikrotik".sha256 = "1g1f6drpwayvn82qp7w60vpwl94qfnnd03hgp6l12b90r2zzrk7l";
  targets."ath79"."mikrotik".packagesArch = "mips_24kc";
  targets."ath79"."nand".sha256 = "06qsh38ym0mlxqp6wrh1al4z9v8dp0x6s3fkq1cipmd1pwfqrcqb";
  targets."ath79"."nand".packagesArch = "mips_24kc";
  targets."ath79"."tiny".sha256 = "0d0nyvpcp9wwr0mbny63schrghjlw827j3aak5cpnwwbf476c3hv";
  targets."ath79"."tiny".packagesArch = "mips_24kc";
  targets."apm821xx"."nand".sha256 = "167nb1dbn2d6pbn0i1mqsfx9sxc7x650h0vvzcd7n23vkjkq1wgh";
  targets."apm821xx"."nand".packagesArch = "powerpc_464fp";
  packages."powerpc_464fp"."base".sha256 = "1vdz76m0jkdg1768iwpdjyhfcjvfp8192wq57cqbhxchavill7w8";
  packages."powerpc_464fp"."luci".sha256 = "0pg3878z63r3j3f9i6crjlx34lya0yxc66phd60cxzyhsm3s52sj";
  packages."powerpc_464fp"."packages".sha256 = "0akpg748b1gpkvpvl4pjyx5cdhjbz965bw21nqsbzrav0bfz5r66";
  packages."powerpc_464fp"."routing".sha256 = "1r51isp4r2ghfkpyhh4d7r88gk4f1vga7f19bzx7pzx86jmvjknc";
  packages."powerpc_464fp"."telephony".sha256 = "05jhn1vqdbkzz8xgk09amk91hwi3fsqls6qcvrwnpvlqri66dqvm";
  targets."apm821xx"."sata".sha256 = "0y1linyxzz08cl0mdzbjfjgbmii0smn1lln2i4x2kn9p99wbpf7m";
  targets."apm821xx"."sata".packagesArch = "powerpc_464fp";
  targets."bcm53xx"."generic".sha256 = "1xlm7lbzcqc976yd430c67akn8dam8w2yrvwbmv0lklvz0i5n7dz";
  targets."bcm53xx"."generic".packagesArch = "arm_cortex-a9";
  packages."arm_cortex-a9"."base".sha256 = "149fqbsnc9cva0p5147s4kzvwvwhc9h2v9z611nlpicwrmvs214q";
  packages."arm_cortex-a9"."luci".sha256 = "1grvwgyldk4lwkvyl6kgb4z162ywp1sxgyq97k6v7bh6bwa2y5r1";
  packages."arm_cortex-a9"."packages".sha256 = "1cf5k7vyfpi6m98wvqmdp6r1n31v0lr9mp7hwbb92jy0hgcdbdcp";
  packages."arm_cortex-a9"."routing".sha256 = "1rdwz7w4bix7c2nn0lmd1xprcdyhpfcwzhafxbcz82y1kj56p4py";
  packages."arm_cortex-a9"."telephony".sha256 = "0vpqbaalvyq90n95rx48jyx5ggwkr4yfjwraamw3nilxjhnx6h2n";
  targets."ramips"."mt76x8".sha256 = "0b62yp0zjm6fllq3yrgql93axpxjfajir06hak0fxl7kffpzcl93";
  targets."ramips"."mt76x8".packagesArch = "mipsel_24kc";
  packages."mipsel_24kc"."base".sha256 = "0h90k73sqqf4nf43i67zxbirkbrczf7xmdi6r70j1j1vpaspy9rd";
  packages."mipsel_24kc"."luci".sha256 = "0nz490grxgiarf0yhcc6k8y2qq8wm300whj2nc1kdg8sslc8ylkf";
  packages."mipsel_24kc"."packages".sha256 = "1afpqrl1khsmpl4vdqf7rhyk3ckji154rrfbkwy2r5xhl07s1hyc";
  packages."mipsel_24kc"."routing".sha256 = "1cacq5j3i6lb1qcga1jbrvq0pj36jf0wc5mjnhgycnz01d3967q2";
  packages."mipsel_24kc"."telephony".sha256 = "1s2s7jikc52wlp29vx180k8s8zvrmlxdrapq3vink0qlydrxhywx";
  targets."ramips"."mt7620".sha256 = "0fifmln7nkjsr6salx0ksda8b1505laypgzrgvfiy108iqr66fra";
  targets."ramips"."mt7620".packagesArch = "mipsel_24kc";
  targets."ramips"."rt3883".sha256 = "0sfd3486ijjp9a25j7xx8kwp5n4h64f8yj0k5hq6wswzk63nl737";
  targets."ramips"."rt3883".packagesArch = "mipsel_74kc";
  targets."ramips"."rt305x".sha256 = "1jhx370d65smdhiin4aplz6p6yavvk0i139j7x43d146031a2wk5";
  targets."ramips"."rt305x".packagesArch = "mipsel_24kc";
  targets."ramips"."mt7621".sha256 = "0zs3w15mv9bxbjphxqayql71q8c6s2alm77i8h30xld1wc5j6axs";
  targets."ramips"."mt7621".packagesArch = "mipsel_24kc";
  targets."ramips"."rt288x".sha256 = "1x2hkg736xf630xp5r9qiprfz97i1zzf8n5xbny4zqiwhvgziaiy";
  targets."lantiq"."ase".sha256 = "0vpllaf3jm11c4wl88d79914jkc23jf8f52d9kj1wy7kmxk5azni";
  targets."lantiq"."xway".sha256 = "1gfkzc8b9c1z4zlnimk9lm86jjxi5wbn222svfs5w7gccrhv8w9s";
  targets."lantiq"."xway".packagesArch = "mips_24kc";
  targets."lantiq"."xway_legacy".sha256 = "0hb7b8rqd9zqvbdrl3bbmb3dsxpfvn6k8dp79w7kb1yy4ld12isv";
  targets."octeon"."generic".sha256 = "1bcmczrqd25kxj7rczd707z1k6r5i6lnsv11as7pvbrdg6cxx68q";
  targets."octeon"."generic".packagesArch = "mips64_octeonplus";
  packages."mips64_octeonplus"."base".sha256 = "161kzyi4dnhyqjqx9gw79yq4h4ipp0cxm1hn3sgz280n46ry61ky";
  packages."mips64_octeonplus"."luci".sha256 = "1hfdwlbn8npa4sr93dxqaa5xz9cfpafrcp1q9a0b9xdy067674hm";
  packages."mips64_octeonplus"."packages".sha256 = "1x2la7jx1jklkps29v72d64y390nxp1ryr78fbs8sv8p51ib7a2i";
  packages."mips64_octeonplus"."routing".sha256 = "0gvfnrk27x32gg32jq1hmk51rycdrnszx258va1yj4n7fvy1gqq9";
  packages."mips64_octeonplus"."telephony".sha256 = "0ffjhixagw8lvfms7qkj5hx7srlwn0sv33dg5m4k2idjxkj2kwds";
  targets."pistachio"."generic".sha256 = "1mlg4in1jxl4iyjgszivfjjxsgyar72imas26k637ii9p47myfgh";
  targets."pistachio"."generic".packagesArch = "mipsel_24kc_24kf";
  packages."mipsel_24kc_24kf"."base".sha256 = "1gxan6n13ym8nk7asynj3zw7d3ckzrjg2wdkzhfclp4xnydq25nn";
  packages."mipsel_24kc_24kf"."luci".sha256 = "1l5qs99yyxh6cd909dj0rz9cc3s32af69sxvq89dj2b93rfbmar4";
  packages."mipsel_24kc_24kf"."packages".sha256 = "16zxf1x15m83sfj899s9lg2rjcf518n9w21w48cy0djx04rbcw4s";
  packages."mipsel_24kc_24kf"."routing".sha256 = "0iz62hajf1phhp5hsjba866wl1qq1whgpi6i3xgc05qrsprfl863";
  packages."mipsel_24kc_24kf"."telephony".sha256 = "1lc7sc0r1yllhzzhaipxbrglbdba77qb9v5csb651k97m6axr6wf";
  targets."layerscape"."armv8_64b".sha256 = "16qkx8fg1mz09qjsvxw25r8mj0sdh8xffkknvkxwi0578qz7yplz";
  targets."layerscape"."armv8_64b".packagesArch = "aarch64_generic";
  targets."layerscape"."armv7".sha256 = "15d9pyfviz01p6k4qrryrjjq0bk0wywj4v7bs3ic2na07ljxij91";
  targets."layerscape"."armv7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."tegra"."generic".sha256 = "1fd94fgkfnnv5azrh7bhail2vynkyl1xvaqaagphlm3jw26lsxy9";
  targets."tegra"."generic".packagesArch = "arm_cortex-a9_vfpv3-d16";
  targets."bmips"."bcm6328".sha256 = "1zgp1n1k3259pws63il1c1xhdynh75fxzcxq78qpxzwg4k4fqmvn";
  targets."bmips"."bcm6328".packagesArch = "mips_mips32";
  targets."bmips"."bcm63268".sha256 = "0s59jgq27mfs1qqnzq68wjwj4yajrcjdy5dbypn3wzyaaplqlyfg";
  targets."bmips"."bcm63268".packagesArch = "mips_mips32";
  targets."bmips"."bcm6368".sha256 = "036n22a0zs3z4kd42pvk8w8cnbri33n6vg3lq8xj02vp9v4f7jz5";
  targets."bmips"."bcm6368".packagesArch = "mips_mips32";
  targets."bmips"."bcm6358".sha256 = "0y7b9id428sgl4n7jchcdia94970vxiaah2m58dv9bsdz7phhi4m";
  targets."bmips"."bcm6358".packagesArch = "mips_mips32";
  targets."bmips"."bcm6318".sha256 = "196n599is248vislncqdmrmzgvk14s7sy13zmhi7q2skqbn99sfn";
  targets."bmips"."bcm6318".packagesArch = "mips_mips32";
  targets."bmips"."bcm6362".sha256 = "0xw3v7xxsjqnyk30j5y35m37npgdaj2cn6llmm07pzb98dq5zd10";
  targets."bmips"."bcm6362".packagesArch = "mips_mips32";
  targets."bcm4908"."generic".sha256 = "1i347ad6062qxgffm3d29lyryqpwi70nxj7hsxli5z4fq05p74kl";
  targets."bcm4908"."generic".packagesArch = "aarch64_cortex-a53";
}