{
  targets."arc770"."generic".sha256 = "0ll3b59hvxc8q1i589dcnl1r4m5d8qxmwarg75kfsr2rcfv7l7n0";
  targets."arc770"."generic".packagesArch = "arc_arc700";
  packages."arc_arc700"."base".sha256 = "0nx4d10qg23skzli8msw04r8j6b605jqpynaky6c32wgvjva495s";
  packages."arc_arc700"."packages".sha256 = "19kgfjsibvr8p0lg2y90z39dyjm4ss0kscssxrs0n0d6r8dhnxpk";
  packages."arc_arc700"."routing".sha256 = "184m54rrkl4s873hfhvs3xb74r9bfn9ww1kwyjnplawh1wvj1b9h";
  packages."arc_arc700"."telephony".sha256 = "15wcyln3isp42gkls5bfn9ha8520kqpmkkw204ba4jw8g1bdfg5p";
  targets."imx6"."generic".sha256 = "1yl8550svchvk8m9x53biq81ya263fznbh4434hylphvnrn7ccsk";
  targets."imx6"."generic".packagesArch = "arm_cortex-a9_neon";
  packages."arm_cortex-a9_neon"."base".sha256 = "1653cxmfzxxhjf08j1423541n2sgpn2zqf5vmmyh0sf6fdaj96fx";
  packages."arm_cortex-a9_neon"."packages".sha256 = "0808w63g3g0s7bkdpw13hwswrx2j7djk962fxbai33ajc55m3drw";
  packages."arm_cortex-a9_neon"."routing".sha256 = "1ayjw4i427acwwar4b1rk4byl6kf9ygbsr85qh1jiv1jxz6ig828";
  packages."arm_cortex-a9_neon"."telephony".sha256 = "1d3hq1ypag6iz54n8dhqnby3yr5q1jr1mzvrwcz3h8qfha989yff";
  targets."oxnas"."ox820".sha256 = "0y3v5sfhfmnrxd0hl9rq2778yri102qz0nvpwc2gl0axcw2kh2l7";
  targets."oxnas"."ox820".packagesArch = "arm_mpcore";
  packages."arm_mpcore"."base".sha256 = "0vw9zwmr62rs9qwmraq332a9kqcmd9q7flzrn1yg046q1a7ynjcd";
  packages."arm_mpcore"."packages".sha256 = "1xbmqmrbvcchx2mj6d83v55ij2lisrn5sbxl66aylin7fsziq3wc";
  packages."arm_mpcore"."routing".sha256 = "1i1y7hp9qkwg398zz4h4kcwpi2bq9726q67dj063wi7z53ppmqr0";
  packages."arm_mpcore"."telephony".sha256 = "18kg3j5y83jdca5b5b1g5s2281l88w06d1ap7sphf40g67fy0nzf";
  targets."mxs"."generic".sha256 = "09sb20z8rcs9nisnqd857yw5ddrn0xg26gqinnlg97x9cp8kfzv5";
  targets."zynq"."generic".sha256 = "0k1g0v0k76m8042i44s1ifvzi67h92a8czmscvcpb6aj6r2w2iiy";
  targets."zynq"."generic".packagesArch = "arm_cortex-a9_neon";
  targets."bcm63xx"."generic".sha256 = "0rwzrxxaw7s4qx6mqq2b3jnywzqvc4hpwbm2fnbsj4mjd9v66vnz";
  targets."bcm63xx"."generic".packagesArch = "mips_mips32";
  packages."mips_mips32"."base".sha256 = "1l6f28xfc6apkcdj4i0x3dqy3zy353rwck05y5f4p4g9m2arff4b";
  packages."mips_mips32"."packages".sha256 = "0ismss1w8b4mjn7wy0ngs7iyj2wvc8k0cc5jnvbnscs5cxj2gsbl";
  packages."mips_mips32"."routing".sha256 = "0f9kxxdbr0j5f4vvqa9gs49l1c3bpx1wk0pqw2ljzvkc93cannar";
  packages."mips_mips32"."telephony".sha256 = "0h3fjcy0q6lcxyg6cmablg3ksjzl0rmm8x2xd3aq98sbd1b8mrh2";
  targets."bcm63xx"."smp".sha256 = "11gz8clwdmn6jgyfj6ysrfza97c2ssql5dlnc319y38cnsciykdq";
  targets."bcm63xx"."smp".packagesArch = "mips_mips32";
  targets."bcm47xx"."generic".sha256 = "19g1dgfqxmkdlisnsc2kfk2624gzjc0fmwp3zmjz4qmby6y1gk35";
  targets."bcm47xx"."generic".packagesArch = "mipsel_mips32";
  packages."mipsel_mips32"."base".sha256 = "0xjb3wb362vhlc3ca8af8fbfsq2y09hgdp0v15zg9vbv5191slq4";
  packages."mipsel_mips32"."packages".sha256 = "1f7b405xy769r89mfz4kzkipi8y5vxws8y9n2a3csiv5a1ra755b";
  packages."mipsel_mips32"."routing".sha256 = "0s68mms72rsdwfrqlc2lnsgz9d6n6ab5yynir5dv926891acdlqx";
  packages."mipsel_mips32"."telephony".sha256 = "17ci7zq20a7layr6j4nmcn99b5pyj6vncpchfivx1550y81gk1bk";
  targets."bcm47xx"."legacy".sha256 = "12mswd427057011pxzflhl6f8zlh8valmj7wf84bf7fjahj8xd85";
  targets."bcm47xx"."legacy".packagesArch = "mipsel_mips32";
  targets."bcm47xx"."mips74k".sha256 = "0c79wsxi0a8pyijyvlb1b204cx39z73cwa7zhrhy232kjq9bd3g3";
  targets."bcm47xx"."mips74k".packagesArch = "mipsel_74kc";
  packages."mipsel_74kc"."base".sha256 = "1bg9ddw5z0gxmallyxazkj1hlmwfh9i542qj64gbfipw0w6dqklc";
  packages."mipsel_74kc"."packages".sha256 = "0f825nvcdjiikc8zqy7hlc0018s8kph40if55fqvscrx12zq735m";
  packages."mipsel_74kc"."routing".sha256 = "0q59qbfccpsw34kcg4lz54hvqyspchakl2c28ifb0g1889zwjj1n";
  packages."mipsel_74kc"."telephony".sha256 = "1pcbam6z4z7b2vggrpvvqbr1v762dk77ikwmk6wzj6zg1mb1xg94";
  targets."bcm27xx"."bcm2711".sha256 = "099gzj12jbk1fc1xdqp84ykmwph7d142baaikzjzfy07igjxl2i4";
  targets."bcm27xx"."bcm2711".packagesArch = "aarch64_cortex-a72";
  packages."aarch64_cortex-a72"."base".sha256 = "0sqy6gh32pjfdgan5701jfsxqp0diikd05yhqpn66pp9lf3v0aph";
  packages."aarch64_cortex-a72"."packages".sha256 = "0ylwvl59d7f1lib8r4kv9s1lv33k3n1jsm940a4xdscl1iychqii";
  packages."aarch64_cortex-a72"."routing".sha256 = "090gbxndjdclwkmcq3sr5ij103b66d948p75b6w5vkzbiqxz5qhf";
  packages."aarch64_cortex-a72"."telephony".sha256 = "0000f10888k93k7dh0qsmjfnikx07idqmr8jip8k33d71aylzknb";
  targets."bcm27xx"."bcm2708".sha256 = "0mcaczzcm27vkqm7vznl86vdj3fxnsfivssh3f8f14bzslj45215";
  targets."bcm27xx"."bcm2708".packagesArch = "arm_arm1176jzf-s_vfp";
  packages."arm_arm1176jzf-s_vfp"."base".sha256 = "1mb6akvi9bxaq5z1vjn5psgsi1afryhgvw8p2a19j59rv7h0w548";
  packages."arm_arm1176jzf-s_vfp"."packages".sha256 = "0n59h3b20y6z5a7wi630alwh6vic8j155nmyyzhzyyiv30g6qg1b";
  packages."arm_arm1176jzf-s_vfp"."routing".sha256 = "1c0vpb6bcwa6mhqnjgsfd1dxp6lk789n7j2x6ss9yik75ik5b9mg";
  packages."arm_arm1176jzf-s_vfp"."telephony".sha256 = "07qalz2msikkx3sp82q0wsmfvi6z9js63mdcmc34l6nfg03690gh";
  targets."bcm27xx"."bcm2709".sha256 = "0fygnb03xy1j24knrsxddby086z58z48nkpx9k4jm8i99j724382";
  targets."bcm27xx"."bcm2709".packagesArch = "arm_cortex-a7_neon-vfpv4";
  packages."arm_cortex-a7_neon-vfpv4"."base".sha256 = "17jd5m7nw7r41cv2rvm0jw1x7mspzqzbzsgpv3vr99fv1psi2mmr";
  packages."arm_cortex-a7_neon-vfpv4"."packages".sha256 = "138gq2qa836gvg38wq85gn376q78dyrxn0lrxiqvkvsbf4kd0wp0";
  packages."arm_cortex-a7_neon-vfpv4"."routing".sha256 = "1qg8nx2fzchapg08k10fq8j4b21v10y00qrbizg4l75wyq1gp9c5";
  packages."arm_cortex-a7_neon-vfpv4"."telephony".sha256 = "0lwjyn2lr39x4p1mvsqybsgwcbh10jsfng6pghplv00lhx671ra8";
  targets."bcm27xx"."bcm2710".sha256 = "1pli4zrc1fxbl13n9dwhil57qrzpq3dplk9jdjw2r8cv8w77sr79";
  targets."bcm27xx"."bcm2710".packagesArch = "aarch64_cortex-a53";
  packages."aarch64_cortex-a53"."base".sha256 = "08lzzy4mghhl1i1i0wyw2ndd61a1bqxrn981k4d40vj8r140z33h";
  packages."aarch64_cortex-a53"."packages".sha256 = "0ndg8xbd632pkfw50ylpg6af66237768npp918yiqbwm1w7w1kz4";
  packages."aarch64_cortex-a53"."routing".sha256 = "1xsfnhvhvzx7xyq30z3fc94n7wxvq1v5k10xpb6ij193rkxci89w";
  packages."aarch64_cortex-a53"."telephony".sha256 = "17xapydscw0m64fp5ragyrra84v3kya83ds7jygp8hjw3lr73r28";
  targets."mvebu"."cortexa53".sha256 = "1639bn8y03la5ypv4qn2yyh7l3kq5dxqpzr270cpk5x221z90m3p";
  targets."mvebu"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."mvebu"."cortexa72".sha256 = "0cpzdx8nivpgz5s4abajqmsk5lxm9dmf0habhgylp16vsyhixbdw";
  targets."mvebu"."cortexa72".packagesArch = "aarch64_cortex-a72";
  targets."mvebu"."cortexa9".sha256 = "17kjhh74fbcqb7wr5iidaa9sz2q084sqsq30k3bbdgxlqy0qcdxy";
  targets."mvebu"."cortexa9".packagesArch = "arm_cortex-a9_vfpv3-d16";
  packages."arm_cortex-a9_vfpv3-d16"."base".sha256 = "13gl95g0jqb69c36892dbn107rp8iqj0s8sx71ag337khk7k79q8";
  packages."arm_cortex-a9_vfpv3-d16"."packages".sha256 = "1jgpcjm1yv4g6aizsd6ncpd0h4xf56iam6hpg5fcpw94bhhsk6yx";
  packages."arm_cortex-a9_vfpv3-d16"."routing".sha256 = "0k78hyb1l233xj69925wmamns1rj0wdphgdk7qkk6s6hminwykxi";
  packages."arm_cortex-a9_vfpv3-d16"."telephony".sha256 = "1kgqc1y750xfws2bqvz1zc4c6dh9fi4amm2c1j44f90bi2ghfj6l";
  targets."at91"."sam9x".sha256 = "1r7hl0lqgkzad8wg8i0gdysakf4qhrm2q17giawz710nvd3zkglf";
  targets."at91"."sam9x".packagesArch = "arm_arm926ej-s";
  packages."arm_arm926ej-s"."base".sha256 = "1fvadnvy5jgipynv37bpn0myfpl2r2alkp6rfixbz24qn4jcb68d";
  packages."arm_arm926ej-s"."packages".sha256 = "01rg888mdnwmdc7bmzyky9c838cvyx7wag2i03lwhpds0gkgmcbh";
  packages."arm_arm926ej-s"."routing".sha256 = "16yf0ml0q4i4xxdkxps734nliiwcgn8x6hswhiccrd5lw05fl5pi";
  packages."arm_arm926ej-s"."telephony".sha256 = "1ny88nzimvj3agn5rhrrlx19h30b5zzwfy87fx00c6pv8ipji9vj";
  targets."at91"."sama5".sha256 = "1la3m04rkd8rrqs2gpnipdip2fbz41vbd9kp21q2d5kqzldynwwc";
  targets."at91"."sama5".packagesArch = "arm_cortex-a5_vfpv4";
  packages."arm_cortex-a5_vfpv4"."base".sha256 = "1xm5rqrjcdlh7zhwcvgxbrpk89z0938p5jx12579kz8358grk681";
  packages."arm_cortex-a5_vfpv4"."packages".sha256 = "04jbx8d7k0zzfi0dn6f2dd6hsxvdr1r4gxph9a73y57m3zp2kyd2";
  packages."arm_cortex-a5_vfpv4"."routing".sha256 = "0dd5g0vycmh1jw5ljl9wscl0gq9i8lmbsyqxqa7fhd1fdckf9wxp";
  packages."arm_cortex-a5_vfpv4"."telephony".sha256 = "1qiic71zrid5drvi9lji21pcmx5cfi1v9fqwydnb2ji7835g75ai";
  targets."gemini"."generic".sha256 = "1z82mr6ky7dd4178w1356nvv2b5zlypdkb8q6ln7ckp9a0ghbnxq";
  targets."gemini"."generic".packagesArch = "arm_fa526";
  packages."arm_fa526"."base".sha256 = "1z4xpyid3q441lhg533snsbh3nbfmhs7z9daj3ycdk4bs8dfh4dw";
  packages."arm_fa526"."packages".sha256 = "0qfkmj6694k9sms5r5sqd1w7fppslgvhkhhi0vaiq2hz0g0w1isb";
  packages."arm_fa526"."routing".sha256 = "0ga8y0j5gxwzjn2zy5ipvyx451qb7hks6yzm8y99q8haa2w32icb";
  packages."arm_fa526"."telephony".sha256 = "13nq9b43ng5x704bg3cwb27wv3irjwwgwmisc39sx72j22pvg4jx";
  targets."octeontx"."generic".sha256 = "04mfpgnq5nnpiqr44a7n6g5k9b3ggcdv55jb14fqs7ac81i9sylz";
  targets."ipq40xx"."generic".sha256 = "15dgkx1n4yrkfi132ma2flf6aj3va47h6knz9ajm4a84fkricszz";
  targets."ipq40xx"."generic".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."ipq40xx"."mikrotik".sha256 = "1chbplkwd0h430a8dj61krzsyxrzv4dsz0dbdm2qdy7v1yiji9bs";
  targets."ipq40xx"."mikrotik".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7623".sha256 = "1zqb70ik7scj85c3hxlm6q5arp9p90l49ynwcxk81fasn7nskn8i";
  targets."mediatek"."mt7623".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7629".sha256 = "1gkwcdaazjhw3malkzbbylafsxv1p1xy80mbivmwxadral41m0sx";
  targets."mediatek"."mt7629".packagesArch = "arm_cortex-a7";
  packages."arm_cortex-a7"."base".sha256 = "0rdj85s5mq971h7549y0qvm572sl8jz8a0x30j0xi16wprr5aqyd";
  packages."arm_cortex-a7"."packages".sha256 = "08x9ssaix66kkly12wwssfkp1adzn5ncsrcg7mrjp40jn950cw1x";
  packages."arm_cortex-a7"."routing".sha256 = "02ccj37crhi6zqdsvjzz3n7lan167psihw87r35q9j9mll7pvmfm";
  packages."arm_cortex-a7"."telephony".sha256 = "1l2jm7kl0csmj1ylg772jm5dkk0bpsnd2cgkpq5ic6jdyz4ln38f";
  targets."mediatek"."mt7622".sha256 = "1x29wma4j96lyjrw286qqvcs3xpgcd4lz806r2hfwfnqiff07b1l";
  targets."mediatek"."mt7622".packagesArch = "aarch64_cortex-a53";
  targets."malta"."be".sha256 = "11s2jzshvcrc04sxj5slnhwynjphc6sfg7v16camgi9a1hk0scf1";
  targets."rockchip"."armv8".sha256 = "0whfn264zxdbghxjcqwgqiqhdn0l23ihj4iiji95kjszan1xd370";
  targets."rockchip"."armv8".packagesArch = "aarch64_generic";
  packages."aarch64_generic"."base".sha256 = "1slg462591fadzn0ik1glpkv6d6qrafz5lxkjd4dzjmps14s3h63";
  packages."aarch64_generic"."packages".sha256 = "03ssrj033ddwskviq3c9an03af6za0630y7jdpaphxp6fd1ilq1z";
  packages."aarch64_generic"."routing".sha256 = "1bv7448zn6n2p2x0jvxp1fmxl9ifn6xf91bx3a3pn4l8ghyj8v51";
  packages."aarch64_generic"."telephony".sha256 = "0dgv66gc0pzpamjqf0k68fnn1xra6n2y6mnqijzjlldx6gpij4aj";
  targets."ipq806x"."generic".sha256 = "16zr0ji1ph3r45vaw0nsrvm8qi9d6dp362byi9z8yd6iwjwjbxjk";
  targets."ipq806x"."generic".packagesArch = "arm_cortex-a15_neon-vfpv4";
  packages."arm_cortex-a15_neon-vfpv4"."base".sha256 = "1lidrf6xc1j3i74djdhjl8z2xcp3ivz1q43pn1j496zqdnmfhp25";
  packages."arm_cortex-a15_neon-vfpv4"."packages".sha256 = "0d0ka6nmxhb7c4118w90g77mb4vzfdlsvkkw2vbgrsqmbkf7r16x";
  packages."arm_cortex-a15_neon-vfpv4"."routing".sha256 = "0l5a9n3mqrjhyky83ix9qqylpf20g8ngd50c3jlnisfars5b4kkr";
  packages."arm_cortex-a15_neon-vfpv4"."telephony".sha256 = "1ccadii1p96829pla0y4wv4m7k49kif9if0xkxfmsb6yx9y84k6b";
  targets."sunxi"."cortexa8".sha256 = "1nxaxrb1dl219xpsjk8pwby41l4y0px7kaf1a1r1csqx2yv677c5";
  targets."sunxi"."cortexa8".packagesArch = "arm_cortex-a8_vfpv3";
  packages."arm_cortex-a8_vfpv3"."base".sha256 = "03wcdjsx7hx93rwgydzxvi1gsyqaqx8a2lk4vw5fg4sqvg2vhf6q";
  packages."arm_cortex-a8_vfpv3"."packages".sha256 = "0na2n88wzwdyabd1vvl3r2s3ijhcqcf8qhl8jcy25iqzrk0gkxya";
  packages."arm_cortex-a8_vfpv3"."routing".sha256 = "0v7mpgaijgff1g3vsm0vb9d10gnmgzi3h5935s5aqycy18nwrl1j";
  packages."arm_cortex-a8_vfpv3"."telephony".sha256 = "0qf60886x2h36zym0vwnm6wx5xfmymxym321z6mcl75vbfpv38yv";
  targets."sunxi"."cortexa53".sha256 = "0mj5pfbzkaamrvkvc93dl8kfsp63p7q0hhqcj6prxmyp22krzrcp";
  targets."sunxi"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."sunxi"."cortexa7".sha256 = "0qsbsqnkclps1k058ykr9fxs9b6mxb6gxprxrcs05ym9if7kh689";
  targets."sunxi"."cortexa7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mpc85xx"."p1010".sha256 = "13hsw5aqdprsxh6pi4fx14iivjmkpaya0mrx6x7v1nxgc7w562aj";
  targets."mpc85xx"."p1010".packagesArch = "powerpc_8540";
  packages."powerpc_8540"."base".sha256 = "14hvxmy349mbnz43n6hsyrw62x1nxcpncg0c23rxihnrp3rv67lx";
  packages."powerpc_8540"."packages".sha256 = "1klvm9r3wwr58ac48kxpcwy441m2qk2csx0lplsd4l62fq784azr";
  packages."powerpc_8540"."routing".sha256 = "1c3l2qwzs84ny9jcqd04majl5alip7lg3zc3hqwq19m0m4slg2s6";
  packages."powerpc_8540"."telephony".sha256 = "01sf26lfs7q47fnr7y9jw41cw44ar229wmskrm7rld5fyp7j3n82";
  targets."mpc85xx"."p2020".sha256 = "11mba7zbigk1hymp6d2zfmrhh8irm88zca11f5hcadm2gvmssvxc";
  targets."mpc85xx"."p2020".packagesArch = "powerpc_8540";
  targets."mpc85xx"."p1020".sha256 = "1a89vi0g610ph2y1ggpcnmbf72zsr7r7a2iyinwjhhbyd0czic6k";
  targets."mpc85xx"."p1020".packagesArch = "powerpc_8540";
  targets."x86"."generic".sha256 = "1lixvas64qddf4ix2afzwpig9qsk0b0l76x2nl4490c4q3hzhv9w";
  targets."x86"."generic".packagesArch = "i386_pentium4";
  packages."i386_pentium4"."base".sha256 = "1g2wi2slaz2hc14bv5c11rkvk8yjl21hh1g64vkpqq5zvfpdysln";
  packages."i386_pentium4"."packages".sha256 = "0lgamanx4gr5jj5fg027ry62crnhz085mgji14ghx0qnqfbaxvbw";
  packages."i386_pentium4"."routing".sha256 = "08pwj28qmn8x515ccnf98600g1l3r58bqx2s8aav1c6rk0d514m1";
  packages."i386_pentium4"."telephony".sha256 = "1isg50iyf1iw0cf1yfdpm76z45mb6i8wm2vpzmihryxapzyipx80";
  targets."x86"."legacy".sha256 = "15zlh87121pn0q2hcxdi230akx9xfd5sjkr7bsszign1ha4mrdbk";
  targets."x86"."legacy".packagesArch = "i386_pentium-mmx";
  packages."i386_pentium-mmx"."base".sha256 = "0qjhvafa05qgh7lcghr4c3yhwyhd1bxcgwlgzinkwzasaralw308";
  packages."i386_pentium-mmx"."packages".sha256 = "14gd2ak8izb574n7z7yj0s8hq32vpwpbdihxn7ki010nnfywnvjd";
  packages."i386_pentium-mmx"."routing".sha256 = "12by2nc8jhq2b4ravmv3fp512zsa54v3993fly9vhh4p1z3b50rm";
  packages."i386_pentium-mmx"."telephony".sha256 = "1x8dj5663lqd321yjscslqb2pv5kda2wmy3gw4idkhai5gm2lz59";
  targets."x86"."geode".sha256 = "1ig0n19j9j8mfnd8zffxxx7ckxccmk5k8s1k7vwsk2pqmq9qxspk";
  targets."x86"."geode".packagesArch = "i386_pentium-mmx";
  targets."x86"."64".sha256 = "0shz23fgh8yjrlw3d8zd3m87hc5pgv3mq8iqdyj02llxwvajwx9w";
  targets."x86"."64".packagesArch = "x86_64";
  packages."x86_64"."base".sha256 = "1rs1h34xpbl62sbqf4hfb6312syvbs06xj8gs90pzdirgm2nj4cd";
  packages."x86_64"."packages".sha256 = "1m74df5x2p9770c3v2qnlyp1plbbbxhwlncc1cmqb68hkp4lxwgr";
  packages."x86_64"."routing".sha256 = "1yb2x1fnygmvrzx2gx7rpmdspxmscsdx0kxs432l9yr7w4jgvx9c";
  packages."x86_64"."telephony".sha256 = "12jbwdd2wp1lqp6kbaskkc63g4m0424fbsilp564hc9jgvnbnlaz";
  targets."realtek"."generic".sha256 = "0frb6ppcn74s2ckaxrprk11prrg65f384bfcdad9bbf3qjfcn4al";
  targets."realtek"."generic".packagesArch = "mips_4kec";
  packages."mips_4kec"."base".sha256 = "1rn46793ydb60951gixp0rf4n7kfpaqbyshpff9syld8izcr043a";
  packages."mips_4kec"."packages".sha256 = "09blp6cryk7znbw1ar24lafshl88sgkvs2a62yq6yfk6fg7b88p4";
  packages."mips_4kec"."routing".sha256 = "0dgj97k54przvnh7lfcwqjj23f7s2hq9zbzs7z6p3v9lniw7scw5";
  packages."mips_4kec"."telephony".sha256 = "16f5hijdj6f2jyavm28sxl7i8mvcxgsqfg0z84r68nvkljvcm71a";
  targets."armvirt"."32".sha256 = "0q8l5zd813sdxbv0cngmx3cqqz5pnkcrhrl2bphibzh89s8shh24";
  targets."armvirt"."64".sha256 = "1zbpd93bz21ad80k8z7i4dvhpbmyfgdqdanxxz3dacl4zy7a91sc";
  targets."kirkwood"."generic".sha256 = "09zpbhz4nhicsm54x5nimknsfpyjc7hjqiklk730zrlmpr07hg8g";
  targets."kirkwood"."generic".packagesArch = "arm_xscale";
  packages."arm_xscale"."base".sha256 = "19br41h6mzmdfp2r6nb9yf068ic36abl90bn44gsm0kc7b3xihxd";
  packages."arm_xscale"."packages".sha256 = "1dn6pl9ag1xm819al63mfz81dgv5257ky6flnyxgy0r49brxmz04";
  packages."arm_xscale"."routing".sha256 = "181bj7ddhab0s2d7fc0l4zbz9s0fcfxq6qvhkig7w60r4jw66sq3";
  packages."arm_xscale"."telephony".sha256 = "1hmbj7mlyh73cykbd2aknzl83566kcp6lbzs48glk826jzp7szhb";
  targets."ath79"."generic".sha256 = "01vyvxkphnlpvnw2az8ficzzjn3zjvwlvkp0hpicy8w94ih1fxdj";
  targets."ath79"."generic".packagesArch = "mips_24kc";
  packages."mips_24kc"."base".sha256 = "024209rqr6crkdmg3a8dqpins34yb60qrfkrfhcj259d9z6f14j4";
  packages."mips_24kc"."packages".sha256 = "1bxi3icmq7hjhmw3019s2r3p33ffb6yyc59vxmcvwgs0hq2panrv";
  packages."mips_24kc"."routing".sha256 = "1irprg3rr296ckysdxf74d3lqcmg3z1gfzp8359zrnrzmk5c9a0a";
  packages."mips_24kc"."telephony".sha256 = "11jf76vn04rxvvc9x3fzia69a2i7hm3qf9yr2icdf630cr2agbil";
  targets."ath79"."mikrotik".sha256 = "1b0ljsb72xkmx8d9cfk2r8jv3bs5adj6b2hnhdiqls2iaz6al3yq";
  targets."ath79"."mikrotik".packagesArch = "mips_24kc";
  targets."ath79"."nand".sha256 = "00775cbgvp6xgwdvmba0abgisjd5q9srnqiyhd71qswlynzai3p7";
  targets."ath79"."nand".packagesArch = "mips_24kc";
  targets."ath79"."tiny".sha256 = "1271frbb1vdl13iz6q212fkmbq9c3r237x62ywjb3s4v92rbrc9s";
  targets."ath79"."tiny".packagesArch = "mips_24kc";
  targets."archs38"."generic".sha256 = "0lwgvp5qh6akr65z0msfqxzkhp9ja3s8ip9gxpiqpg8689jcabac";
  targets."archs38"."generic".packagesArch = "arc_archs";
  packages."arc_archs"."base".sha256 = "0ijfriz1ji27cfpgbx4jffngwc7damsmj3qyldjm46ssvxjw6w9h";
  packages."arc_archs"."packages".sha256 = "1s0sihs9b8pzvm9jr3g6wiwsqdniaq5mxxikhzk0954ggzm44837";
  packages."arc_archs"."routing".sha256 = "0gcfgpjd7lqz8k5b0scyp0p28ganyg19r2629w0gfpvmiz2vxv4c";
  packages."arc_archs"."telephony".sha256 = "10yzazwlq0xy5sls9sgvzlcii3knn6j2mwj3lrgmwa5g35yb94rp";
  targets."ath25"."generic".sha256 = "1yv5iyz14i0i7n2gr376bxr6qs5v2qy7a3xshk0f5l1asd9kh64a";
  targets."ath25"."generic".packagesArch = "mips_mips32";
  targets."apm821xx"."nand".sha256 = "0r202z8q18v2afjfgb9yp9glpy78qbxvlxjjzwbwac47ab8jvd3h";
  targets."apm821xx"."nand".packagesArch = "powerpc_464fp";
  packages."powerpc_464fp"."base".sha256 = "02b5ysqqhgy971ciq3x5pz486a17l97jggcm8jwwdf3b0a7744ny";
  packages."powerpc_464fp"."packages".sha256 = "0hvqjz65dc78j262lc9w1k8n6lg6bl7jpgjzs3fg7im811pcxj0n";
  packages."powerpc_464fp"."routing".sha256 = "13z07df43g6s9x6nmamxb95qkhbzksm8zg9bixg84j3jlki6ywib";
  packages."powerpc_464fp"."telephony".sha256 = "0ibbbsz1nr2nfsg2fyvrw3ak8a40ddx951n530m0hhsv2s148z2g";
  targets."apm821xx"."sata".sha256 = "05iv7wgbxf06xyb94kyiz536kcjjhmmb0id0qlx5vq1z7kphs8ik";
  targets."apm821xx"."sata".packagesArch = "powerpc_464fp";
  targets."bcm53xx"."generic".sha256 = "1sgbkfb37qgx7kblkzwhn42jxwm71v3q1jnmayr00lmsf37amrmp";
  targets."bcm53xx"."generic".packagesArch = "arm_cortex-a9";
  packages."arm_cortex-a9"."base".sha256 = "1ah8ypvfldhr91f4inzn4l1r5fqkgflpra6hna68k8nlsd7ipfhx";
  packages."arm_cortex-a9"."packages".sha256 = "0m2jcd8iadivlnydsc8p3a51kma0k2xvz4sxdcw5rgc78jrwnz2h";
  packages."arm_cortex-a9"."routing".sha256 = "11kkn94b71bfy1hxkjqiklaa9s9z7nm8zgswdk1xzj4aw0x4krbq";
  packages."arm_cortex-a9"."telephony".sha256 = "17vbiy4qdl036vmiw0q3jrv27hhkkcgk6zz06z2ln4jx97qdylmf";
  targets."ramips"."mt76x8".sha256 = "10drsh4sb23w4fn041lrdqs3rvdhqyxwdka557vd2y5hjcs61z33";
  targets."ramips"."mt76x8".packagesArch = "mipsel_24kc";
  packages."mipsel_24kc"."base".sha256 = "1kc2yir1pc1ap5c553y1wp2xlqxbbpdql2b1ikqakmlg2n9i12xl";
  packages."mipsel_24kc"."packages".sha256 = "05s8p2lzy4iapz78pqcik2lgg1f004srbyf26mr9w6lvq2gh4518";
  packages."mipsel_24kc"."routing".sha256 = "0615lxg3rclxkv2gryyzyghizps52d274a76fz6j33k06k0wsal5";
  packages."mipsel_24kc"."telephony".sha256 = "0xhfqv2l96cd7byw3lxaky5albx8zf3dvcdy7iv14isrg0rnb55f";
  targets."ramips"."mt7620".sha256 = "0ilfc3mm0j7c7ckahyfcmynzp8hs7g0zfyh7vlijnbv4rkdydfms";
  targets."ramips"."mt7620".packagesArch = "mipsel_24kc";
  targets."ramips"."rt3883".sha256 = "05ai7ja94dff49lvvwslkjldnbx1dh93ypiii272cw7b5a4r0ilv";
  targets."ramips"."rt3883".packagesArch = "mipsel_74kc";
  targets."ramips"."rt305x".sha256 = "1jaln3afzgfp6h5vfx1aka0bj3hm076zbnnhfixfxlyw9qd13knf";
  targets."ramips"."rt305x".packagesArch = "mipsel_24kc";
  targets."ramips"."mt7621".sha256 = "1g9fznv8m7p45z68p9y95gglairfq6wxr1mw3jiy3r7n111qxdjz";
  targets."ramips"."mt7621".packagesArch = "mipsel_24kc";
  targets."ramips"."rt288x".sha256 = "0m20iwqq17x6zjrh0dildzrl39mj9g61m800i37vj2r3sa3xk9iy";
  targets."ramips"."rt288x".packagesArch = "mipsel_24kc";
  targets."lantiq"."xrx200".sha256 = "1w59gx50x6gpgqbgrkg4q9wx1ggcfgjavdhlfizicm4h5kcx801d";
  targets."lantiq"."xrx200".packagesArch = "mips_24kc";
  targets."lantiq"."ase".sha256 = "0ik30srwyqnbmdr6zsy0kvc72hrm9dj76rdbbib038mcf4lgf594";
  targets."lantiq"."xway".sha256 = "1yxsgymw0cvyhc7v53ckaqlprq2j8v2bs5dqi2kg8sq3zs25ngiw";
  targets."lantiq"."xway".packagesArch = "mips_24kc";
  targets."lantiq"."xway_legacy".sha256 = "0pmn9vf46pz6lzs4wdlk56kkfjpf8c4xdwmv1zsr6mf0194j2761";
  targets."octeon"."generic".sha256 = "1mgppg235wp46yyykcgcqzppsa3paxpw955a45q7gz0vk1vbsxj0";
  targets."octeon"."generic".packagesArch = "mips64_octeonplus";
  packages."mips64_octeonplus"."base".sha256 = "0czs1bl9jz7mf9zvb4la2i9cpvxs12x0szzpmaawmgz69s3i35rp";
  packages."mips64_octeonplus"."packages".sha256 = "1m55zs00knvhglyagy88hc0jxaqsz65399h1ayrrl390zx4skjiy";
  packages."mips64_octeonplus"."routing".sha256 = "1ypfmvjp1q6ywxmzy5ls9bybrrbpxp4kphl2dfy8q1y66n207wsb";
  packages."mips64_octeonplus"."telephony".sha256 = "0bqxzh73hyw685c3f0bq12j1x4q3kgzflkpx98rzi53gdnkix50f";
  targets."pistachio"."generic".sha256 = "1xdfxyfff4px410gb7p05q9ypq0snbc7kw817qipfxs3cv30aaxg";
  targets."pistachio"."generic".packagesArch = "mipsel_24kc_24kf";
  packages."mipsel_24kc_24kf"."base".sha256 = "040qjfg27hybki4w7pd6kwllizcbfc5kbffmml0j5a7f99l3gvvi";
  packages."mipsel_24kc_24kf"."packages".sha256 = "1n8ds8d1c1kqciyj4n15kizhxg0l2xxrdnbb0v0rfjxjy098jlir";
  packages."mipsel_24kc_24kf"."routing".sha256 = "1d95an3a3clz153xvk01lqbps74ah68ki8j4k13f882a000n03if";
  packages."mipsel_24kc_24kf"."telephony".sha256 = "0c0n2pb4f1pn3h0hjp4w46zhvl73fh4m0l0hg5pag46z9p50df23";
  targets."layerscape"."armv8_64b".sha256 = "1fv24wcx5m37xjlbmi9nabggjp1jb81pq9fajc6wlxzzlf3awmyd";
  targets."layerscape"."armv8_64b".packagesArch = "aarch64_generic";
  targets."layerscape"."armv7".sha256 = "1b7zgfsgyllfc70c72zakvpn7bnnmlpznb7rnhpx2hz375ydh59a";
  targets."layerscape"."armv7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."omap"."generic".sha256 = "089ykkvk6m9sbdm4y2ridb8pglbd7v37mcw9996yb9l5krv3sm91";
  targets."omap"."generic".packagesArch = "arm_cortex-a8_vfpv3";
  targets."tegra"."generic".sha256 = "120di06j0x7pby3b5chq78glfn9yy2ndj6n4nmfjikmsi2iv243g";
  targets."tegra"."generic".packagesArch = "arm_cortex-a9_vfpv3-d16";
  targets."bcm4908"."generic".sha256 = "0z6js0vhd7qpgjck4qswqbd9kfayqicfd6n87hjl9hh5mjvcj6xq";
  targets."bcm4908"."generic".packagesArch = "aarch64_cortex-a53";
}
