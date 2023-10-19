{
  targets."oxnas"."ox820".sha256 = "0afpgvq6iz0qbinck0q881c98wxgvy5bg8j75cqgq8mh225gcdhp";
  targets."oxnas"."ox820".packagesArch = "arm_mpcore";
  packages."arm_mpcore"."base".sha256 = "12sxvx18fghw4d57l4hf4zfv5jhn3d74668zdzf5fj2y1rqhkpl8";
  packages."arm_mpcore"."luci".sha256 = "1vycy3y08iir7rzn1v11ifivdpn9g3qgj5nw4mfa7a2ddga3vlj3";
  packages."arm_mpcore"."packages".sha256 = "0zfypc4lrmb08068rrb0mc0z27g0pxmci3bad8l9hjf604xyl7sd";
  packages."arm_mpcore"."routing".sha256 = "0x98d16lz91sahmx4472gz1q6jvbsjh0sl8qiar05hrkz6qmfpax";
  packages."arm_mpcore"."telephony".sha256 = "0xq8kbyad96ip34f0bj9jy4nc1ylz4vvlw30jnislgp0gpgfmlps";
  targets."mxs"."generic".sha256 = "1ai9axsycdcld8ap8iv6z33qrgm3k32193rdqdpk1v39lysynnkv";
  targets."zynq"."generic".sha256 = "0cgzm2fl74dr84c921z65mh6igfw163k41l7bwa5v0z4s9j5b32d";
  targets."zynq"."generic".packagesArch = "arm_cortex-a9_neon";
  packages."arm_cortex-a9_neon"."base".sha256 = "1vpkn6y40wmx5wj7i356l22hbdqqklq6qlx58ldjngr1syfcxzla";
  packages."arm_cortex-a9_neon"."luci".sha256 = "1gc2g1i28m0r6b3kcfal129xly9nmb4kkr476i7zjkskmv3llpxx";
  packages."arm_cortex-a9_neon"."packages".sha256 = "1b99dzmihgjb4pa3gwz807l0nji5m0wdp5jngmdn5q3cjxl98l6r";
  packages."arm_cortex-a9_neon"."routing".sha256 = "0kjy1a58w5c5wfd1kky8wpamlqd5kvnals7k36r7y4wj4sl7a6zk";
  packages."arm_cortex-a9_neon"."telephony".sha256 = "0sf9jn2fbd68q1nbg7smgh3bvgc6w7svzw6m0v9nrg5kbb8f0zf5";
  targets."bcm63xx"."generic".sha256 = "18cv70lxlvhy037fz1y5gdzy6pajhkm280g82ajvfp8s3nf5mcqh";
  targets."bcm63xx"."generic".packagesArch = "mips_mips32";
  packages."mips_mips32"."base".sha256 = "1x1rlg5fnynlcfbzbrgwrvjpw5kr6hriq48klqs3a857f85nlr10";
  packages."mips_mips32"."luci".sha256 = "1z0blrd50wic2az2b57wv68ir5078zddhaks0y8gbmchjn3lnhhq";
  packages."mips_mips32"."packages".sha256 = "03mwbfrxmi06gldjgp2lb7hlnf7cfcmb90miaj7y15jhkdnmx234";
  packages."mips_mips32"."routing".sha256 = "0kdlrnmc6i8q2va2dcdp0p87csi3yka46qa8pfkfmx01rflpggjn";
  packages."mips_mips32"."telephony".sha256 = "1ypa8ajfqhhphv12krs2n0wb8nw6ak5yckbmf29xcfdrrj9chmdn";
  targets."bcm63xx"."smp".sha256 = "10g3dkchaqjhnlyccbyid0h9ipk7l2pl6hxj3smnh6c5wdrnv9b8";
  targets."bcm63xx"."smp".packagesArch = "mips_mips32";
  targets."bcm47xx"."generic".sha256 = "1glm7jv2pjvkaa3rnixfb3z08f2d4ph35mmmxigmgd5qxfdgmqsd";
  targets."bcm47xx"."generic".packagesArch = "mipsel_mips32";
  packages."mipsel_mips32"."base".sha256 = "05bciygb39ii61fq0l5ljm0w9dldwsq6rn919kpk66c0kqm1vka8";
  packages."mipsel_mips32"."luci".sha256 = "1bsjnmxi7ar355cjhc302p5g5pgh8sv6iwlwqqfww5qg2rsgjx21";
  packages."mipsel_mips32"."packages".sha256 = "1fj3jcf6babcfhk9181jf2ffp6mp97dbpz0v6yw8pn7lgnwv98r2";
  packages."mipsel_mips32"."routing".sha256 = "1dh70vs2na6qm4ni7pdbkyf0lqx6lwba26r4l4dfhjy5wqmz6awn";
  packages."mipsel_mips32"."telephony".sha256 = "1blhjkmx0r9wlgdxbn8d54hr73l5zqi5h7s7nhsmmlkkm8nsjn17";
  targets."bcm47xx"."legacy".sha256 = "0m4w0i88zb8yjb3dckb5n90y9zn5axfcgbfjjkbnhs6fxx6xbghc";
  targets."bcm47xx"."legacy".packagesArch = "mipsel_mips32";
  targets."bcm47xx"."mips74k".sha256 = "1xdpdrlvr4zpaiqzln4wg18pndkg4vzj62799fy6zmfbbrnawikw";
  targets."bcm47xx"."mips74k".packagesArch = "mipsel_74kc";
  packages."mipsel_74kc"."base".sha256 = "09p0hl756z0cbnpjdwxljcpig5hb830m9ss8n015zl4y1nia7qxf";
  packages."mipsel_74kc"."luci".sha256 = "0as2z09k784f0z9i9pqw4hcs1hnhgh1zjlpxdq96kg3xa0lwbhk2";
  packages."mipsel_74kc"."packages".sha256 = "0f8j38acxpak63qx3j4lfgkwzk0xwsrhhp039l3mid81s70y1aha";
  packages."mipsel_74kc"."routing".sha256 = "0gx2ikgyrmr557hsibmagz3zxh2kliyky97mhhjpbibmdsv4niay";
  packages."mipsel_74kc"."telephony".sha256 = "1xmdhb5lh1iqkzrvlqz07bzwxlfq89xkdafwnw84nnvqkm9b8649";
  targets."bcm27xx"."bcm2711".sha256 = "1zfn7bz3qz1vynflhc59cvdx05yhyjrbpad5d24r594h9hgyn665";
  targets."bcm27xx"."bcm2711".packagesArch = "aarch64_cortex-a72";
  packages."aarch64_cortex-a72"."base".sha256 = "0hb6pnzk21549npp3vx0ix74y62hg7iz87c9cyn5959d8mgibmpd";
  packages."aarch64_cortex-a72"."luci".sha256 = "0jm2pfxizjpc6hbyv3nbj1q78036bphi2nhqgjk546mchrjrycsq";
  packages."aarch64_cortex-a72"."packages".sha256 = "0xscmr73pqk7hvd4rfyfpxm7a6lxvwfj1rdbirw1d4z8yzc30xza";
  packages."aarch64_cortex-a72"."routing".sha256 = "1igkjwgrfbxyqkyrq202v2py3l520fi0ixc2cpnz8hrdng09cafl";
  packages."aarch64_cortex-a72"."telephony".sha256 = "19ljsmif8kfynrj7cl7c4gyz13s96y1iannvk0m3f8fg7c6sv88q";
  targets."bcm27xx"."bcm2708".sha256 = "0i1mgangcc8p1abka3am63mqfakd38c2q4z4laj3rsqznslp6a7w";
  targets."bcm27xx"."bcm2708".packagesArch = "arm_arm1176jzf-s_vfp";
  packages."arm_arm1176jzf-s_vfp"."base".sha256 = "1a1734lby7jal2zilhaqj33jqhqq9w5qgnmkpkn75jq9s5fscg8l";
  packages."arm_arm1176jzf-s_vfp"."luci".sha256 = "0vfn8a6jgy3ryi6sj90sd8gf3c1gfg1r51qnwk8fz18k6m6siwb7";
  packages."arm_arm1176jzf-s_vfp"."packages".sha256 = "06hp8acsf81ag3vvsw1wq95yk4g7pfkv9ggh24n35kfg0ppy8f2w";
  packages."arm_arm1176jzf-s_vfp"."routing".sha256 = "1kn6hi6sgbkkf1z0a49iw0qjl2v1wpmqsnaxqzdqcmzccikjspz2";
  packages."arm_arm1176jzf-s_vfp"."telephony".sha256 = "0qr6sygbrn45xr17q99xy28psd8fcdj21chb0vzdw94mfh8hvhpr";
  targets."bcm27xx"."bcm2709".sha256 = "17cmsmamnbzy9wlf1bjw72glmkbby1w5b4l35l1kav309iapdca6";
  targets."bcm27xx"."bcm2709".packagesArch = "arm_cortex-a7_neon-vfpv4";
  packages."arm_cortex-a7_neon-vfpv4"."base".sha256 = "0h7nm6x9kk2jy6zbbckx1n7msv59sg4yx3mw0h45jp10kjayy4kp";
  packages."arm_cortex-a7_neon-vfpv4"."luci".sha256 = "08l2s3vvcbvjdwv4nzknxqzayznwrv5i7na0hhrw73n3dis9a65l";
  packages."arm_cortex-a7_neon-vfpv4"."packages".sha256 = "1c0jhplw8ib33gid84ffibsb3ila16c8i5h1vldjsiw5hh7jrb3r";
  packages."arm_cortex-a7_neon-vfpv4"."routing".sha256 = "152b00hg5b1b8m61lb945zai0h990qfl1sndwp18cf1rkzwr860r";
  packages."arm_cortex-a7_neon-vfpv4"."telephony".sha256 = "15xqps22d868y0882y81wj680n9j13pib5ygg9lvjfwlzn5imipz";
  targets."bcm27xx"."bcm2710".sha256 = "1zpwr9gh0ydamnxrzdjj8ashviigdi5a1wg7pnilywa79227ms67";
  targets."bcm27xx"."bcm2710".packagesArch = "aarch64_cortex-a53";
  packages."aarch64_cortex-a53"."base".sha256 = "039w6ds4iad8hisdyvvh4qqrr81kwf9r714sl7c5ic0js1akbdmf";
  packages."aarch64_cortex-a53"."luci".sha256 = "1rly9qkjcynpdlmsy90220c2cfnr704fd65am0p4aaramyqkbyzs";
  packages."aarch64_cortex-a53"."packages".sha256 = "0ndvjcalz4w07kpl6kkj72v859jj78x9h06z2w4ph5v4y6ms7zis";
  packages."aarch64_cortex-a53"."routing".sha256 = "0qwy9p57pr1wzd59hk294lxjd4l4vlgx4q2k2nl65myq27h94x04";
  packages."aarch64_cortex-a53"."telephony".sha256 = "0vbd9ygg70zc9srdqykag28j9dpmhscs3x874b00yhqwrhjlqh0l";
  targets."mvebu"."cortexa53".sha256 = "098ixrb5aifkf8wnr7xgdzf65pb5hb2nlwvb14k7ywm35l0wgjlr";
  targets."mvebu"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."mvebu"."cortexa72".sha256 = "1q94nd1ng6bzprl2xrj6snhg340qbxxjsdrxbfpgs3rnza2rqxm2";
  targets."mvebu"."cortexa72".packagesArch = "aarch64_cortex-a72";
  targets."mvebu"."cortexa9".sha256 = "0n1s75x4ys2g4xr73hrc4w2s58nmmi1nc2qipy4ppzj8qjva24b1";
  targets."mvebu"."cortexa9".packagesArch = "arm_cortex-a9_vfpv3-d16";
  packages."arm_cortex-a9_vfpv3-d16"."base".sha256 = "0dilzb5dnys6lj3cxby8ff3z1mc5l4fw4bvlzmvykl2m4pdn1zkh";
  packages."arm_cortex-a9_vfpv3-d16"."luci".sha256 = "06pr0kqr46bsqqr0vrkrc4kqp53jibj8b4qp6f34pmrq6ighvi7p";
  packages."arm_cortex-a9_vfpv3-d16"."packages".sha256 = "0ykb1mjrz61i03x9sa37k30ns2gkzpgpg2km0fd62rr0vza3cjs0";
  packages."arm_cortex-a9_vfpv3-d16"."routing".sha256 = "057v12wd5mwdjcngvnz10y19w88d0kdsx1d0wqrjjy7dka572p1w";
  packages."arm_cortex-a9_vfpv3-d16"."telephony".sha256 = "0nf9mifml3zlhm2dj0a53jhb40ssd2yfd994a9dk66la3p2fynip";
  targets."at91"."sam9x".sha256 = "02afxgal2bfss9y3arkwgisqa9r1lmcwg9lysl761418pgl0ba7a";
  targets."at91"."sam9x".packagesArch = "arm_arm926ej-s";
  packages."arm_arm926ej-s"."base".sha256 = "1g7barqxw3mnvyapgybq0ysc66192xh4rl09gjb1hm66nxh3y9r9";
  packages."arm_arm926ej-s"."luci".sha256 = "0k69lihz65lsy8248bzkbrb5aq18x1r1kw0r4qdbjb810z0ajvjf";
  packages."arm_arm926ej-s"."packages".sha256 = "1pkgxdgrk7yh24j0b5knx342yp7bhpg486cxvynnkfz44cnclv9n";
  packages."arm_arm926ej-s"."routing".sha256 = "02nfj2p6zz29p30k424y3bkb1sk5dv97vi0jgd4r9s7l5dqhdx83";
  packages."arm_arm926ej-s"."telephony".sha256 = "1mjwrlfqyj3a3idak5f8r7qsi0pkqnqjyiz6akzbscmr4s63603k";
  targets."at91"."sama7".sha256 = "1dzyvy8j07h165m8ysinpynhn46yxnfvab3bcnn0ji1dz0sf63v7";
  targets."at91"."sama7".packagesArch = "arm_cortex-a7_vfpv4";
  packages."arm_cortex-a7_vfpv4"."base".sha256 = "07wg0h328pi8y2hh4qzq462rmb3ffnvwl2ad6c2v8icnlk82pdpw";
  packages."arm_cortex-a7_vfpv4"."luci".sha256 = "02rcv1i48a9cxb8r7vm0awirvq8z12659by1ck10wg12yfclkx8w";
  packages."arm_cortex-a7_vfpv4"."packages".sha256 = "0b36yy2axpcsz8bchyjagccw73igm76wak880nrjmrq3y2m1lxnr";
  packages."arm_cortex-a7_vfpv4"."routing".sha256 = "1hs1v1mhfhkx1pfw4wnz1k5x8j76m596whzv4r3q5wxdk323mb7l";
  packages."arm_cortex-a7_vfpv4"."telephony".sha256 = "1rn376c6w2x8iiiwi0slgm7f8nvaq1d9v206yifsm9jdmsq6hc2a";
  targets."at91"."sama5".sha256 = "1xg33f0cjf77bkzp4g64vl2y6a6ym8gna62sfcchikk3k7w0gy3q";
  targets."at91"."sama5".packagesArch = "arm_cortex-a5_vfpv4";
  packages."arm_cortex-a5_vfpv4"."base".sha256 = "12lgmv6rhjpwq1r1rrpr3bqmqn8aafy64vjph7wa8afmv3fws8qq";
  packages."arm_cortex-a5_vfpv4"."luci".sha256 = "0qb6zcj9xjc353d1a66516h0bc7wgn36gs5az5845pjjbx5hhg9q";
  packages."arm_cortex-a5_vfpv4"."packages".sha256 = "1rgyai33aw26vy3gs0gf849hynhlv97d79wkh3akxv00fazyhn1w";
  packages."arm_cortex-a5_vfpv4"."routing".sha256 = "0wvp1rwffqa16b40zik1gly228f80084b8qbd01lvj6qkyc91fq5";
  packages."arm_cortex-a5_vfpv4"."telephony".sha256 = "0cdys714106vkr99wakwnrjiih2nj9fmwwxwf7z9vxylyl5dqc5n";
  targets."gemini"."generic".sha256 = "0zswry9mmhjbwas8daid6szrbplzf6b9a09hb6vn8m3zq1y15a5a";
  targets."gemini"."generic".packagesArch = "arm_fa526";
  packages."arm_fa526"."base".sha256 = "1zi082bz277wkkp4i8vv5324g4d7and9m31lxhf2bahr1zzk2k4d";
  packages."arm_fa526"."luci".sha256 = "09iji99wfriv1kh0msmwfmgiwdvhkx5d7g3j1cvffvz62zj6hk6j";
  packages."arm_fa526"."packages".sha256 = "0v11yifw33yqd17xi4x60qbmjy8skbn6mz8djih522fsyr7ibpq2";
  packages."arm_fa526"."routing".sha256 = "1cwxfx7c7afranbrnm2r2bh8la79ms232154lwrnqnfikk7lnmpl";
  packages."arm_fa526"."telephony".sha256 = "07pcfb3anphlanswg4pnpg09zz63nbj4y9aa2p7z7mwbb0nrf3jp";
  targets."octeontx"."generic".sha256 = "0v6v41xhmbad33z6j1wwpf96c85ccbrgg8wdxz6ga0rn1m2bk8mf";
  targets."ipq40xx"."generic".sha256 = "03bd98jscrzncnv5h4ba12ib30nyd3d6990ajkd567055s9a1ksh";
  targets."ipq40xx"."generic".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."ipq40xx"."mikrotik".sha256 = "05zrvx3z5vxhf8pja58kydxdp0z9j065xgm291xb2zw73m8pqny8";
  targets."ipq40xx"."mikrotik".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7623".sha256 = "1jykn983i8yvz8x0vdhqkz3v9kwr0nnl23s6bvwzz4b34gsbii6k";
  targets."mediatek"."mt7623".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7629".sha256 = "0f2slvcdih3brmz75si2kcfyi73xg0ydyl6j09hnplf3a1gvdn51";
  targets."mediatek"."mt7629".packagesArch = "arm_cortex-a7";
  packages."arm_cortex-a7"."base".sha256 = "1p7zwajkpk3b7p6x3wk0g2zian16cbfkgmdsq6kgci7scyw7bznb";
  packages."arm_cortex-a7"."luci".sha256 = "017f1b9lh54rnacnhppsp9i5gpv8vq6q5zh4gddj8j3df7jqbaa4";
  packages."arm_cortex-a7"."packages".sha256 = "049xmjinqmxl4v79a6zcy0rlcbbwl02sz094m9pwdz2zw4s1ixjy";
  packages."arm_cortex-a7"."routing".sha256 = "1p8rgckilg7rzgsjapcna0xnkn3x69a2dwqw4ngfbk31hq9n46fw";
  packages."arm_cortex-a7"."telephony".sha256 = "155v4y7bj9iaf15yqds9h6gvjq4pscaw96yh2kq03l90db8a4vqn";
  targets."mediatek"."mt7622".sha256 = "103dgvwjyil5a0y0xv1jsxskd5iq1f07i554wr0fcvz7vbd70l8m";
  targets."mediatek"."mt7622".packagesArch = "aarch64_cortex-a53";
  targets."malta"."be".sha256 = "1qc4pdd0fjv1qqgc9w1gfpcy7fd3p8fk13i19rgv1svgggds86wl";
  targets."rockchip"."armv8".sha256 = "1vhcp17w4nz92ci4qcnh300yd930c8dznjx2zygf1yylr5fa2sfy";
  targets."rockchip"."armv8".packagesArch = "aarch64_generic";
  packages."aarch64_generic"."base".sha256 = "02n9p3b41jsha48gywp0jnq8143s2gin54gysjbvg40b754fxdij";
  packages."aarch64_generic"."luci".sha256 = "06yd0v6ps6g458d0km6q3rv070g865czscnhx2dqcsj8iwaldqap";
  packages."aarch64_generic"."packages".sha256 = "0c6na28vs0cvvs8wv9nrspk84szxkg9f3l2jpz8gdvxb75c3kc26";
  packages."aarch64_generic"."routing".sha256 = "15996yyrwz9qbclb3m1565sd4mhldlf8cls9cbyy2kq3n1ack9mn";
  packages."aarch64_generic"."telephony".sha256 = "043pwn8h29q7s5klhqvqk631jh6lj481d4q94parb6rs3flx21wc";
  targets."ipq806x"."generic".sha256 = "1cbzdqz2dxi92y3rd67sfbp6i7h5slvbrpcq1bv8gbayy80xvk42";
  targets."ipq806x"."generic".packagesArch = "arm_cortex-a15_neon-vfpv4";
  packages."arm_cortex-a15_neon-vfpv4"."base".sha256 = "136s8qavkq01q0ibp2ldlmndw9dni8mnzr0lwy8d4drpywyibvrn";
  packages."arm_cortex-a15_neon-vfpv4"."luci".sha256 = "0n6d231lfwy1s0nm4i8wz74qszvs6mnia53jhcbv8y5g4f13yy26";
  packages."arm_cortex-a15_neon-vfpv4"."packages".sha256 = "0x6g41yx2cf9xfkn4zc5pwyj38fd2gjmf7jxapkcxmlai0mqf8gk";
  packages."arm_cortex-a15_neon-vfpv4"."routing".sha256 = "0b9lgw3bqv03i61v3g1fml4g38sgl36vprrgw0x529504h2v6dqq";
  packages."arm_cortex-a15_neon-vfpv4"."telephony".sha256 = "17f6d31i11w43ihz7aikgnz1nnh866rqd7qc9zp6a1mg5w0k5dyj";
  targets."sunxi"."cortexa8".sha256 = "1s3q9q8bcy2iqnlxn500sgk38iz5zvq0f9bazrdx2vw4ysx64dpl";
  targets."sunxi"."cortexa8".packagesArch = "arm_cortex-a8_vfpv3";
  packages."arm_cortex-a8_vfpv3"."base".sha256 = "1ak3ms1had77kqw3a1wvbysa7dyk9jc8g6qb2pajblwpp0m3vj83";
  packages."arm_cortex-a8_vfpv3"."luci".sha256 = "1qxrdy443d5p4frvh5vm1cpv4mj8b7wh5pvbbq64n2hz0d1vj0fs";
  packages."arm_cortex-a8_vfpv3"."packages".sha256 = "13aigw02fcw3ir9qcfbbcjqwaqpagbp62ygq3rqb4d1bxys7x1b3";
  packages."arm_cortex-a8_vfpv3"."routing".sha256 = "0zdgi8kzx6raxydf2fhllmhc9y44jmhnwzyw3zl0i8azi5p9knj4";
  packages."arm_cortex-a8_vfpv3"."telephony".sha256 = "1avd7zz4skxi7nypyxxz7akcjc09dpdsksk1fqdv6c0rzhgln4qy";
  targets."sunxi"."cortexa53".sha256 = "0rr7b9l3kmn9n2xv65gd5w4ascqqbrccvgibwd5xw1rn6yzcwbd3";
  targets."sunxi"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."sunxi"."cortexa7".sha256 = "1rrb71lxzs83bcqq7jr15d4hgq5nl56mmblblq7vkfgi6sl2frq3";
  targets."sunxi"."cortexa7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mpc85xx"."p1010".sha256 = "1fwd1ki5k6r9l2vkz6c9mvcnn7bmca9ssgjasjfwv8akga8d5js7";
  targets."mpc85xx"."p1010".packagesArch = "powerpc_8540";
  packages."powerpc_8540"."base".sha256 = "1yf0jcyxg128wq6ps2ir64wxqjg31ygmf9j2rja80mvmlgn6nbn7";
  packages."powerpc_8540"."luci".sha256 = "06929psvkihhvi5wvg81ynsk02s6rnm7lnj4146m71nlsjhjasxi";
  packages."powerpc_8540"."packages".sha256 = "1nxm2qzqvxhkci33yd15sjpbwwnrwfx3yhpjji0xcpc5xx6bdix8";
  packages."powerpc_8540"."routing".sha256 = "19897y94gys6p7b2lz1kni9yafq5p66abv0mhaa7gdipv6dx54sq";
  packages."powerpc_8540"."telephony".sha256 = "0pfr1al86ymdck74nb030ndlljwcxswjykmy4sbadac4s50vi7qi";
  targets."mpc85xx"."p2020".sha256 = "08pf8hv8fph8my71z57bf97ddhz6lzbldjga2gmdykv0hi2637i0";
  targets."mpc85xx"."p2020".packagesArch = "powerpc_8540";
  targets."mpc85xx"."p1020".sha256 = "04ghf648nxdxx9qn6xlifnz3gaap0792r2x2n7kq8rrkw7xjr366";
  targets."mpc85xx"."p1020".packagesArch = "powerpc_8540";
  targets."imx"."cortexa7".sha256 = "0camrr3p2fk1abkw8lm7jqg5ic2fwkxwq5vc2w944h71jqckaycw";
  targets."imx"."cortexa9".sha256 = "0pnzaax6lv3j407lp4j2dn93ah1s2nvg2psrphcgksp5h9abqhn4";
  targets."imx"."cortexa9".packagesArch = "arm_cortex-a9_neon";
  targets."x86"."generic".sha256 = "0b9fvakjddn8rxd2w6zy7cm8r01azaf62nqgas8n370rns5bh6q5";
  targets."x86"."generic".packagesArch = "i386_pentium4";
  packages."i386_pentium4"."base".sha256 = "137v4ypcma7sc4lja8mm2b3gakfyglf7gf2rm08l1nrg8bpn0486";
  packages."i386_pentium4"."luci".sha256 = "1zf5wh9sqb542d8wb9wq79ncw9xparr78q47hy5f1y7hfqx1byym";
  packages."i386_pentium4"."packages".sha256 = "0g7j42iz7r5a7cx695fkjgk3gv9iznh6djm4qi9x7szyig536qhs";
  packages."i386_pentium4"."routing".sha256 = "04q84zrwyjxqqvwhf0m2i62073wvhrv55hvrzhxbw8bxa0ajb1ck";
  packages."i386_pentium4"."telephony".sha256 = "07k162x83ywkx2i2wbrbag8n5zapr83jmm0l4yi4x5bk6bg5sxxr";
  targets."x86"."legacy".sha256 = "0b7b57i80idx9v6kidwzqwwas7xm7irmwwl3axwn5v2jxn8i0y7l";
  targets."x86"."legacy".packagesArch = "i386_pentium-mmx";
  packages."i386_pentium-mmx"."base".sha256 = "1k6wb4ixxz4byl77bcbj5ivvvbnvihamk5qi3j6ddkqbqv87mcds";
  packages."i386_pentium-mmx"."luci".sha256 = "19cg3pv8frhw1q22zmjckwm6xgmdlfwn535q792nnxcykn3093sv";
  packages."i386_pentium-mmx"."packages".sha256 = "0rxsq3qf7dffm4c7mcscq696aar5vfx5ajjjq74rwhb3as05mzhf";
  packages."i386_pentium-mmx"."routing".sha256 = "1xgdhxx8cd3fm82gyl9cja9gh3sm41yzfni7z7bay3gl52zwpph1";
  packages."i386_pentium-mmx"."telephony".sha256 = "1sccx0a949dd0hxhzqpr3vsipnxdw074h29z18xhfpsyqgz50mjb";
  targets."x86"."geode".sha256 = "0jfg57iz98m2zn46l1b12dwdf9xd08i6aifi75z6w39181vp2m12";
  targets."x86"."geode".packagesArch = "i386_pentium-mmx";
  targets."x86"."64".sha256 = "0jm94jz3n1jj3r4dgf4gzp30n8kbdk964m71db3ng2mqfp66pqja";
  targets."x86"."64".packagesArch = "x86_64";
  packages."x86_64"."base".sha256 = "0f2s19dl59q0b2ska6qyb33290q4ms130371q35h6r7a341ylr34";
  packages."x86_64"."luci".sha256 = "1z4f2dd9pns6z9d3hw4hcacnjidqr5qcwnn0l3zy0c7z0yir4yyk";
  packages."x86_64"."packages".sha256 = "0l86h70wc630mibqnjxdddi3s3nrnwdawf3gjqqn2ddi6hycn8dy";
  packages."x86_64"."routing".sha256 = "1m81qlfp0l9qsv9d1vzzs8yx18n3hy47z6qzpvvr662jcgfjky22";
  packages."x86_64"."telephony".sha256 = "17pi5xzshn0xd0x57m8bhx2h7p59qlzs272m5nbkjr9v8332b2a7";
  targets."realtek"."rtl838x".sha256 = "1s9p1fpy67i5n7zc0968rggvr13ikclpwxhmrdblrfdjrghfprsk";
  targets."realtek"."rtl838x".packagesArch = "mips_4kec";
  packages."mips_4kec"."base".sha256 = "0bfw8vkpxw7i8sm3y3nd7k4kxgjawfxpq6iqpqdmsvfm89hfx1dw";
  packages."mips_4kec"."luci".sha256 = "18khjf336jykvfji63xb8iibvcmap962w8avqwd3z1v1rgqlx3gz";
  packages."mips_4kec"."packages".sha256 = "0kwx0a4ffiqzczi9gfslv4qnwf1kf8yqmq269wcf8xzh07jhxyrm";
  packages."mips_4kec"."routing".sha256 = "1fy9dbdpi1ap4wax4y6s90q1icb7fr2w3z8x64bshskrf6x3a5yk";
  packages."mips_4kec"."telephony".sha256 = "1hrjbgdw0bbszbsw8sxbp9f8sbchfp45b3h33bzscszdssp423x6";
  targets."realtek"."rtl930x".sha256 = "1f1zsargv1v3f641c6g1mc1y28j1lvlvnn3fb4229lcx9g42rxi0";
  targets."realtek"."rtl930x".packagesArch = "mips_24kc";
  packages."mips_24kc"."base".sha256 = "1szd1l0si3sgzwl9rmplm08rc3xww8b7whr0zc0g226lj2zp9m94";
  packages."mips_24kc"."luci".sha256 = "12yy8920i36bk9jabpm1sbk4c8vbmyw4mahpwvrih6nal6axgvkn";
  packages."mips_24kc"."packages".sha256 = "114g3f215bcwdcb7grrp4q3kga7fwxqnv2hmxdwp3fv2wrpk4yhg";
  packages."mips_24kc"."routing".sha256 = "0q0pbwj83zq8ikmnyicbka09kixsjf9l78akx4pw1lzhhv0ij6v2";
  packages."mips_24kc"."telephony".sha256 = "1nmrp4q3prphxzdykbkyj2symccibscqrid3sbldbf8g3f9mpnr7";
  targets."realtek"."rtl931x".sha256 = "0znxj7rs0ivj0dr92pr13c2h9b8pd3986fvhdhhdanq7n973nxch";
  targets."realtek"."rtl839x".sha256 = "153lanm9n2as23xmr4fw6gnczyz4pj00rbf6da1aa5yxqsly3k8v";
  targets."realtek"."rtl839x".packagesArch = "mips_24kc";
  targets."armvirt"."32".sha256 = "0ynjncaljcz5zajx2jfqzwi95skma26vnpdznjx2a92w3kv78b5l";
  targets."armvirt"."64".sha256 = "03plq0vbnxkr87r58bwyqbp6386h6x091z473v48whzsmxkjvpgj";
  targets."kirkwood"."generic".sha256 = "01qcry12p7jszrm6wzppjcz5sryx2f5psaj6c46nmc2cal6m4nsb";
  targets."kirkwood"."generic".packagesArch = "arm_xscale";
  packages."arm_xscale"."base".sha256 = "0y1f14xns426qn21bczzfh0jgcmqdp8l477h88fim9n0rh6a1yi9";
  packages."arm_xscale"."luci".sha256 = "0x3lyzdcrxprwi1znvqb05kk0x7kxqkf73iab0079iv5ikikrq3d";
  packages."arm_xscale"."packages".sha256 = "14hy9aa3ya974gn9vs9za941clrc07cqdn7irwli676m0kmrdaz4";
  packages."arm_xscale"."routing".sha256 = "1l4kx7jp1why40g0kwhny9mxqsxxc074idnpakhf5sdb8jyyskj8";
  packages."arm_xscale"."telephony".sha256 = "1aa3gsz33gs7n9z5dlyzlsk5lps1mmcd1wjm9is5nv4y5nkk55b3";
  targets."ath79"."generic".sha256 = "0vwmva6ws38aqw9vgd0clf6nkvdf0n2jcvijpn7scj948vhs34aw";
  targets."ath79"."generic".packagesArch = "mips_24kc";
  targets."ath79"."mikrotik".sha256 = "0a8pzzdb1fsq1331w1882xfafkw9g9iyqass0bwrn90ki625fm2s";
  targets."ath79"."mikrotik".packagesArch = "mips_24kc";
  targets."ath79"."nand".sha256 = "1frbzjir7w51pi3xsj384b9m5j95mh2hqivdfwamg6nzqnydl07a";
  targets."ath79"."nand".packagesArch = "mips_24kc";
  targets."ath79"."tiny".sha256 = "0kpv05arwkrffqbvr4n2sy7xqsc6irl9z79y5gyjdgx7gd95l134";
  targets."ath79"."tiny".packagesArch = "mips_24kc";
  targets."archs38"."generic".sha256 = "149mqgc023czd8hwha4jv3nm5y5vrj8mbky2n39flmni8fxlwcag";
  targets."archs38"."generic".packagesArch = "arc_archs";
  packages."arc_archs"."base".sha256 = "0b8pzss6dk791axymn5y8x2c0h6rda5jzgrzhabvgsg4vaqmrgpf";
  packages."arc_archs"."luci".sha256 = "1f2ph2c4vcjsxnlcyfw8h20ral256da8z22hx15lf3yah0cvcfdh";
  packages."arc_archs"."packages".sha256 = "1rns2sgpmyyh8apgfbrlkxxq323iq1zc60s2f3zhrxzigfqcnbk9";
  packages."arc_archs"."routing".sha256 = "0fj9ilzi8kn9nn4c6jh60vk077y995bjhisdv1p6izlbj8755gdb";
  packages."arc_archs"."telephony".sha256 = "18mbx2s0ymbw848klfjb8ra4ip06ba4z01mr6q58vzdf228vnxgs";
  targets."ath25"."generic".sha256 = "1i0nbn9liy68qd3mymfq3q0nk71r6zlp1irxk6j616dcwr4qwzr0";
  targets."ath25"."generic".packagesArch = "mips_mips32";
  targets."apm821xx"."nand".sha256 = "1mivimpsz981mk0iz5zxi12nmwci76z0bj365s4qy10pcyvaw10f";
  targets."apm821xx"."nand".packagesArch = "powerpc_464fp";
  packages."powerpc_464fp"."base".sha256 = "0fq40pddvfkzs6dk56p0xwqkwgvxr09a22m5a49fbybfncdi69k2";
  packages."powerpc_464fp"."luci".sha256 = "1n4crqhzmlxn58aaiv5gcy434fw1hyxjx025cz99lhn9m64fd73k";
  packages."powerpc_464fp"."packages".sha256 = "0haws7r3b252bak4988s9vxf2nf68ry8xphn2nz9v0bb049jazny";
  packages."powerpc_464fp"."routing".sha256 = "0spsd2n8qj7a9a6hyhsdzd977wll1457hfhszldmd36j2i0dfsv1";
  packages."powerpc_464fp"."telephony".sha256 = "0kjch9v70gpcmc6mba5m19jbf93kvc35swickwb0hzqrgcvlw7ba";
  targets."apm821xx"."sata".sha256 = "0if98b67c9xz6lbjcszrhmavmccwijx3k45k4x1kq457pnxv5zrh";
  targets."apm821xx"."sata".packagesArch = "powerpc_464fp";
  targets."bcm53xx"."generic".sha256 = "1h0r7dczspypk1219c8i26zq9kfp16aryiyv7xmknqrq54x0wzxx";
  targets."bcm53xx"."generic".packagesArch = "arm_cortex-a9";
  packages."arm_cortex-a9"."base".sha256 = "08ncw4r7ybhksawwc1z8g2rssynya07ic47i4maa6zrz37rmmmc9";
  packages."arm_cortex-a9"."luci".sha256 = "17mx7s1g5dafg22shk9nvyhf96776jrb375si6yn7zhah4ngm4fh";
  packages."arm_cortex-a9"."packages".sha256 = "0fh69zjpi440ldwp2x3ma69whilwax86mrsfalwh2w4bkk5l5ljr";
  packages."arm_cortex-a9"."routing".sha256 = "0ghr1z64px86zghfb3kpla6cxmms42i8hwj185mab5w41hcfv4j2";
  packages."arm_cortex-a9"."telephony".sha256 = "1qwdsl374rrmrbsfmd6x2v54zh2x8kv4nwyanljawgq7zv6m975v";
  targets."ramips"."mt76x8".sha256 = "0fkrx6sp9lz46hhm3czyvcygq4czjcff939zlbd91sinbq8wr6h4";
  targets."ramips"."mt76x8".packagesArch = "mipsel_24kc";
  packages."mipsel_24kc"."base".sha256 = "17bhcf5g2mls4hz8vr1f81drkf2zs5n88k0adg7xck91w3d2y9nq";
  packages."mipsel_24kc"."luci".sha256 = "1fkn15gc49rj6ij7vjrgb10sgi9327gjcknd8lxxgka93l7xvdrd";
  packages."mipsel_24kc"."packages".sha256 = "1w6s5hsn4hlmdfdj369z5pm0v7lqn81dx1z5s6fv0hi9bd14shzk";
  packages."mipsel_24kc"."routing".sha256 = "0b884k4kx1x0zgj2rna5as64d8vjm983dc93m5ly8abpx374qw6k";
  packages."mipsel_24kc"."telephony".sha256 = "0cv1x3c7fcm8f0j7587skhdm41miqnz6cfvbkh3yi4zn1va9vf60";
  targets."ramips"."mt7620".sha256 = "098bqiyjvqhfa1h5pgdljv9kw8np1ky70cz39iy6c5jg2pnjlakq";
  targets."ramips"."mt7620".packagesArch = "mipsel_24kc";
  targets."ramips"."rt3883".sha256 = "1ppzqb37c44prvvvnpgc9401vjlr2yf7rjjz5bwz98v674cra0ph";
  targets."ramips"."rt3883".packagesArch = "mipsel_74kc";
  targets."ramips"."rt305x".sha256 = "1dv4gvjmbr5rsh4lcfmq0895y6xzl5lrcslnb91r0zg1k1hnfdjv";
  targets."ramips"."rt305x".packagesArch = "mipsel_24kc";
  targets."ramips"."mt7621".sha256 = "03cv48abyxwdr3x8l1yf4cq2jk4ll448vz6y62g0fkk8im5jc4bd";
  targets."ramips"."mt7621".packagesArch = "mipsel_24kc";
  targets."ramips"."rt288x".sha256 = "0dkxl0yd3wkyz3b7ns670jn11qwsrs3wc11w84lyd784fghill2r";
  targets."ramips"."rt288x".packagesArch = "mipsel_24kc";
  targets."lantiq"."xrx200".sha256 = "0l5xigx3v7a40pnkz92cabx7scbb259avbcbrmqznms9pmvy94vq";
  targets."lantiq"."xrx200".packagesArch = "mips_24kc";
  targets."lantiq"."ase".sha256 = "11nrch6jlnwpz785cng086x6ml8d8b8zrwalz6d9ma9f2cwkigrz";
  targets."lantiq"."xway".sha256 = "0dfz87s029lcf75jh38wpiqc8mgnpsw2v8cyzbhfi62npkwszcy8";
  targets."lantiq"."xway".packagesArch = "mips_24kc";
  targets."lantiq"."xway_legacy".sha256 = "18av60scyqvdd27c7qfjsng9iyxljgbf3s48d3mw9ca4c220f9v0";
  targets."octeon"."generic".sha256 = "1jn7k7g8ci2qfxykfbchlq9mcvzj3a8szf4gsr73xwhwgbyx8fr4";
  targets."octeon"."generic".packagesArch = "mips64_octeonplus";
  packages."mips64_octeonplus"."base".sha256 = "1il4s6kp823zw6i8d85x4qwdag2xj63rk4qrpdylkhz2rd5x1szb";
  packages."mips64_octeonplus"."luci".sha256 = "0g544amf436bv61c89nbvajd1yj9ms1d6a74hg7n48mib4b68di5";
  packages."mips64_octeonplus"."packages".sha256 = "1j6ih664qmp44i4n272yndf3i4i4wf40i4s3lbja9ydif6mqsir3";
  packages."mips64_octeonplus"."routing".sha256 = "0h49jq8kaljv2i0amf79zdzixal4n4rw3v81kmlkk855y69nyf8b";
  packages."mips64_octeonplus"."telephony".sha256 = "1nsrxcj5dw4rxgnl2ayy3vxyprmpv5m4h5j2rybxbd6zmwbyha0l";
  targets."pistachio"."generic".sha256 = "0ca97p86ckh8k0826d84s4mnb910p77wv301pwcqyfdincjrb9cy";
  targets."pistachio"."generic".packagesArch = "mipsel_24kc_24kf";
  packages."mipsel_24kc_24kf"."base".sha256 = "0d6ak4wbj67p4h504jamkm1gx0yx9y7xgmlhn2x374r259m0hrrq";
  packages."mipsel_24kc_24kf"."luci".sha256 = "1d51hn07cjdw01wxa0pnkqfdsgd9csy8dfg6fd0ahq9942fgara1";
  packages."mipsel_24kc_24kf"."packages".sha256 = "1f7jlkk3mbqcbn78z63s3kh19s3r3vynw6s3fk7h186znv4jyd4a";
  packages."mipsel_24kc_24kf"."routing".sha256 = "15xgp6ybz1m1jva33vzq2gms1f6n585b8vzgzigkc6wafjhihdmc";
  packages."mipsel_24kc_24kf"."telephony".sha256 = "01p933nf3gnzjmw8cqaihf0fpzh5168xapnn7l0wqhhs9s029rw2";
  targets."layerscape"."armv8_64b".sha256 = "1k4clf2f1xmnqj44h9n39v7cpj8rivnnlbdd4igfwkf9myxpzkr1";
  targets."layerscape"."armv8_64b".packagesArch = "aarch64_generic";
  targets."layerscape"."armv7".sha256 = "1rkb8xwb3l291zinks6hpp0i75rgyd5xrlmi4w648xh6402jlwp9";
  targets."layerscape"."armv7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."omap"."generic".sha256 = "0nkyb0xgjr539pbq634g0w30sf52ylrj66q2mps19a631zhjp76g";
  targets."omap"."generic".packagesArch = "arm_cortex-a8_vfpv3";
  targets."tegra"."generic".sha256 = "19r8if2ia068vlb5yc5qlhyd11d4sbbxc4z3va5n9wk1g2fprxix";
  targets."tegra"."generic".packagesArch = "arm_cortex-a9_vfpv3-d16";
  targets."bcm4908"."generic".sha256 = "0x9k3l1qriyn04sd2wp8vgnbna2b57bxxgjchhnhgnxbj2bjmrm4";
  targets."bcm4908"."generic".packagesArch = "aarch64_cortex-a53";
}
