{
  targets."arc770"."generic".sha256 = "1dm94721hbdfkfsvhl9ygrhddcx02n5ml02f367pqs243vzm2yw6";
  targets."arc770"."generic".packagesArch = "arc_arc700";
  packages."arc_arc700"."base".sha256 = "0zh7mxa6l93xh6vijfb2kxx3837v6hnkpbmll80654h2r8cw4id0";
  packages."arc_arc700"."packages".sha256 = "07hj4yzx8rxna9m5ra8qa9c5kqpddsb4mjr4w75a13alh4hmb6sa";
  packages."arc_arc700"."routing".sha256 = "1p6hh3f03yn2y8ic8svcvgaw6njpbiz6sagykp7w2gn241fmvw7y";
  packages."arc_arc700"."telephony".sha256 = "04dv44sny04mpjwygc6dgfzbmgclmwrmvqpabqh4cpnwngpc7rxs";
  targets."imx6"."generic".sha256 = "1w5w0cn8nzb7z18zcxza18km6aavqxabx58fqlfdm171hhsh5d9p";
  targets."imx6"."generic".packagesArch = "arm_cortex-a9_neon";
  packages."arm_cortex-a9_neon"."base".sha256 = "1v3f9bnid6g7mzjrk2cqhv4nr3ariz4kzgq4xsp9qakyfhnhjakn";
  packages."arm_cortex-a9_neon"."packages".sha256 = "16cylxdfil2jg9mpv30ksdjij37fay5db201z2fdjgwrv1b3cz4j";
  packages."arm_cortex-a9_neon"."routing".sha256 = "00lhda74j1w2mkj7mxsvmpk01qpk0x470f4nhv9aw4qvw03b7yhd";
  packages."arm_cortex-a9_neon"."telephony".sha256 = "1a9kd90q6j4bjyivqj93l3mzakf5hi1wgsmdvgmib6bmmf34w93f";
  targets."oxnas"."ox820".sha256 = "0m3kbsgrfq8dykxg6zwkw68vsmfiqpx9iw76lrlr32s2jswc1b29";
  targets."oxnas"."ox820".packagesArch = "arm_mpcore";
  packages."arm_mpcore"."base".sha256 = "0j53506vqdksb5x7zfw0r8ara1z3a6r9h7mc8h1vmg1b6amps3p4";
  packages."arm_mpcore"."packages".sha256 = "0mdq4vslxdmaffqn1sx5hwxjra09hd1qaczpgc1pjl58qzf4khy0";
  packages."arm_mpcore"."routing".sha256 = "0piign1sdgmb2xqmlqp872xcbcn8fg2yx7p3q4fmjaw8mrl9y46q";
  packages."arm_mpcore"."telephony".sha256 = "14wvdmzipq5whzs81inrvggkv5dydzk9qnl1hpq87qbyim3138dl";
  targets."mxs"."generic".sha256 = "1173spkxbhdpc227mpkhzb1gqvgmy731ar6cg2qyr02rk6np5yv3";
  targets."zynq"."generic".sha256 = "0aswga2a4zpjm62ncrkh64lyikymrj7lg8i4229fnz8j50sigamb";
  targets."zynq"."generic".packagesArch = "arm_cortex-a9_neon";
  targets."bcm63xx"."generic".sha256 = "1039dca13nnzaphgslx2c88frdxgm36i97gxmvbhn7alh02jwj9w";
  targets."bcm63xx"."generic".packagesArch = "mips_mips32";
  packages."mips_mips32"."base".sha256 = "033ya6726906rlw91lzx21xjxfaqzqdvhbl4q8zjljvf25zglv1j";
  packages."mips_mips32"."packages".sha256 = "1f6bwwjd39nza3zc6j1iyc741kp89r1wn88b2ywyirffpi61hgbk";
  packages."mips_mips32"."routing".sha256 = "05adnfbswlk7xdq8qznckm4jdf1rmr6rf0phq98mka18dh7qhzla";
  packages."mips_mips32"."telephony".sha256 = "0j9ab79mq3r8rvf5b9425y7n9v4jjc498a8ibmgk9vzdkahmwf9i";
  targets."bcm63xx"."smp".sha256 = "1zbiaq63iljbl2vs4kzkhd2sk4q6s0qn451vf6zis6siiwpvvk4n";
  targets."bcm63xx"."smp".packagesArch = "mips_mips32";
  targets."bcm47xx"."generic".sha256 = "1sxwal5q02zxxmgxmsjspiqilh6y2vp5pyr3f80jzaqzf04jclpy";
  targets."bcm47xx"."generic".packagesArch = "mipsel_mips32";
  packages."mipsel_mips32"."base".sha256 = "0cq3qnc6l5i4hzybay3m64g9klv5anakrrmhxbr86zf21vyfb8gg";
  packages."mipsel_mips32"."packages".sha256 = "13jaix9rfcqlwycrvwmipnyrv081i2g9xpp8w8xiqk4bphscm637";
  packages."mipsel_mips32"."routing".sha256 = "0bq3i7zx8ii8qyc18mpiishmxdjjpnhw01h9hqcw4x7iiqdys2yv";
  packages."mipsel_mips32"."telephony".sha256 = "00nk3yrqi6hyfk0w32ajbr3y1z893jwvb13y3f8jv0bqwdhhpx1n";
  targets."bcm47xx"."legacy".sha256 = "1dkp8zks94vbhmlgyf2qx4y0ll0nbxakd49bw8w5grzij9vnz04h";
  targets."bcm47xx"."legacy".packagesArch = "mipsel_mips32";
  targets."bcm47xx"."mips74k".sha256 = "0rr1scbbrhnimk4w2znrjq0gj4yhrmrp1a2a04b0rx6d5am8c1f4";
  targets."bcm47xx"."mips74k".packagesArch = "mipsel_74kc";
  packages."mipsel_74kc"."base".sha256 = "1npfpsrwfiw961agdkvfi6c44hm9lhfxfjfy1gl0hakm9cd8hi9n";
  packages."mipsel_74kc"."packages".sha256 = "1wx5m799c5fxnsqsa6niz6vhzv9da71dcs7h926rh4p782i3izci";
  packages."mipsel_74kc"."routing".sha256 = "1f8w9b17llsflhk64241453pskaajngxsvpdg1xr27zz06f3s0zv";
  packages."mipsel_74kc"."telephony".sha256 = "0p5gdcfj2dy19y28023mrzm53mbya3yrks2a2qq0bxqs4a84lf31";
  targets."bcm27xx"."bcm2711".sha256 = "18n6av4y56zn0h3hy4ja5gph6k53nrr925llv3v0hwr848c4pddv";
  targets."bcm27xx"."bcm2711".packagesArch = "aarch64_cortex-a72";
  packages."aarch64_cortex-a72"."base".sha256 = "1yf77r7jy02zq1mkvmvfcr322aflyz1ch7i2a55hyqggmi6akgf5";
  packages."aarch64_cortex-a72"."packages".sha256 = "1rlrkgn462zabsq7ac1ibl3c9yjn29qci1xp6wg3wkkkyfc2zzqq";
  packages."aarch64_cortex-a72"."routing".sha256 = "0zkjv9fxdp9jnngwn7g0falkgdrbrm6b30zhpr3vmfgw31fkfhv6";
  packages."aarch64_cortex-a72"."telephony".sha256 = "0wwh1z3knxmhcqidmafjih9n0qpaavajv6vz0bnlriysynzwwdzj";
  targets."bcm27xx"."bcm2708".sha256 = "1wy8sf3bii6vwzd02i3idwjbxjb5973wfd40kyn5w71kmprw4sh4";
  targets."bcm27xx"."bcm2708".packagesArch = "arm_arm1176jzf-s_vfp";
  packages."arm_arm1176jzf-s_vfp"."base".sha256 = "0143rzl68zqf7hxw6j8mvrp6fj6mlf9j6v024c8imx5mz1yzsq2d";
  packages."arm_arm1176jzf-s_vfp"."packages".sha256 = "1165f25wpw82qa3rvd7bmdcy2m908fm4lfiqlszj0x6d9lga1ibm";
  packages."arm_arm1176jzf-s_vfp"."routing".sha256 = "1v11dsd2sl9bsppxprmy6zzm8g3zjmfxr9nh6jv2f1j4jr9myzv2";
  packages."arm_arm1176jzf-s_vfp"."telephony".sha256 = "15hdqd40kicr5j1c92vq4j1r2qp9bwfi5xqn1707ajz1l726d7ql";
  targets."bcm27xx"."bcm2709".sha256 = "1fl57fsl6hlm0r3sxjy5dhx8h9havx04583z0383y7kn2qmgnraa";
  targets."bcm27xx"."bcm2709".packagesArch = "arm_cortex-a7_neon-vfpv4";
  packages."arm_cortex-a7_neon-vfpv4"."base".sha256 = "0i527dck03fajf212pwzx9z616whip1rbsiycrxpzlgbhilmnw1w";
  packages."arm_cortex-a7_neon-vfpv4"."packages".sha256 = "0b8l23gakqb451k89383pqzrpaqnqi4say2nd0xqvkgzaf80wnci";
  packages."arm_cortex-a7_neon-vfpv4"."routing".sha256 = "1s65niiwj6rzj4ij47dnla7anv95vw7ksxzix2v3cfwk3bhwyp4z";
  packages."arm_cortex-a7_neon-vfpv4"."telephony".sha256 = "10p4r96ybafq3fshsvgjwi7xf5jc51qangck87p5q6wwq4m2k9fb";
  targets."bcm27xx"."bcm2710".sha256 = "0zxj6fh890km0zcd85190bngb34w445hrmp97mmvrwsw32c12pxf";
  targets."bcm27xx"."bcm2710".packagesArch = "aarch64_cortex-a53";
  packages."aarch64_cortex-a53"."base".sha256 = "0743jw47iw9giglapfn315z0j9wkkibb6k8930b8s2akyxrzrl3f";
  packages."aarch64_cortex-a53"."packages".sha256 = "10wa69bvn75ggw4x45lnhrpny1mxljcjvxk9s288w9mcgyn51p3i";
  packages."aarch64_cortex-a53"."routing".sha256 = "0jc3a8w2390b98g3d2cs2xpls4n0lb6bfk6ipi4bghvxrvfrbsg6";
  packages."aarch64_cortex-a53"."telephony".sha256 = "0bka8sibi1bk16idhspda5yf89048cwg6ym8rwf2g42vv4bgqmmb";
  targets."mvebu"."cortexa53".sha256 = "1x3zfkwnf5wyp5b7nq2l07bfd1bil58v4l3dmzzgfx34snxp27z2";
  targets."mvebu"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."mvebu"."cortexa72".sha256 = "1qsrmrpajwhhxgszc1j9qfxqfl0vmzxwazgbmka42lvzw8kmyba5";
  targets."mvebu"."cortexa72".packagesArch = "aarch64_cortex-a72";
  targets."mvebu"."cortexa9".sha256 = "0r201q5x2750n0rgh1h2fkb0j0z6ia8w454h4z1l0hh92lz6gjjz";
  targets."mvebu"."cortexa9".packagesArch = "arm_cortex-a9_vfpv3-d16";
  packages."arm_cortex-a9_vfpv3-d16"."base".sha256 = "1wzlgfv081y3936cf4afs70y4d4vxdkr0l6zhp7p1wwr5aj9mpc8";
  packages."arm_cortex-a9_vfpv3-d16"."packages".sha256 = "1w2jjmc1vrdvws2kwq6hi9zrckxarrk3h4b3ln6q9ivbf56zsyij";
  packages."arm_cortex-a9_vfpv3-d16"."routing".sha256 = "0vk9350q9dph2iwk9c9968nkllk6sy9b6a4h3hf8fzadszc0273k";
  packages."arm_cortex-a9_vfpv3-d16"."telephony".sha256 = "1ljywf85bnrf6r0ijvawn5jr56b1m4byw6c56m46yms8lf1a14vn";
  targets."at91"."sam9x".sha256 = "0q8fd6wnq670p78mbilnp6fls4v44x9bb2m684x03fd4x83zplsq";
  targets."at91"."sam9x".packagesArch = "arm_arm926ej-s";
  packages."arm_arm926ej-s"."base".sha256 = "09y0m0awvyq84m97icxs83v565mm7k6mhf11kkqg275kd4j0wbdi";
  packages."arm_arm926ej-s"."packages".sha256 = "0han78ma3n2ik9sdjn6lgivfkzr6pdmnxpv1gizr79h3cya86pz3";
  packages."arm_arm926ej-s"."routing".sha256 = "12ri5gf18c4ivz3r9ia2sa80wgrs0v2ms59zrdzrjpyj8zhd2w80";
  packages."arm_arm926ej-s"."telephony".sha256 = "1hkz90i2j2w7yid099598b8dv0g56b0aivrirnr98vbwwan708dg";
  targets."at91"."sama5".sha256 = "09d9n2wsj85ff17f63mp8z97agr3lm4j82zjv3i39ch0xdybxkjf";
  targets."at91"."sama5".packagesArch = "arm_cortex-a5_vfpv4";
  packages."arm_cortex-a5_vfpv4"."base".sha256 = "178z8xiil50z17wvpfkwrrxl59xlskwfmc2wacigyh0070v12xhc";
  packages."arm_cortex-a5_vfpv4"."packages".sha256 = "0fv9bcxydlh8lbrj7072qcy21ifznslfbzq34xjp3vny5a15mjb7";
  packages."arm_cortex-a5_vfpv4"."routing".sha256 = "1s5i2v87p2whxqdha2qlxbghn7s1qcfcmiyc2xy9ig17x8kbw74s";
  packages."arm_cortex-a5_vfpv4"."telephony".sha256 = "1mxdarrkfmjvk0k6y64280qrk2qzqm443mxik20584gnmvyb7iqf";
  targets."gemini"."generic".sha256 = "1lib68zjai98p9gmb77vdcfv1s210mr548r9sccfw5fqjzbx11df";
  targets."gemini"."generic".packagesArch = "arm_fa526";
  packages."arm_fa526"."base".sha256 = "1p4j6br5cdihw5xpi3g2g29hn3qs9pnqvci2sk9x29j8qya6cdx9";
  packages."arm_fa526"."packages".sha256 = "02qbljqwbw8icvjml3l1ipzi0265c852hvgx26w2kwm1vmkpv57m";
  packages."arm_fa526"."routing".sha256 = "1c0084rfwfl2iah7cb5b788ksnk8grkwqvzd3d0r959fw3k9bv68";
  packages."arm_fa526"."telephony".sha256 = "1phmm6km8ppqccx5ajpwa4cq79389yvg47szbzqb2x5ansx77pyv";
  targets."octeontx"."generic".sha256 = "0hjcd5g5p6cnv4rhija16qn2c7jmxc7iwkmil34h7d45lm4zydpl";
  targets."ipq40xx"."generic".sha256 = "0wg34h0npycgy5q5yy56y5zd048kqqsq0wn849wnmr29bj31w3a3";
  targets."ipq40xx"."generic".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."ipq40xx"."mikrotik".sha256 = "1mlaziaszqgjnz787w035h969mg1nx8hrdfhn2ss4lvyfr0vni66";
  targets."ipq40xx"."mikrotik".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7623".sha256 = "002j709v818q25frpfhfqs1hsdnpsj8gg22msz802qkh8lx683rz";
  targets."mediatek"."mt7623".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7629".sha256 = "1n5bnxkgyprn8pi44rlic84247dh1iiz2iqm35w740234p7wnk7c";
  targets."mediatek"."mt7629".packagesArch = "arm_cortex-a7";
  packages."arm_cortex-a7"."base".sha256 = "1z6ym91dx3l8iqav3sf7py401bs4ch074zglns3qa03pj3mjvwnm";
  packages."arm_cortex-a7"."packages".sha256 = "0q3yy0fky4v7ir0igxqacpmm05hgh2khzdi3vkkcp2hjdmyp3vra";
  packages."arm_cortex-a7"."routing".sha256 = "1rpibjkvdvywwwx5mnwxnar6zs13q8z7vdsq89h1pjmliv3z6sv8";
  packages."arm_cortex-a7"."telephony".sha256 = "1d8sk36n5q35radlbc8sfbihqqp33i2lprrvj2vcq6mi52d79c6q";
  targets."mediatek"."mt7622".sha256 = "1086dqqd0nv6dpsn1kxg44j281m8rvnyx8ncx7vpqpvm843cl38w";
  targets."mediatek"."mt7622".packagesArch = "aarch64_cortex-a53";
  targets."malta"."be".sha256 = "06vjz9hyd4xzsc9v525813zhck2ygsx1av0llamj4m2k45k9pmn6";
  targets."rockchip"."armv8".sha256 = "0hxq807a7132ybychlc1aq7lxhac372973xwil6c4kav40ma7bsa";
  targets."rockchip"."armv8".packagesArch = "aarch64_generic";
  packages."aarch64_generic"."base".sha256 = "0vzicnq4v0n50j3yyrm3w027qw5na93wq6da6lcvayd00prlqdkv";
  packages."aarch64_generic"."packages".sha256 = "13k235aqy98908gzhxwslwfkir6w4vkfpd81lja1j23w4hcznwha";
  packages."aarch64_generic"."routing".sha256 = "0zxpw5flb81dl4k0fj2nsl7qpf0klpi7r0gp9y69b897sk2d3g10";
  packages."aarch64_generic"."telephony".sha256 = "1cilyp4cb40d7ilzfvqniifzfly2hqp8v05sm860pccpxr7b4x27";
  targets."ipq806x"."generic".sha256 = "0gim01qf70975mafs9wb7q2fkyvys54gbgjkl5s9cg46bcwssmdc";
  targets."ipq806x"."generic".packagesArch = "arm_cortex-a15_neon-vfpv4";
  packages."arm_cortex-a15_neon-vfpv4"."base".sha256 = "1m4al0mandmdi6c51qx75cbncwhjzg8ycd84qxg1m6y1xlya9ll7";
  packages."arm_cortex-a15_neon-vfpv4"."packages".sha256 = "1p64h5d7lyxk3l1gskdjs84m55j8v3gnh19cnv5ns5fciq1qkxh3";
  packages."arm_cortex-a15_neon-vfpv4"."routing".sha256 = "0v8kv7rkj9cxwmx88amqfnp2dm1yalh5whazsj0zd6kjvcb0pns3";
  packages."arm_cortex-a15_neon-vfpv4"."telephony".sha256 = "149jd0wmrwn5z5f16igv2mx8567faxfx3k6rl74myckh6b34zs2y";
  targets."sunxi"."cortexa8".sha256 = "0gj9zcib00gy92mdkp7yrrf15qkbczhjlh9rbkd3apqsjl65sb9n";
  targets."sunxi"."cortexa8".packagesArch = "arm_cortex-a8_vfpv3";
  packages."arm_cortex-a8_vfpv3"."base".sha256 = "1m7rp6sbj1i9gndp501236n0pfizagfl1hqpd6w31gy34q1505hi";
  packages."arm_cortex-a8_vfpv3"."packages".sha256 = "1y3rf2xsnlhhc7s2cr7am41yb7zr4lqdwjziass406vlbviaqx1d";
  packages."arm_cortex-a8_vfpv3"."routing".sha256 = "1gm0n5iv6xd87pjk9gna4xrhsijdh5llnysj99bbhbijgld5ijy1";
  packages."arm_cortex-a8_vfpv3"."telephony".sha256 = "0bdkx9k682paydsz5pa3npdy7q0w6h36l3k18akj0lb4bkixcnsn";
  targets."sunxi"."cortexa53".sha256 = "1ql21zsqm9lx6a7rxwaf5q317q76slki5lbki798r6nc6a3x2acl";
  targets."sunxi"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."sunxi"."cortexa7".sha256 = "1nfx98f583l19ff0rx833ra3sqav5kk5rg890bjywp66252xiw0y";
  targets."sunxi"."cortexa7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mpc85xx"."p1010".sha256 = "17xsji9b3lws2m50yqk0janf9pf4b76bycr4w7g600mhgdwvqnwg";
  targets."mpc85xx"."p1010".packagesArch = "powerpc_8540";
  packages."powerpc_8540"."base".sha256 = "0hh5j702fbxw8gym4mdmkkgjf17jf1bdv7h2qhayq86fva4aqipk";
  packages."powerpc_8540"."packages".sha256 = "0r8frk8171fxj0qm1hc15g2vnzrhl2vbck63c1zar1lv0bp9syf7";
  packages."powerpc_8540"."routing".sha256 = "0ihxy0f5r0bqswij0i9slzbmai4pv80ibrivgy3k9siwhzqarp0g";
  packages."powerpc_8540"."telephony".sha256 = "0dbsdbhxiyjiinismpd6skr867bcrmp92w4f4b7m102plh46hyk8";
  targets."mpc85xx"."p2020".sha256 = "0h9rg993v3w3w9smgfn50gmdilhzxkmklgfk1rv5v5zvryg1dv3g";
  targets."mpc85xx"."p2020".packagesArch = "powerpc_8540";
  targets."mpc85xx"."p1020".sha256 = "1jlhnl03pg8ymv1dzffrkkv39g5zhzb06vwwmv1g7sgi4zff5rf5";
  targets."mpc85xx"."p1020".packagesArch = "powerpc_8540";
  targets."x86"."generic".sha256 = "02rj8l1gg51whq07gk2dsbfab7jr4crpawh09bf1znsmjlmbzmr1";
  targets."x86"."generic".packagesArch = "i386_pentium4";
  packages."i386_pentium4"."base".sha256 = "1fijxja5wn0s4jw6mnxgib73h0lc1lpcimgjyw9zm6h4k548pbfq";
  packages."i386_pentium4"."packages".sha256 = "1ahi0j34b9sq99lv0yzbmy9n85zik69j54qx15gx4fcd45pj01pb";
  packages."i386_pentium4"."routing".sha256 = "15lxab8yvw1xrfpcvr40xcxn37lyi6biwalqnv1k1gvkfihkpfh7";
  packages."i386_pentium4"."telephony".sha256 = "1rys581cm3ihb3jr9niqlsdcwh53qmhblapfij6zs78w2slm6186";
  targets."x86"."legacy".sha256 = "0kxifwqagrm7c02p2az2njhgjk298m82arr6381id6zngc91jg8k";
  targets."x86"."legacy".packagesArch = "i386_pentium-mmx";
  packages."i386_pentium-mmx"."base".sha256 = "08a5xs6pip02ds2ciwdvvma965i0lnmzfs81ql5vrbg0kdwgkx2j";
  packages."i386_pentium-mmx"."packages".sha256 = "1mhj9s5xcfcnkqzvdrxj17jzs3kpl91s6ba6srh9bxj857zgli9b";
  packages."i386_pentium-mmx"."routing".sha256 = "0d0iwynzi9ksj1dni2wqx8wp96xdjnp47sx41wrq9y4vh0lq5rnr";
  packages."i386_pentium-mmx"."telephony".sha256 = "1147i0nnami1ywmkqgydv7c5mxrjx8ym5rclz8q1c6nrwfjy5gl9";
  targets."x86"."geode".sha256 = "1w7ai0k7dg5475kmgjgk4dwn9sv2wjwry3ygzl65gn117ph27mxh";
  targets."x86"."geode".packagesArch = "i386_pentium-mmx";
  targets."x86"."64".sha256 = "033dfqhds53sjw8iypk5z0zwkq7hzldy3bvp9xk6z5xnk84iygdc";
  targets."x86"."64".packagesArch = "x86_64";
  packages."x86_64"."base".sha256 = "0df9frnkydymnn64m21p12mz78kqwcijb70a3qmp3ndlp6yhjmgn";
  packages."x86_64"."packages".sha256 = "0ax41zp9mnj0b013hvzqqzmgrssm6az1vxi8c5p2zhk75a10agay";
  packages."x86_64"."routing".sha256 = "15jgs19dm0gik0xy045l1mxqwdwjx4cn75jjczn0qqj37zhw5wxs";
  packages."x86_64"."telephony".sha256 = "10x73mvvzvp1ilb0kqjbdmkdlgn7zbbzqp1hcag56b5fpp35fhkc";
  targets."realtek"."generic".sha256 = "0cllxi86r1v40m76y341q9dvqi8rf2xp7m8zd3p1nijs6r26n5jv";
  targets."realtek"."generic".packagesArch = "mips_4kec";
  packages."mips_4kec"."base".sha256 = "0hz3shdcq41zc9j4f4cl0qcbn4hhknx4mnl4b4cfdfmji8l7p8l7";
  packages."mips_4kec"."packages".sha256 = "0h5n6328rz74zpai3vfz2ir7gnmryffbfplxw9ylbxzaz4yvn7r7";
  packages."mips_4kec"."routing".sha256 = "15hz9yiarwdwd0v2l3lm5pmyrj3hcvw69gkvnh291p8q2lfgx6fy";
  packages."mips_4kec"."telephony".sha256 = "1a2pkg1zc3c0v4gi9g1rmr3909lqai76k0if190zib14b9jxlyl5";
  targets."armvirt"."32".sha256 = "1h7zmn6ihvkpasaxb1kdvmlbajbawfwz9zqcfj9agl24r3y614yl";
  targets."armvirt"."64".sha256 = "18j2ljds6hlk7pqpjkqccdrbk8ca07nxghyf90303z6cvpyascc7";
  targets."kirkwood"."generic".sha256 = "1kkpyd5nmkrz1qzkpwrrpcrs5m1f0504sppv6j1vpyv7ixcdab73";
  targets."kirkwood"."generic".packagesArch = "arm_xscale";
  packages."arm_xscale"."base".sha256 = "0cizngxa9cny7wa7a0q0d7p53qbhlmzhi43g5sl9g27mszjwvry7";
  packages."arm_xscale"."packages".sha256 = "0sgp9kyz4awcsqz8yfpik89jjfgdjf656jgqmcgx3knmvy68sq2b";
  packages."arm_xscale"."routing".sha256 = "01c1yiyffx1k5rgv6x4877c2y67id74zxwg87mnn7zha32hiih8p";
  packages."arm_xscale"."telephony".sha256 = "19qyhwfsgr3scl3mcd1kzbk6frr5s4awipqgal2r0pnnk5wimbwv";
  targets."ath79"."generic".sha256 = "0392r407w3f3qmk3gy8bfa76g7dpgappcrp5gaf2djl54lz0cj37";
  targets."ath79"."generic".packagesArch = "mips_24kc";
  packages."mips_24kc"."base".sha256 = "14w15bcd71z3m9bc9k0vn7shq2rw0pp30fls4riyi21ix8qg9x12";
  packages."mips_24kc"."packages".sha256 = "069bc7fr44b9vcifdybspdwgp1fqaf2bzbh10s4wh1726d59bfph";
  packages."mips_24kc"."routing".sha256 = "0d2fdkdlz36pg35qipk1wwmhry6jxydgshj95iah0h9islclzsxf";
  packages."mips_24kc"."telephony".sha256 = "19ahr1b10sbc79fbalr6cnrfn624w7415h7g5m2vvp261kn7w7wq";
  targets."ath79"."mikrotik".sha256 = "09bi9lk8zj2bj5n2255gll1vjanaicl0i1cbfmz10al1z5ddzkbi";
  targets."ath79"."mikrotik".packagesArch = "mips_24kc";
  targets."ath79"."nand".sha256 = "16xch2c72cddd4rf7nj31mafis54zcjahm3wr91vvlw0jscgqq0x";
  targets."ath79"."nand".packagesArch = "mips_24kc";
  targets."ath79"."tiny".sha256 = "14jykx2jnahndfjcli3fjb0bf669kq91k05r4vzbwwbs1kg53g55";
  targets."ath79"."tiny".packagesArch = "mips_24kc";
  targets."archs38"."generic".sha256 = "09gsnqsl7g4m3al35fx46ndn4mwjripw4dx4vv56nfkzg6v87gah";
  targets."archs38"."generic".packagesArch = "arc_archs";
  packages."arc_archs"."base".sha256 = "0j6zxipj0lm9lssi4y2yy2ymjxmw3qx7wbh1b66j1hj9hpnqhnnd";
  packages."arc_archs"."packages".sha256 = "16q74xy59cipmgqgxihkmg4q347b7xz01gic4bc8jb3k135cy66f";
  packages."arc_archs"."routing".sha256 = "13qy7y104f8ng8w5jwazi1287cphmcqiv0a3wnf0gxv8zpmm4x7v";
  packages."arc_archs"."telephony".sha256 = "0vxkzvxjshzq6jrcw1dcfagcgq9psclxq9c9hzl162kkjsd2pg73";
  targets."ath25"."generic".sha256 = "085qpxj06fdqq6d4whfaxl5s4d5ziwsn8lmnma498bi6p694jg9k";
  targets."ath25"."generic".packagesArch = "mips_mips32";
  targets."apm821xx"."nand".sha256 = "1v6cijrqaph41z665yhvpnj9v8y926hxw4w2maj1q9ckzm5cv5fg";
  targets."apm821xx"."nand".packagesArch = "powerpc_464fp";
  packages."powerpc_464fp"."base".sha256 = "178f8xpviwmk7qwiclh8qaxhqvxxdbbk7cfwkg9m6j9aqn3ljmz2";
  packages."powerpc_464fp"."packages".sha256 = "0w4rbpsrwll65nkiryhq41yzj94a8lwpnr5syx7k0scd6208my38";
  packages."powerpc_464fp"."routing".sha256 = "0hnl103vn3x2a5xmb2xg6lnff2kp64amwkqydwzp3py2gjmfj8dp";
  packages."powerpc_464fp"."telephony".sha256 = "0jlb56gv8qx0chc33nc96imzk3a6qg4q0a3j7nip2rc03jrngnv5";
  targets."apm821xx"."sata".sha256 = "05apbwlzdspzpnxgaabmlmm8w5g3rqbzbpsw3zh4m73af6d0dink";
  targets."apm821xx"."sata".packagesArch = "powerpc_464fp";
  targets."bcm53xx"."generic".sha256 = "0fkfhxj3ipnsz6bhir5sh0qqyq2mrrfhn88rxzdwxii4lha38s0a";
  targets."bcm53xx"."generic".packagesArch = "arm_cortex-a9";
  packages."arm_cortex-a9"."base".sha256 = "13lsdqw6wgyv936issf2c5hhi2lg200rvc3pwzg7zipjjdn31w02";
  packages."arm_cortex-a9"."packages".sha256 = "0rmrldhvjj88bwzwm4bbnf7ylf4wq2ml01aa0vw62xqqrbkh9hs5";
  packages."arm_cortex-a9"."routing".sha256 = "1y2c4qa97zc2pwh6gbipqinb2qp7z719ar66c828z5ykxc6jv6rf";
  packages."arm_cortex-a9"."telephony".sha256 = "1003q32sb2ifizfrasparbqa9xnh139gix89a8r80pccpzvw7m39";
  targets."ramips"."mt76x8".sha256 = "0lihbdjsv24kp8gqs1sjb3izav6mj96i6cpk46ryvmv2hl29lic7";
  targets."ramips"."mt76x8".packagesArch = "mipsel_24kc";
  packages."mipsel_24kc"."base".sha256 = "163wszps00dm1ipf1kvcil4ql44q4ghbyiccd6816mpm6zrqdnyb";
  packages."mipsel_24kc"."packages".sha256 = "1msw1kxnsd3wd53x9l2jfpj0jqyi910czzrpm578g9dlqswvdsng";
  packages."mipsel_24kc"."routing".sha256 = "0hd9gw5ci6m739vjfahji3rharschark4kvklsv8q2crhz5qz0yz";
  packages."mipsel_24kc"."telephony".sha256 = "07plkxpicjfhk3nhyp06simjb4aqp8mzbldivwyi1db93glw7f4m";
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
  packages."mips64_octeonplus"."base".sha256 = "1x3j6bd3jj0qsa9kjnrgd77wxx0r0bynrf852hm7l92gr4m9f11d";
  packages."mips64_octeonplus"."packages".sha256 = "13ffixzllf20wha5qjh5gfcqqs9bgy6dka3dnbwwi321hq02y7kh";
  packages."mips64_octeonplus"."routing".sha256 = "1v6wqk3il1k5h2d897akr9xiidk7ah561911gmhbi4hk4yls6c09";
  packages."mips64_octeonplus"."telephony".sha256 = "1djv4nga794ycvbnh85phzai1s1mrmpva2s52a91s63xpdznlaa4";
  targets."pistachio"."generic".sha256 = "00vsqlif59cwd13avbz1d0s955g02yygc4sqgdam98jwlrh90i8w";
  targets."pistachio"."generic".packagesArch = "mipsel_24kc_24kf";
  packages."mipsel_24kc_24kf"."base".sha256 = "138pyi3kqkzrki3fc9frs1wjwm243gcrlx40wjasvbrsbajx8r63";
  packages."mipsel_24kc_24kf"."packages".sha256 = "0lwcsmn6nnyfkkagmi6ri73rrpbdnl11ivi43l1551ghmv6q0lb1";
  packages."mipsel_24kc_24kf"."routing".sha256 = "0d9xz6gs1mqfadq1d7h2fdhahz4hj6548qckf1ljlxk7jjrryls5";
  packages."mipsel_24kc_24kf"."telephony".sha256 = "100g3gyfzylb7v2da71bgpb04nq0lf1z091lb00n1f0m2zrry9f6";
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
