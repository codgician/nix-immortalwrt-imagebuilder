{
  targets."oxnas"."ox820".sha256 = "1mh5ypn106l59zjaqbh6sjwm2vf0skda0q6fbihplsk2nr6zf2cd";
  targets."oxnas"."ox820".packagesArch = "arm_mpcore";
  packages."arm_mpcore"."base".sha256 = "026gh07h3dahf5s9n59v9x7nnmk0nm63a1yax7wwak5174svwrjj";
  packages."arm_mpcore"."luci".sha256 = "1mpbk0jr6l8ahydrnpyhm3ifqjcq89vn8ns3s16qf2nlgzi2cik6";
  packages."arm_mpcore"."packages".sha256 = "15qafksv6b14s7f40hbn7dhsv37id8mgysmk614bj4d7hh36iyrk";
  packages."arm_mpcore"."routing".sha256 = "05cgg36792w8sqhmfw0hbdkj6jhzly7rp43yfj6kzjchw1g34mhc";
  packages."arm_mpcore"."telephony".sha256 = "0v6pwdmp8sh5n59s4yk86fvw65qr4rkdlcji6bdl9bprcbznw9p8";
  targets."mxs"."generic".sha256 = "0qvd4y6cvkh0khj5znslb32ai4m97pvvrvs115j5727li7zvnm0q";
  targets."zynq"."generic".sha256 = "0wdi90bqh48fw4cpz6g6asx7anb0z5a385652xfg8dlpplvbpkfv";
  targets."zynq"."generic".packagesArch = "arm_cortex-a9_neon";
  packages."arm_cortex-a9_neon"."base".sha256 = "1s06ci0pq0d3b7dfb8zlv4p4x6j4p6bjm41g07w1pqlcb5753g05";
  packages."arm_cortex-a9_neon"."luci".sha256 = "1mlk3cmxyqjp9sm8g83bqk96rk47w5m6ayx005apjf4r239hk8kn";
  packages."arm_cortex-a9_neon"."packages".sha256 = "0m3fbjy22pcm6mnknixz0k6vrlh54dy4vj5vcp25nk00p3djq55v";
  packages."arm_cortex-a9_neon"."routing".sha256 = "0cwgwic16nkxhwniy2x515805dbvx6qkx4g39djbmd6bi1xkxmii";
  packages."arm_cortex-a9_neon"."telephony".sha256 = "1jg8wwan5kql0dcwkdqhxpn02f5mcckgyzg6y3in8dpc8yb547ky";
  targets."bcm63xx"."generic".sha256 = "1rwfgg6wjrik02ziwsprvq56z8fgcj7djpm23rsadi89rrl3j771";
  targets."bcm63xx"."generic".packagesArch = "mips_mips32";
  packages."mips_mips32"."base".sha256 = "0jbawclrrqyx6a65d3axlcv7m8zgar722rfzi5pw0p362mki10r3";
  packages."mips_mips32"."luci".sha256 = "11ranlrlcsqgxv89q8sb53n2v0rik7rk60sdbn8nfnlanx7fflva";
  packages."mips_mips32"."packages".sha256 = "1baisqqwxgikz9nk1h2dhc5c48bj4yzjw01v0v2npv6kd5qshpjh";
  packages."mips_mips32"."routing".sha256 = "12f2p8d15sssndv0pzvdymgm69ic7xjxhrfkkxr93ak3cl02xyj6";
  packages."mips_mips32"."telephony".sha256 = "0mzlj7hnslqh97zpy48nbqxgrsrnwl4dvlcxj4ivq6b6xjg1zi6a";
  targets."bcm63xx"."smp".sha256 = "1qna4c8bkxmlnbl6x589jw8awg2wzq00vh61gaszyvn7zh8894in";
  targets."bcm63xx"."smp".packagesArch = "mips_mips32";
  targets."bcm47xx"."generic".sha256 = "0pbnbkamd43rpddchk32287wxpwiiwb2cxzmc6hki5zpm8xk7yn6";
  targets."bcm47xx"."generic".packagesArch = "mipsel_mips32";
  packages."mipsel_mips32"."base".sha256 = "1rsd8gvnrzx990g2ng2a2c4a6mkxaj9fqckj031xw3zl0q5xyydb";
  packages."mipsel_mips32"."luci".sha256 = "18fjg32846na86cdcn9k0d4h30cvfqgx79i0w6nfkjnvfhqyjqz4";
  packages."mipsel_mips32"."packages".sha256 = "0vykjw19vy43kvrcss6rspiy6nhj5hww3xmf6ldszfjrisdpzy44";
  packages."mipsel_mips32"."routing".sha256 = "1l8xi3f4c1pdwdxwxa6wxlv5hb85n9gwbjlmc4zf16bdg1mxi2ic";
  packages."mipsel_mips32"."telephony".sha256 = "06k3m5i2j3n507ks9l2a8j4zxqz85g1i3jjbrm059mcgnv29s60k";
  targets."bcm47xx"."legacy".sha256 = "116289k6w0gjyggacn0w1ps3xvp87f08qx2m3gzibvmvdmfm8d5c";
  targets."bcm47xx"."legacy".packagesArch = "mipsel_mips32";
  targets."bcm47xx"."mips74k".sha256 = "01sc47a3bkamp67mqci8xr2sldwz7vmgznw8ywqfsdmj2cyq2a2c";
  targets."bcm47xx"."mips74k".packagesArch = "mipsel_74kc";
  packages."mipsel_74kc"."base".sha256 = "1kvshqwbili4qgnnl54dk12qqzw9krcllliz3kmgs21a7iaq8hng";
  packages."mipsel_74kc"."luci".sha256 = "1bvmm31f3c5q3cdl9sr63pia91xpsinmgkcl9av27yfzlc5a4iqk";
  packages."mipsel_74kc"."packages".sha256 = "1n7w33x7hw7y507sin1yi4x8k11pj0664xraa3pxlyhx99lc2gxn";
  packages."mipsel_74kc"."routing".sha256 = "1cvn182i70lphzqprk09d3wyygb849zidfbga552hrza3lpajfq0";
  packages."mipsel_74kc"."telephony".sha256 = "0k816j804f3q1ki2gc6avsx57psmz1dl6bqdgzbp02mhmpalkjn5";
  targets."bcm27xx"."bcm2711".sha256 = "0parkjz64sl9vsgviadqlgwy3if6h0n37kkbw7qryfinah2snha2";
  targets."bcm27xx"."bcm2711".packagesArch = "aarch64_cortex-a72";
  packages."aarch64_cortex-a72"."base".sha256 = "1psbci9lr6h1wck0pykl5cnjlw9wljn11zf4i1q45xgpvpjdfvyh";
  packages."aarch64_cortex-a72"."luci".sha256 = "18r6macgsiwf3adrpjh3c6fvip4a3k0jzs94mjjaf5mhb6h6d701";
  packages."aarch64_cortex-a72"."packages".sha256 = "0j1d6i670la8ykd572l4ss9dliyxxpg1x7cad66qpg14l87h0hnl";
  packages."aarch64_cortex-a72"."routing".sha256 = "1bx46x92yr5j04bfccw4m95wq8xsllqyaxjn263n70z05wcvmgsl";
  packages."aarch64_cortex-a72"."telephony".sha256 = "0wl21rxgin31avx6wjm6s1gyd6r6bdx9iyix1hczc5n87mzqbrcj";
  targets."bcm27xx"."bcm2708".sha256 = "1v7mm0lbkmwfysl70jyal5dflxgl3awxvdcfm8f8cm46z27gyj09";
  targets."bcm27xx"."bcm2708".packagesArch = "arm_arm1176jzf-s_vfp";
  packages."arm_arm1176jzf-s_vfp"."base".sha256 = "0c1zld378vkn5j4g9hzd7b89z8k0igszs5pazmpq33y49w8qrv3v";
  packages."arm_arm1176jzf-s_vfp"."luci".sha256 = "1gpx5355qssmdqx598aki3ai2ldvcyl0ksk37g7imxnx88wjj9hb";
  packages."arm_arm1176jzf-s_vfp"."packages".sha256 = "08hpyn1wwlnhjl3px6w181vrs28i3k0lnf4bvkffam3i5hx77k4c";
  packages."arm_arm1176jzf-s_vfp"."routing".sha256 = "18hx6pzdzhx8fab4za2nvh0m7byv57qd1j350dkln6dkvahihbn9";
  packages."arm_arm1176jzf-s_vfp"."telephony".sha256 = "1z1wk86gpxwy8n525gjjszijvpnix16mgv31295wlgyhrqqd0d95";
  targets."bcm27xx"."bcm2709".sha256 = "1vfgz8zivcd3vc8w9ilkinir9m9x5qnawyclmwdgv12xnr89mlww";
  targets."bcm27xx"."bcm2709".packagesArch = "arm_cortex-a7_neon-vfpv4";
  packages."arm_cortex-a7_neon-vfpv4"."base".sha256 = "1x3ssqz6ha3mr3ybjsg0kxk98hna4n1dvzlgl3mxvwsvi0rw2xfx";
  packages."arm_cortex-a7_neon-vfpv4"."luci".sha256 = "0rqpc3lhyq9fmy14c20smh1h7ir7mabn2q5bcpl9fh3kn4cz0bry";
  packages."arm_cortex-a7_neon-vfpv4"."packages".sha256 = "0fj6kgmqmxkxfx789ffp2sad14bc7ys6ghca158c8jhhvlmw29kk";
  packages."arm_cortex-a7_neon-vfpv4"."routing".sha256 = "10dxlhimzq4c4xin8ja4vcwrsb1z66qjmlqn09ppjlahawysip6c";
  packages."arm_cortex-a7_neon-vfpv4"."telephony".sha256 = "0s95szwddala6xzz1sv7z92p4zg2b5imm09sjcrq6gq93dkqzin8";
  targets."bcm27xx"."bcm2710".sha256 = "0s3wr15jljhlg090ms1l44lra86lkwmqndg3c6c0q6y0wp68v4fi";
  targets."bcm27xx"."bcm2710".packagesArch = "aarch64_cortex-a53";
  packages."aarch64_cortex-a53"."base".sha256 = "0n180nddr0xl4bxc58dcizbq77birh1xbf68zy3g2ncnga085i79";
  packages."aarch64_cortex-a53"."luci".sha256 = "0vsx2647slfskfi9jpdij8675ifk185bndx48ymg26hzgfk3ar98";
  packages."aarch64_cortex-a53"."packages".sha256 = "1rsjvwpkpzxkwjq33gkjajfczyyn78ll1drvqndnqli4mjfp6zsb";
  packages."aarch64_cortex-a53"."routing".sha256 = "0mxc35q2hpwrr8mh7j2wb5ymnh94b3jmkmhd7vmcn9zrh03fkmsh";
  packages."aarch64_cortex-a53"."telephony".sha256 = "1b0zcfkl7y4xlah7r0alg2ppn1l2x3lz5l7v41h1ff598lc7iqwc";
  targets."mvebu"."cortexa53".sha256 = "11bnizsac9pl9s162hygnssjsmxyyf6qwix5ly24mlypr5ixj4g3";
  targets."mvebu"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."mvebu"."cortexa72".sha256 = "1vcfgm92bgyzwi9az2yggz4l0x63saviz6sr8sm98jamxsxjizk7";
  targets."mvebu"."cortexa72".packagesArch = "aarch64_cortex-a72";
  targets."mvebu"."cortexa9".sha256 = "1w0gghb1n039lrx0ly0g6f1r09lmwcadjj1sv31s14yfmkk62ixm";
  targets."mvebu"."cortexa9".packagesArch = "arm_cortex-a9_vfpv3-d16";
  packages."arm_cortex-a9_vfpv3-d16"."base".sha256 = "01n1qj3dpbv6bqxsdy8rp23x1yg9qq5f2mfk7nf37ydk45gr6z60";
  packages."arm_cortex-a9_vfpv3-d16"."luci".sha256 = "13a4vs58xrrwx44kgxlay4cix4m812jpd1g9m2f8pk8krvbd1cr1";
  packages."arm_cortex-a9_vfpv3-d16"."packages".sha256 = "0am5ym37220w8b7qrgrzkxawrlqfdfajh27n2icbl25d42hhsr0h";
  packages."arm_cortex-a9_vfpv3-d16"."routing".sha256 = "0l2m0gjab6ggsh3ll54xgm1dhizkalng7y8bzq384b7bsky97dsb";
  packages."arm_cortex-a9_vfpv3-d16"."telephony".sha256 = "100k4cmzc8s41pba7mmr7h8a34jjbsryqx496gvvsr1jqshz1jfx";
  targets."at91"."sam9x".sha256 = "0zzw395p95b7ymaycmdpqc3w0k7xb4k3r8xa42ws25awk3wb14iz";
  targets."at91"."sam9x".packagesArch = "arm_arm926ej-s";
  packages."arm_arm926ej-s"."base".sha256 = "096v02x2nhh7h1wvfp45vx275688i8vfkhg3ywqlv9w6is85w32b";
  packages."arm_arm926ej-s"."luci".sha256 = "1km5pi7jv6jghh84kp19by6zb3py4qvwy85m3kl1ck97p51ah9p1";
  packages."arm_arm926ej-s"."packages".sha256 = "1gqdmpm8qxsanrmlvl10a71kr0za134j8xi70cr02r3nhpr9qap8";
  packages."arm_arm926ej-s"."routing".sha256 = "1yqpnm13cnd68zf0pr4fzvcwfgswgqpzd7ikxmpz3xnlnkhdgxp9";
  packages."arm_arm926ej-s"."telephony".sha256 = "1x5rp0g84jqh17mb48qrmvq8r3avflf9v87kqjmk2prl144v7rgw";
  targets."at91"."sama7".sha256 = "0px8lq15262glv92rrb3l9rav1044zlk8i44998878vz8zschn9s";
  targets."at91"."sama7".packagesArch = "arm_cortex-a7_vfpv4";
  packages."arm_cortex-a7_vfpv4"."base".sha256 = "1jpyhfaq4np5znxnj4k371p5sc7jn36fgnlc8nq0y6y48b7qj1v6";
  packages."arm_cortex-a7_vfpv4"."luci".sha256 = "1zb6ylhqdh00wh4pr8482d9n9lllwcz3bx8fxh89i2jzwviyxdry";
  packages."arm_cortex-a7_vfpv4"."packages".sha256 = "12kn6q8i3nlgazg8h0a3q9dx5qca868biz813m96ivj5xjrbr96k";
  packages."arm_cortex-a7_vfpv4"."routing".sha256 = "1npyh586fndq1zy7vvgxk4gld90i6v131jw66iim69z8r4l01kp2";
  packages."arm_cortex-a7_vfpv4"."telephony".sha256 = "1zl5dnjb8d9ns2pyk04s100ijr441y5r6sh2f1xafqwfzvay2p77";
  targets."at91"."sama5".sha256 = "1afr7w4c44a0wmasgjrk9x57x0i22xxa4j6mjcnr9q5jcw1wimw6";
  targets."at91"."sama5".packagesArch = "arm_cortex-a5_vfpv4";
  packages."arm_cortex-a5_vfpv4"."base".sha256 = "1ixw1f2vhm6pqsbyi7d53mj7vpy409cqzjfa8vkim5v3xm9ba6rc";
  packages."arm_cortex-a5_vfpv4"."luci".sha256 = "13x6jx0vfp2h1bxjh2fllgldrzajyia6135g9jd01y50p20blpva";
  packages."arm_cortex-a5_vfpv4"."packages".sha256 = "0lmd6ynl99k8r53hr0i8iyday1khvf533mqqy7pnjmv6idm0h7x7";
  packages."arm_cortex-a5_vfpv4"."routing".sha256 = "0jjl1slh5i1dxxdr1cw3lnxz5yh4lply3g383q0blz5yd5xksak4";
  packages."arm_cortex-a5_vfpv4"."telephony".sha256 = "1xw97h2cdigvg7ap9093nplqdrvm6nqpaxpja3bzh3fdl4jnsl2c";
  targets."gemini"."generic".sha256 = "0z2z4728rxgz2ilkw0bdsa1a681l5sy3bwflidn3jh2v00pa90n4";
  targets."gemini"."generic".packagesArch = "arm_fa526";
  packages."arm_fa526"."base".sha256 = "0dasx2l29pakxc8lxsgkns2ybcjslm26574vzzhkk814xlv4sw5p";
  packages."arm_fa526"."luci".sha256 = "0ym7ndg5wqq2x5mbq48mvmb1bkva33pwq2ldwa718jd3wn6zy0cg";
  packages."arm_fa526"."packages".sha256 = "1f66wyw3h4vl2hs39vsl0qxnjp16f7k1a73inpx09vn007r7bm11";
  packages."arm_fa526"."routing".sha256 = "0z46mfcsg5b3iwwjwma2n98p8biag53ra3nlpwhrjn8cmcx5viih";
  packages."arm_fa526"."telephony".sha256 = "1phgndixhc7x7rzrlcpsfknnz1nz0v0yyhq0qm6v06pf2fyqxw7p";
  targets."octeontx"."generic".sha256 = "1vnamfh7rzs0fmqlilczz45swlyv2q40v2lxr2mv2jipngcnvd6q";
  targets."ipq40xx"."generic".sha256 = "0hrm3xwlzvwrbjq7hy06j7xkga5avg338zbk4s8908mw21n5w9n7";
  targets."ipq40xx"."generic".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."ipq40xx"."mikrotik".sha256 = "10lrznvngv7m0j317i006j2lag969mhkk8y11w78k223q49ifpdb";
  targets."ipq40xx"."mikrotik".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7623".sha256 = "1a18pvgb6hay27kndwqqsqxlyrvmgvhfg8sy0rh510dfp1cv47pi";
  targets."mediatek"."mt7623".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7629".sha256 = "0rfdvw3z7wqp7fl5zxplqmhmqjfv5crqnp4l0hrp5xq7l2qvfjdk";
  targets."mediatek"."mt7629".packagesArch = "arm_cortex-a7";
  packages."arm_cortex-a7"."base".sha256 = "13bll099xvzsrv6ynm1vi44g2n339rshrlhx1gyr8d6zhvknhhkc";
  packages."arm_cortex-a7"."luci".sha256 = "025d8cgqqhdqxdnqjv9j1v83xhbl4yschbq6pwzc0bngf8sj7jhv";
  packages."arm_cortex-a7"."packages".sha256 = "02v8i9p4q16bkx76xvriga0xr1f39idfszz9xi8rld7iyl6y2s05";
  packages."arm_cortex-a7"."routing".sha256 = "1bsjm1qxrfbn8z7lw4bgv49lsia7a9rzqw2xd8zvn45y3b06y6hm";
  packages."arm_cortex-a7"."telephony".sha256 = "1lsx1il7596kfhx5hjks2n5jaxizvb8nkx72ccmy7gpcq4772s6f";
  targets."mediatek"."mt7622".sha256 = "1shwr1gpi06mff61q6pcl3w1c52f1q2k75klnnhhxpg47q1b9gkm";
  targets."mediatek"."mt7622".packagesArch = "aarch64_cortex-a53";
  targets."malta"."be".sha256 = "1himf65l262da5z4nxzbixlnxclxl0xv4in0xfwsvs37nvaswpfm";
  targets."rockchip"."armv8".sha256 = "1wdk36vckfj5r28niwg9a73a5dxgpdf38mf6vkvqk06s6acn1a3r";
  targets."rockchip"."armv8".packagesArch = "aarch64_generic";
  packages."aarch64_generic"."base".sha256 = "0wnih6hhkw8954ci3pbw75mx3a6wg3vm17qdbjwpgla0i3q9yng4";
  packages."aarch64_generic"."luci".sha256 = "1ynph7s6005j24gazcgff70ndw9pqfgw8fc586hlf77wi19lxyin";
  packages."aarch64_generic"."packages".sha256 = "0a07gn161mscfchn2pyi6366b44gf5abgw1hgjmar9hp01hryl8p";
  packages."aarch64_generic"."routing".sha256 = "0n7fh3zd0aq76zlqi9ba727pqmnf8a3ns3fj129cc836bng747a3";
  packages."aarch64_generic"."telephony".sha256 = "06xy63fn19h2n7sbfa30mccsaaijxh3xvw5plyvh1c5f9g6jkhcr";
  targets."ipq806x"."generic".sha256 = "0vjg4cc40xlxrap33a5xcw7daic4wb3vyjpd56ihpm30fxphlz3s";
  targets."ipq806x"."generic".packagesArch = "arm_cortex-a15_neon-vfpv4";
  packages."arm_cortex-a15_neon-vfpv4"."base".sha256 = "1r4rfs4y61djxkbpbwqbj9sygp6v0m14rfx8kkfcmx19vsnm2lny";
  packages."arm_cortex-a15_neon-vfpv4"."luci".sha256 = "0csslb7i75qwa36b72ch3m1zak1ym94acqnlk03ax5gmwjglfzv0";
  packages."arm_cortex-a15_neon-vfpv4"."packages".sha256 = "19ncib24yk1dckv060k7r4ijmgib4sz5gvqdhxp5abhyp218wixb";
  packages."arm_cortex-a15_neon-vfpv4"."routing".sha256 = "0ir276nvm73aajb35x7hfkvh4h9frn4qd8nq3vlih1a4h9lii9g5";
  packages."arm_cortex-a15_neon-vfpv4"."telephony".sha256 = "15x4ipdwq1c6mf5qd0pcgbl13f9g3ripak7hbvdgk3pfqpy6d0vp";
  targets."sunxi"."cortexa8".sha256 = "0ih74vgalhdbcpall5gnm20ahrvkdsn1nm3548vdn9nmbcjs3hkq";
  targets."sunxi"."cortexa8".packagesArch = "arm_cortex-a8_vfpv3";
  packages."arm_cortex-a8_vfpv3"."base".sha256 = "12czj2bpscjjlsvcw4qipnfi2zd23xzbh96f0cpfsk29rgqy29cj";
  packages."arm_cortex-a8_vfpv3"."luci".sha256 = "04j44kw2r2n4i0jwm8g8kl2a5nxvzppvfisgk6p5fhpz802xm6kf";
  packages."arm_cortex-a8_vfpv3"."packages".sha256 = "0r5xvrzbwysnam8casb4fx3m5dl85hnz9qvrggpmqz469blbd132";
  packages."arm_cortex-a8_vfpv3"."routing".sha256 = "1dsrzcy3diizwjn9895k1a3whzgsbabg5ajvnlp7bjk8ligmf76h";
  packages."arm_cortex-a8_vfpv3"."telephony".sha256 = "1r985y3zp97303xrbi0dh6w292v14mdvd7rips7w63xj2lzvgxp3";
  targets."sunxi"."cortexa53".sha256 = "0cfwac4i921jj1432mmpwi5hv6hm71v07jd224rdq7indhqgh6i1";
  targets."sunxi"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."sunxi"."cortexa7".sha256 = "0dk7nr1c85f2kkzkidlhmjfr0gcz73yh0dj687haags0qny36nnf";
  targets."sunxi"."cortexa7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mpc85xx"."p1010".sha256 = "0v8a3yxpqh961ny776am72ldfvq6xdmspi794nmkv6agxgj6z5fq";
  targets."mpc85xx"."p1010".packagesArch = "powerpc_8540";
  packages."powerpc_8540"."base".sha256 = "0dv7iy2ai0cdx17zcdfqp9iisca8kdhhwg2wdqnja33zazmnr4im";
  packages."powerpc_8540"."luci".sha256 = "11f5yjz1b4364s19rq88psljmp2jn6q24g2fx1c40whmn2crgk14";
  packages."powerpc_8540"."packages".sha256 = "021kw9mh6nisayymna8hh6wdf5q6zmpq6xlh0920w16x4ibdjifd";
  packages."powerpc_8540"."routing".sha256 = "15z1v44jhy583lh1hvz9z5af7xavwv7dsadrw4f8qsi6m500d844";
  packages."powerpc_8540"."telephony".sha256 = "04kivf40zkbzv943c8hzzmix75z9xjjxv6l0mpij9pwgdkhxa0wb";
  targets."mpc85xx"."p2020".sha256 = "06f8z5qhpc1jrbmcf7b62lcrhj5rg1x9bxxjqsi71fb5w7f9ah5v";
  targets."mpc85xx"."p2020".packagesArch = "powerpc_8540";
  targets."mpc85xx"."p1020".sha256 = "0dwmjjg0cfs38dskxk4rizr0fx3jnpmv5hdx77qr886d7fs00w8g";
  targets."mpc85xx"."p1020".packagesArch = "powerpc_8540";
  targets."imx"."cortexa7".sha256 = "1rcvn0cbswnbb65mdr600wxhnzjbajpq81r3fns6wsiggs101bf8";
  targets."imx"."cortexa9".sha256 = "1761f60ysikcm7r4cn7ffqc2hf4cm9vm0vh7xr7zdgfzyb4s8xki";
  targets."imx"."cortexa9".packagesArch = "arm_cortex-a9_neon";
  targets."x86"."generic".sha256 = "0dn4kfjxbk8kvf393lp1si23kfcxf6klcbhyv2zdqpffx0sjkq7f";
  targets."x86"."generic".packagesArch = "i386_pentium4";
  packages."i386_pentium4"."base".sha256 = "1mfnrfmqrqrk37w5fjawrp1am7r4ykkk7sacdj5z3i9hrb74njnh";
  packages."i386_pentium4"."luci".sha256 = "0zhjbfah9lzwyvnwq1claxgp6c4azsai94cb8kvjjhi3kp5xrzd1";
  packages."i386_pentium4"."packages".sha256 = "15jf6p0pj3w3nqairrwgmpkn1jz819cv5c1hzhyfid25sw29i4lh";
  packages."i386_pentium4"."routing".sha256 = "0j5y7nh8hk1si7sm4csnajxxc7bx3ky7g9173x8930ljq90gr3sv";
  packages."i386_pentium4"."telephony".sha256 = "11r7b8ipbmgj0lc54vjb05b0vhbpbjbrrd9sp8a1218sdigrzhmw";
  targets."x86"."legacy".sha256 = "0bbhhx8yyq2v3kj45362g09bd7yhdm5rnlgszy5kfzccivncm10p";
  targets."x86"."legacy".packagesArch = "i386_pentium-mmx";
  packages."i386_pentium-mmx"."base".sha256 = "1vrf2x78x3kilzknkzwnl259zdqby71lvwqfbxhv2n23fg4vk3bh";
  packages."i386_pentium-mmx"."luci".sha256 = "1hjic9pxgac24503n3l9yg1xr1hx18s2y0lpsim7hx8qf5ks8i42";
  packages."i386_pentium-mmx"."packages".sha256 = "0mwvmqr7h5fqqj6n7p1mjqi5jff2brq948dcda9v25bfhxwwr83g";
  packages."i386_pentium-mmx"."routing".sha256 = "0iqb07if2h7za8fgbhhm147ifbyv3bjzz6927ncm4zr5y3kfzpvz";
  packages."i386_pentium-mmx"."telephony".sha256 = "0k92bxyil6kz8nslzri0zhacbgn0cdwkhp5lrff0d7rkl57swlz3";
  targets."x86"."geode".sha256 = "13l3y2y4j7j6iw96h3ssj62il039087kzi9kyckqznqcjsaw3b5x";
  targets."x86"."geode".packagesArch = "i386_pentium-mmx";
  targets."x86"."64".sha256 = "1k60rq5dr7bxwvv8kj194x2j8m73i55rn3kzzaqngqm7la5vyrad";
  targets."x86"."64".packagesArch = "x86_64";
  packages."x86_64"."base".sha256 = "165iag402q5p3ah363yq3crgqb2dqayf46qy31csz7h4dd29fh5w";
  packages."x86_64"."luci".sha256 = "09561x48l7nyhz856n8ijqbmkwnyvaw8vpxw19drcldvsp4phxz3";
  packages."x86_64"."packages".sha256 = "1gvx7r6731z4lq1ym8sxrqsz2gllbx9fbw51g7idjhrcfn12h0pr";
  packages."x86_64"."routing".sha256 = "07g3kyylkhgia1zd63fliljssz7wy3yw251qd6jpbg880jhhqzsp";
  packages."x86_64"."telephony".sha256 = "046dwazz0s3asdlmz6bicch6qh83gccai1bkazjp7zgbvxfyszh9";
  targets."realtek"."rtl838x".sha256 = "0fxh6jy5c86lwm5543dy4zzm09pgwis5rqni19xadx7ag8cgi6pj";
  targets."realtek"."rtl838x".packagesArch = "mips_4kec";
  packages."mips_4kec"."base".sha256 = "03mbbdxyl82pjz9xnasjcx89hsx3iji795nhpxpkryfaqhzcnkn3";
  packages."mips_4kec"."luci".sha256 = "0daj22knx5xf4zz81ijjdr4wpm5zc050fkrpr0d8mm3cnfy453rx";
  packages."mips_4kec"."packages".sha256 = "1p4hgjmqpahb3i6k3icn4mkl3fxkwscsqllqp3isqbfz8rgpsnj4";
  packages."mips_4kec"."routing".sha256 = "14jsiska3dv5ipgcnic38j69cglyacxilkrl445a8gh44dhc7ync";
  packages."mips_4kec"."telephony".sha256 = "1mi2qxxvr25pwanrivvjfmqpm2cbcisqn1di7xkhirc9622spxnj";
  targets."realtek"."rtl930x".sha256 = "0l2xb3dsqwbdgh2zi00ma05vrc2gahahbxi0fjr7blwbmg6fk95v";
  targets."realtek"."rtl930x".packagesArch = "mips_24kc";
  packages."mips_24kc"."base".sha256 = "11dim2vsx00yg3h2xdnx21zvrfy5v9hg9y6mpfkcirdrrkm9wzs7";
  packages."mips_24kc"."luci".sha256 = "18l2fmamxvx0p2wgzlvpfpphirrscfhwwxgf0a6hgiqmrqsyfhqx";
  packages."mips_24kc"."packages".sha256 = "0yp43hwb26b6jl1zp2wnrj5bw2awkcpq724k75fp1h0pvz5nk3di";
  packages."mips_24kc"."routing".sha256 = "1hmgfp6q9nfc3anbakb5hv24dvccnixvw7711d2i35ydpd3zxa9k";
  packages."mips_24kc"."telephony".sha256 = "132ip85dgs9h12mhzsi91cqamqgms3h72bgjggsf0yjp7jr5mb20";
  targets."realtek"."rtl931x".sha256 = "1wwpwgj6qcgl8gyhac77qxiydpgsxiwmvlr721cjn5d34aajw70m";
  targets."realtek"."rtl839x".sha256 = "1zjkig5pxwa4ylg9fjbd7khqwwhlifv18xsnh75mbyyjxmri3lps";
  targets."realtek"."rtl839x".packagesArch = "mips_24kc";
  targets."armvirt"."32".sha256 = "02jh4dkd5j988b0m6d8ncna8zw3r33xzn1qgky4fj3sjbh7zdfkr";
  targets."armvirt"."64".sha256 = "1q48wh0981jri65x4iaqxwsn7qivf5ni42rcixlvsa50gnrzkpms";
  targets."kirkwood"."generic".sha256 = "19gm75w2q6n8w0mxj4p7wwqq88451y58jlz3qqsy7ljp080xvssr";
  targets."kirkwood"."generic".packagesArch = "arm_xscale";
  packages."arm_xscale"."base".sha256 = "1mrdgkwwwi4489hnqim275xbvk2lzd8v8ka54pqhw0x4d44xhdla";
  packages."arm_xscale"."luci".sha256 = "060c02idm6kvhrq4yaf3v0rivd52v4b16g1kf1g0jwfp2i5wj274";
  packages."arm_xscale"."packages".sha256 = "13i22x8zxhxgkc3fy249iyf18y555wcclwrd3h2zi5yc78qhy8ki";
  packages."arm_xscale"."routing".sha256 = "02wd7mdzrzvnijh5iyqv7ag89lalmafr92lcil2aiy0havgmgisz";
  packages."arm_xscale"."telephony".sha256 = "1nmlb2jzgrr0b7s4dzb3ifdh2lbnxv318r268y4bvc28gcdgy18a";
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
  packages."arc_archs"."base".sha256 = "0ipkicxqpgb1lpfwhzwjlcvknnk0fwapz4wdhln3i7mv6waswjgf";
  packages."arc_archs"."luci".sha256 = "00vql90cz7wq6q21ym35wx4ipdfdf3649ymflv5gkn63im702ib3";
  packages."arc_archs"."packages".sha256 = "1mz2m6wn8f5cjz6w0iffrvl9hqlj2ldfv1s9xn50nqxr5ij6nmxz";
  packages."arc_archs"."routing".sha256 = "0p4y0wf4i4v8l7w2d80m6vd9xawjgh5kpva9akshb8z9dwfq52q8";
  packages."arc_archs"."telephony".sha256 = "0h0bi3pz9pqqisvjmsp7wbh1cji9blkdh45a7br52mcy8nsqg3lr";
  targets."ath25"."generic".sha256 = "0yhhxmcr7gml1jar6jk4143mzrdz5l60c3db344yc78ynp43ghl1";
  targets."ath25"."generic".packagesArch = "mips_mips32";
  targets."apm821xx"."nand".sha256 = "15mrqjqwg2d4iky77hjj8cqhzkhv9515z9cpxf9gyk39dj9ym4ab";
  targets."apm821xx"."nand".packagesArch = "powerpc_464fp";
  packages."powerpc_464fp"."base".sha256 = "16a5q9crm06cl91flsvj3nm5kwjzp9xza740illrdlr4b1klq40f";
  packages."powerpc_464fp"."luci".sha256 = "120bhnb3g8k7zws2kmb7vbdbg7zgnmiq3sg04ly5c6z0pls0309j";
  packages."powerpc_464fp"."packages".sha256 = "12i9d4bxv3i4jkzvs1rzxnmpxvq2c1b9qwx0zxr2qxq8q11imrym";
  packages."powerpc_464fp"."routing".sha256 = "00c14hcg8dblikl9j367m4fzd0yrabybqynzpjynyf4f8bcjr5rg";
  packages."powerpc_464fp"."telephony".sha256 = "1jk01acy3s77fzcshjwb6y274f539r7x6mwqxnnhqysdv465mqh2";
  targets."apm821xx"."sata".sha256 = "155vpd7aghm6axfg4hk58wdx2k4fqghlyv2x4qj2cwdp0w3ap9b7";
  targets."apm821xx"."sata".packagesArch = "powerpc_464fp";
  targets."bcm53xx"."generic".sha256 = "1zxgqnx8jlr8q4qs7xxh2691b0dg5d03kh05kw3g7aic6hvimmxr";
  targets."bcm53xx"."generic".packagesArch = "arm_cortex-a9";
  packages."arm_cortex-a9"."base".sha256 = "1dzkqm8pb3si9na0wpcas054f7b258vyb5i830s4xh52q2p0g20z";
  packages."arm_cortex-a9"."luci".sha256 = "170virwrjzyzjsz9d965zi2l0rxf8ws6ar7wqwx7j6hql2748w88";
  packages."arm_cortex-a9"."packages".sha256 = "0y76hszm146jz17rl0bdbwc2q1y644cyagg0hzjszwi7dncxsmvf";
  packages."arm_cortex-a9"."routing".sha256 = "1fd5w3v7fv0557wpi5hs462127ci3h871vjgzxpc6dm018nh76qg";
  packages."arm_cortex-a9"."telephony".sha256 = "0a2vv3pdwxlvgvd9lcvkh19khaqi31803ihh6mh68jy56xpd6w24";
  targets."ramips"."mt76x8".sha256 = "1q0zcvczbg2852k02mmya1d20bvrkjkqcg9p4lnn117qfkdij5k3";
  targets."ramips"."mt76x8".packagesArch = "mipsel_24kc";
  packages."mipsel_24kc"."base".sha256 = "13cxcvfqa8nwqd2rjsl3l6saaj5zwlmf1dddlhba5s9xs4296zq2";
  packages."mipsel_24kc"."luci".sha256 = "1hxmzpi1kjbs2bnd88qd3p1gryfpimnfa9k9lslz1xjnbz7ph28m";
  packages."mipsel_24kc"."packages".sha256 = "1y4zsil93avpgqzdxm410by9bjnqmj2dvmspgkfhr1sc0shg1y1m";
  packages."mipsel_24kc"."routing".sha256 = "0h1kxyvixqrm70ybmj6xzrxjsb58lmah2n3k567c3qhn7j9ihy86";
  packages."mipsel_24kc"."telephony".sha256 = "0k75djfw7swyqgy1231nx0hmrld5y5hgdqzp9ccwzvd3anmirpqx";
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
  packages."mips64_octeonplus"."base".sha256 = "04ig6wnnanpyp3ycq3l5rkizc7kklj7jshl4z5a9fhxlmkfrn513";
  packages."mips64_octeonplus"."luci".sha256 = "0kmwn8ghlrqwr52rydhp3dqhbvmprl7rd43i573q06f6446qc4j6";
  packages."mips64_octeonplus"."packages".sha256 = "0h9g79yv81pcwzad1sx3rpdwlddjvc5k2fg524idf2s8y1a4rh0l";
  packages."mips64_octeonplus"."routing".sha256 = "07r06baf6l2c3dg6176jynggpvhvc49c2c5rgxhry5g3b681wf31";
  packages."mips64_octeonplus"."telephony".sha256 = "0kpn03748k15blpjkl5wrx4szbji8l2c9jyia513ksihwa3xm46r";
  targets."pistachio"."generic".sha256 = "0qixk1cqwar8nb9hg9kfy7hirjb4b21pdpbj5ybylkrc979nla5m";
  targets."pistachio"."generic".packagesArch = "mipsel_24kc_24kf";
  packages."mipsel_24kc_24kf"."base".sha256 = "01cgnqca6k80kvrhnpa57x6a6baljw7vm672mwc32kyyr3bvp2hp";
  packages."mipsel_24kc_24kf"."luci".sha256 = "1jgc763khn0g99gnp2w2lr5zgbaswbphcngln1527g2whm4zq5fj";
  packages."mipsel_24kc_24kf"."packages".sha256 = "0lnkr7wymdifniy6bxsmckivpjy82czbxzvngag6ygq8lkhkyal2";
  packages."mipsel_24kc_24kf"."routing".sha256 = "0v9lzzxvni2dbcz9ax0w8ghf4dcfa13287rhdziwrcf1gmyw8cfn";
  packages."mipsel_24kc_24kf"."telephony".sha256 = "1k153pa2xyhqiwjkdnfbm3s9gwqp2cfk3cljqms70vpmq7khn89b";
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
