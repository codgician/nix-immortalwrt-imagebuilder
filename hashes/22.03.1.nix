{
  targets."oxnas"."ox820".sha256 = "1mh5ypn106l59zjaqbh6sjwm2vf0skda0q6fbihplsk2nr6zf2cd";
  targets."oxnas"."ox820".packagesArch = "arm_mpcore";
  packages."arm_mpcore"."base".sha256 = "1glnpidqvrds554qz2x3vjs8kia7yg7jcn6qrn5ppg5p599grpsv";
  packages."arm_mpcore"."luci".sha256 = "1c0nb9fl9v5r6jbxi2qygk32zn19a4ddgbsy9iw6pcj7h3bj5sji";
  packages."arm_mpcore"."packages".sha256 = "0da6z3iw4wnblw19kwwlysjcz2phbi204j1bwv5cvr5x43qc9lgx";
  packages."arm_mpcore"."routing".sha256 = "1ji2fqwanyippqapr6k20hzy8km2x33a0hjc9fwaljsh0wsvjwrr";
  packages."arm_mpcore"."telephony".sha256 = "03bbqlmdxzz6iiy7f7inignjd72wmy6bf57i8prgsagl7ka4lg6s";
  targets."mxs"."generic".sha256 = "0qvd4y6cvkh0khj5znslb32ai4m97pvvrvs115j5727li7zvnm0q";
  targets."zynq"."generic".sha256 = "0wdi90bqh48fw4cpz6g6asx7anb0z5a385652xfg8dlpplvbpkfv";
  targets."zynq"."generic".packagesArch = "arm_cortex-a9_neon";
  packages."arm_cortex-a9_neon"."base".sha256 = "1d4rbqi6a34hgahlw466mm2kmhzyf9vjfdha15mbgrdr131sj898";
  packages."arm_cortex-a9_neon"."luci".sha256 = "02afpsaxj4kwwq3hw45a7nrj5a1ibzfpzx3gajnfha2zfnl6jphr";
  packages."arm_cortex-a9_neon"."packages".sha256 = "1zgx5zzryc3yba5n2wz8a17ybv1g747q2kil5gjx6m82fid0v0gn";
  packages."arm_cortex-a9_neon"."routing".sha256 = "0b0yf9qwpwn0l6776ryzmi0c1428padgc903irxzx02x7w7kyzzn";
  packages."arm_cortex-a9_neon"."telephony".sha256 = "0zl3r2h6y4s1hrkk9iikqnh5vvxpw45j5zdmx07ln91mczbh0ddf";
  targets."bcm63xx"."generic".sha256 = "1rwfgg6wjrik02ziwsprvq56z8fgcj7djpm23rsadi89rrl3j771";
  targets."bcm63xx"."generic".packagesArch = "mips_mips32";
  packages."mips_mips32"."base".sha256 = "0j77pm88i7p85v9203gdbby5mgccnsai5pznlkhmaxbbncz32p13";
  packages."mips_mips32"."luci".sha256 = "0x623i2f3qpjca7hlslqv1why610qis637cqbqvp8d71bq8ql6vr";
  packages."mips_mips32"."packages".sha256 = "0a70havf2b94p2qnahqwaa20ns49yl6wmg0n24m1ax9a0c4bzy3m";
  packages."mips_mips32"."routing".sha256 = "01as918dmh0wg49xmk6q8p7myxaqga7jsdflqhwwr6xs5q884s1b";
  packages."mips_mips32"."telephony".sha256 = "10br1qh04j9k8vlmr4gddmaa5jwxqgxm34zhj35vj4m577adnsxf";
  targets."bcm63xx"."smp".sha256 = "1qna4c8bkxmlnbl6x589jw8awg2wzq00vh61gaszyvn7zh8894in";
  targets."bcm63xx"."smp".packagesArch = "mips_mips32";
  targets."bcm47xx"."generic".sha256 = "0pbnbkamd43rpddchk32287wxpwiiwb2cxzmc6hki5zpm8xk7yn6";
  targets."bcm47xx"."generic".packagesArch = "mipsel_mips32";
  packages."mipsel_mips32"."base".sha256 = "1wsqwm22r15va35s1avyk834f3iaapb17z0ijiccs7nv444khl78";
  packages."mipsel_mips32"."luci".sha256 = "1hky2764kqkz10a9c21xjfjcjnk81pii7h29zlhbz34gz23jvl0j";
  packages."mipsel_mips32"."packages".sha256 = "1lwaj0wp2gv1gr2lwpz6gh48q4val5qzjlnhrj64zc4mj4l7mffa";
  packages."mipsel_mips32"."routing".sha256 = "0pn16106h7kdlw80d0kpq1rjrhc11bmjz51x0qqybnnqpacz5jr8";
  packages."mipsel_mips32"."telephony".sha256 = "1yvx8wypqzrlrbwyaxrqhl39r1gsq5zm0jgap74k2nbkpj6v0ijx";
  targets."bcm47xx"."legacy".sha256 = "116289k6w0gjyggacn0w1ps3xvp87f08qx2m3gzibvmvdmfm8d5c";
  targets."bcm47xx"."legacy".packagesArch = "mipsel_mips32";
  targets."bcm47xx"."mips74k".sha256 = "01sc47a3bkamp67mqci8xr2sldwz7vmgznw8ywqfsdmj2cyq2a2c";
  targets."bcm47xx"."mips74k".packagesArch = "mipsel_74kc";
  packages."mipsel_74kc"."base".sha256 = "01dycxx3mpnqdhasl804fwnmjpl522w3aw72dmhc168x26cn605d";
  packages."mipsel_74kc"."luci".sha256 = "1m7bk7rjl4f8bns63kxl6kv5h4xlkqklf1dhf1ykhshqrlp8sgl8";
  packages."mipsel_74kc"."packages".sha256 = "07d4h3y0faknpvaz6qmx4zjjvi986lk4swnqqs0j950a2m0asb1r";
  packages."mipsel_74kc"."routing".sha256 = "1r485al7dcz4agc3cb15agh4bpkfrmxcdbzjz7n9wd0xnjd05kkd";
  packages."mipsel_74kc"."telephony".sha256 = "1sgpjl1g2i1382hgazxfid1awv2gdm1a83cwi63756kw2cc457bh";
  targets."bcm27xx"."bcm2711".sha256 = "0parkjz64sl9vsgviadqlgwy3if6h0n37kkbw7qryfinah2snha2";
  targets."bcm27xx"."bcm2711".packagesArch = "aarch64_cortex-a72";
  packages."aarch64_cortex-a72"."base".sha256 = "02277qlimgdjp0ql531qipinri1bvg97y6vhkghfkp2jn58d78s0";
  packages."aarch64_cortex-a72"."luci".sha256 = "1hzyjvngsrldc4i5li84f7dk5i4cyydxkjb1b5rm1i74swxkym70";
  packages."aarch64_cortex-a72"."packages".sha256 = "1y19sb63a35l7ylxd2ywfrmfm71sr145r8ni9syjg302dw7i5k05";
  packages."aarch64_cortex-a72"."routing".sha256 = "05hq6jrwp93c8k0hq7nw3qn6i54gwmqck6ck91waw7i4kz1qc1hm";
  packages."aarch64_cortex-a72"."telephony".sha256 = "1r301z5ynzyrczcicikdpyj05hk5avw6hpw8ysibyz5hdxsz5kj5";
  targets."bcm27xx"."bcm2708".sha256 = "1v7mm0lbkmwfysl70jyal5dflxgl3awxvdcfm8f8cm46z27gyj09";
  targets."bcm27xx"."bcm2708".packagesArch = "arm_arm1176jzf-s_vfp";
  packages."arm_arm1176jzf-s_vfp"."base".sha256 = "05gakf77fdg1h9nfi26krpfjfykjxmdpkh9jdkk8jx7cw6vgbaiv";
  packages."arm_arm1176jzf-s_vfp"."luci".sha256 = "0g2sz4a2asdsp5qwr3dnyn1lsikavr6wc8hhciaqfxbwsy5jk3hf";
  packages."arm_arm1176jzf-s_vfp"."packages".sha256 = "19a4zf2z8i50090ankxl5plq3bf542zwbi9sl4ncfh2r8z47lrs1";
  packages."arm_arm1176jzf-s_vfp"."routing".sha256 = "0rqq8qbimnxsqk8g0ibh3564x4q5i22dhi34hckm7hrvczif97g9";
  packages."arm_arm1176jzf-s_vfp"."telephony".sha256 = "0j39pry4nsxs5frbsml9xhh99lzbss96znmdv8wbqavyn99i1m54";
  targets."bcm27xx"."bcm2709".sha256 = "1vfgz8zivcd3vc8w9ilkinir9m9x5qnawyclmwdgv12xnr89mlww";
  targets."bcm27xx"."bcm2709".packagesArch = "arm_cortex-a7_neon-vfpv4";
  packages."arm_cortex-a7_neon-vfpv4"."base".sha256 = "09ddnhbs9z7dd0j45vgfidgd5yq12bhmasn49wzwkwfygnj4lcda";
  packages."arm_cortex-a7_neon-vfpv4"."luci".sha256 = "05wf97yjrs8anx1kyv527vijf9wdv50dkb0wq6g138fbl9mysxr9";
  packages."arm_cortex-a7_neon-vfpv4"."packages".sha256 = "1wwxyzxrramfhi2x2dk5bi2k7iq9g23wcxqpyaxam2qi0y70lqcr";
  packages."arm_cortex-a7_neon-vfpv4"."routing".sha256 = "05k2glzs0b6vgavjwgdvj38hg2q26nrvknxnaxq3qvdk33qqfs6j";
  packages."arm_cortex-a7_neon-vfpv4"."telephony".sha256 = "0w6bm7x8v0jxg77b73agws60cv8p5xas13hrj0mii14wkgavbgif";
  targets."bcm27xx"."bcm2710".sha256 = "0s3wr15jljhlg090ms1l44lra86lkwmqndg3c6c0q6y0wp68v4fi";
  targets."bcm27xx"."bcm2710".packagesArch = "aarch64_cortex-a53";
  packages."aarch64_cortex-a53"."base".sha256 = "03vp4j9i7j1r7l7az73gphd62y5ifgvjgk8rrx0va84yap7v8y5r";
  packages."aarch64_cortex-a53"."luci".sha256 = "0d2qcimkvjcwnj6mb947c8snm3zdyfhdpq6z8ydglwkgp9sf4niz";
  packages."aarch64_cortex-a53"."packages".sha256 = "1s6v6al76z28jfgmbnsx9y1lldyci9kx7b9pqmks97avr0jknkm7";
  packages."aarch64_cortex-a53"."routing".sha256 = "10d0y1ch4aqm5pzx0c474rirry5rsrsaqfcm8vr13014nip5v7ca";
  packages."aarch64_cortex-a53"."telephony".sha256 = "1rsxb2yhvg7v5fx15d0cyn03a9f3q6ljs08igli60i5y3n3lqh0x";
  targets."mvebu"."cortexa53".sha256 = "11bnizsac9pl9s162hygnssjsmxyyf6qwix5ly24mlypr5ixj4g3";
  targets."mvebu"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."mvebu"."cortexa72".sha256 = "1vcfgm92bgyzwi9az2yggz4l0x63saviz6sr8sm98jamxsxjizk7";
  targets."mvebu"."cortexa72".packagesArch = "aarch64_cortex-a72";
  targets."mvebu"."cortexa9".sha256 = "1w0gghb1n039lrx0ly0g6f1r09lmwcadjj1sv31s14yfmkk62ixm";
  targets."mvebu"."cortexa9".packagesArch = "arm_cortex-a9_vfpv3-d16";
  packages."arm_cortex-a9_vfpv3-d16"."base".sha256 = "1jbkm9jv2arf1nwbx42q5bmqhr4jra32fwx4xpqq0s47p8hm4qzh";
  packages."arm_cortex-a9_vfpv3-d16"."luci".sha256 = "1iaccninfxx0rbqlx7fdilqrdd89dd0m9m3gxngqd2sf9prfzhb3";
  packages."arm_cortex-a9_vfpv3-d16"."packages".sha256 = "0f5v3aysvhpvqsnmv2334h877ixsg4icnsg89ij3a6yqrafr3rw9";
  packages."arm_cortex-a9_vfpv3-d16"."routing".sha256 = "1yc2izbk66rjpdg27n32mk9sdsarpk4j2mpbippiimzczk1nqnx2";
  packages."arm_cortex-a9_vfpv3-d16"."telephony".sha256 = "067pn4z3f2da7smlds4bfsaz371s7np5s24zf9769i35nw9p4m25";
  targets."at91"."sam9x".sha256 = "0zzw395p95b7ymaycmdpqc3w0k7xb4k3r8xa42ws25awk3wb14iz";
  targets."at91"."sam9x".packagesArch = "arm_arm926ej-s";
  packages."arm_arm926ej-s"."base".sha256 = "1dabmq4891mwvy7k0ymsp67i1dbnllbvsfp9fpv3zvlrqg95a9l1";
  packages."arm_arm926ej-s"."luci".sha256 = "03bp3dpyjn8qbsgj4pm2kgb6450qmxkkcmw3f51ljzlx3n35gggi";
  packages."arm_arm926ej-s"."packages".sha256 = "0lfv11wm68prq91b5r6dx07idl81zfwmjwad103zz1znl0s0zq27";
  packages."arm_arm926ej-s"."routing".sha256 = "0s4j877igbyc6516ryrw0zhcafkx4499ymxch994dniqw01v4l1b";
  packages."arm_arm926ej-s"."telephony".sha256 = "07cc75aw7k0zsbqslca580yb3dn0w72ilk3nnz6692xvab6n27vz";
  targets."at91"."sama7".sha256 = "0px8lq15262glv92rrb3l9rav1044zlk8i44998878vz8zschn9s";
  targets."at91"."sama7".packagesArch = "arm_cortex-a7_vfpv4";
  packages."arm_cortex-a7_vfpv4"."base".sha256 = "0sfhrpg0723giwqz2vxixw761m7drd4l50b5rhxypv6w3va49c5y";
  packages."arm_cortex-a7_vfpv4"."luci".sha256 = "0ri7r0dp8hr8wic80kqh9ybirkq30jg5krjjkg0r29nxfj50zl0l";
  packages."arm_cortex-a7_vfpv4"."packages".sha256 = "197xg3844vf2r34kqzg0l9z6japdr5sm7i7skj3gqn7lbmk6dlb2";
  packages."arm_cortex-a7_vfpv4"."routing".sha256 = "0k8yblak60zay7vp1h6960n017v63dprxf5yw38yipxhljj62k09";
  packages."arm_cortex-a7_vfpv4"."telephony".sha256 = "07lfzhd5alfmx8fcqizgs83jl3qyfxml7bbg6yday588z9fkh4yg";
  targets."at91"."sama5".sha256 = "1afr7w4c44a0wmasgjrk9x57x0i22xxa4j6mjcnr9q5jcw1wimw6";
  targets."at91"."sama5".packagesArch = "arm_cortex-a5_vfpv4";
  packages."arm_cortex-a5_vfpv4"."base".sha256 = "1ihviqcnai1jz84n77ych87wzc798si3pp6kfnlyq1pjmfhqaq8m";
  packages."arm_cortex-a5_vfpv4"."luci".sha256 = "1b9w42psab6k5rpwbcriqd4xa524bvaj1db9fj47apnwydrchgz6";
  packages."arm_cortex-a5_vfpv4"."packages".sha256 = "188zrj30kjqz059rb15v8x57fx006dw17g7s3fhxlz6wlzbiqkgq";
  packages."arm_cortex-a5_vfpv4"."routing".sha256 = "15wvqqqic03mn36c4hczdr01r9688fl3qj656q07kcx2725260xg";
  packages."arm_cortex-a5_vfpv4"."telephony".sha256 = "0jlkbc7xilb08mrnhpb8x9d9hk8y353n0985byxm4crvgj407nxg";
  targets."gemini"."generic".sha256 = "0z2z4728rxgz2ilkw0bdsa1a681l5sy3bwflidn3jh2v00pa90n4";
  targets."gemini"."generic".packagesArch = "arm_fa526";
  packages."arm_fa526"."base".sha256 = "0cnxb870bsibhcjnakss5xjpwldxkpp431ckhvm74kql6vnk5r6r";
  packages."arm_fa526"."luci".sha256 = "0gchk93a176376sq06gvy7x7r9zfj5sz945q0d73kpz3a42xrrnj";
  packages."arm_fa526"."packages".sha256 = "0j2blx72mj6z6spzi843498wfrkbjs7ljnsbhlp94hfri1p9xcg5";
  packages."arm_fa526"."routing".sha256 = "1rshdf6gfnswb03kbnyyc9yh51292v65wvb8pywifil4pgf1z9p5";
  packages."arm_fa526"."telephony".sha256 = "11nkiy33f0ssvc8jyqryb8vxxsnf9fzh31d8v5hbnai4v01jgzcs";
  targets."octeontx"."generic".sha256 = "1vnamfh7rzs0fmqlilczz45swlyv2q40v2lxr2mv2jipngcnvd6q";
  targets."ipq40xx"."generic".sha256 = "0hrm3xwlzvwrbjq7hy06j7xkga5avg338zbk4s8908mw21n5w9n7";
  targets."ipq40xx"."generic".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."ipq40xx"."mikrotik".sha256 = "10lrznvngv7m0j317i006j2lag969mhkk8y11w78k223q49ifpdb";
  targets."ipq40xx"."mikrotik".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7623".sha256 = "1a18pvgb6hay27kndwqqsqxlyrvmgvhfg8sy0rh510dfp1cv47pi";
  targets."mediatek"."mt7623".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7629".sha256 = "0rfdvw3z7wqp7fl5zxplqmhmqjfv5crqnp4l0hrp5xq7l2qvfjdk";
  targets."mediatek"."mt7629".packagesArch = "arm_cortex-a7";
  packages."arm_cortex-a7"."base".sha256 = "13150qh198nma3f5z31w9mj1lzyw10b34las083wncsd5q8p9h5c";
  packages."arm_cortex-a7"."luci".sha256 = "1cc6qvppq826h9znhv4i91brgrcyd9ykjqsgqrpllr5yw0dpyjbb";
  packages."arm_cortex-a7"."packages".sha256 = "18z0yxb6r2gqzagvah5b7r09mnvwajjkhrl9b2s1np8a7czhyqll";
  packages."arm_cortex-a7"."routing".sha256 = "1nzds2y6cr6ymqzd5ysc2ccx95512mjzab1v0jf5g9hbasa7i4dz";
  packages."arm_cortex-a7"."telephony".sha256 = "1ns9r2kkbbjvzw91khg3c9nwhmn8033r751dwk8hkrv52iv07316";
  targets."mediatek"."mt7622".sha256 = "1shwr1gpi06mff61q6pcl3w1c52f1q2k75klnnhhxpg47q1b9gkm";
  targets."mediatek"."mt7622".packagesArch = "aarch64_cortex-a53";
  targets."malta"."be".sha256 = "1himf65l262da5z4nxzbixlnxclxl0xv4in0xfwsvs37nvaswpfm";
  targets."rockchip"."armv8".sha256 = "1wdk36vckfj5r28niwg9a73a5dxgpdf38mf6vkvqk06s6acn1a3r";
  targets."rockchip"."armv8".packagesArch = "aarch64_generic";
  packages."aarch64_generic"."base".sha256 = "1kygjadsnpwj3452pg2dw7f3zikpc9w6wn0w7ak7hy2ris7sfrff";
  packages."aarch64_generic"."luci".sha256 = "1nvyh5k79apj4y745lpd02cf7x4nyq5sxqya9zkkd1rpx99v57ix";
  packages."aarch64_generic"."packages".sha256 = "1jyvr2pyzsmxpwq0cd7b6v5prhb87hr5dqf9n5qnvzikifa1wfmg";
  packages."aarch64_generic"."routing".sha256 = "067azwij82rxry37v1wrmcgxws9mk04i90z0pwvlrplps00yk02l";
  packages."aarch64_generic"."telephony".sha256 = "1c6hi4588vg14kbr116hs8xxjvsmb6jrvvnx5yb4rgnjj17skb7m";
  targets."ipq806x"."generic".sha256 = "0vjg4cc40xlxrap33a5xcw7daic4wb3vyjpd56ihpm30fxphlz3s";
  targets."ipq806x"."generic".packagesArch = "arm_cortex-a15_neon-vfpv4";
  packages."arm_cortex-a15_neon-vfpv4"."base".sha256 = "1q2ay0bxbwwd5bsb711nmq749gzqdl0xcw9fz1lw8s5xfflb87ya";
  packages."arm_cortex-a15_neon-vfpv4"."luci".sha256 = "1ywy8jwivn8m7icgfyw6cx38vgwlsqzgj9gvlygb4anm55i811ig";
  packages."arm_cortex-a15_neon-vfpv4"."packages".sha256 = "17dx84xhkzp7pyapdj6c6chi6zdgqw7abb0rb741q45aziqbpx5h";
  packages."arm_cortex-a15_neon-vfpv4"."routing".sha256 = "18k7jji9zzccxbypq6xhxww3qm5qm2g4i3fa1kvbkl8y3s60b7fb";
  packages."arm_cortex-a15_neon-vfpv4"."telephony".sha256 = "0qp1hdrrv37y6d6y3cv4k2a5yqdim0p17xgx6lzzmdq5cnfnl6y9";
  targets."sunxi"."cortexa8".sha256 = "0ih74vgalhdbcpall5gnm20ahrvkdsn1nm3548vdn9nmbcjs3hkq";
  targets."sunxi"."cortexa8".packagesArch = "arm_cortex-a8_vfpv3";
  packages."arm_cortex-a8_vfpv3"."base".sha256 = "1b2kxg4l8yydvydibwzc796dc9113fn5l5wmydrpj8a6irn31wzp";
  packages."arm_cortex-a8_vfpv3"."luci".sha256 = "1vmqwpy146fq2miyrg45hdywqm37is0c0s4c0iwcgmm3k02lkcwr";
  packages."arm_cortex-a8_vfpv3"."packages".sha256 = "0s2w9wg5bwl2ank26w3f03jgyqdkpwvpshsh8p6jirmjgm2f2ly2";
  packages."arm_cortex-a8_vfpv3"."routing".sha256 = "1cxhw402njsv5x5mf0n03c484h9673gfxqdlz56pgpcqwd4n7fxy";
  packages."arm_cortex-a8_vfpv3"."telephony".sha256 = "08164m2hj9iga992hfxgpy4riby20zh3wbxylq6wxaki429ii3yx";
  targets."sunxi"."cortexa53".sha256 = "0cfwac4i921jj1432mmpwi5hv6hm71v07jd224rdq7indhqgh6i1";
  targets."sunxi"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."sunxi"."cortexa7".sha256 = "0dk7nr1c85f2kkzkidlhmjfr0gcz73yh0dj687haags0qny36nnf";
  targets."sunxi"."cortexa7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mpc85xx"."p1010".sha256 = "0v8a3yxpqh961ny776am72ldfvq6xdmspi794nmkv6agxgj6z5fq";
  targets."mpc85xx"."p1010".packagesArch = "powerpc_8540";
  packages."powerpc_8540"."base".sha256 = "0vazc8b3a0zc0yiga8ndfgyf0n7l8sgmfd3nibvp5y8l7409qabj";
  packages."powerpc_8540"."luci".sha256 = "0ddfk48379jwnswm9qhy5c79cly31ypsy6mskrhdkm8m245n9b3a";
  packages."powerpc_8540"."packages".sha256 = "0gd4v9y5q6jj129pmdzwj4f3pwsfmh9lqczcm1yw1chyas5v13hs";
  packages."powerpc_8540"."routing".sha256 = "0ipj7c4pxwinjkifdnx8is5a6ccpl3vi5fsil09whbd8sswrpjh6";
  packages."powerpc_8540"."telephony".sha256 = "1yhll0y38p5780z4pizgr3bliqdx4a7nj1rij1dwdd1129jsbfqd";
  targets."mpc85xx"."p2020".sha256 = "06f8z5qhpc1jrbmcf7b62lcrhj5rg1x9bxxjqsi71fb5w7f9ah5v";
  targets."mpc85xx"."p2020".packagesArch = "powerpc_8540";
  targets."mpc85xx"."p1020".sha256 = "0dwmjjg0cfs38dskxk4rizr0fx3jnpmv5hdx77qr886d7fs00w8g";
  targets."mpc85xx"."p1020".packagesArch = "powerpc_8540";
  targets."imx"."cortexa7".sha256 = "1rcvn0cbswnbb65mdr600wxhnzjbajpq81r3fns6wsiggs101bf8";
  targets."imx"."cortexa9".sha256 = "1761f60ysikcm7r4cn7ffqc2hf4cm9vm0vh7xr7zdgfzyb4s8xki";
  targets."imx"."cortexa9".packagesArch = "arm_cortex-a9_neon";
  targets."x86"."generic".sha256 = "0dn4kfjxbk8kvf393lp1si23kfcxf6klcbhyv2zdqpffx0sjkq7f";
  targets."x86"."generic".packagesArch = "i386_pentium4";
  packages."i386_pentium4"."base".sha256 = "1xnp7ipcky603rnkwzjc15bl5kg8nm72w6s4h46kdpsxxpdglgqw";
  packages."i386_pentium4"."luci".sha256 = "0g872ii3kkvva87pni895yak1ilki0lcw87xha8wqsxim4qklan7";
  packages."i386_pentium4"."packages".sha256 = "1gsa3hdi4mp295rf68q6p4x6dg8lwbm4bnwiaksff96gzfpf55az";
  packages."i386_pentium4"."routing".sha256 = "1y1r6rd6x4gnmv1sfvsqd9l7kj6p4yzpinqndrzs6xq8g2lbcixr";
  packages."i386_pentium4"."telephony".sha256 = "03d925mpgzncqpdjshrga8nkd9kq1aj8cim08r2avkqyyixv04ly";
  targets."x86"."legacy".sha256 = "0bbhhx8yyq2v3kj45362g09bd7yhdm5rnlgszy5kfzccivncm10p";
  targets."x86"."legacy".packagesArch = "i386_pentium-mmx";
  packages."i386_pentium-mmx"."base".sha256 = "0srar128j0h8qzcapngrmp2z74kxkflx9m2xbk9yx9hy4lfzjzij";
  packages."i386_pentium-mmx"."luci".sha256 = "135gj9j0vh5pjf1ich57rn73l7vjnb1yq2gqkd3sbzcxr4cg4kvg";
  packages."i386_pentium-mmx"."packages".sha256 = "0g0hc61a4hzrgi7zxy1lf2r2isyllh052m89djy033j3iwpc0yd6";
  packages."i386_pentium-mmx"."routing".sha256 = "1s8dyayam8plg6fiv12yq3i9vbgnm96v40kfaxpb7s3irw57wzqx";
  packages."i386_pentium-mmx"."telephony".sha256 = "1y7c4nnsr3ggzi2adfpvhpkjiq9aqwphj1h6xzd7czspb750c3vx";
  targets."x86"."geode".sha256 = "13l3y2y4j7j6iw96h3ssj62il039087kzi9kyckqznqcjsaw3b5x";
  targets."x86"."geode".packagesArch = "i386_pentium-mmx";
  targets."x86"."64".sha256 = "1k60rq5dr7bxwvv8kj194x2j8m73i55rn3kzzaqngqm7la5vyrad";
  targets."x86"."64".packagesArch = "x86_64";
  packages."x86_64"."base".sha256 = "0bcln0kb2s06498kfhb19b1j1f6jk2adzpsx2z47hfd61cd8zjzv";
  packages."x86_64"."luci".sha256 = "008wy9r1dmnsqgqg8qb3ps4pvm6g2k9px5snbacd091yjrxyyvx8";
  packages."x86_64"."packages".sha256 = "1bql87xxl5lmdyq8c1vfi8mfp9jagnrs5l2w6jzvp52i3shn01jd";
  packages."x86_64"."routing".sha256 = "160kk1v1pqnwpw04z2r1zv2c1ijrcfrg4mlq6yhkip4dmczn18lg";
  packages."x86_64"."telephony".sha256 = "1yi0h4hwnx0275iz4wch360927aaff3r34d5b0khjk7z6jp9ai2i";
  targets."realtek"."rtl838x".sha256 = "0fxh6jy5c86lwm5543dy4zzm09pgwis5rqni19xadx7ag8cgi6pj";
  targets."realtek"."rtl838x".packagesArch = "mips_4kec";
  packages."mips_4kec"."base".sha256 = "19nc0j49v9iy5mhhh7pjw2bfkbigzl67mvkj01d8a8l9wczvmxpi";
  packages."mips_4kec"."luci".sha256 = "1dc3v0k9nf62p8r09xdp1ryzazhsvyk8frkvgafbpil4n6ilb4sx";
  packages."mips_4kec"."packages".sha256 = "0ppr3pzfl2nslix7c5lj3jjrbay3d4fi7havqb560jgz9j6wyw2y";
  packages."mips_4kec"."routing".sha256 = "0rbqr9sypn637n0l5kkfim6dmlvi272rgqbjkypq33zi7gdk8kyd";
  packages."mips_4kec"."telephony".sha256 = "0537kmj66y4d9gswgfkrwn20skcizi89r6j1c2v2rnb6l32av2rj";
  targets."realtek"."rtl930x".sha256 = "0l2xb3dsqwbdgh2zi00ma05vrc2gahahbxi0fjr7blwbmg6fk95v";
  targets."realtek"."rtl930x".packagesArch = "mips_24kc";
  packages."mips_24kc"."base".sha256 = "0lchj0pn089s857adi6bgpwq94v1n9kmilsrrcr1nxnxn02sisag";
  packages."mips_24kc"."luci".sha256 = "1xr8b0ngm6n4g5qs2b60j2s5z3k2wzmqy6rbzdfh823dvkm9xdl7";
  packages."mips_24kc"."packages".sha256 = "1sv9jwiqpli66xkdh1rvb2n7hzjbh1k2pbpmz5d2svpng1hviwh3";
  packages."mips_24kc"."routing".sha256 = "0wzxmjpn0vzac93fy8ir412n6psnd9pcihhbnyhfhmjxshsp5jr7";
  packages."mips_24kc"."telephony".sha256 = "1hjrsh5by52g215ld5nar0xjyy1j3bcsqbjxlgd9xccmkv98pd1g";
  targets."realtek"."rtl931x".sha256 = "1wwpwgj6qcgl8gyhac77qxiydpgsxiwmvlr721cjn5d34aajw70m";
  targets."realtek"."rtl839x".sha256 = "1zjkig5pxwa4ylg9fjbd7khqwwhlifv18xsnh75mbyyjxmri3lps";
  targets."realtek"."rtl839x".packagesArch = "mips_24kc";
  targets."armvirt"."32".sha256 = "02jh4dkd5j988b0m6d8ncna8zw3r33xzn1qgky4fj3sjbh7zdfkr";
  targets."armvirt"."64".sha256 = "1q48wh0981jri65x4iaqxwsn7qivf5ni42rcixlvsa50gnrzkpms";
  targets."kirkwood"."generic".sha256 = "19gm75w2q6n8w0mxj4p7wwqq88451y58jlz3qqsy7ljp080xvssr";
  targets."kirkwood"."generic".packagesArch = "arm_xscale";
  packages."arm_xscale"."base".sha256 = "0c38rhh51r3639cbj0fqav0qnfzw9ngv8fkr13sj1g4rh7a5akwn";
  packages."arm_xscale"."luci".sha256 = "0lzx5p9985xdlbbnad9r2b21i9dlxxds8v96p6v1fl3z4lmw6ndr";
  packages."arm_xscale"."packages".sha256 = "1r66rhahl7chw1m95m7xv1mrabisww130mmvz3n8spshl62la74i";
  packages."arm_xscale"."routing".sha256 = "1xhxxkg0405i1i3k2x19nqycvvfl625ga0fwh52xs6wyv9915rla";
  packages."arm_xscale"."telephony".sha256 = "1blknc24hf6qi5k3gzq4ryif093jdxhln2fm09xf43fcqhlaqcps";
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
  packages."arc_archs"."base".sha256 = "0r3ah1sg5f741fg5ls1j2kclxz04gq36yz6rhrw64k12424jhwhc";
  packages."arc_archs"."luci".sha256 = "16kjjb0s7h2rmn57k44q6zasyc7ijmw3ij54kjlf7scr7hxlyz5q";
  packages."arc_archs"."packages".sha256 = "1f7rqrv1i5ld67zal2cr1x7dinw2q7ri6lnmgywqdmhski3k04pv";
  packages."arc_archs"."routing".sha256 = "0mxvygydasl844h3q14qdm7qh27njdl0dwjpv9ggjhsj54rqqbcj";
  packages."arc_archs"."telephony".sha256 = "19lq7pncdzr9f6394gl6jbzg05gs98b21p906vz33zh5lcm99fhs";
  targets."ath25"."generic".sha256 = "0yhhxmcr7gml1jar6jk4143mzrdz5l60c3db344yc78ynp43ghl1";
  targets."ath25"."generic".packagesArch = "mips_mips32";
  targets."apm821xx"."nand".sha256 = "15mrqjqwg2d4iky77hjj8cqhzkhv9515z9cpxf9gyk39dj9ym4ab";
  targets."apm821xx"."nand".packagesArch = "powerpc_464fp";
  packages."powerpc_464fp"."base".sha256 = "16rfi9kw5pc6cd83zzpa588smwsba9lik2168bhgwqpmqd4xgv7g";
  packages."powerpc_464fp"."luci".sha256 = "1w115p6vqbvj7kclvxl0dkvr4zxfa3dblp1bz4h939h6p1wafqrl";
  packages."powerpc_464fp"."packages".sha256 = "111b69jcwgwshdbk5ahlwhk71f582syf3qaifi2wdhih9k71sqc4";
  packages."powerpc_464fp"."routing".sha256 = "05aywnlxgyr26mwpby7zrj2999y4i2dqm369b2xxs9xlgklxzgzs";
  packages."powerpc_464fp"."telephony".sha256 = "0jcl6kaarxzhp7v8655ld5xkbrcifrrlsbfqkjjmbb3zmv9xinva";
  targets."apm821xx"."sata".sha256 = "155vpd7aghm6axfg4hk58wdx2k4fqghlyv2x4qj2cwdp0w3ap9b7";
  targets."apm821xx"."sata".packagesArch = "powerpc_464fp";
  targets."bcm53xx"."generic".sha256 = "1zxgqnx8jlr8q4qs7xxh2691b0dg5d03kh05kw3g7aic6hvimmxr";
  targets."bcm53xx"."generic".packagesArch = "arm_cortex-a9";
  packages."arm_cortex-a9"."base".sha256 = "0d0rfwd5xqx153kwvxhb3q0fy97vs6zbmahabsdfc41pfjks5k60";
  packages."arm_cortex-a9"."luci".sha256 = "048hqmcsi90dz6s8r3l38rqll49hp46ki47c3lv0434wgw21p01c";
  packages."arm_cortex-a9"."packages".sha256 = "0sz9dlklc6qvaj4h07wb99cpd64b4546shzjv4mnvwh4kixi1yzq";
  packages."arm_cortex-a9"."routing".sha256 = "1r09zsqs62kw7prkrvi8dh0zrxrf83yj48zdn9wsv61q4mm2944s";
  packages."arm_cortex-a9"."telephony".sha256 = "0df570bzsm7i20i5j9z5670ckqvp2rpx2gh5kyddxdy3l3y86xif";
  targets."ramips"."mt76x8".sha256 = "1q0zcvczbg2852k02mmya1d20bvrkjkqcg9p4lnn117qfkdij5k3";
  targets."ramips"."mt76x8".packagesArch = "mipsel_24kc";
  packages."mipsel_24kc"."base".sha256 = "13rylbkv2mpfyfdkc7r7h4fk8cq95lw5jayp0my1mpwipgslgi1r";
  packages."mipsel_24kc"."luci".sha256 = "0pgkqskzjz9q9d2pxbna6bbrywlwijihpim3a6j5bjg51lk92qzd";
  packages."mipsel_24kc"."packages".sha256 = "01c3xbyb5bnz9y93gcm3h1815pf5nkrdvxqhgm3yma0902v3kna9";
  packages."mipsel_24kc"."routing".sha256 = "0hfqbysibs1l3vaxcd025zr8fdzfi84l4wjfvziswn3awcymjjd1";
  packages."mipsel_24kc"."telephony".sha256 = "03rakvxqaxch3sm5gpaqkg5x1gc1i4npg6x5acpv3b86izg4m36h";
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
  packages."mips64_octeonplus"."base".sha256 = "1jzkfpmq3nvkksvlk5vlg0w1vpjrkp0qnl2vrmc9r0r88qcj4snd";
  packages."mips64_octeonplus"."luci".sha256 = "1f4rhpf6i0nfmcmnpzwajma17p3g6k941987mya1pqgw3irpmqjs";
  packages."mips64_octeonplus"."packages".sha256 = "1wsbzcvn2cf2d303bagxpwz4wh77pn9bkcxp6i65baskvp58j85a";
  packages."mips64_octeonplus"."routing".sha256 = "0vi5a3w8xy6012kjr4pyayppkjya74xwnmyxlwfvh3wr4bga1lsi";
  packages."mips64_octeonplus"."telephony".sha256 = "03m8qc5hw6yijaannppjisd7n2b1s0f80fchb9wlvdxavsfm1gqn";
  targets."pistachio"."generic".sha256 = "0qixk1cqwar8nb9hg9kfy7hirjb4b21pdpbj5ybylkrc979nla5m";
  targets."pistachio"."generic".packagesArch = "mipsel_24kc_24kf";
  packages."mipsel_24kc_24kf"."base".sha256 = "0c9aqf3fd8k6lhq67hc5pgsr01yjb3mrp814950ykazs0pqz39an";
  packages."mipsel_24kc_24kf"."luci".sha256 = "0w09blw6xksq50mzyzwbgy7mj62s687ib5092yjphdhwzl9259m3";
  packages."mipsel_24kc_24kf"."packages".sha256 = "1i2h0z8kkhdriww0l3hgy94byr0jxzq8d8c253l8m8arsss6pf5i";
  packages."mipsel_24kc_24kf"."routing".sha256 = "1qd9qknydncchh08lwsi4zj3qz7l6jjp6v2c8p07db78c3xbv1y0";
  packages."mipsel_24kc_24kf"."telephony".sha256 = "0pjv3xjil0pi39w2l8251y6f4mcc6k404d8h68dm5i9sb9wqwjc7";
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
