{
  targets."arc770"."generic".sha256 = "1dm94721hbdfkfsvhl9ygrhddcx02n5ml02f367pqs243vzm2yw6";
  targets."arc770"."generic".packagesArch = "arc_arc700";
  packages."arc_arc700"."base".sha256 = "1w56mrp691w1higs9b1812y4mm4g6a5fccwfadcnja67n3zadkqw";
  packages."arc_arc700"."packages".sha256 = "0y6h5413hbcqvyjljis57j2da045qz3d40kzpdr9dxdnaikxrywr";
  packages."arc_arc700"."routing".sha256 = "1q0cmbav2336pf1wzaq19j6pphqphpmsjfca200dsmh1fiyzy2rf";
  packages."arc_arc700"."telephony".sha256 = "1d9bx31c185a85w2zygvma9ss4kvqb6zgdpkcy4mvhsmzv2n8fi4";
  targets."imx6"."generic".sha256 = "1w5w0cn8nzb7z18zcxza18km6aavqxabx58fqlfdm171hhsh5d9p";
  targets."imx6"."generic".packagesArch = "arm_cortex-a9_neon";
  packages."arm_cortex-a9_neon"."base".sha256 = "0cw2m9vppjkibc5chacqhakxvcnb332gc6z1kbiqd4hcgph7y94n";
  packages."arm_cortex-a9_neon"."packages".sha256 = "1rvbyjcfb7mpirjrhnnhfyvrlig9y0p1adp65dgq52x7n6mzlyda";
  packages."arm_cortex-a9_neon"."routing".sha256 = "0sj80z406gd27kaiw3g6ly03h805ja4ckjz7p5lvjpnxg18v2mjn";
  packages."arm_cortex-a9_neon"."telephony".sha256 = "1w9g9v70yv2xlpx1ngj8fqp82sz6sdsz0ccrkfqsplk2cdv4vjki";
  targets."oxnas"."ox820".sha256 = "0m3kbsgrfq8dykxg6zwkw68vsmfiqpx9iw76lrlr32s2jswc1b29";
  targets."oxnas"."ox820".packagesArch = "arm_mpcore";
  packages."arm_mpcore"."base".sha256 = "1nzfsyx0layyc4xky0gk9jxsbvmnxln866adwvnlljp5s02lnph9";
  packages."arm_mpcore"."packages".sha256 = "00j22kisicvk9p2nalgjsj6sq97yzakqhyjq3sxdk72icq3gfxca";
  packages."arm_mpcore"."routing".sha256 = "0x3hlihbbw5cp49q0hf04ji9qjsdarsmii5gv5a2ls4l9gpb865q";
  packages."arm_mpcore"."telephony".sha256 = "0ijli8lhb6x5iilmgwvpfhvvviar2xlzk2qpwc9bdhv8s3gm663h";
  targets."mxs"."generic".sha256 = "1173spkxbhdpc227mpkhzb1gqvgmy731ar6cg2qyr02rk6np5yv3";
  targets."zynq"."generic".sha256 = "0aswga2a4zpjm62ncrkh64lyikymrj7lg8i4229fnz8j50sigamb";
  targets."zynq"."generic".packagesArch = "arm_cortex-a9_neon";
  targets."bcm63xx"."generic".sha256 = "1039dca13nnzaphgslx2c88frdxgm36i97gxmvbhn7alh02jwj9w";
  targets."bcm63xx"."generic".packagesArch = "mips_mips32";
  packages."mips_mips32"."base".sha256 = "1vwzwr2bazwhdp6zq0fq94nrpkfwlbxfbaxpa6q0922233q7g5bh";
  packages."mips_mips32"."packages".sha256 = "130b9xlvy8ljqbalrwbfk9fqf8im44b6cg3c7wy2ypi8aair88vs";
  packages."mips_mips32"."routing".sha256 = "1c00dgv5q4hxzn0y4adx4hmhc8iyg71n1mg346z0p9qgi9mp5i83";
  packages."mips_mips32"."telephony".sha256 = "07m59r8jw7sr8qrkzmhdv948xhdx549wb3arj3b6y9ppzcxa0sc4";
  targets."bcm63xx"."smp".sha256 = "1zbiaq63iljbl2vs4kzkhd2sk4q6s0qn451vf6zis6siiwpvvk4n";
  targets."bcm63xx"."smp".packagesArch = "mips_mips32";
  targets."bcm47xx"."generic".sha256 = "1sxwal5q02zxxmgxmsjspiqilh6y2vp5pyr3f80jzaqzf04jclpy";
  targets."bcm47xx"."generic".packagesArch = "mipsel_mips32";
  packages."mipsel_mips32"."base".sha256 = "1bxmkcv0ada9jdkwl2c5lqsc0imyan042ahymvz5f903vqc1qbg5";
  packages."mipsel_mips32"."packages".sha256 = "1pyx4s8w0j6pghmvmc9hi6a3y73zcyqsx8h04j5rzj3jm08mcf07";
  packages."mipsel_mips32"."routing".sha256 = "1g7k4vq4d0bmikphcvx5yjkq139fjpkzlqnr47w290fb8j57drl4";
  packages."mipsel_mips32"."telephony".sha256 = "19r2376929587q0i6kv3sdy1c5da1zd3s1xx3gg9zsa1fnx7n2n1";
  targets."bcm47xx"."legacy".sha256 = "1dkp8zks94vbhmlgyf2qx4y0ll0nbxakd49bw8w5grzij9vnz04h";
  targets."bcm47xx"."legacy".packagesArch = "mipsel_mips32";
  targets."bcm47xx"."mips74k".sha256 = "0rr1scbbrhnimk4w2znrjq0gj4yhrmrp1a2a04b0rx6d5am8c1f4";
  targets."bcm47xx"."mips74k".packagesArch = "mipsel_74kc";
  packages."mipsel_74kc"."base".sha256 = "1js6d4s2mi86v6cqh500ama9cc6r7hw4j7c3c9zm75daj45k0dl2";
  packages."mipsel_74kc"."packages".sha256 = "0gsyy24f699c8x751sgdyh815n5a4i4nzhdf9br5kv1jfqshb86x";
  packages."mipsel_74kc"."routing".sha256 = "01w2l3v7vyz3fkvm8p78wa4r6rzcnikl2lir406bmigy1xfjzckg";
  packages."mipsel_74kc"."telephony".sha256 = "0ak4j2m2rrwcz1bhp482a725wgc49rh931plm2pdcwg26szrqb1x";
  targets."bcm27xx"."bcm2711".sha256 = "18n6av4y56zn0h3hy4ja5gph6k53nrr925llv3v0hwr848c4pddv";
  targets."bcm27xx"."bcm2711".packagesArch = "aarch64_cortex-a72";
  packages."aarch64_cortex-a72"."base".sha256 = "0i6mzvljwjj3p017scc7hf1ljp5wrld8yrw1qzhzhivdv8s1fs3b";
  packages."aarch64_cortex-a72"."packages".sha256 = "0sh4pvh2crn0mwlaybc1a1dfbw4j5vnvwzf9i20wd01wajykjyw7";
  packages."aarch64_cortex-a72"."routing".sha256 = "0b3cx87z2rxvp4z00kn7zvw8j6qll7iy2ppnl6qb7krdxjw6hdnx";
  packages."aarch64_cortex-a72"."telephony".sha256 = "1vxzcx5h3m1lcxi7rsipsmaw9x1qa9ks156q7phdc6cal8jy9zrs";
  targets."bcm27xx"."bcm2708".sha256 = "1wy8sf3bii6vwzd02i3idwjbxjb5973wfd40kyn5w71kmprw4sh4";
  targets."bcm27xx"."bcm2708".packagesArch = "arm_arm1176jzf-s_vfp";
  packages."arm_arm1176jzf-s_vfp"."base".sha256 = "1ja7c62ikzzzxa2gsfmk86bn90yipr1avx11zgfx4ibzvxx82pwl";
  packages."arm_arm1176jzf-s_vfp"."packages".sha256 = "0n6hz4fmm75959yjl5fj4mc6aizmc4541hzchacgy3gn7p0kcd8z";
  packages."arm_arm1176jzf-s_vfp"."routing".sha256 = "1702jlgv8ayd6w2r80dagnxhic5hzigcdf72r1rjyxpgxh7xbai0";
  packages."arm_arm1176jzf-s_vfp"."telephony".sha256 = "0r38s942gkabmy9lzxf3wys2z284s5qr42wrpd7h02gxf34zzrhw";
  targets."bcm27xx"."bcm2709".sha256 = "1fl57fsl6hlm0r3sxjy5dhx8h9havx04583z0383y7kn2qmgnraa";
  targets."bcm27xx"."bcm2709".packagesArch = "arm_cortex-a7_neon-vfpv4";
  packages."arm_cortex-a7_neon-vfpv4"."base".sha256 = "0kmla2qjyb3iiqf8kf0x5366ddzs1hvcb8q5wl9vx2fmi6crqpb3";
  packages."arm_cortex-a7_neon-vfpv4"."packages".sha256 = "0gbwrwx2xrky6jippdxddqga13s0pzrjcn4a5v4v7m1j6c01wq07";
  packages."arm_cortex-a7_neon-vfpv4"."routing".sha256 = "10h1y9zw08hv6ql4fpj7lb9qx1gizs5wvbbkprm9cmn6p3ifbmib";
  packages."arm_cortex-a7_neon-vfpv4"."telephony".sha256 = "09yzjazgmg2cmq93fqzr5ipvzkc6dmk9chrs4kpsw9a2606jbh0s";
  targets."bcm27xx"."bcm2710".sha256 = "0zxj6fh890km0zcd85190bngb34w445hrmp97mmvrwsw32c12pxf";
  targets."bcm27xx"."bcm2710".packagesArch = "aarch64_cortex-a53";
  packages."aarch64_cortex-a53"."base".sha256 = "1v5c2hkn6amb0qdjawix4g4yn2ra9qmagjasxc0mki3nbv1z4kal";
  packages."aarch64_cortex-a53"."packages".sha256 = "1vc3pkrv445dd8vsmqa3ikcv5hy3idw39bbz3x40gj9v7sn2qsvx";
  packages."aarch64_cortex-a53"."routing".sha256 = "0779ilrvs7n0dlzlg371dadr0mbv93kzjy80zgj4xzxbvclq7jh8";
  packages."aarch64_cortex-a53"."telephony".sha256 = "0h06mknikyr4mcwykxfi34rmdzkicdsik7bn6f570bs5a0k44y0g";
  targets."mvebu"."cortexa53".sha256 = "1x3zfkwnf5wyp5b7nq2l07bfd1bil58v4l3dmzzgfx34snxp27z2";
  targets."mvebu"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."mvebu"."cortexa72".sha256 = "1qsrmrpajwhhxgszc1j9qfxqfl0vmzxwazgbmka42lvzw8kmyba5";
  targets."mvebu"."cortexa72".packagesArch = "aarch64_cortex-a72";
  targets."mvebu"."cortexa9".sha256 = "0r201q5x2750n0rgh1h2fkb0j0z6ia8w454h4z1l0hh92lz6gjjz";
  targets."mvebu"."cortexa9".packagesArch = "arm_cortex-a9_vfpv3-d16";
  packages."arm_cortex-a9_vfpv3-d16"."base".sha256 = "1pwdb3rh5y87pwyp0kx6c8mxj2w0pbyz156n0vmjhnscccz0xrdh";
  packages."arm_cortex-a9_vfpv3-d16"."packages".sha256 = "1z4xb9mgwajpjryjg9x73bh9nxynszfp82sb38ynnhzlc2mx9qyx";
  packages."arm_cortex-a9_vfpv3-d16"."routing".sha256 = "0ybn3rllmsz0vqg3a1mp5hsnf13h2c7p74v8g0javj27flq8n08i";
  packages."arm_cortex-a9_vfpv3-d16"."telephony".sha256 = "0kmvs15xl2qr6ngk83rj5h7s69lib55m6vzgk811kdn4315pnh1k";
  targets."at91"."sam9x".sha256 = "0q8fd6wnq670p78mbilnp6fls4v44x9bb2m684x03fd4x83zplsq";
  targets."at91"."sam9x".packagesArch = "arm_arm926ej-s";
  packages."arm_arm926ej-s"."base".sha256 = "0f3kn7c9fyrgv2zzaijn5pzlsmg3gbk5hlyifzkdjc5n8c84my67";
  packages."arm_arm926ej-s"."packages".sha256 = "11vxr3yhcnxs2a8bdrai2b680q64qy9mx7l3mznqpra09xzndf9j";
  packages."arm_arm926ej-s"."routing".sha256 = "048ddf3mfpym6vfnjlcyf2nhf6jwbzmlwn7a6lswmmkvkn9di7c8";
  packages."arm_arm926ej-s"."telephony".sha256 = "08x2kx5zw7zw6nc5mrz6hbpsa89sijznkhamx7ppfhwmhgb7rb9s";
  targets."at91"."sama5".sha256 = "09d9n2wsj85ff17f63mp8z97agr3lm4j82zjv3i39ch0xdybxkjf";
  targets."at91"."sama5".packagesArch = "arm_cortex-a5_vfpv4";
  packages."arm_cortex-a5_vfpv4"."base".sha256 = "0f96nnyclj8mx3nwgdyv16rl2r5nc44pkp5cdkzbbxm85p33nfyr";
  packages."arm_cortex-a5_vfpv4"."packages".sha256 = "14kf1dzvp8h17m34y7pci5k1yfm4zqb8pa943bh4yzp0c5zb34by";
  packages."arm_cortex-a5_vfpv4"."routing".sha256 = "1zb04j2g5ny3bmhndb6w5knnw0w0cd0k49igs0l94ahrk02x7skh";
  packages."arm_cortex-a5_vfpv4"."telephony".sha256 = "0qwlgbq2d0jza6wh7mj36r8711hmzpkphbxy34s138m65q8sgvkj";
  targets."gemini"."generic".sha256 = "1lib68zjai98p9gmb77vdcfv1s210mr548r9sccfw5fqjzbx11df";
  targets."gemini"."generic".packagesArch = "arm_fa526";
  packages."arm_fa526"."base".sha256 = "0jal2cm4665z1x6x6z9w12d0vs6ljm9sp5q33czdf4vn6g6yai7f";
  packages."arm_fa526"."packages".sha256 = "1yx1iawkc84inh7gzqb9pjdp76bh1np6q1d4gxr2k45v78qq9vbd";
  packages."arm_fa526"."routing".sha256 = "0jryk49bjvsp0rif5ls0gxrc4y01cslb0pm5dfr5ghragyk4n0nr";
  packages."arm_fa526"."telephony".sha256 = "0nwhs5wf0fwkbs4b8zrh3jpbnslwzxpni5z2181xamhsi7ngcr0n";
  targets."octeontx"."generic".sha256 = "0hjcd5g5p6cnv4rhija16qn2c7jmxc7iwkmil34h7d45lm4zydpl";
  targets."ipq40xx"."generic".sha256 = "0wg34h0npycgy5q5yy56y5zd048kqqsq0wn849wnmr29bj31w3a3";
  targets."ipq40xx"."generic".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."ipq40xx"."mikrotik".sha256 = "1mlaziaszqgjnz787w035h969mg1nx8hrdfhn2ss4lvyfr0vni66";
  targets."ipq40xx"."mikrotik".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7623".sha256 = "002j709v818q25frpfhfqs1hsdnpsj8gg22msz802qkh8lx683rz";
  targets."mediatek"."mt7623".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7629".sha256 = "1n5bnxkgyprn8pi44rlic84247dh1iiz2iqm35w740234p7wnk7c";
  targets."mediatek"."mt7629".packagesArch = "arm_cortex-a7";
  packages."arm_cortex-a7"."base".sha256 = "1wiks0m8i98jc33qlg4b57aq7b67siv3yj9g8vyg085n9xqfd99x";
  packages."arm_cortex-a7"."packages".sha256 = "05z393prh1989lv6g02njckrzngivs974mgd2gzrfmxpzsqzaaqi";
  packages."arm_cortex-a7"."routing".sha256 = "06mxl4shyafcakx7ihxjrf8is3m16mkra9i2k6qmkbgj0m145q7f";
  packages."arm_cortex-a7"."telephony".sha256 = "1i9fysiqzx95iidlc3cndrgwrqvy9ajhhbwqazzcmilihqdxd3y4";
  targets."mediatek"."mt7622".sha256 = "1086dqqd0nv6dpsn1kxg44j281m8rvnyx8ncx7vpqpvm843cl38w";
  targets."mediatek"."mt7622".packagesArch = "aarch64_cortex-a53";
  targets."malta"."be".sha256 = "06vjz9hyd4xzsc9v525813zhck2ygsx1av0llamj4m2k45k9pmn6";
  targets."rockchip"."armv8".sha256 = "0hxq807a7132ybychlc1aq7lxhac372973xwil6c4kav40ma7bsa";
  targets."rockchip"."armv8".packagesArch = "aarch64_generic";
  packages."aarch64_generic"."base".sha256 = "0xhkx1fd49rr6mb3jspj1ffxf21yhgac036zmkmagjpx03c38sd7";
  packages."aarch64_generic"."packages".sha256 = "1jx4ifjlh9sl1hjrz9m8x1vijxif1jwxjpnbkzrx8n4g6nz8wrmc";
  packages."aarch64_generic"."routing".sha256 = "05ilr7sfsh9b7bbv15cysczmal8g010grkynxf0km7q7bxmim15j";
  packages."aarch64_generic"."telephony".sha256 = "1z6gz6qxa4gwq45z6rqi2k72rdvz5psd2bbsidrgprb8fj38qc2p";
  targets."ipq806x"."generic".sha256 = "0gim01qf70975mafs9wb7q2fkyvys54gbgjkl5s9cg46bcwssmdc";
  targets."ipq806x"."generic".packagesArch = "arm_cortex-a15_neon-vfpv4";
  packages."arm_cortex-a15_neon-vfpv4"."base".sha256 = "1akx5gdqd3ziri3snzxjsb46aapxzhia865hy40n8ir19yn9kh13";
  packages."arm_cortex-a15_neon-vfpv4"."packages".sha256 = "180nkqhy7znil6dgmx0hs13d6rg0iacbxw83zkkjizjn73h9kbnj";
  packages."arm_cortex-a15_neon-vfpv4"."routing".sha256 = "1pjf3vgdr8hc36nnaw0fv2h61i8cizzh02ka9gvwggidg4d9hhl2";
  packages."arm_cortex-a15_neon-vfpv4"."telephony".sha256 = "12ciypy4rvp49qsbfxg3j6fzf1dhwksbm6avrci2yybzh9xc0774";
  targets."sunxi"."cortexa8".sha256 = "0gj9zcib00gy92mdkp7yrrf15qkbczhjlh9rbkd3apqsjl65sb9n";
  targets."sunxi"."cortexa8".packagesArch = "arm_cortex-a8_vfpv3";
  packages."arm_cortex-a8_vfpv3"."base".sha256 = "0s96ir3psh4x5sk07b4y5whcbxk5ry461yahcws9lcn137rs434h";
  packages."arm_cortex-a8_vfpv3"."packages".sha256 = "1fwlnf77kx5hiv4b1vq8a1ymbhyr74zavw0z1gmqva5qiqms8094";
  packages."arm_cortex-a8_vfpv3"."routing".sha256 = "0n9c0qp311v8c2lrr4liwvyym6h75ily7mpwi6dy38kdj5fgyk12";
  packages."arm_cortex-a8_vfpv3"."telephony".sha256 = "1abv9k3vdzzgn0w114kbwf8wki6mxdn7spd01bnzv0l90q50qvx7";
  targets."sunxi"."cortexa53".sha256 = "1ql21zsqm9lx6a7rxwaf5q317q76slki5lbki798r6nc6a3x2acl";
  targets."sunxi"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."sunxi"."cortexa7".sha256 = "1nfx98f583l19ff0rx833ra3sqav5kk5rg890bjywp66252xiw0y";
  targets."sunxi"."cortexa7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mpc85xx"."p1010".sha256 = "17xsji9b3lws2m50yqk0janf9pf4b76bycr4w7g600mhgdwvqnwg";
  targets."mpc85xx"."p1010".packagesArch = "powerpc_8540";
  packages."powerpc_8540"."base".sha256 = "03fbk55rpjxa0bs3lk3ls55s8d2a63h8k0z17g3arq9w3gjphchv";
  packages."powerpc_8540"."packages".sha256 = "01rwk8x14vm7sdivp96ljw31j4yliy6p2sx07ys49w0rm92x15i6";
  packages."powerpc_8540"."routing".sha256 = "0w6q34spadkhg4i5ibpkjv8zw4dg15dd9bnqki2dkkcr3d37q7bc";
  packages."powerpc_8540"."telephony".sha256 = "1dwgwyf4xk7qifaw1ni8k4hviff23qsrlx2mydyal8di48gllr4k";
  targets."mpc85xx"."p2020".sha256 = "0h9rg993v3w3w9smgfn50gmdilhzxkmklgfk1rv5v5zvryg1dv3g";
  targets."mpc85xx"."p2020".packagesArch = "powerpc_8540";
  targets."mpc85xx"."p1020".sha256 = "1jlhnl03pg8ymv1dzffrkkv39g5zhzb06vwwmv1g7sgi4zff5rf5";
  targets."mpc85xx"."p1020".packagesArch = "powerpc_8540";
  targets."x86"."generic".sha256 = "02rj8l1gg51whq07gk2dsbfab7jr4crpawh09bf1znsmjlmbzmr1";
  targets."x86"."generic".packagesArch = "i386_pentium4";
  packages."i386_pentium4"."base".sha256 = "1gp09d1lba3fv2y9x129nphygm0vz6dxnngsp751ba2rghpwydhb";
  packages."i386_pentium4"."packages".sha256 = "1cprkw218qcdrqdl5x7ynbg4nn72m2i1fb5dx4wpmd4cbcjgv20y";
  packages."i386_pentium4"."routing".sha256 = "1kgii9v0qr8mii6fxhb7xhli2jdndjdv0x9px0iynv4gmk7fcdqc";
  packages."i386_pentium4"."telephony".sha256 = "0sfi3fkpi8dfm0vfl2d1z82j6rrca3nj7qhanz8khmxn9fabxiv4";
  targets."x86"."legacy".sha256 = "0kxifwqagrm7c02p2az2njhgjk298m82arr6381id6zngc91jg8k";
  targets."x86"."legacy".packagesArch = "i386_pentium-mmx";
  packages."i386_pentium-mmx"."base".sha256 = "0h2v8xrh5gkfn2r3hirh3lbqqlrwa3pq2c7ag24031mq7bm97c44";
  packages."i386_pentium-mmx"."packages".sha256 = "0mripdiksf304b6a9d9gzg0p1pk73n1ghlb2bd5nlv895w5aqyx1";
  packages."i386_pentium-mmx"."routing".sha256 = "0wsq9q9bcv1lz9i9vq6x086xa292kxi1z2lmd6bcdfmw5m0457yq";
  packages."i386_pentium-mmx"."telephony".sha256 = "0v6y78wvg62fkrn6xp9dhlwc9aicwrajkh0bjlry24jbdc5c8pay";
  targets."x86"."geode".sha256 = "1w7ai0k7dg5475kmgjgk4dwn9sv2wjwry3ygzl65gn117ph27mxh";
  targets."x86"."geode".packagesArch = "i386_pentium-mmx";
  targets."x86"."64".sha256 = "033dfqhds53sjw8iypk5z0zwkq7hzldy3bvp9xk6z5xnk84iygdc";
  targets."x86"."64".packagesArch = "x86_64";
  packages."x86_64"."base".sha256 = "0qddnhys6ya1v6pppl7rsbczalj9ia58dj1n3qga6dhlqxfdb6ym";
  packages."x86_64"."packages".sha256 = "02zrg0hfsh97dydhlll0dn7r5qvldi7cvpapbbns33sxx65lhvyp";
  packages."x86_64"."routing".sha256 = "1dbry87n281ysadhljx3cbxac2wnckqzdyf3sjbc18pb5a4kvcwl";
  packages."x86_64"."telephony".sha256 = "0d2rw22f3q80f23xdz01lrbwxcw3vs9ccfjcrzdblk1sldlm1qi8";
  targets."realtek"."generic".sha256 = "0cllxi86r1v40m76y341q9dvqi8rf2xp7m8zd3p1nijs6r26n5jv";
  targets."realtek"."generic".packagesArch = "mips_4kec";
  packages."mips_4kec"."base".sha256 = "0f0qcva3x4jkih09b3mgga9wvc7q0dil1xxdbybj6c0bscabxw0g";
  packages."mips_4kec"."packages".sha256 = "1bgah9dxxa15ymccgkjsw9037sf5b85r2m70nphnjbgfdha56yb5";
  packages."mips_4kec"."routing".sha256 = "15dvg1d3v9izb58y1wwpclz7f5b3cm3w1wwjcacbgb6gd9wlny12";
  packages."mips_4kec"."telephony".sha256 = "1awdn3z81w68az8dyyyffyhh60dqf1vvyrvqhn5w6mkm5asl4a19";
  targets."armvirt"."32".sha256 = "1h7zmn6ihvkpasaxb1kdvmlbajbawfwz9zqcfj9agl24r3y614yl";
  targets."armvirt"."64".sha256 = "18j2ljds6hlk7pqpjkqccdrbk8ca07nxghyf90303z6cvpyascc7";
  targets."kirkwood"."generic".sha256 = "1kkpyd5nmkrz1qzkpwrrpcrs5m1f0504sppv6j1vpyv7ixcdab73";
  targets."kirkwood"."generic".packagesArch = "arm_xscale";
  packages."arm_xscale"."base".sha256 = "0d9kh8nhgq4c0l8j8fafbnmlpb1krcxqdfil2akqy4g5fnxi1z1q";
  packages."arm_xscale"."packages".sha256 = "125p4iscajxrf6sfasj875k1z9sq5f7v7nspdbryh8aqg7nfdndd";
  packages."arm_xscale"."routing".sha256 = "1387w9cl7y3k6x4yimh2brqxmbmq25f3qqkl9zn2c1sm1yvv1jpq";
  packages."arm_xscale"."telephony".sha256 = "13q4wk38ljllbzya7c9lm8zf4zishj5ybg3ykmv6k4vjbjdr0fzm";
  targets."ath79"."generic".sha256 = "0392r407w3f3qmk3gy8bfa76g7dpgappcrp5gaf2djl54lz0cj37";
  targets."ath79"."generic".packagesArch = "mips_24kc";
  packages."mips_24kc"."base".sha256 = "1bqhm8bljfyg2lzxdn083fmiaglainn9kwb1pnvdpb2vss6zw85i";
  packages."mips_24kc"."packages".sha256 = "1p5xcsrqi790ppilnap8cwpkmx11sgd47jqsgizasyx02nl33mbs";
  packages."mips_24kc"."routing".sha256 = "1r2g68saqkxxgy6z7c45ifgz7qdgnxfza6d1yy5zwsr6c77vbcr7";
  packages."mips_24kc"."telephony".sha256 = "0z4wgw07ffcqql9707jvmvs9prh6m8d42k9xr6h9j72gv4wrla6f";
  targets."ath79"."mikrotik".sha256 = "09bi9lk8zj2bj5n2255gll1vjanaicl0i1cbfmz10al1z5ddzkbi";
  targets."ath79"."mikrotik".packagesArch = "mips_24kc";
  targets."ath79"."nand".sha256 = "16xch2c72cddd4rf7nj31mafis54zcjahm3wr91vvlw0jscgqq0x";
  targets."ath79"."nand".packagesArch = "mips_24kc";
  targets."ath79"."tiny".sha256 = "14jykx2jnahndfjcli3fjb0bf669kq91k05r4vzbwwbs1kg53g55";
  targets."ath79"."tiny".packagesArch = "mips_24kc";
  targets."archs38"."generic".sha256 = "09gsnqsl7g4m3al35fx46ndn4mwjripw4dx4vv56nfkzg6v87gah";
  targets."archs38"."generic".packagesArch = "arc_archs";
  packages."arc_archs"."base".sha256 = "1k54ld69x8yh2s07ig23fmbhlbadsid5w51cybbvff04k8fr529q";
  packages."arc_archs"."packages".sha256 = "0ziry78k2c87ci9s28qjvhd7dgssxvfyk412bd20isgy0dk7h70x";
  packages."arc_archs"."routing".sha256 = "1mqp9ps6iij5xlswzl3hkn5l5v2y7g093jz0zb27s2l3fvyw6vbc";
  packages."arc_archs"."telephony".sha256 = "1qqjm7brqsr1bijf28y67dsmikhpx5k8raj25iz4ixvshyy6ihqv";
  targets."ath25"."generic".sha256 = "085qpxj06fdqq6d4whfaxl5s4d5ziwsn8lmnma498bi6p694jg9k";
  targets."ath25"."generic".packagesArch = "mips_mips32";
  targets."apm821xx"."nand".sha256 = "1v6cijrqaph41z665yhvpnj9v8y926hxw4w2maj1q9ckzm5cv5fg";
  targets."apm821xx"."nand".packagesArch = "powerpc_464fp";
  packages."powerpc_464fp"."base".sha256 = "14s5ma7i21n7i50sy64grz8f1x4ljavnh74nyjwhzy15x2y52z53";
  packages."powerpc_464fp"."packages".sha256 = "1wbmj97mvawzfkd3vgcjglb296g6lr173m8dxnnk2gwwlz1ar2zz";
  packages."powerpc_464fp"."routing".sha256 = "0zqrzdpla5w52dc1rjnfdz5q271rzz03qchgfk02risqnx63rnij";
  packages."powerpc_464fp"."telephony".sha256 = "0gm77a4b1by0xp9a1y9k7zachkcwiv47bv87a7f14vh7brn9sh22";
  targets."apm821xx"."sata".sha256 = "05apbwlzdspzpnxgaabmlmm8w5g3rqbzbpsw3zh4m73af6d0dink";
  targets."apm821xx"."sata".packagesArch = "powerpc_464fp";
  targets."bcm53xx"."generic".sha256 = "0fkfhxj3ipnsz6bhir5sh0qqyq2mrrfhn88rxzdwxii4lha38s0a";
  targets."bcm53xx"."generic".packagesArch = "arm_cortex-a9";
  packages."arm_cortex-a9"."base".sha256 = "17ly3ahvi05ad57h15z50lbjhmpi9p29j0m5q2imhzq7s8acjvls";
  packages."arm_cortex-a9"."packages".sha256 = "0ikj8g5vnrxdc9fjppvsmfrjf7dnpxakx72zsqbsdizd67hzkcck";
  packages."arm_cortex-a9"."routing".sha256 = "18klmdkwwm2plfr852nwzdl53ns7f460m2l706m52rvc3lx06szb";
  packages."arm_cortex-a9"."telephony".sha256 = "1z4azp1k7kp1v7kbhkjnb3v0f1bp5a0pv058niyxl0r8kc598r2x";
  targets."ramips"."mt76x8".sha256 = "0lihbdjsv24kp8gqs1sjb3izav6mj96i6cpk46ryvmv2hl29lic7";
  targets."ramips"."mt76x8".packagesArch = "mipsel_24kc";
  packages."mipsel_24kc"."base".sha256 = "1fkq3rhal3d83v85ciivbqprv3rkwfmg5b3ql2kgjnd609ivhabw";
  packages."mipsel_24kc"."packages".sha256 = "18gzx4i57vzl6vv9s9ir9b99d40wr7g75pb2v09lqnrh72gb0sqh";
  packages."mipsel_24kc"."routing".sha256 = "0rqfz0k1faymfcw1bc5z94wrxysy4addy9dicg0fi6li9adnjfp3";
  packages."mipsel_24kc"."telephony".sha256 = "01m2wb513wlspm6jnr4jn6dfw1pxyi2g2mlxcx10zjziq2x0gpma";
  targets."ramips"."mt7620".sha256 = "0la1zg2j7496dxmqy7fz570ljfcvnlvz7ky1vw368g8q0qq0ny7l";
  targets."ramips"."mt7620".packagesArch = "mipsel_24kc";
  targets."ramips"."rt3883".sha256 = "0cihfhcvpacld0jkc76sal2hb52n7hax1wxlybvlk5qdjxlh94y0";
  targets."ramips"."rt3883".packagesArch = "mipsel_74kc";
  targets."ramips"."rt305x".sha256 = "1j8yhdwr6vr245lbxcwrsbp0w0n3p19ksx0pjqz2j7daw65av64l";
  targets."ramips"."rt305x".packagesArch = "mipsel_24kc";
  targets."ramips"."mt7621".sha256 = "159hhb5npajcyxdijlfqmfj2yijbbqzsgpz2aa2vd613274n5niz";
  targets."ramips"."mt7621".packagesArch = "mipsel_24kc";
  targets."ramips"."rt288x".sha256 = "1sr429pamfyj7g3ql3dg6hxfpyidpfv46qf43nax3d268bd0pvwx";
  targets."ramips"."rt288x".packagesArch = "mipsel_24kc";
  targets."lantiq"."xrx200".sha256 = "0966rpakbfy0rylwpihiw7w4279v47kr2wbxg533ksg7pqdsqx2l";
  targets."lantiq"."xrx200".packagesArch = "mips_24kc";
  targets."lantiq"."ase".sha256 = "1sq0nlpfp78nvxj7q41xm8qq8xk04r7fhfkqhp746pgwv1i9740w";
  targets."lantiq"."xway".sha256 = "1sg8yjrsvcwzb8c543q2n9s37k5xd9gzs4gy9wphknjmrbn8dv2f";
  targets."lantiq"."xway".packagesArch = "mips_24kc";
  targets."lantiq"."xway_legacy".sha256 = "1mbd5zpji12wxmbcpyrzrkvvf5hxv6finvdfls21ff9ri2vg80an";
  targets."octeon"."generic".sha256 = "1knmqk71bpy5n6ysgsvi6cv118issi6l318434kqf2r7mqz5qpsm";
  targets."octeon"."generic".packagesArch = "mips64_octeonplus";
  packages."mips64_octeonplus"."base".sha256 = "05n0kjskddhrhkwxfa96xxljc16yqbm27l3y53k1720q764bg5vs";
  packages."mips64_octeonplus"."packages".sha256 = "1v2ndgs9skwqq3zhgiyymd51kk8vw0dl3cvcvsxnp6jap0kriy5d";
  packages."mips64_octeonplus"."routing".sha256 = "05v720bvl165nydgfv4wi7i3mydmcwn26csyg6i9hp54rkp3k8p1";
  packages."mips64_octeonplus"."telephony".sha256 = "19bzh2zm0dd1s9h3rvvsi7lj9dk9b3ibdq0cb6ja57bf6zj2hsz7";
  targets."pistachio"."generic".sha256 = "00vsqlif59cwd13avbz1d0s955g02yygc4sqgdam98jwlrh90i8w";
  targets."pistachio"."generic".packagesArch = "mipsel_24kc_24kf";
  packages."mipsel_24kc_24kf"."base".sha256 = "0kjf45fngy58k908nkm4p75c3fslpi96rmmppgkf3yv4jpr8dx4i";
  packages."mipsel_24kc_24kf"."packages".sha256 = "1jqdg0p4y2kivw2vz7hnr19f4cdy6l6rizhbdk635svlmnsnx6dh";
  packages."mipsel_24kc_24kf"."routing".sha256 = "01q8i9fd5fxcyhpqg8bdb4p4sg89kclaackjri2qyxscxlh2khng";
  packages."mipsel_24kc_24kf"."telephony".sha256 = "0j1yvklq3cffqv6rqsrm3ixdg063wbcxwj1fm4sngs919821m1gg";
  targets."layerscape"."armv8_64b".sha256 = "0fqkb4wlg9lvvgw0ybbyxlqwi2ncrg9ly83bhy732329w32902b3";
  targets."layerscape"."armv8_64b".packagesArch = "aarch64_generic";
  targets."layerscape"."armv7".sha256 = "0mwscs1vxflbl5qcg55any3wxl3mjl5ry0mpsdfi42l2gk9xsmvw";
  targets."layerscape"."armv7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."omap"."generic".sha256 = "0n2m74siw986wv121qwrzi2ycahs972szpc27ix9c3zpdl0yllb4";
  targets."omap"."generic".packagesArch = "arm_cortex-a8_vfpv3";
  targets."tegra"."generic".sha256 = "14dqvw758mkrbj4pif7c5023hi6xghbh8zqwx0xp1qmgxqagrvhy";
  targets."tegra"."generic".packagesArch = "arm_cortex-a9_vfpv3-d16";
  targets."bcm4908"."generic".sha256 = "1yf6f3c4nqrb9hvsdk01yxp1dpd45fx7m5f2h2js5ghga1qssr27";
  targets."bcm4908"."generic".packagesArch = "aarch64_cortex-a53";
}
