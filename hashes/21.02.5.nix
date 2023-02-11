{
  targets."arc770"."generic".sha256 = "1gysy0s8bqh1dgbbn88fbwplcr006m4g775m4iwi4nwk9mw2wq9j";
  targets."arc770"."generic".packagesArch = "arc_arc700";
  packages."arc_arc700"."base".sha256 = "07mlzdh5gy4lj2h99ak0kpzdl6swwp6zwfkjr7nfl1c4881f4ifv";
  packages."arc_arc700"."packages".sha256 = "1vgjr62h4c2n4llnaail3ck02v7jfkg71qc4jsj1yvj5fd8wajc3";
  packages."arc_arc700"."routing".sha256 = "10w1ndnvjr37h63gq7f77a1r0pv799wa4dqxq3nfm3fb3l3h4nzj";
  packages."arc_arc700"."telephony".sha256 = "16yrxcnh6rz4jpvv2pqyc563qakhf4wac6h1fhjrzs1hgn75r5jp";
  targets."imx6"."generic".sha256 = "1qr7hx6zr9360jpr04s9900rqymk7bw8d804qlv8b042qg84xgdg";
  targets."imx6"."generic".packagesArch = "arm_cortex-a9_neon";
  packages."arm_cortex-a9_neon"."base".sha256 = "02n61w0c5687cm3sc9czp6xv6ppwgcqxkz2wsl51p364jgap7kyk";
  packages."arm_cortex-a9_neon"."packages".sha256 = "06x2hn3qm091in98ln39ncj5h1vbrqhn872xkx533d6b1kz65wk1";
  packages."arm_cortex-a9_neon"."routing".sha256 = "0shm4kp38xix7gqa0a58gi9phik8wy684mvww2yfi9arrdavn2sl";
  packages."arm_cortex-a9_neon"."telephony".sha256 = "0g7g7k7axnpl0h03294n89z7ndrdgwg3l1vc7knm64xd1gxkj96q";
  targets."oxnas"."ox820".sha256 = "0p4g86alnjh3hwj38jqp1h7saa7vl4vp5wnj288s8nmsgmznkp5y";
  targets."oxnas"."ox820".packagesArch = "arm_mpcore";
  packages."arm_mpcore"."base".sha256 = "1vbvj1k7hv0jnpx3azyd2jyx31awnkfkgackp503cn8w0cgw7zkr";
  packages."arm_mpcore"."packages".sha256 = "0qgmwd11qw0sbfapx7i1lccndc8s4jvdq7yi3czas7mnmgclw7n1";
  packages."arm_mpcore"."routing".sha256 = "11hkrj73v7ibc9jdxxjx8v1b2i99y8xvpd8b45pf2qgn70qab0y4";
  packages."arm_mpcore"."telephony".sha256 = "0ngq84dzvb1ncancly7bamq1cy0dws7kc3xr0lw2cl8hrsjglm71";
  targets."mxs"."generic".sha256 = "13dlarf4rvpdi6kffj9ff3hbvkcr03x7jlbdx96lp0jcj7qvpvzz";
  targets."zynq"."generic".sha256 = "1gmz8av3xarbg7z4w5hh51h9im8wyf9yzg6zxwjndacydgpq9994";
  targets."zynq"."generic".packagesArch = "arm_cortex-a9_neon";
  targets."bcm63xx"."generic".sha256 = "1a9jfyf4kshgjyj2xdgw3qj8hf5jkygsh5j6x0sdryv5x5lm4shd";
  targets."bcm63xx"."generic".packagesArch = "mips_mips32";
  packages."mips_mips32"."base".sha256 = "156415iqvqh7cn65skdc4hf2qzfzld03h3kl8zh49c85psa48mc8";
  packages."mips_mips32"."packages".sha256 = "10jx5rvp95nl7z1pn45xfk941cjcziil82ld4lp432vrl9jnygz2";
  packages."mips_mips32"."routing".sha256 = "18fazc7wqkhn3cs09hb8245wr2za9r60q92x6wzk7rpzcniyk189";
  packages."mips_mips32"."telephony".sha256 = "0mmsy1v60xzrzvkwsq2kyiax7n4zsq5pnz6cn0hn84sq2zxrwc62";
  targets."bcm63xx"."smp".sha256 = "0lrmw4s4jgbyqfxiyvl3xbvp81hlvfhz8ah5zhk198nrnsys0hr2";
  targets."bcm63xx"."smp".packagesArch = "mips_mips32";
  targets."bcm47xx"."generic".sha256 = "0fywwgb3znw6c0p8fnhz4898s5d5jlbgf533dqlq89sjix8npjyr";
  targets."bcm47xx"."generic".packagesArch = "mipsel_mips32";
  packages."mipsel_mips32"."base".sha256 = "0l9zr7kzlg1qn6j5r9nlp9iahjr81bn493dpcnp215kdc4vzvj06";
  packages."mipsel_mips32"."packages".sha256 = "0g5pq56rhy7rmv9zabvb4jdd6vl5sq7qkjcazp0ndm8i4y50cf3f";
  packages."mipsel_mips32"."routing".sha256 = "1jbs6an8k5anjgl36jqdfgna3i30mxrbvzq97vwylgq8k5b6g3h6";
  packages."mipsel_mips32"."telephony".sha256 = "17daa6xpjrfhmclsbldlghyh97svsfinb5i6azzjsp5d7m43ghzi";
  targets."bcm47xx"."legacy".sha256 = "12i2irxinc4hxsd0f9094q65w90h3n7n6ivk0xpcn44slm2snl0z";
  targets."bcm47xx"."legacy".packagesArch = "mipsel_mips32";
  targets."bcm47xx"."mips74k".sha256 = "14pzs31s0ck40200ys407jfg5419m24kg1niivp3kb8h8p7n4jhj";
  targets."bcm47xx"."mips74k".packagesArch = "mipsel_74kc";
  packages."mipsel_74kc"."base".sha256 = "1svh4hfjb6sapyk28sayyzc7vxn84a29y0si0zqcc3h4yzvwrc14";
  packages."mipsel_74kc"."packages".sha256 = "0y44s9sj2hbplgymcria45r7lvfcadpfznzn8v3x9rfx854p2qbi";
  packages."mipsel_74kc"."routing".sha256 = "13i24n6w7n7k8aia79rvvgqa6cirjyh96kzjmpdfp35zy2hbr3fk";
  packages."mipsel_74kc"."telephony".sha256 = "08jg0zknz6zvkq8agxq3h8aa8b90yhkqax6w76p5fgysmjg6ccnx";
  targets."bcm27xx"."bcm2711".sha256 = "1zkxmg8ckq44w3bimmvrkxzm38x7mcg3rx91p6v4k166v1bsblvx";
  targets."bcm27xx"."bcm2711".packagesArch = "aarch64_cortex-a72";
  packages."aarch64_cortex-a72"."base".sha256 = "0l4md7dx82viyjz1mqmlg7slns3638kknxkqcydfmjz52py35rjz";
  packages."aarch64_cortex-a72"."packages".sha256 = "1ib4n70ry8ni0zcj2dn3dyqyy33vl2cdn6zsa856bvbchlb8vh0h";
  packages."aarch64_cortex-a72"."routing".sha256 = "12l2ms6rqc90bk48hsqnkw9yjmcdvxzm5vdb6zlm8c4n2j0cdghk";
  packages."aarch64_cortex-a72"."telephony".sha256 = "1vg1s95g7smdq9ll73vhv2fy0ycl8fnl5y61qi25xldxqa93lz04";
  targets."bcm27xx"."bcm2708".sha256 = "0szsb72ggf88sfhgjmrkp5wb40ylmgqh02axv68dpmiwsaz2rzz2";
  targets."bcm27xx"."bcm2708".packagesArch = "arm_arm1176jzf-s_vfp";
  packages."arm_arm1176jzf-s_vfp"."base".sha256 = "1rkrcbaqg7aliq8pjqsns64944ni1r5y96ppzvjm350swkk8v4ym";
  packages."arm_arm1176jzf-s_vfp"."packages".sha256 = "028dfdn62h1vc2didmz854xvm466sx775p04jfnnxhbhyd7cvdyn";
  packages."arm_arm1176jzf-s_vfp"."routing".sha256 = "1k5fzy279k4gdzxh06w4293s0nfmfjmjbjnqkc9q1hiimknkxz8c";
  packages."arm_arm1176jzf-s_vfp"."telephony".sha256 = "1sk23klqalqvyw7wbrilbbp02rkpsn271pp80azq1627mnkv1gs1";
  targets."bcm27xx"."bcm2709".sha256 = "0kpry9bh43522smljq387r9y6rajzjm8dcizvx3p5nr8j0mli9r4";
  targets."bcm27xx"."bcm2709".packagesArch = "arm_cortex-a7_neon-vfpv4";
  packages."arm_cortex-a7_neon-vfpv4"."base".sha256 = "0vjqzlxdxb7syfr2swmznknj4gy3cr1finm95zsbim2z6v9mk9ks";
  packages."arm_cortex-a7_neon-vfpv4"."packages".sha256 = "059kkvy60f4cy5gdjzy9syw5axdr2liny0axxr7i9cid8fjhasm2";
  packages."arm_cortex-a7_neon-vfpv4"."routing".sha256 = "02k8bfjyak80xkbawv26dcydfhvd5qq4s6dwra49j04640fpjqzf";
  packages."arm_cortex-a7_neon-vfpv4"."telephony".sha256 = "0h5c39fg14kjk295cywl0sxqj46r5d5mj4ardlx1pl57f9irdd50";
  targets."bcm27xx"."bcm2710".sha256 = "055gh5rqbnhlgipr37ljvyf6k7fprk0aclb9kpkhx4g53jvb6sj8";
  targets."bcm27xx"."bcm2710".packagesArch = "aarch64_cortex-a53";
  packages."aarch64_cortex-a53"."base".sha256 = "171ac38aw9x3kv4hf0dsk2r5d6c5lny132yqibx4gn2dc0ibz1ll";
  packages."aarch64_cortex-a53"."packages".sha256 = "0mq1dsdcb25arcdf2mn6ilv1lr62dfbv5lm0fk2k90xizkzk6igj";
  packages."aarch64_cortex-a53"."routing".sha256 = "02mr5zby89zjl0dsrrg8ixcmp4ygbhbw087w30hdnf1v0wrzmfcl";
  packages."aarch64_cortex-a53"."telephony".sha256 = "0215jnk1irjl0z28jnp70fx7ma6ghqwdw86xnvh40266lk2mgb1s";
  targets."mvebu"."cortexa53".sha256 = "03607ql42k4djw1gdk8fvy126fs4mwxm0x9kv146j3cbwx18irgg";
  targets."mvebu"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."mvebu"."cortexa72".sha256 = "0ylg4fy8gbn4f8gbv8vxjq2scj6mizgp9ai6pf846lk43ajylndq";
  targets."mvebu"."cortexa72".packagesArch = "aarch64_cortex-a72";
  targets."mvebu"."cortexa9".sha256 = "08symjd15x6w7zifj4paimq82g4ja0nm6gvfl8lc82cq2vcn77qn";
  targets."mvebu"."cortexa9".packagesArch = "arm_cortex-a9_vfpv3-d16";
  packages."arm_cortex-a9_vfpv3-d16"."base".sha256 = "13bg7zy4dlmrq3d3k5rgy07mgcbv5h7c1ps0xji3vhgsica6nn79";
  packages."arm_cortex-a9_vfpv3-d16"."packages".sha256 = "1afd8j0fsf5v5driq8frz150kf4s9w7sxzgnqxg8qwz61cabyazd";
  packages."arm_cortex-a9_vfpv3-d16"."routing".sha256 = "0aw3r0l679szi8acyksg85hfx9wv99cdq3sg6n2h010bxrcwmw60";
  packages."arm_cortex-a9_vfpv3-d16"."telephony".sha256 = "08d32m3w65793c9zcj2n21a9c22aggqralbdm7x7n3qa4j53kvrh";
  targets."at91"."sam9x".sha256 = "0cwy9idn0zvcwwgc9jvm58b2z5sn7j5yl58spgbxkvpcdam5p7r7";
  targets."at91"."sam9x".packagesArch = "arm_arm926ej-s";
  packages."arm_arm926ej-s"."base".sha256 = "06wciyhcqrnl55mcihqk9j7s023nklfp4q7416dmjc8z84g54d8h";
  packages."arm_arm926ej-s"."packages".sha256 = "17dhqhfy67khl8nfazwnz3kynr8l5h13aaamxrji8m0hh62w6f6p";
  packages."arm_arm926ej-s"."routing".sha256 = "1n85m46k9dvik16700nrc8y3ic30r36ngvb71ah23f8zj5x8x2vm";
  packages."arm_arm926ej-s"."telephony".sha256 = "0s0drihrylpy0j4xbjq45skfxkfjpiwbrnh3mjs6xcxbzfsbp160";
  targets."at91"."sama5".sha256 = "17zxgnlcd8fadnkmbgy2af4wky66pkkrzjc3d7z1zgin8145vm7m";
  targets."at91"."sama5".packagesArch = "arm_cortex-a5_vfpv4";
  packages."arm_cortex-a5_vfpv4"."base".sha256 = "0j8hh2grawx9djygcs506c1mwhl74w0vjqp9b9yf1f2zfw4j6164";
  packages."arm_cortex-a5_vfpv4"."packages".sha256 = "1inb1lcnj8v1sdqvlcvq2dn9vp16ph29bvh4gphglgxkx0iax905";
  packages."arm_cortex-a5_vfpv4"."routing".sha256 = "0lmy19f9jjhrl9dkc1f716i3avbicxjsb4yd0a8jmmzj54yzqgbk";
  packages."arm_cortex-a5_vfpv4"."telephony".sha256 = "16b2v5xafhiyj78s04rh2iji5vkswd1vd4vx464g80lzjfjsaff8";
  targets."gemini"."generic".sha256 = "1zi20zrgx482vdqp0aks1wrc1g8z5qdzaz4310jw5i1bw5qc3nwx";
  targets."gemini"."generic".packagesArch = "arm_fa526";
  packages."arm_fa526"."base".sha256 = "1yrc9b5ydn5mfdgyqdyrabvf1f2irglpqmz8mi24ir4989iq8wcq";
  packages."arm_fa526"."packages".sha256 = "0915jkjsda47ih7rlnyssazdc3qnbs20fdvrnsrdw5nsghzv7b6k";
  packages."arm_fa526"."routing".sha256 = "1wnjgssvypy91c2vj2xjldjn4c9k92isvnm0qsas1yr4qzkp6rnz";
  packages."arm_fa526"."telephony".sha256 = "0qx1wfdanm0z8z6mdwrv8x8h400bi1lk6d2j7kach3m94d8zmj76";
  targets."octeontx"."generic".sha256 = "0y9indgi0wzc51isycm74hjzblrd49nsc35nklqkn8f8f3x2xmnc";
  targets."ipq40xx"."generic".sha256 = "0l9nfzixa3d55y12pwbmsricx9gg3cbrcy6ps571lzkhqcl5xlh4";
  targets."ipq40xx"."generic".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."ipq40xx"."mikrotik".sha256 = "1ckrnj46d42zkvn57hpak8p681ivkp5q932k6z60zz698lw51p0g";
  targets."ipq40xx"."mikrotik".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7623".sha256 = "1bdjh52ll4xa5k0psj48sw357hlq198134mvkpbjv9bb200hz63r";
  targets."mediatek"."mt7623".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7629".sha256 = "1r8d0m3p9hr31m33zv01fy9x68ighddv0fcvvpmcf3w2583kz41b";
  targets."mediatek"."mt7629".packagesArch = "arm_cortex-a7";
  packages."arm_cortex-a7"."base".sha256 = "02ys87am6x8qkm21ngbzmw5l4sn1a05571jjqbll6wnmjrj476m4";
  packages."arm_cortex-a7"."packages".sha256 = "0ljdgf5javmcqp13cf36lnqv723ashs4xzar9wra4lx5cfh76kv4";
  packages."arm_cortex-a7"."routing".sha256 = "1718di2mfahs80c976yzwgm63xa68kslpnc4p68xq1m73psrra8h";
  packages."arm_cortex-a7"."telephony".sha256 = "16lvzl4955qlbzp671c4i7xbb6a0vwm6ls1b5wjd7ivnphfbpzg7";
  targets."mediatek"."mt7622".sha256 = "0yk0018gn91pc4451yvlh8k3h0ck59c66qg41ijdsnwrrh8wg190";
  targets."mediatek"."mt7622".packagesArch = "aarch64_cortex-a53";
  targets."malta"."be".sha256 = "1w7yp3iia2ggmzk6falkbickrvqsz9gwhw303rbhjg2afchkyj8i";
  targets."rockchip"."armv8".sha256 = "03ibgqgl9p5liamr4czmksr0qw2sa61hd82gpxpq9gwa58kqnqpq";
  targets."rockchip"."armv8".packagesArch = "aarch64_generic";
  packages."aarch64_generic"."base".sha256 = "0ml4gd5cqm7wzy02giqrll4hxkn55h1plhi4xr4z2ncpb1x28j4f";
  packages."aarch64_generic"."packages".sha256 = "0afws79xhb590p9w1n35jii3iy4sp1ivg282i2l5fys65ik7sfd2";
  packages."aarch64_generic"."routing".sha256 = "129vgay3pzijz22b6n41sci764l67z24n76ba95c9vr60c0ii4qm";
  packages."aarch64_generic"."telephony".sha256 = "0mw36xl5s4ajw26lidz53zbcy4zq98af6fabbnj2hcizc2cnavfg";
  targets."ipq806x"."generic".sha256 = "0529p9fs1pw6yjzns6d1g4c4xrgs8hpkr1wv4k2hklz1v45qhp5v";
  targets."ipq806x"."generic".packagesArch = "arm_cortex-a15_neon-vfpv4";
  packages."arm_cortex-a15_neon-vfpv4"."base".sha256 = "1d5m3pr3bhbvnh2sc1s5k4k3j8g3nygbblq8dc17kz974db0qzrn";
  packages."arm_cortex-a15_neon-vfpv4"."packages".sha256 = "0frz2kcflqxq6gpkqzl8n05asz7a25q1s7ha1xbbjv79y8rznhcx";
  packages."arm_cortex-a15_neon-vfpv4"."routing".sha256 = "1pmnf3qd9xvm7nky4y1fi86d0cfbzaq9dsjqf4yn5q3g7dgbq2s0";
  packages."arm_cortex-a15_neon-vfpv4"."telephony".sha256 = "0ym3av5vi1c4glmlfq0bmzkab3762ng0120mpvhd8dhkr6zcbn3k";
  targets."sunxi"."cortexa8".sha256 = "0ibw60gln8wsggz3schjzl0gw0m4vmrck50nh24qlgkra1nnl7ks";
  targets."sunxi"."cortexa8".packagesArch = "arm_cortex-a8_vfpv3";
  packages."arm_cortex-a8_vfpv3"."base".sha256 = "1b6la422j9i10p43amg3ihmsy4rx8r0kmx2r4d3f64ykyzwzvs1d";
  packages."arm_cortex-a8_vfpv3"."packages".sha256 = "104lbb1lcbldsa7n1lw0h7f9nayp6mb82haf03i38qghm1gb1z3x";
  packages."arm_cortex-a8_vfpv3"."routing".sha256 = "0myryvnmbsbbrrfz0rz41hj3a60pbz5j6ab6chhj9y1qawi1w4j7";
  packages."arm_cortex-a8_vfpv3"."telephony".sha256 = "0kr811wi94m0whk2nf3sbydskrpi8pmxls8lbb94rq1wcgiynwkn";
  targets."sunxi"."cortexa53".sha256 = "1mcx8wgpcxmpxjjk8v6i5lqk7bj4bdjyj8six6jfnrf047g1w5ia";
  targets."sunxi"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."sunxi"."cortexa7".sha256 = "0kyd0qxijgxnkqyz81mbx1g0a5q5g2wk83lxrz69jvpqgfdlhhwd";
  targets."sunxi"."cortexa7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mpc85xx"."p1010".sha256 = "0g51szz76kwg4ppfcw8m6kg4ksrysxc22yf82x2gpxni753jii0w";
  targets."mpc85xx"."p1010".packagesArch = "powerpc_8540";
  packages."powerpc_8540"."base".sha256 = "0sd8glcd0n0xb0411hsw3scgdk0yf8b7f10csr3p2acf535b5wdw";
  packages."powerpc_8540"."packages".sha256 = "1ichispw7l474w0103c03jwlzip4z4mk5jp8r84radq44jbdj74w";
  packages."powerpc_8540"."routing".sha256 = "0qxqhm8fm5j1bpfdxaj4i0gxw7i89s2i3i5232nsdlaf4xfwmfrc";
  packages."powerpc_8540"."telephony".sha256 = "019rnbbvr43i0f9xi5w6qnd8p5pa52jmw8nins855mzs4haz5963";
  targets."mpc85xx"."p2020".sha256 = "00jqayvvy8sqs7da83ccj3a9d6c0d7vhk99i6r8rzqbp3kpzxxf0";
  targets."mpc85xx"."p2020".packagesArch = "powerpc_8540";
  targets."mpc85xx"."p1020".sha256 = "0ry241b2iy40gjhc8g50xvqd4w15x0lqiipbw2imyj8fykb57lpy";
  targets."mpc85xx"."p1020".packagesArch = "powerpc_8540";
  targets."x86"."generic".sha256 = "0dvfy8zlcxz29538d4659v0fk7kh53x9chnrgj97chlzi9j558jv";
  targets."x86"."generic".packagesArch = "i386_pentium4";
  packages."i386_pentium4"."base".sha256 = "079qw2n3585i8dla8n2agi6ryflzq71nhai26fyadcplbzz4myll";
  packages."i386_pentium4"."packages".sha256 = "1ld8zdfj181z9xd8kkxaz3mrkkng01qbaj30xqdc9pb3rqzwim4j";
  packages."i386_pentium4"."routing".sha256 = "11gm711rrs6q6d1jgvlds9ph3x70s394a3jydp84xk7cc0i097fc";
  packages."i386_pentium4"."telephony".sha256 = "1nd5spmmvmkzwfh7dskyiwyzyhjmk957mksy01bf3pyf7p7230i7";
  targets."x86"."legacy".sha256 = "1mg0y07b35q5mvwpn3hia6mr0ckra37sgv6ik8kkqc0y91a0x8ab";
  targets."x86"."legacy".packagesArch = "i386_pentium-mmx";
  packages."i386_pentium-mmx"."base".sha256 = "0hv45jprz97r1nbjv8x2q8f545136lxihi41biv5ik3l43ywr1m0";
  packages."i386_pentium-mmx"."packages".sha256 = "13mqc17plxxwpc2iyi5crzfm6a59gnm403z48gb5v2a9kwqlxk0z";
  packages."i386_pentium-mmx"."routing".sha256 = "1c6jfz9ky1p57kky5snw5l6hwyjd11cx6nzwcpxqv97hiqg5agas";
  packages."i386_pentium-mmx"."telephony".sha256 = "1qx9g80yz3mipbifvd215080h0gq937xb2dd44c0a9qb8461f3zv";
  targets."x86"."geode".sha256 = "0dsra022vfbmhb6qaf31w992p9n5kjj28xvw33h0k55f46y2095w";
  targets."x86"."geode".packagesArch = "i386_pentium-mmx";
  targets."x86"."64".sha256 = "1rb8lw9kiskrw6s2g118a6ky4lkx9y767bpx6jc5qbngza59icq3";
  targets."x86"."64".packagesArch = "x86_64";
  packages."x86_64"."base".sha256 = "093adakqgycrg1yfj77c1if0jlxz5y4l499gb5apavkylm4l8pda";
  packages."x86_64"."packages".sha256 = "1h2wkwnzscj2lq4sf499s14zfqb0w1rgds09ssbcsazlf7qa55rk";
  packages."x86_64"."routing".sha256 = "04fxh378jqxf1plvvn7sq25nhcilv306fakwff3z5s3cf405q88i";
  packages."x86_64"."telephony".sha256 = "1fdgjndnprwvasalv3snv0fgl347mfrw5f6bsxfcq7rnpjzpkahl";
  targets."realtek"."generic".sha256 = "1skvgvdqaaa9i82ihlmpw69j61qabczdp4wwwp8ggkffwyy15pqg";
  targets."realtek"."generic".packagesArch = "mips_4kec";
  packages."mips_4kec"."base".sha256 = "0322cchr6j792ih59azza0m9qq2lhzsfzqy6r5m3zq5ysamkg5zy";
  packages."mips_4kec"."packages".sha256 = "1kjy98ilnf1pm137p3rg6w21mwn1s1wq772z4lrv23hmjpz3g949";
  packages."mips_4kec"."routing".sha256 = "0pkj5k8yd5d1fp83wrvxg4d09j702fg9y06ij3p5zd034dibb386";
  packages."mips_4kec"."telephony".sha256 = "0shcsxdvf64h210h9wk620yw292z9gdyq1pf71g6kcb08nl7v5dl";
  targets."armvirt"."32".sha256 = "0mvif1b0b3n66pb22yxnp7wlsrrml7wizyjgzgcj19yzwj3djasd";
  targets."armvirt"."64".sha256 = "15lbfvip8lsbfnw4y8iz7mp1dzfrrkqwrcc4xk2f18bk1lgjp17l";
  targets."kirkwood"."generic".sha256 = "1bd0bkw0qva48n635g5bmn4dwzqhqhcfbjw7pqz9l394lvcq2lj5";
  targets."kirkwood"."generic".packagesArch = "arm_xscale";
  packages."arm_xscale"."base".sha256 = "1wc4hsdfjs3nla0hpwz6bhc6g9ya6n2236srnqzrw3j9nrv6fl1a";
  packages."arm_xscale"."packages".sha256 = "02r5d3jq91lmglqr7zfvh0yh446jgvrry42kgqrb2ws25lg9vgjd";
  packages."arm_xscale"."routing".sha256 = "0j4110kdikzcxarxdjf5fbk58lkniwyyfmc9fnq1jypai0n4al6w";
  packages."arm_xscale"."telephony".sha256 = "05p4lc37570im4bgf83sv3npr7g720winvbajg4j2z9bxgvap3y6";
  targets."ath79"."generic".sha256 = "18h7xcfxvi7cccxl2qdrzqk4nf7cb60ndn4ywc10jncbvch3x040";
  targets."ath79"."generic".packagesArch = "mips_24kc";
  packages."mips_24kc"."base".sha256 = "0v36k38nzgifg9k6zd81rs0lh9rqw31xpghnw4nrr9f81wclwd08";
  packages."mips_24kc"."packages".sha256 = "1w9bhcpv1iyr3plih14kwdp0534fbhxhs3qnjhxvrf299qqmf9p3";
  packages."mips_24kc"."routing".sha256 = "13i1iidwml1p56l8dhh96jpjm38xc1z32w567yh2zyi2ldbipp8y";
  packages."mips_24kc"."telephony".sha256 = "0yprp0xxrnncj82j7y2399jgwbrqxmfvaz9vf9l6z2xzi8rpxm9f";
  targets."ath79"."mikrotik".sha256 = "18xghc8n93sldkgl7vlbw2n90fq3l5ylbwa06hpfw5xmd6wws7rz";
  targets."ath79"."mikrotik".packagesArch = "mips_24kc";
  targets."ath79"."nand".sha256 = "0bmzp2mbv2z97wagd5d38vcmvldpq07lp4nvc6kncl9xq07cdqvq";
  targets."ath79"."nand".packagesArch = "mips_24kc";
  targets."ath79"."tiny".sha256 = "0zndy447hnx4542v4l03r5fq6hk1gyvqmnsdgc2v3g6xi17f6sw0";
  targets."ath79"."tiny".packagesArch = "mips_24kc";
  targets."archs38"."generic".sha256 = "0r6k4v9pr9fg02yxxcn1rsivnmgc8qmphabci3ycknyhv355an1n";
  targets."archs38"."generic".packagesArch = "arc_archs";
  packages."arc_archs"."base".sha256 = "113n2g7gxz55b0hqn40mf57daa4mam2k2q3lbnifx3ybzwqbkimx";
  packages."arc_archs"."packages".sha256 = "0h2yv0q2s8dk61jvggavz183kxpl2q45mqc4xd6z13b0lyj3k400";
  packages."arc_archs"."routing".sha256 = "1dg2365whg0lq8a1c34rvr15pwlkvba0yiim5n6wppk5pd9ap86h";
  packages."arc_archs"."telephony".sha256 = "0adwiviayyhm0np2513zjlyx76d8rcn5jk47wka59qj0x14k1az6";
  targets."ath25"."generic".sha256 = "05ff9ddf3079afh8hcsxw445yq0mqi4bqyhrlq11amjjip07j6na";
  targets."ath25"."generic".packagesArch = "mips_mips32";
  targets."apm821xx"."nand".sha256 = "1nfdapzb8yh75cagmvr30lvdjmawg1wmxq0sdzzs114n5qvxvshm";
  targets."apm821xx"."nand".packagesArch = "powerpc_464fp";
  packages."powerpc_464fp"."base".sha256 = "13i5z0b6px00q3f6wk5akc2j7hhjf6jlxp94ym79vf5aqczzjky6";
  packages."powerpc_464fp"."packages".sha256 = "1pmxjfyhly5qslmcp0y5wzz9ka9gn5l1nfzdi6ig51dvjw88pywy";
  packages."powerpc_464fp"."routing".sha256 = "1i07k5f4xmry06wqi56sasrxsd1bn53qlcd6x60ykyl02g99a1il";
  packages."powerpc_464fp"."telephony".sha256 = "19riwgsyqrj7gd78nbqlsxcs9b9598b6ccsqicnc7kcwjngb2fx9";
  targets."apm821xx"."sata".sha256 = "0idwpmhbw5kga3cqwljf4kivfc3bybfd5g573x614xnpjwba2kgq";
  targets."apm821xx"."sata".packagesArch = "powerpc_464fp";
  targets."bcm53xx"."generic".sha256 = "05yvfyfkzdb5nkw1qlygfj4kf7b2wbkcn5bza5kws2w3q7rbnlln";
  targets."bcm53xx"."generic".packagesArch = "arm_cortex-a9";
  packages."arm_cortex-a9"."base".sha256 = "1i9flzvxc8cfk4m08jiv5xm6945y5kqvs0bk4f91j2wwfr7l6k8g";
  packages."arm_cortex-a9"."packages".sha256 = "12rfv0p695g3r6kg0ircvivhm68k9cr39sz18mq46120fr5z8n86";
  packages."arm_cortex-a9"."routing".sha256 = "1xk41a836sy7icgh5v95nsx4m7pjqr8zy6kvb5gibr2dcfsg9618";
  packages."arm_cortex-a9"."telephony".sha256 = "1pm9a6mm8b2xp0109yy5svx7kdmvnvl114jqhp17ln0qxjvi963s";
  targets."ramips"."mt76x8".sha256 = "04f4kiz5xm2r7054s3c1qjxpasfq9qw1km034wxwhz7wz8lr15gd";
  targets."ramips"."mt76x8".packagesArch = "mipsel_24kc";
  packages."mipsel_24kc"."base".sha256 = "0cin7s1pf7z7hygvckzn5jrslnxhycbg49zr1vrci21xs6dchcvs";
  packages."mipsel_24kc"."packages".sha256 = "105bif9gfr76bywilqwvndqhdk9kn17kh3ph30q2lvpg05m0h093";
  packages."mipsel_24kc"."routing".sha256 = "0px7xlrabxxspbiqp2d7ny2vq68mm57lyjh0693dbl4kl1gqang0";
  packages."mipsel_24kc"."telephony".sha256 = "17v9p3lc722g9xgk121qwar40z78z6j819g44rxa6maawb9sh4yk";
  targets."ramips"."mt7620".sha256 = "1k5zsl6mnqx0p7b389saxp4g3l5867vsclnyxj84rnncz2gih11p";
  targets."ramips"."mt7620".packagesArch = "mipsel_24kc";
  targets."ramips"."rt3883".sha256 = "14ra79rskgxx8xrq9ch4p1riwm4kgyp4lrs858ngm1afadhxpnss";
  targets."ramips"."rt3883".packagesArch = "mipsel_74kc";
  targets."ramips"."rt305x".sha256 = "03c1mamb8g8wai76gghig7jsdc0v4rm1q5gajd8l6lwjn2vx5bpp";
  targets."ramips"."rt305x".packagesArch = "mipsel_24kc";
  targets."ramips"."mt7621".sha256 = "08fv675gf80ydzid863p0g53icjkw1xhfpazdyn1lpk68v98ah19";
  targets."ramips"."mt7621".packagesArch = "mipsel_24kc";
  targets."ramips"."rt288x".sha256 = "08fd20hixvdrwz7q3k497z4mr6f8710vhvr64cly9kh4d1zfzbjg";
  targets."ramips"."rt288x".packagesArch = "mipsel_24kc";
  targets."lantiq"."xrx200".sha256 = "0i5f2i3227vimf75asp8wj0z4a8q4wjmqd1ll00nz3c217fp35j6";
  targets."lantiq"."xrx200".packagesArch = "mips_24kc";
  targets."lantiq"."ase".sha256 = "1ans4mb9c5za3610ji5iax2vrw9d6rwv51fl3gryqn097104mcfi";
  targets."lantiq"."xway".sha256 = "0v7q6p65ryz91x4acg08qxp3dhh3705dck6pyrrz40idakhwshvq";
  targets."lantiq"."xway".packagesArch = "mips_24kc";
  targets."lantiq"."xway_legacy".sha256 = "0whpdrfls2xj2zbjvw54y5aicnj7dls2zknc67zkqy68lk4vsj54";
  targets."octeon"."generic".sha256 = "1rh6jb5bb5hsvh9q4l7ybgq5k2scdlpvc7f8xlq2b7rw55pa0vfm";
  targets."octeon"."generic".packagesArch = "mips64_octeonplus";
  packages."mips64_octeonplus"."base".sha256 = "0h8ci07f2cg3gn1gp41p75x467v6q9giypr709kih40ny2hsp18l";
  packages."mips64_octeonplus"."packages".sha256 = "1p11n8ykk9cl8ywcwhz6pqrjavvb3zzarcfaipfjhd8zn1klys5r";
  packages."mips64_octeonplus"."routing".sha256 = "1gwl9r8snaqhcrsi109pxysyb5rc8qkq4ssab7f7cbg9j4w6xd48";
  packages."mips64_octeonplus"."telephony".sha256 = "1d6dkambscqip0gi7nk8wwpqgi9c6ajz6fnrw9v116dmgcf7jvvb";
  targets."pistachio"."generic".sha256 = "141w55p4sqfgcyz08s4s8ca7sy31z89dwmgim5mi7hqhvzvyy06k";
  targets."pistachio"."generic".packagesArch = "mipsel_24kc_24kf";
  packages."mipsel_24kc_24kf"."base".sha256 = "1hh48bz4hlfglshzpk67d8svj0j8c24hig6fybvycwy69skh81xj";
  packages."mipsel_24kc_24kf"."packages".sha256 = "056zavibww86yilk8znp17f5h9mz9wy2rfywakpcw8rlhwzyf03f";
  packages."mipsel_24kc_24kf"."routing".sha256 = "0vh8a20ri42jxy7fjha9cyqfz6xy7rylydpx53y5zzc36sc4y33d";
  packages."mipsel_24kc_24kf"."telephony".sha256 = "0f5z56bz8mfbs4y22pp2g1sb00qfki4vlxcn1g4qz0341f6dh1fl";
  targets."layerscape"."armv8_64b".sha256 = "1f9df62ycy85grl0hx5f2hc91w5pr6q3nmsxgky5ac5i3hmwwzqn";
  targets."layerscape"."armv8_64b".packagesArch = "aarch64_generic";
  targets."layerscape"."armv7".sha256 = "0f0dwfr71167y3v6hx12f40xkj0bjy19n66if9b80nyhv71giqxd";
  targets."layerscape"."armv7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."omap"."generic".sha256 = "18h4yxj0wshdqqhyhin2mpigkwzdkvk1z5chk4rdhcma3cm9cw3c";
  targets."omap"."generic".packagesArch = "arm_cortex-a8_vfpv3";
  targets."tegra"."generic".sha256 = "1qri3q9kdasdnd1a32f3va7qjr3yx9d863y6a23zzy4aly6wvc2h";
  targets."tegra"."generic".packagesArch = "arm_cortex-a9_vfpv3-d16";
  targets."bcm4908"."generic".sha256 = "00v49xj9yd6d59n7m8fqm0cpaclh8mnzrsqp16k4z5kkgwi4wb09";
  targets."bcm4908"."generic".packagesArch = "aarch64_cortex-a53";
}
