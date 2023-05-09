{
  targets."oxnas"."ox820".sha256 = "0afpgvq6iz0qbinck0q881c98wxgvy5bg8j75cqgq8mh225gcdhp";
  targets."oxnas"."ox820".packagesArch = "arm_mpcore";
  packages."arm_mpcore"."base".sha256 = "026gh07h3dahf5s9n59v9x7nnmk0nm63a1yax7wwak5174svwrjj";
  packages."arm_mpcore"."luci".sha256 = "1mpbk0jr6l8ahydrnpyhm3ifqjcq89vn8ns3s16qf2nlgzi2cik6";
  packages."arm_mpcore"."packages".sha256 = "15qafksv6b14s7f40hbn7dhsv37id8mgysmk614bj4d7hh36iyrk";
  packages."arm_mpcore"."routing".sha256 = "05cgg36792w8sqhmfw0hbdkj6jhzly7rp43yfj6kzjchw1g34mhc";
  packages."arm_mpcore"."telephony".sha256 = "0v6pwdmp8sh5n59s4yk86fvw65qr4rkdlcji6bdl9bprcbznw9p8";
  targets."mxs"."generic".sha256 = "1ai9axsycdcld8ap8iv6z33qrgm3k32193rdqdpk1v39lysynnkv";
  targets."zynq"."generic".sha256 = "0cgzm2fl74dr84c921z65mh6igfw163k41l7bwa5v0z4s9j5b32d";
  targets."zynq"."generic".packagesArch = "arm_cortex-a9_neon";
  packages."arm_cortex-a9_neon"."base".sha256 = "1s06ci0pq0d3b7dfb8zlv4p4x6j4p6bjm41g07w1pqlcb5753g05";
  packages."arm_cortex-a9_neon"."luci".sha256 = "1mlk3cmxyqjp9sm8g83bqk96rk47w5m6ayx005apjf4r239hk8kn";
  packages."arm_cortex-a9_neon"."packages".sha256 = "0m3fbjy22pcm6mnknixz0k6vrlh54dy4vj5vcp25nk00p3djq55v";
  packages."arm_cortex-a9_neon"."routing".sha256 = "0cwgwic16nkxhwniy2x515805dbvx6qkx4g39djbmd6bi1xkxmii";
  packages."arm_cortex-a9_neon"."telephony".sha256 = "1jg8wwan5kql0dcwkdqhxpn02f5mcckgyzg6y3in8dpc8yb547ky";
  targets."bcm63xx"."generic".sha256 = "18cv70lxlvhy037fz1y5gdzy6pajhkm280g82ajvfp8s3nf5mcqh";
  targets."bcm63xx"."generic".packagesArch = "mips_mips32";
  packages."mips_mips32"."base".sha256 = "0jbawclrrqyx6a65d3axlcv7m8zgar722rfzi5pw0p362mki10r3";
  packages."mips_mips32"."luci".sha256 = "11ranlrlcsqgxv89q8sb53n2v0rik7rk60sdbn8nfnlanx7fflva";
  packages."mips_mips32"."packages".sha256 = "1baisqqwxgikz9nk1h2dhc5c48bj4yzjw01v0v2npv6kd5qshpjh";
  packages."mips_mips32"."routing".sha256 = "12f2p8d15sssndv0pzvdymgm69ic7xjxhrfkkxr93ak3cl02xyj6";
  packages."mips_mips32"."telephony".sha256 = "0mzlj7hnslqh97zpy48nbqxgrsrnwl4dvlcxj4ivq6b6xjg1zi6a";
  targets."bcm63xx"."smp".sha256 = "10g3dkchaqjhnlyccbyid0h9ipk7l2pl6hxj3smnh6c5wdrnv9b8";
  targets."bcm63xx"."smp".packagesArch = "mips_mips32";
  targets."bcm47xx"."generic".sha256 = "1glm7jv2pjvkaa3rnixfb3z08f2d4ph35mmmxigmgd5qxfdgmqsd";
  targets."bcm47xx"."generic".packagesArch = "mipsel_mips32";
  packages."mipsel_mips32"."base".sha256 = "1rsd8gvnrzx990g2ng2a2c4a6mkxaj9fqckj031xw3zl0q5xyydb";
  packages."mipsel_mips32"."luci".sha256 = "18fjg32846na86cdcn9k0d4h30cvfqgx79i0w6nfkjnvfhqyjqz4";
  packages."mipsel_mips32"."packages".sha256 = "0vykjw19vy43kvrcss6rspiy6nhj5hww3xmf6ldszfjrisdpzy44";
  packages."mipsel_mips32"."routing".sha256 = "1l8xi3f4c1pdwdxwxa6wxlv5hb85n9gwbjlmc4zf16bdg1mxi2ic";
  packages."mipsel_mips32"."telephony".sha256 = "06k3m5i2j3n507ks9l2a8j4zxqz85g1i3jjbrm059mcgnv29s60k";
  targets."bcm47xx"."legacy".sha256 = "0m4w0i88zb8yjb3dckb5n90y9zn5axfcgbfjjkbnhs6fxx6xbghc";
  targets."bcm47xx"."legacy".packagesArch = "mipsel_mips32";
  targets."bcm47xx"."mips74k".sha256 = "1xdpdrlvr4zpaiqzln4wg18pndkg4vzj62799fy6zmfbbrnawikw";
  targets."bcm47xx"."mips74k".packagesArch = "mipsel_74kc";
  packages."mipsel_74kc"."base".sha256 = "1kvshqwbili4qgnnl54dk12qqzw9krcllliz3kmgs21a7iaq8hng";
  packages."mipsel_74kc"."luci".sha256 = "1bvmm31f3c5q3cdl9sr63pia91xpsinmgkcl9av27yfzlc5a4iqk";
  packages."mipsel_74kc"."packages".sha256 = "1n7w33x7hw7y507sin1yi4x8k11pj0664xraa3pxlyhx99lc2gxn";
  packages."mipsel_74kc"."routing".sha256 = "1cvn182i70lphzqprk09d3wyygb849zidfbga552hrza3lpajfq0";
  packages."mipsel_74kc"."telephony".sha256 = "0k816j804f3q1ki2gc6avsx57psmz1dl6bqdgzbp02mhmpalkjn5";
  targets."bcm27xx"."bcm2711".sha256 = "1zfn7bz3qz1vynflhc59cvdx05yhyjrbpad5d24r594h9hgyn665";
  targets."bcm27xx"."bcm2711".packagesArch = "aarch64_cortex-a72";
  packages."aarch64_cortex-a72"."base".sha256 = "1psbci9lr6h1wck0pykl5cnjlw9wljn11zf4i1q45xgpvpjdfvyh";
  packages."aarch64_cortex-a72"."luci".sha256 = "18r6macgsiwf3adrpjh3c6fvip4a3k0jzs94mjjaf5mhb6h6d701";
  packages."aarch64_cortex-a72"."packages".sha256 = "0j1d6i670la8ykd572l4ss9dliyxxpg1x7cad66qpg14l87h0hnl";
  packages."aarch64_cortex-a72"."routing".sha256 = "1bx46x92yr5j04bfccw4m95wq8xsllqyaxjn263n70z05wcvmgsl";
  packages."aarch64_cortex-a72"."telephony".sha256 = "0wl21rxgin31avx6wjm6s1gyd6r6bdx9iyix1hczc5n87mzqbrcj";
  targets."bcm27xx"."bcm2708".sha256 = "0i1mgangcc8p1abka3am63mqfakd38c2q4z4laj3rsqznslp6a7w";
  targets."bcm27xx"."bcm2708".packagesArch = "arm_arm1176jzf-s_vfp";
  packages."arm_arm1176jzf-s_vfp"."base".sha256 = "0c1zld378vkn5j4g9hzd7b89z8k0igszs5pazmpq33y49w8qrv3v";
  packages."arm_arm1176jzf-s_vfp"."luci".sha256 = "1gpx5355qssmdqx598aki3ai2ldvcyl0ksk37g7imxnx88wjj9hb";
  packages."arm_arm1176jzf-s_vfp"."packages".sha256 = "08hpyn1wwlnhjl3px6w181vrs28i3k0lnf4bvkffam3i5hx77k4c";
  packages."arm_arm1176jzf-s_vfp"."routing".sha256 = "18hx6pzdzhx8fab4za2nvh0m7byv57qd1j350dkln6dkvahihbn9";
  packages."arm_arm1176jzf-s_vfp"."telephony".sha256 = "1z1wk86gpxwy8n525gjjszijvpnix16mgv31295wlgyhrqqd0d95";
  targets."bcm27xx"."bcm2709".sha256 = "17cmsmamnbzy9wlf1bjw72glmkbby1w5b4l35l1kav309iapdca6";
  targets."bcm27xx"."bcm2709".packagesArch = "arm_cortex-a7_neon-vfpv4";
  packages."arm_cortex-a7_neon-vfpv4"."base".sha256 = "1x3ssqz6ha3mr3ybjsg0kxk98hna4n1dvzlgl3mxvwsvi0rw2xfx";
  packages."arm_cortex-a7_neon-vfpv4"."luci".sha256 = "0rqpc3lhyq9fmy14c20smh1h7ir7mabn2q5bcpl9fh3kn4cz0bry";
  packages."arm_cortex-a7_neon-vfpv4"."packages".sha256 = "0fj6kgmqmxkxfx789ffp2sad14bc7ys6ghca158c8jhhvlmw29kk";
  packages."arm_cortex-a7_neon-vfpv4"."routing".sha256 = "10dxlhimzq4c4xin8ja4vcwrsb1z66qjmlqn09ppjlahawysip6c";
  packages."arm_cortex-a7_neon-vfpv4"."telephony".sha256 = "0s95szwddala6xzz1sv7z92p4zg2b5imm09sjcrq6gq93dkqzin8";
  targets."bcm27xx"."bcm2710".sha256 = "1zpwr9gh0ydamnxrzdjj8ashviigdi5a1wg7pnilywa79227ms67";
  targets."bcm27xx"."bcm2710".packagesArch = "aarch64_cortex-a53";
  packages."aarch64_cortex-a53"."base".sha256 = "0n180nddr0xl4bxc58dcizbq77birh1xbf68zy3g2ncnga085i79";
  packages."aarch64_cortex-a53"."luci".sha256 = "0vsx2647slfskfi9jpdij8675ifk185bndx48ymg26hzgfk3ar98";
  packages."aarch64_cortex-a53"."packages".sha256 = "1rsjvwpkpzxkwjq33gkjajfczyyn78ll1drvqndnqli4mjfp6zsb";
  packages."aarch64_cortex-a53"."routing".sha256 = "0mxc35q2hpwrr8mh7j2wb5ymnh94b3jmkmhd7vmcn9zrh03fkmsh";
  packages."aarch64_cortex-a53"."telephony".sha256 = "1b0zcfkl7y4xlah7r0alg2ppn1l2x3lz5l7v41h1ff598lc7iqwc";
  targets."mvebu"."cortexa53".sha256 = "098ixrb5aifkf8wnr7xgdzf65pb5hb2nlwvb14k7ywm35l0wgjlr";
  targets."mvebu"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."mvebu"."cortexa72".sha256 = "1q94nd1ng6bzprl2xrj6snhg340qbxxjsdrxbfpgs3rnza2rqxm2";
  targets."mvebu"."cortexa72".packagesArch = "aarch64_cortex-a72";
  targets."mvebu"."cortexa9".sha256 = "0n1s75x4ys2g4xr73hrc4w2s58nmmi1nc2qipy4ppzj8qjva24b1";
  targets."mvebu"."cortexa9".packagesArch = "arm_cortex-a9_vfpv3-d16";
  packages."arm_cortex-a9_vfpv3-d16"."base".sha256 = "01n1qj3dpbv6bqxsdy8rp23x1yg9qq5f2mfk7nf37ydk45gr6z60";
  packages."arm_cortex-a9_vfpv3-d16"."luci".sha256 = "13a4vs58xrrwx44kgxlay4cix4m812jpd1g9m2f8pk8krvbd1cr1";
  packages."arm_cortex-a9_vfpv3-d16"."packages".sha256 = "0am5ym37220w8b7qrgrzkxawrlqfdfajh27n2icbl25d42hhsr0h";
  packages."arm_cortex-a9_vfpv3-d16"."routing".sha256 = "0l2m0gjab6ggsh3ll54xgm1dhizkalng7y8bzq384b7bsky97dsb";
  packages."arm_cortex-a9_vfpv3-d16"."telephony".sha256 = "100k4cmzc8s41pba7mmr7h8a34jjbsryqx496gvvsr1jqshz1jfx";
  targets."at91"."sam9x".sha256 = "02afxgal2bfss9y3arkwgisqa9r1lmcwg9lysl761418pgl0ba7a";
  targets."at91"."sam9x".packagesArch = "arm_arm926ej-s";
  packages."arm_arm926ej-s"."base".sha256 = "096v02x2nhh7h1wvfp45vx275688i8vfkhg3ywqlv9w6is85w32b";
  packages."arm_arm926ej-s"."luci".sha256 = "1km5pi7jv6jghh84kp19by6zb3py4qvwy85m3kl1ck97p51ah9p1";
  packages."arm_arm926ej-s"."packages".sha256 = "1gqdmpm8qxsanrmlvl10a71kr0za134j8xi70cr02r3nhpr9qap8";
  packages."arm_arm926ej-s"."routing".sha256 = "1yqpnm13cnd68zf0pr4fzvcwfgswgqpzd7ikxmpz3xnlnkhdgxp9";
  packages."arm_arm926ej-s"."telephony".sha256 = "1x5rp0g84jqh17mb48qrmvq8r3avflf9v87kqjmk2prl144v7rgw";
  targets."at91"."sama7".sha256 = "1dzyvy8j07h165m8ysinpynhn46yxnfvab3bcnn0ji1dz0sf63v7";
  targets."at91"."sama7".packagesArch = "arm_cortex-a7_vfpv4";
  packages."arm_cortex-a7_vfpv4"."base".sha256 = "1jpyhfaq4np5znxnj4k371p5sc7jn36fgnlc8nq0y6y48b7qj1v6";
  packages."arm_cortex-a7_vfpv4"."luci".sha256 = "1zb6ylhqdh00wh4pr8482d9n9lllwcz3bx8fxh89i2jzwviyxdry";
  packages."arm_cortex-a7_vfpv4"."packages".sha256 = "12kn6q8i3nlgazg8h0a3q9dx5qca868biz813m96ivj5xjrbr96k";
  packages."arm_cortex-a7_vfpv4"."routing".sha256 = "1npyh586fndq1zy7vvgxk4gld90i6v131jw66iim69z8r4l01kp2";
  packages."arm_cortex-a7_vfpv4"."telephony".sha256 = "1zl5dnjb8d9ns2pyk04s100ijr441y5r6sh2f1xafqwfzvay2p77";
  targets."at91"."sama5".sha256 = "1xg33f0cjf77bkzp4g64vl2y6a6ym8gna62sfcchikk3k7w0gy3q";
  targets."at91"."sama5".packagesArch = "arm_cortex-a5_vfpv4";
  packages."arm_cortex-a5_vfpv4"."base".sha256 = "1ixw1f2vhm6pqsbyi7d53mj7vpy409cqzjfa8vkim5v3xm9ba6rc";
  packages."arm_cortex-a5_vfpv4"."luci".sha256 = "13x6jx0vfp2h1bxjh2fllgldrzajyia6135g9jd01y50p20blpva";
  packages."arm_cortex-a5_vfpv4"."packages".sha256 = "0lmd6ynl99k8r53hr0i8iyday1khvf533mqqy7pnjmv6idm0h7x7";
  packages."arm_cortex-a5_vfpv4"."routing".sha256 = "0jjl1slh5i1dxxdr1cw3lnxz5yh4lply3g383q0blz5yd5xksak4";
  packages."arm_cortex-a5_vfpv4"."telephony".sha256 = "1xw97h2cdigvg7ap9093nplqdrvm6nqpaxpja3bzh3fdl4jnsl2c";
  targets."gemini"."generic".sha256 = "0zswry9mmhjbwas8daid6szrbplzf6b9a09hb6vn8m3zq1y15a5a";
  targets."gemini"."generic".packagesArch = "arm_fa526";
  packages."arm_fa526"."base".sha256 = "0dasx2l29pakxc8lxsgkns2ybcjslm26574vzzhkk814xlv4sw5p";
  packages."arm_fa526"."luci".sha256 = "0ym7ndg5wqq2x5mbq48mvmb1bkva33pwq2ldwa718jd3wn6zy0cg";
  packages."arm_fa526"."packages".sha256 = "1f66wyw3h4vl2hs39vsl0qxnjp16f7k1a73inpx09vn007r7bm11";
  packages."arm_fa526"."routing".sha256 = "0z46mfcsg5b3iwwjwma2n98p8biag53ra3nlpwhrjn8cmcx5viih";
  packages."arm_fa526"."telephony".sha256 = "1phgndixhc7x7rzrlcpsfknnz1nz0v0yyhq0qm6v06pf2fyqxw7p";
  targets."octeontx"."generic".sha256 = "0v6v41xhmbad33z6j1wwpf96c85ccbrgg8wdxz6ga0rn1m2bk8mf";
  targets."ipq40xx"."generic".sha256 = "03bd98jscrzncnv5h4ba12ib30nyd3d6990ajkd567055s9a1ksh";
  targets."ipq40xx"."generic".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."ipq40xx"."mikrotik".sha256 = "05zrvx3z5vxhf8pja58kydxdp0z9j065xgm291xb2zw73m8pqny8";
  targets."ipq40xx"."mikrotik".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7623".sha256 = "1jykn983i8yvz8x0vdhqkz3v9kwr0nnl23s6bvwzz4b34gsbii6k";
  targets."mediatek"."mt7623".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7629".sha256 = "0f2slvcdih3brmz75si2kcfyi73xg0ydyl6j09hnplf3a1gvdn51";
  targets."mediatek"."mt7629".packagesArch = "arm_cortex-a7";
  packages."arm_cortex-a7"."base".sha256 = "13bll099xvzsrv6ynm1vi44g2n339rshrlhx1gyr8d6zhvknhhkc";
  packages."arm_cortex-a7"."luci".sha256 = "025d8cgqqhdqxdnqjv9j1v83xhbl4yschbq6pwzc0bngf8sj7jhv";
  packages."arm_cortex-a7"."packages".sha256 = "02v8i9p4q16bkx76xvriga0xr1f39idfszz9xi8rld7iyl6y2s05";
  packages."arm_cortex-a7"."routing".sha256 = "1bsjm1qxrfbn8z7lw4bgv49lsia7a9rzqw2xd8zvn45y3b06y6hm";
  packages."arm_cortex-a7"."telephony".sha256 = "1lsx1il7596kfhx5hjks2n5jaxizvb8nkx72ccmy7gpcq4772s6f";
  targets."mediatek"."mt7622".sha256 = "103dgvwjyil5a0y0xv1jsxskd5iq1f07i554wr0fcvz7vbd70l8m";
  targets."mediatek"."mt7622".packagesArch = "aarch64_cortex-a53";
  targets."malta"."be".sha256 = "1qc4pdd0fjv1qqgc9w1gfpcy7fd3p8fk13i19rgv1svgggds86wl";
  targets."rockchip"."armv8".sha256 = "1vhcp17w4nz92ci4qcnh300yd930c8dznjx2zygf1yylr5fa2sfy";
  targets."rockchip"."armv8".packagesArch = "aarch64_generic";
  packages."aarch64_generic"."base".sha256 = "0wnih6hhkw8954ci3pbw75mx3a6wg3vm17qdbjwpgla0i3q9yng4";
  packages."aarch64_generic"."luci".sha256 = "1ynph7s6005j24gazcgff70ndw9pqfgw8fc586hlf77wi19lxyin";
  packages."aarch64_generic"."packages".sha256 = "0a07gn161mscfchn2pyi6366b44gf5abgw1hgjmar9hp01hryl8p";
  packages."aarch64_generic"."routing".sha256 = "0n7fh3zd0aq76zlqi9ba727pqmnf8a3ns3fj129cc836bng747a3";
  packages."aarch64_generic"."telephony".sha256 = "06xy63fn19h2n7sbfa30mccsaaijxh3xvw5plyvh1c5f9g6jkhcr";
  targets."ipq806x"."generic".sha256 = "1cbzdqz2dxi92y3rd67sfbp6i7h5slvbrpcq1bv8gbayy80xvk42";
  targets."ipq806x"."generic".packagesArch = "arm_cortex-a15_neon-vfpv4";
  packages."arm_cortex-a15_neon-vfpv4"."base".sha256 = "1r4rfs4y61djxkbpbwqbj9sygp6v0m14rfx8kkfcmx19vsnm2lny";
  packages."arm_cortex-a15_neon-vfpv4"."luci".sha256 = "0csslb7i75qwa36b72ch3m1zak1ym94acqnlk03ax5gmwjglfzv0";
  packages."arm_cortex-a15_neon-vfpv4"."packages".sha256 = "19ncib24yk1dckv060k7r4ijmgib4sz5gvqdhxp5abhyp218wixb";
  packages."arm_cortex-a15_neon-vfpv4"."routing".sha256 = "0ir276nvm73aajb35x7hfkvh4h9frn4qd8nq3vlih1a4h9lii9g5";
  packages."arm_cortex-a15_neon-vfpv4"."telephony".sha256 = "15x4ipdwq1c6mf5qd0pcgbl13f9g3ripak7hbvdgk3pfqpy6d0vp";
  targets."sunxi"."cortexa8".sha256 = "1s3q9q8bcy2iqnlxn500sgk38iz5zvq0f9bazrdx2vw4ysx64dpl";
  targets."sunxi"."cortexa8".packagesArch = "arm_cortex-a8_vfpv3";
  packages."arm_cortex-a8_vfpv3"."base".sha256 = "12czj2bpscjjlsvcw4qipnfi2zd23xzbh96f0cpfsk29rgqy29cj";
  packages."arm_cortex-a8_vfpv3"."luci".sha256 = "04j44kw2r2n4i0jwm8g8kl2a5nxvzppvfisgk6p5fhpz802xm6kf";
  packages."arm_cortex-a8_vfpv3"."packages".sha256 = "0r5xvrzbwysnam8casb4fx3m5dl85hnz9qvrggpmqz469blbd132";
  packages."arm_cortex-a8_vfpv3"."routing".sha256 = "1dsrzcy3diizwjn9895k1a3whzgsbabg5ajvnlp7bjk8ligmf76h";
  packages."arm_cortex-a8_vfpv3"."telephony".sha256 = "1r985y3zp97303xrbi0dh6w292v14mdvd7rips7w63xj2lzvgxp3";
  targets."sunxi"."cortexa53".sha256 = "0rr7b9l3kmn9n2xv65gd5w4ascqqbrccvgibwd5xw1rn6yzcwbd3";
  targets."sunxi"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."sunxi"."cortexa7".sha256 = "1rrb71lxzs83bcqq7jr15d4hgq5nl56mmblblq7vkfgi6sl2frq3";
  targets."sunxi"."cortexa7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mpc85xx"."p1010".sha256 = "1fwd1ki5k6r9l2vkz6c9mvcnn7bmca9ssgjasjfwv8akga8d5js7";
  targets."mpc85xx"."p1010".packagesArch = "powerpc_8540";
  packages."powerpc_8540"."base".sha256 = "0dv7iy2ai0cdx17zcdfqp9iisca8kdhhwg2wdqnja33zazmnr4im";
  packages."powerpc_8540"."luci".sha256 = "11f5yjz1b4364s19rq88psljmp2jn6q24g2fx1c40whmn2crgk14";
  packages."powerpc_8540"."packages".sha256 = "021kw9mh6nisayymna8hh6wdf5q6zmpq6xlh0920w16x4ibdjifd";
  packages."powerpc_8540"."routing".sha256 = "15z1v44jhy583lh1hvz9z5af7xavwv7dsadrw4f8qsi6m500d844";
  packages."powerpc_8540"."telephony".sha256 = "04kivf40zkbzv943c8hzzmix75z9xjjxv6l0mpij9pwgdkhxa0wb";
  targets."mpc85xx"."p2020".sha256 = "08pf8hv8fph8my71z57bf97ddhz6lzbldjga2gmdykv0hi2637i0";
  targets."mpc85xx"."p2020".packagesArch = "powerpc_8540";
  targets."mpc85xx"."p1020".sha256 = "04ghf648nxdxx9qn6xlifnz3gaap0792r2x2n7kq8rrkw7xjr366";
  targets."mpc85xx"."p1020".packagesArch = "powerpc_8540";
  targets."imx"."cortexa7".sha256 = "0camrr3p2fk1abkw8lm7jqg5ic2fwkxwq5vc2w944h71jqckaycw";
  targets."imx"."cortexa9".sha256 = "0pnzaax6lv3j407lp4j2dn93ah1s2nvg2psrphcgksp5h9abqhn4";
  targets."imx"."cortexa9".packagesArch = "arm_cortex-a9_neon";
  targets."x86"."generic".sha256 = "0b9fvakjddn8rxd2w6zy7cm8r01azaf62nqgas8n370rns5bh6q5";
  targets."x86"."generic".packagesArch = "i386_pentium4";
  packages."i386_pentium4"."base".sha256 = "1mfnrfmqrqrk37w5fjawrp1am7r4ykkk7sacdj5z3i9hrb74njnh";
  packages."i386_pentium4"."luci".sha256 = "0zhjbfah9lzwyvnwq1claxgp6c4azsai94cb8kvjjhi3kp5xrzd1";
  packages."i386_pentium4"."packages".sha256 = "15jf6p0pj3w3nqairrwgmpkn1jz819cv5c1hzhyfid25sw29i4lh";
  packages."i386_pentium4"."routing".sha256 = "0j5y7nh8hk1si7sm4csnajxxc7bx3ky7g9173x8930ljq90gr3sv";
  packages."i386_pentium4"."telephony".sha256 = "11r7b8ipbmgj0lc54vjb05b0vhbpbjbrrd9sp8a1218sdigrzhmw";
  targets."x86"."legacy".sha256 = "0b7b57i80idx9v6kidwzqwwas7xm7irmwwl3axwn5v2jxn8i0y7l";
  targets."x86"."legacy".packagesArch = "i386_pentium-mmx";
  packages."i386_pentium-mmx"."base".sha256 = "1vrf2x78x3kilzknkzwnl259zdqby71lvwqfbxhv2n23fg4vk3bh";
  packages."i386_pentium-mmx"."luci".sha256 = "1hjic9pxgac24503n3l9yg1xr1hx18s2y0lpsim7hx8qf5ks8i42";
  packages."i386_pentium-mmx"."packages".sha256 = "0mwvmqr7h5fqqj6n7p1mjqi5jff2brq948dcda9v25bfhxwwr83g";
  packages."i386_pentium-mmx"."routing".sha256 = "0iqb07if2h7za8fgbhhm147ifbyv3bjzz6927ncm4zr5y3kfzpvz";
  packages."i386_pentium-mmx"."telephony".sha256 = "0k92bxyil6kz8nslzri0zhacbgn0cdwkhp5lrff0d7rkl57swlz3";
  targets."x86"."geode".sha256 = "0jfg57iz98m2zn46l1b12dwdf9xd08i6aifi75z6w39181vp2m12";
  targets."x86"."geode".packagesArch = "i386_pentium-mmx";
  targets."x86"."64".sha256 = "0jm94jz3n1jj3r4dgf4gzp30n8kbdk964m71db3ng2mqfp66pqja";
  targets."x86"."64".packagesArch = "x86_64";
  packages."x86_64"."base".sha256 = "165iag402q5p3ah363yq3crgqb2dqayf46qy31csz7h4dd29fh5w";
  packages."x86_64"."luci".sha256 = "09561x48l7nyhz856n8ijqbmkwnyvaw8vpxw19drcldvsp4phxz3";
  packages."x86_64"."packages".sha256 = "1gvx7r6731z4lq1ym8sxrqsz2gllbx9fbw51g7idjhrcfn12h0pr";
  packages."x86_64"."routing".sha256 = "07g3kyylkhgia1zd63fliljssz7wy3yw251qd6jpbg880jhhqzsp";
  packages."x86_64"."telephony".sha256 = "046dwazz0s3asdlmz6bicch6qh83gccai1bkazjp7zgbvxfyszh9";
  targets."realtek"."rtl838x".sha256 = "1s9p1fpy67i5n7zc0968rggvr13ikclpwxhmrdblrfdjrghfprsk";
  targets."realtek"."rtl838x".packagesArch = "mips_4kec";
  packages."mips_4kec"."base".sha256 = "03mbbdxyl82pjz9xnasjcx89hsx3iji795nhpxpkryfaqhzcnkn3";
  packages."mips_4kec"."luci".sha256 = "0daj22knx5xf4zz81ijjdr4wpm5zc050fkrpr0d8mm3cnfy453rx";
  packages."mips_4kec"."packages".sha256 = "1p4hgjmqpahb3i6k3icn4mkl3fxkwscsqllqp3isqbfz8rgpsnj4";
  packages."mips_4kec"."routing".sha256 = "14jsiska3dv5ipgcnic38j69cglyacxilkrl445a8gh44dhc7ync";
  packages."mips_4kec"."telephony".sha256 = "1mi2qxxvr25pwanrivvjfmqpm2cbcisqn1di7xkhirc9622spxnj";
  targets."realtek"."rtl930x".sha256 = "1f1zsargv1v3f641c6g1mc1y28j1lvlvnn3fb4229lcx9g42rxi0";
  targets."realtek"."rtl930x".packagesArch = "mips_24kc";
  packages."mips_24kc"."base".sha256 = "11dim2vsx00yg3h2xdnx21zvrfy5v9hg9y6mpfkcirdrrkm9wzs7";
  packages."mips_24kc"."luci".sha256 = "18l2fmamxvx0p2wgzlvpfpphirrscfhwwxgf0a6hgiqmrqsyfhqx";
  packages."mips_24kc"."packages".sha256 = "0yp43hwb26b6jl1zp2wnrj5bw2awkcpq724k75fp1h0pvz5nk3di";
  packages."mips_24kc"."routing".sha256 = "1hmgfp6q9nfc3anbakb5hv24dvccnixvw7711d2i35ydpd3zxa9k";
  packages."mips_24kc"."telephony".sha256 = "132ip85dgs9h12mhzsi91cqamqgms3h72bgjggsf0yjp7jr5mb20";
  targets."realtek"."rtl931x".sha256 = "0znxj7rs0ivj0dr92pr13c2h9b8pd3986fvhdhhdanq7n973nxch";
  targets."realtek"."rtl839x".sha256 = "153lanm9n2as23xmr4fw6gnczyz4pj00rbf6da1aa5yxqsly3k8v";
  targets."realtek"."rtl839x".packagesArch = "mips_24kc";
  targets."armvirt"."32".sha256 = "0ynjncaljcz5zajx2jfqzwi95skma26vnpdznjx2a92w3kv78b5l";
  targets."armvirt"."64".sha256 = "03plq0vbnxkr87r58bwyqbp6386h6x091z473v48whzsmxkjvpgj";
  targets."kirkwood"."generic".sha256 = "01qcry12p7jszrm6wzppjcz5sryx2f5psaj6c46nmc2cal6m4nsb";
  targets."kirkwood"."generic".packagesArch = "arm_xscale";
  packages."arm_xscale"."base".sha256 = "1mrdgkwwwi4489hnqim275xbvk2lzd8v8ka54pqhw0x4d44xhdla";
  packages."arm_xscale"."luci".sha256 = "060c02idm6kvhrq4yaf3v0rivd52v4b16g1kf1g0jwfp2i5wj274";
  packages."arm_xscale"."packages".sha256 = "13i22x8zxhxgkc3fy249iyf18y555wcclwrd3h2zi5yc78qhy8ki";
  packages."arm_xscale"."routing".sha256 = "02wd7mdzrzvnijh5iyqv7ag89lalmafr92lcil2aiy0havgmgisz";
  packages."arm_xscale"."telephony".sha256 = "1nmlb2jzgrr0b7s4dzb3ifdh2lbnxv318r268y4bvc28gcdgy18a";
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
  packages."arc_archs"."base".sha256 = "0ipkicxqpgb1lpfwhzwjlcvknnk0fwapz4wdhln3i7mv6waswjgf";
  packages."arc_archs"."luci".sha256 = "00vql90cz7wq6q21ym35wx4ipdfdf3649ymflv5gkn63im702ib3";
  packages."arc_archs"."packages".sha256 = "1mz2m6wn8f5cjz6w0iffrvl9hqlj2ldfv1s9xn50nqxr5ij6nmxz";
  packages."arc_archs"."routing".sha256 = "0p4y0wf4i4v8l7w2d80m6vd9xawjgh5kpva9akshb8z9dwfq52q8";
  packages."arc_archs"."telephony".sha256 = "0h0bi3pz9pqqisvjmsp7wbh1cji9blkdh45a7br52mcy8nsqg3lr";
  targets."ath25"."generic".sha256 = "1i0nbn9liy68qd3mymfq3q0nk71r6zlp1irxk6j616dcwr4qwzr0";
  targets."ath25"."generic".packagesArch = "mips_mips32";
  targets."apm821xx"."nand".sha256 = "1mivimpsz981mk0iz5zxi12nmwci76z0bj365s4qy10pcyvaw10f";
  targets."apm821xx"."nand".packagesArch = "powerpc_464fp";
  packages."powerpc_464fp"."base".sha256 = "16a5q9crm06cl91flsvj3nm5kwjzp9xza740illrdlr4b1klq40f";
  packages."powerpc_464fp"."luci".sha256 = "120bhnb3g8k7zws2kmb7vbdbg7zgnmiq3sg04ly5c6z0pls0309j";
  packages."powerpc_464fp"."packages".sha256 = "12i9d4bxv3i4jkzvs1rzxnmpxvq2c1b9qwx0zxr2qxq8q11imrym";
  packages."powerpc_464fp"."routing".sha256 = "00c14hcg8dblikl9j367m4fzd0yrabybqynzpjynyf4f8bcjr5rg";
  packages."powerpc_464fp"."telephony".sha256 = "1jk01acy3s77fzcshjwb6y274f539r7x6mwqxnnhqysdv465mqh2";
  targets."apm821xx"."sata".sha256 = "0if98b67c9xz6lbjcszrhmavmccwijx3k45k4x1kq457pnxv5zrh";
  targets."apm821xx"."sata".packagesArch = "powerpc_464fp";
  targets."bcm53xx"."generic".sha256 = "1h0r7dczspypk1219c8i26zq9kfp16aryiyv7xmknqrq54x0wzxx";
  targets."bcm53xx"."generic".packagesArch = "arm_cortex-a9";
  packages."arm_cortex-a9"."base".sha256 = "1dzkqm8pb3si9na0wpcas054f7b258vyb5i830s4xh52q2p0g20z";
  packages."arm_cortex-a9"."luci".sha256 = "170virwrjzyzjsz9d965zi2l0rxf8ws6ar7wqwx7j6hql2748w88";
  packages."arm_cortex-a9"."packages".sha256 = "0y76hszm146jz17rl0bdbwc2q1y644cyagg0hzjszwi7dncxsmvf";
  packages."arm_cortex-a9"."routing".sha256 = "1fd5w3v7fv0557wpi5hs462127ci3h871vjgzxpc6dm018nh76qg";
  packages."arm_cortex-a9"."telephony".sha256 = "0a2vv3pdwxlvgvd9lcvkh19khaqi31803ihh6mh68jy56xpd6w24";
  targets."ramips"."mt76x8".sha256 = "0fkrx6sp9lz46hhm3czyvcygq4czjcff939zlbd91sinbq8wr6h4";
  targets."ramips"."mt76x8".packagesArch = "mipsel_24kc";
  packages."mipsel_24kc"."base".sha256 = "13cxcvfqa8nwqd2rjsl3l6saaj5zwlmf1dddlhba5s9xs4296zq2";
  packages."mipsel_24kc"."luci".sha256 = "1hxmzpi1kjbs2bnd88qd3p1gryfpimnfa9k9lslz1xjnbz7ph28m";
  packages."mipsel_24kc"."packages".sha256 = "1y4zsil93avpgqzdxm410by9bjnqmj2dvmspgkfhr1sc0shg1y1m";
  packages."mipsel_24kc"."routing".sha256 = "0h1kxyvixqrm70ybmj6xzrxjsb58lmah2n3k567c3qhn7j9ihy86";
  packages."mipsel_24kc"."telephony".sha256 = "0k75djfw7swyqgy1231nx0hmrld5y5hgdqzp9ccwzvd3anmirpqx";
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
  packages."mips64_octeonplus"."base".sha256 = "04ig6wnnanpyp3ycq3l5rkizc7kklj7jshl4z5a9fhxlmkfrn513";
  packages."mips64_octeonplus"."luci".sha256 = "0kmwn8ghlrqwr52rydhp3dqhbvmprl7rd43i573q06f6446qc4j6";
  packages."mips64_octeonplus"."packages".sha256 = "0h9g79yv81pcwzad1sx3rpdwlddjvc5k2fg524idf2s8y1a4rh0l";
  packages."mips64_octeonplus"."routing".sha256 = "07r06baf6l2c3dg6176jynggpvhvc49c2c5rgxhry5g3b681wf31";
  packages."mips64_octeonplus"."telephony".sha256 = "0kpn03748k15blpjkl5wrx4szbji8l2c9jyia513ksihwa3xm46r";
  targets."pistachio"."generic".sha256 = "0ca97p86ckh8k0826d84s4mnb910p77wv301pwcqyfdincjrb9cy";
  targets."pistachio"."generic".packagesArch = "mipsel_24kc_24kf";
  packages."mipsel_24kc_24kf"."base".sha256 = "01cgnqca6k80kvrhnpa57x6a6baljw7vm672mwc32kyyr3bvp2hp";
  packages."mipsel_24kc_24kf"."luci".sha256 = "1jgc763khn0g99gnp2w2lr5zgbaswbphcngln1527g2whm4zq5fj";
  packages."mipsel_24kc_24kf"."packages".sha256 = "0lnkr7wymdifniy6bxsmckivpjy82czbxzvngag6ygq8lkhkyal2";
  packages."mipsel_24kc_24kf"."routing".sha256 = "0v9lzzxvni2dbcz9ax0w8ghf4dcfa13287rhdziwrcf1gmyw8cfn";
  packages."mipsel_24kc_24kf"."telephony".sha256 = "1k153pa2xyhqiwjkdnfbm3s9gwqp2cfk3cljqms70vpmq7khn89b";
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
