{
  targets."oxnas"."ox820".sha256 = "1glkys5g75kgcawvg83vy0l39ybzpvlh4l1d71hspkybglc8baxq";
  targets."oxnas"."ox820".packagesArch = "arm_mpcore";
  packages."arm_mpcore"."base".sha256 = "0zy1hmzsl7k4m6wyij4d895cs98450ifyjyb1yrzazigbp8bhycf";
  packages."arm_mpcore"."packages".sha256 = "1va2rww2ji6wm1nbb70s12b6rq87hsh95mcdi44d3vqkc8fl6p0b";
  packages."arm_mpcore"."routing".sha256 = "12nx6v925srwpvfm5108nqql3nxf9af2cksrf1sphp55i4hs6ymc";
  packages."arm_mpcore"."telephony".sha256 = "1g152kxhhdgk7nasy0643nfr72sqzxpz356nsz4ki09mknn09crz";
  targets."ipq807x"."generic".sha256 = "0nykxxach0hjdzam7ycmqrwzial07a5aqxzc2ljmd5nawr599wkc";
  targets."ipq807x"."generic".packagesArch = "aarch64_cortex-a53";
  packages."aarch64_cortex-a53"."base".sha256 = "1n0gnzj2yvvi1dh7pwg9vjqh169ps3krdy04zx5ygs8awkvnv9ny";
  packages."aarch64_cortex-a53"."packages".sha256 = "19bvnf63c2b83v9k7jyw11y69x71qqqg7lb4dinxssriaxqy2hax";
  packages."aarch64_cortex-a53"."routing".sha256 = "1ip4xk44hyv6klw1jf3dlxw9l0cs728qd36kg7vpy0lkibfjkhjy";
  packages."aarch64_cortex-a53"."telephony".sha256 = "1qiy53c13jjsxk1wp9k1mvmzsw196c5hwbmrqw9dgsznq6cw8caz";
  targets."mxs"."generic".sha256 = "09rnbll1cxyl7wgndh07sylligair0n5xv92y089qcqzfvbjw521";
  targets."zynq"."generic".sha256 = "0xfrk01f6dfj2gbyll8ck7z76y0l2jcb51h3mm8dzl7g358j0073";
  targets."zynq"."generic".packagesArch = "arm_cortex-a9_neon";
  packages."arm_cortex-a9_neon"."base".sha256 = "184k10fzhjwnf24ixdbdmkl6ravc3r50m1hs3hvakpkw9raxd2ix";
  packages."arm_cortex-a9_neon"."packages".sha256 = "01dhcryq5rjpi721k3r2sp4adbkh66875ycg6raayax1cwxl2010";
  packages."arm_cortex-a9_neon"."routing".sha256 = "18j9alxmja11pxgq8srv3prvsd3b54qr14ab91k3l5z1wicd5a1m";
  packages."arm_cortex-a9_neon"."telephony".sha256 = "1nqrhki5mawljn0i4nwdfqfpxhf30ng7zp6ahmm5v7p11ygjpr9j";
  targets."bcm63xx"."generic".sha256 = "0q9jiqjvbsdrs3pf6vk738i38lfzaz941h56wr6pdrvk5bcinbpz";
  targets."bcm63xx"."generic".packagesArch = "mips_mips32";
  packages."mips_mips32"."base".sha256 = "01v3fmch0p1ayf752718f4r65hzdrn8a1jalj1h3m1rldwi2hpas";
  packages."mips_mips32"."packages".sha256 = "05y7q4p55nlp0g1hcpl4rhh38fbdqqkxjaq6f5wk3rpzicdra1ap";
  packages."mips_mips32"."routing".sha256 = "03rf4y9zg144p5ccksd65cb1cp9ffzkswqrnlzbgkjr7shi33csp";
  packages."mips_mips32"."telephony".sha256 = "1yxdp8gxj6d9krbgkk3sxagr3c7yymzpzjr1zclpd37aifqc75fp";
  targets."bcm63xx"."smp".sha256 = "0b4r9jg0pbdclw01j1762hbsff2ajga5jw3s27c5bir23kbzpklk";
  targets."bcm63xx"."smp".packagesArch = "mips_mips32";
  targets."bcm47xx"."generic".sha256 = "02h1ml4wzk6lwl852zf7vf43sshjrfk7mkarajgmyi0l8clxnd4j";
  targets."bcm47xx"."generic".packagesArch = "mipsel_mips32";
  packages."mipsel_mips32"."base".sha256 = "0r5g2j8jpzj4q2c5qs65fmr3ss6ddyapjivwidk0gvy1anfrhs3p";
  packages."mipsel_mips32"."packages".sha256 = "0cibshlnk3psjhrp3lfj54c36zjzcn8c1fh45hjnb32j1fspv7l4";
  packages."mipsel_mips32"."routing".sha256 = "0rkbmj90q9s599sv08zi7qg2s88ly5fl58ibzpn3kjixakrrz1hf";
  packages."mipsel_mips32"."telephony".sha256 = "1jpwsw88wi35bzpqn8shndl1gi754fdi0507d39ydn9n7bza66sk";
  targets."bcm47xx"."legacy".sha256 = "1vgidk2s065znyfzaf2d5vbp8m0y2f0x5b4vzlgzvywqwvr267xf";
  targets."bcm47xx"."legacy".packagesArch = "mipsel_mips32";
  targets."bcm47xx"."mips74k".sha256 = "04qjsvvw3kjq2kijhh5q726q1271k27vhmznx74kdy4lflqz3swh";
  targets."bcm47xx"."mips74k".packagesArch = "mipsel_74kc";
  packages."mipsel_74kc"."base".sha256 = "1b6g5aq11pgshjr0s41hsq60gf0agbki7jc7hfyyw5j4bkic4m8v";
  packages."mipsel_74kc"."packages".sha256 = "02ipvnylp19qv0139kzqyygl7fgjzrb4qzdpsb3gia3nbv045089";
  packages."mipsel_74kc"."routing".sha256 = "08gnkb0x24kk4plksppclz09m49gzqdiiqs5294njnhlhb2d73da";
  packages."mipsel_74kc"."telephony".sha256 = "1m2yz8mk2f0fsil6kh72gbnn1h7g4qhazqf883xpymi271ndkkym";
  targets."bcm27xx"."bcm2711".sha256 = "0c4m0g1zkga0vsi24z9qqmxs8png6jz8szll39zvihmchnp575nj";
  targets."bcm27xx"."bcm2711".packagesArch = "aarch64_cortex-a72";
  packages."aarch64_cortex-a72"."base".sha256 = "150wrnh1rywcc8fdng1aj7p1zxqlfhf6xgnp4xx3488pzg1rkx0s";
  packages."aarch64_cortex-a72"."packages".sha256 = "1vrqkglrbpqdz325gmsyvvy1lmxmpy5kh62992254pnig0k0qi10";
  packages."aarch64_cortex-a72"."routing".sha256 = "1piv6am37mm5kq3lja2z0ldqiz5nn72skmkk435xvxjlvk5n2vlb";
  packages."aarch64_cortex-a72"."telephony".sha256 = "03m788is1dblr4lqnr22fm0kph6zskh0v4r1242cqwxgi9bmvvyj";
  targets."bcm27xx"."bcm2708".sha256 = "019frvcs46b7c6rhq7xp4wdskdxlz44lr43xwq1vlj03dvj6dpdg";
  targets."bcm27xx"."bcm2708".packagesArch = "arm_arm1176jzf-s_vfp";
  packages."arm_arm1176jzf-s_vfp"."base".sha256 = "1i94qdsq2ibci9bmya8i5rswxjpgbpfzx3gx0vvdw9593813gq4p";
  packages."arm_arm1176jzf-s_vfp"."packages".sha256 = "1l85p3w34hgfy9jcmviixrqbiy05zrbqc1cdjzl2a06h1kyzchqy";
  packages."arm_arm1176jzf-s_vfp"."routing".sha256 = "0c96vh158a7m8zraf39p50syqnglpqlj9sm997y6jrwlz373bbaa";
  packages."arm_arm1176jzf-s_vfp"."telephony".sha256 = "1qvz9kkjbfgg6a92jbm68qg6kymdbj8kw8wnvdydwi88gx4ywrnm";
  targets."bcm27xx"."bcm2709".sha256 = "05sx8d32lgkckwjndw7mgm3rkaff243l2924bbr6d1vfnmc0asgr";
  targets."bcm27xx"."bcm2709".packagesArch = "arm_cortex-a7_neon-vfpv4";
  packages."arm_cortex-a7_neon-vfpv4"."base".sha256 = "03wvd5kldmvdii4725wvxx150br6bmwalz00s2v0nsy7rp3dg8wr";
  packages."arm_cortex-a7_neon-vfpv4"."packages".sha256 = "0h26kp6n0vbyxhfi4c5szk8y5acnr5lmlqlbys1sg8gx4810vhfz";
  packages."arm_cortex-a7_neon-vfpv4"."routing".sha256 = "048l3lbqg8aq7rdv774affll7v3b8wabdb72k7agrxwwgbdccjzz";
  packages."arm_cortex-a7_neon-vfpv4"."telephony".sha256 = "1s6s9na0cwikpli02gq371kfrwjwshx54pn0kpmb2fylpn1c1f8y";
  targets."bcm27xx"."bcm2710".sha256 = "0qvm5bp7cv6sjfjy2qcazbbcrv072jqag27zaglzrlad2r7iyfsc";
  targets."bcm27xx"."bcm2710".packagesArch = "aarch64_cortex-a53";
  targets."mvebu"."cortexa53".sha256 = "1jpii4yv0cya6frpjk87wigjh50p6jrdk8yrqvq1zhf256l8bwvr";
  targets."mvebu"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."mvebu"."cortexa72".sha256 = "12hnac5d9rpi7qa3nr3mn5y7p78fwb2vz9nr8j5i7ry7k6xr1sy7";
  targets."mvebu"."cortexa72".packagesArch = "aarch64_cortex-a72";
  targets."mvebu"."cortexa9".sha256 = "1g1v8s9scgv7nsb8rlm73j610jkvl3ifnbz3658ji9fwkp6rs19x";
  targets."mvebu"."cortexa9".packagesArch = "arm_cortex-a9_vfpv3-d16";
  packages."arm_cortex-a9_vfpv3-d16"."base".sha256 = "1ghd6qnjzfki6kb9r37c4n8f51n3101vmpv812wl56apqk33zsax";
  packages."arm_cortex-a9_vfpv3-d16"."packages".sha256 = "0pn8is72zz1akxpn5290z4lxvkddxi7f4jmf78l7qgf604qjnirk";
  packages."arm_cortex-a9_vfpv3-d16"."routing".sha256 = "161k2lf2ng0vrnsndrfpxyrn4rw1iav0l4gy49x626dl77xsblvk";
  packages."arm_cortex-a9_vfpv3-d16"."telephony".sha256 = "0wvag3haah7vvr0sfaim2hh5wlxc7zxwlwagxvrbd3qfmicl2nil";
  targets."at91"."sam9x".sha256 = "0ak0qczkwfx3n3p6rw6383m8nik1y3i4njl2dfnrggqlwirxa1s1";
  targets."at91"."sam9x".packagesArch = "arm_arm926ej-s";
  packages."arm_arm926ej-s"."base".sha256 = "145s9fzz6fp97rz261zb3gdr42sgrczs68magzmqh7vbagrxbcg9";
  packages."arm_arm926ej-s"."packages".sha256 = "1gp5jskbz3i4irxxzj5hpir8p7dcygp3s93wmkxdp0g7kf6mpr9v";
  packages."arm_arm926ej-s"."routing".sha256 = "1znwy99picnngiih2zwxfsdl3z6ryfdwh5qh3nwgqyfm4jm59xgh";
  packages."arm_arm926ej-s"."telephony".sha256 = "1wdwvv41iscmchcyxplw327jlzk2hrpmwy5rzwi9zc3wdlcrdka6";
  targets."at91"."sama7".sha256 = "0jcrld8l86kszgg6hk9ij25m2f2hcax74dlybbcdrsn9dpa3gsgk";
  targets."at91"."sama7".packagesArch = "arm_cortex-a7_vfpv4";
  packages."arm_cortex-a7_vfpv4"."base".sha256 = "1zpwrzgha3lagpg2xga7z11ys2gkbl4n5x5aa7c5bn40grmf3h3k";
  packages."arm_cortex-a7_vfpv4"."packages".sha256 = "1cafbchnljcfkg16ga1lnvlrzba4fqwfv4pzrwdwalchfc5m974i";
  packages."arm_cortex-a7_vfpv4"."routing".sha256 = "0blvrv0rw95xp5lb61nikwkpd3n8wvmypq1mvag1wjmcmjlwkwyp";
  packages."arm_cortex-a7_vfpv4"."telephony".sha256 = "04g81vdr4m2w7775apcg32vvj23i1r9lcb8b2bf2r68km5wivz7g";
  targets."at91"."sama5".sha256 = "0yx4dywyvma420bb568w6dyalxhb3mkzbw1pm8j1shw2s12nvfpk";
  targets."at91"."sama5".packagesArch = "arm_cortex-a5_vfpv4";
  packages."arm_cortex-a5_vfpv4"."base".sha256 = "02xw1k44gpc01pm55a2qbpfjrlapj77izmva9a598vrpbzg0w3mn";
  packages."arm_cortex-a5_vfpv4"."packages".sha256 = "1229jim6blgakkmrf7nhkxif7zkqagc1mjhf0ik5anww2x5i41hd";
  packages."arm_cortex-a5_vfpv4"."routing".sha256 = "1r9fkgaamzwn22y2k48my7xhncbi59g2j1v12niqqyrwbs8a6nrc";
  packages."arm_cortex-a5_vfpv4"."telephony".sha256 = "1q3h0r3v13f52pnp53gf8zzwxfg5djghw5dgcwxlygyv7izazyqc";
  targets."gemini"."generic".sha256 = "1snamqa2q731m4adi8zgjyixkgb3i8g2vr0m5aq83nkc8y29nhxv";
  targets."gemini"."generic".packagesArch = "arm_fa526";
  packages."arm_fa526"."base".sha256 = "0szryb6ywzhlk486qc3bazcc2jq7qay4zx3l98s83hr41ax1h7ri";
  packages."arm_fa526"."packages".sha256 = "0wqv3wx4bsrz7wm85byv8bvnwwv5imq667yrvlw1mv4wcr31vhx9";
  packages."arm_fa526"."routing".sha256 = "1ms8wwbyjbv533cvng35n87wm5xb3fgk6gmfw973djdvkyhag5gn";
  packages."arm_fa526"."telephony".sha256 = "0z2fijydmnl1g9slg3yyz1c6qpmjbnzr1qya85536gkvwbaqifzk";
  targets."gemini"."raidsonic".sha256 = "02cdrm8qjkm1xjgxhsr34ddqkp9vmp9bw7gj4fbfgivj5im1pva2";
  targets."gemini"."wiligear".sha256 = "10xqzjlws8psmqr69by44zavpvwnrl8s48m1dbcsdw3ix8w0p4vr";
  targets."octeontx"."generic".sha256 = "0izrrdmxq8alpqv25hi2qbddv38ahffvc724815indwjdvrhpr7f";
  targets."ipq40xx"."generic".sha256 = "16rxgfl3bsn3hdmj2csxmfhy0dq8hf47x26lxyv8ma2wafdr1k99";
  targets."ipq40xx"."generic".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."ipq40xx"."mikrotik".sha256 = "1yml4rnm176rwmnbbph0jlwhga3qggwrw00dn7d19506h43xjm1l";
  targets."ipq40xx"."mikrotik".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."ipq40xx"."chromium".sha256 = "1jx8z82197hp826jx536xwkyridb6bh73i0f8pzgfb0k45lqnwvk";
  targets."ipq40xx"."chromium".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7623".sha256 = "1ma2waylqsrn79pylf376kqxqq1gbg3v8x5is173jvyr6jxj6vrz";
  targets."mediatek"."mt7623".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7629".sha256 = "1smg6s36wwh44d85j47yx2lgj7fac05jip7185h56mlf8ly1z6j6";
  targets."mediatek"."mt7629".packagesArch = "arm_cortex-a7";
  packages."arm_cortex-a7"."base".sha256 = "0j7rr57ncjqmm39d9ldgch7lw9041zc7g77hz5if4yfwl11xmkvk";
  packages."arm_cortex-a7"."packages".sha256 = "1xws4rlbwa26gd7xh98ksh4zjr2hmvsn9dbcq418cag70i3chzfb";
  packages."arm_cortex-a7"."routing".sha256 = "1apschm6xq60yss4d8rm1iy4zfcr5b66yfs1kkz8ijz4rk6ab5cb";
  packages."arm_cortex-a7"."telephony".sha256 = "1d160lxs2rmhz2g3zc1pa95gmpdxapx0rlvgj43av5phyjzm9fb1";
  targets."mediatek"."mt7622".sha256 = "0v7338rs8m27lzz1zs7a311p5sg1z5hh7483in694xpnjksxmlxx";
  targets."mediatek"."mt7622".packagesArch = "aarch64_cortex-a53";
  targets."mediatek"."filogic".sha256 = "1p3f57vi48pgja85ysknw6psqnmbvb4x4shmyhgh2xxc5bwaf9si";
  targets."mediatek"."filogic".packagesArch = "aarch64_cortex-a53";
  targets."malta"."be".sha256 = "0vw1bcn7sapsg0ljw8svf0vwdh4i4bqzq13yqvvm7rhc5y8i4jc6";
  targets."malta"."le64".sha256 = "1ccqhvq32lzz47888x8jsml2bcvp04cg5785bdx8l3lifqhx9s20";
  targets."malta"."be64".sha256 = "0ngcys2ajz5vnj6465n638s6rggsrx215ahzk48pd9941nwzpqrs";
  targets."malta"."le".sha256 = "0cw4gfinqbz7xw47rlnka2zcf8z46shw9f4wbfvi0626a28v5wk8";
  targets."rockchip"."armv8".sha256 = "0yp5ln4xx23w2l0aak94lhpfbzjbk3mryk2v2p5dknzv474imsfn";
  targets."rockchip"."armv8".packagesArch = "aarch64_generic";
  packages."aarch64_generic"."base".sha256 = "11g1wxr3jmafragy6sgw9j2jqq1nmkvfzimbzmb1hbm1mf09l8pz";
  packages."aarch64_generic"."packages".sha256 = "0625j8xkhcsfnyqjlszsnsn2n6qc23gnn48dbpkw5rzs19v4cwz3";
  packages."aarch64_generic"."routing".sha256 = "0h9xq04af9a5c3ndzq8jncrp7rrhj4zq5cflma8sb482yk5qfgj8";
  packages."aarch64_generic"."telephony".sha256 = "1b0c7vg7ji0ka4m0k72jqmvr9h2hffbifqx69g82yvw56qnv975a";
  targets."ipq806x"."generic".sha256 = "0xknk2f0hl6i7mry0sx15ln7vvkaavcwi58w278ilv6nm7wnav60";
  targets."ipq806x"."generic".packagesArch = "arm_cortex-a15_neon-vfpv4";
  packages."arm_cortex-a15_neon-vfpv4"."base".sha256 = "0g4cy0pprcpi3p517p5rkqvqkij7l4xxxkk6zjk2qdmnjgqxm65a";
  packages."arm_cortex-a15_neon-vfpv4"."packages".sha256 = "0v8pj55vfzavam28cdqz0pz138kd2zpl99bpa5hizkl5lsdgyxba";
  packages."arm_cortex-a15_neon-vfpv4"."routing".sha256 = "1rnpsn8f8yhhrm35qa851nl2ddj1vaizy8plfirhnqh4bwicrgg0";
  packages."arm_cortex-a15_neon-vfpv4"."telephony".sha256 = "0658xlh62dznp061lws454q4fay7jk19wmg9k14jvpjdl1wf4bh1";
  targets."ipq806x"."chromium".sha256 = "0rxl958pwfy0l3anmr06y587ypjg3vmip8lfgzbm6r3n7x74d69k";
  targets."ipq806x"."chromium".packagesArch = "arm_cortex-a15_neon-vfpv4";
  targets."sunxi"."cortexa8".sha256 = "1hycn2zgr4w12xdn9bwbh46zlya057gniy3p6r6qglm8j1fvyvha";
  targets."sunxi"."cortexa8".packagesArch = "arm_cortex-a8_vfpv3";
  packages."arm_cortex-a8_vfpv3"."base".sha256 = "0bz7q6w103200mc32v3kniiqv1v32bi3clsmraga7l7k46m28cdm";
  packages."arm_cortex-a8_vfpv3"."packages".sha256 = "04l6pf0q2icp5zdks4iy19j25qpqn2i4s0sr8my2my22ycp82i5g";
  packages."arm_cortex-a8_vfpv3"."routing".sha256 = "0pdic8lkzrxx4hb67vnq54jq9d4gzjhpf4n09iypaxzpk221mswq";
  packages."arm_cortex-a8_vfpv3"."telephony".sha256 = "0ff94sd8b7rbl3568gj2djkwwhs2xmvi77dlgpdk19j1n6m4vp30";
  targets."sunxi"."cortexa53".sha256 = "0lnsr7fnrpp15wx35mg6w9ksfnlpnhf9d5n6qpy1cx6cxbwv05qm";
  targets."sunxi"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."sunxi"."cortexa7".sha256 = "1cbbmizl62xm9c6ac52m5larjkqhy1kkc8g72mrdsrlbzk9i4jxc";
  targets."sunxi"."cortexa7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mpc85xx"."p1010".sha256 = "13h89x00p02sqn4c9nwci4yxkf7iy6b3f5slfaq1fsa4yf3xlzbg";
  targets."mpc85xx"."p1010".packagesArch = "powerpc_8548";
  packages."powerpc_8548"."base".sha256 = "0cd17gcahwzfgpy9q4nymzjj0aga8hy95m5k29f1qys4fb13rwi3";
  packages."powerpc_8548"."packages".sha256 = "1ccx5ap85iav45bp8gdq1rviksnh8zwvr97vszdvmff1jsk9m8mr";
  packages."powerpc_8548"."routing".sha256 = "0ch8ddhvh21l5grxm19j56zbw7v4al8mbqffwrjk95n0bv5ifww1";
  packages."powerpc_8548"."telephony".sha256 = "0p2lbg08qm1smijlamg1xxlgax0mm7qfqrdc5vg6vlcgwnr3n3av";
  targets."mpc85xx"."generic".sha256 = "0d3swcpzb68y3ggkmjgn1hbg67xd7nzs7djjkyljnv7x32c4mrg5";
  targets."mpc85xx"."p2020".sha256 = "1q0ax169ab2ljfqiw3709f5i6pf1l6kkv61k677fv10xc9mwc7jl";
  targets."mpc85xx"."p2020".packagesArch = "powerpc_8548";
  targets."mpc85xx"."p1020".sha256 = "1jjw1gwdb8xpgywm2vw4axmprblw17hyb21vljam104hawb518xb";
  targets."mpc85xx"."p1020".packagesArch = "powerpc_8548";
  targets."imx"."cortexa7".sha256 = "128wwglwv9a746984k33xkg0cfgl17frjkcm44ziqda73pg0g9r1";
  targets."imx"."cortexa7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."imx"."cortexa9".sha256 = "17cdf7fw7s3366pc5crwr58qw9p9p728q413ia3b9ikzwx0k5jsr";
  targets."imx"."cortexa9".packagesArch = "arm_cortex-a9_neon";
  targets."x86"."generic".sha256 = "07wd0pf3p4aywfh4gnrp4d8clcqp71g92s9y5lfjw5wa03kyx82g";
  targets."x86"."generic".packagesArch = "i386_pentium4";
  packages."i386_pentium4"."base".sha256 = "0fy562yz7a1pdvwx52fygi8aihj05cjqxa7i7n05xss6z66ryb7y";
  packages."i386_pentium4"."packages".sha256 = "1kxaypacwpkc43arrnxjkkvvalpwzxy4akvhjqy3a2hf48x52jwr";
  packages."i386_pentium4"."routing".sha256 = "15mb47d3r9i0cvf8v1x5a5vndp2pnb4dgvhmsqm0a4figzznlkqr";
  packages."i386_pentium4"."telephony".sha256 = "1qcfhxml1jys1prv9sq0vk7gk4bxiaxxwdbdz1s37llk5z8i885v";
  targets."x86"."legacy".sha256 = "00kdg2gix44837ksshb85clzwbankvqwpcprsd2jpff4j1fnlxcp";
  targets."x86"."legacy".packagesArch = "i386_pentium-mmx";
  packages."i386_pentium-mmx"."base".sha256 = "041llxsp0zqynjm0yac2jl7vl2lz61ssmpw3a0k5pl02lzl5c1cq";
  packages."i386_pentium-mmx"."packages".sha256 = "0za72v6vahwr2hgq497ziknhm3a08l61fg48favi9fpapbaz22bh";
  packages."i386_pentium-mmx"."routing".sha256 = "1qzk3wypifgi17ibisv30wf96y3s6z5007c8phdmnrzvhw3d5fwb";
  packages."i386_pentium-mmx"."telephony".sha256 = "0snbfnl3lyibdzpw5iv5f05wvq1v1p549i208p2jmvjpc7cvcaav";
  targets."x86"."geode".sha256 = "1mv5ki04lgvy5nark6llxdpwbcaviif1pwq1my4f3vbcbqhm10fv";
  targets."x86"."geode".packagesArch = "i386_pentium-mmx";
  targets."x86"."64".sha256 = "1j7l03z7shmk9crvjj8p3x1hxzb9b7wxm58dl889pgzazzl8vc7r";
  targets."x86"."64".packagesArch = "x86_64";
  packages."x86_64"."base".sha256 = "178959q10mpic3yv5i93zf0a3q5zik7dbj55x8isn0w3dgxdvss0";
  packages."x86_64"."packages".sha256 = "0gqyvi3djhgvhk90ifvfg3fgd83zygkcbp8k252maq995lfl58qf";
  packages."x86_64"."routing".sha256 = "1hhwrd2bs7qwjlm67b4z9xa45vhl5vvn5b3hx08ilhkwnj0yasm8";
  packages."x86_64"."telephony".sha256 = "14a2sxlf3bgpq89vwlma17d1av63zrrjx5y6v18cj3ir0l96aa4n";
  targets."realtek"."rtl838x".sha256 = "1ii61qrwhnrd5p638scql5xs3p45drz1q7mg8l5rk1449kh476yr";
  targets."realtek"."rtl838x".packagesArch = "mips_4kec";
  packages."mips_4kec"."base".sha256 = "0n3dyzmfqgikpzpq3nxkjzy82sa376mr6cdw25018532g3i8q9hy";
  packages."mips_4kec"."packages".sha256 = "087132drz3y8pvswib57lin7gcjabk9w9rdibpp2249kzqr0bff0";
  packages."mips_4kec"."routing".sha256 = "15yp3sw93i8qm091qvrch94jiywh0wgbak0xxcy2d527mgsxv64p";
  packages."mips_4kec"."telephony".sha256 = "00g2ppgqga3dg4jm1cdcmw70czdj3cjl2xdfi1vgann2zlfcq5j3";
  targets."realtek"."rtl930x".sha256 = "0q0mqp6x3c2kagc2ip966977s1f5w2cj0fx38kw42144fkp5f2pg";
  targets."realtek"."rtl930x".packagesArch = "mips_24kc";
  packages."mips_24kc"."base".sha256 = "1pnq5j7a3smrd33i249ppzd1536j62n7fccab23knql1xf5sf12r";
  packages."mips_24kc"."packages".sha256 = "1k6sv5vfxc7snmjj49jnkx31fja22qk93yi46lm512866xfp2092";
  packages."mips_24kc"."routing".sha256 = "0fqkfg1bvwmydj75z2jhg9h9wlz4gkni9szpn2354wbnkkpahjib";
  packages."mips_24kc"."telephony".sha256 = "103vpzm0fav4qlw33b9j0n4b2258xkvxjv204ka4hf7dxm76w1r3";
  targets."realtek"."rtl931x".sha256 = "1wmzp2lahvn5kr9yapfx37nmdq4q283gm8x8a10j2wh2mn7b1cg4";
  targets."realtek"."rtl839x".sha256 = "18xlnav0jf5471cgjrcb2jy4c6q8c6p3pxrv05i63pa9hwbbsgsq";
  targets."realtek"."rtl839x".packagesArch = "mips_24kc";
  targets."armvirt"."32".sha256 = "1mfz53pdy585kacw9f9ig79q8lvs1pjkhvhkhx0ic4gphfshs79i";
  targets."armvirt"."64".sha256 = "0zcld6si9h30mpy9kcfnrqdbpzbnidfy4xs14ab4biwsn2619v7v";
  targets."kirkwood"."generic".sha256 = "12qla5gnav1b2q1nsk0mphz75m87ia2p0na640vbm24p2gqiw7y3";
  targets."kirkwood"."generic".packagesArch = "arm_xscale";
  packages."arm_xscale"."base".sha256 = "1arm4qw3j5n8pr40c24b24z7paxadan582bcgjd35radzwzwd89h";
  packages."arm_xscale"."packages".sha256 = "1xxcc8705s6dzwray7c2hc7i00fk8y269zna0ns5rb507b9b83k9";
  packages."arm_xscale"."routing".sha256 = "079p1jwvx669zym5wp3fc77885f1827r06g57z29s01bkdnpnq4c";
  packages."arm_xscale"."telephony".sha256 = "0891lnlc6jypxs7ik6mif1awzh6k2c81xh186c8176sj1yz3raxc";
  targets."ath79"."generic".sha256 = "0ybxrvj6wz9flfxyfymlia5krdyn0ygwvd6sf6fgk3h13nr9msam";
  targets."ath79"."generic".packagesArch = "mips_24kc";
  targets."ath79"."mikrotik".sha256 = "1ifw8n6pvgv6i0vlwp77q0bjklplsqnm6mkkjsvizskdkcrx9k8x";
  targets."ath79"."mikrotik".packagesArch = "mips_24kc";
  targets."ath79"."nand".sha256 = "06q5q8k9mfnb8kwz660xzb859hnrcwr0wl59chmdqgm9dgnc0jk5";
  targets."ath79"."nand".packagesArch = "mips_24kc";
  targets."ath79"."tiny".sha256 = "1s6x5w1ba38j21xvrlx5c4cv45q4jfaslg4wfzzddasiy4l6a4yh";
  targets."ath79"."tiny".packagesArch = "mips_24kc";
  targets."archs38"."generic".sha256 = "1ygyvjss3aayvb2v3d7h4k13p5vrfjs7y62sl19d2y1axpng9nf2";
  targets."archs38"."generic".packagesArch = "arc_archs";
  packages."arc_archs"."base".sha256 = "11b1iy11pl7gcj9nnf8prikqsy6s19cp361bdh5yqsz62vs03vyx";
  packages."arc_archs"."packages".sha256 = "1i7q4rj7ryfx7gy53nbf68bin0m73iar61bkds0b6p13rmarkcja";
  packages."arc_archs"."routing".sha256 = "1z58mw0yj8rggcwzigwf6ss1xlbxq9gi70j2lqimh0gmjmzg483k";
  packages."arc_archs"."telephony".sha256 = "0867b1fhbaasng19ivcc2xdphqm7jp29dda8kcyw70knr9vhf9jj";
  targets."ath25"."generic".sha256 = "0skhglrrk7s727i87jq8jplv7h8ldzy92qr6hz98yiwhgm65gnx6";
  targets."ath25"."generic".packagesArch = "mips_mips32";
  targets."apm821xx"."nand".sha256 = "17pyjyvkxjkqcgwgqd7afsb1yjwhvkb5kmjbivmrqz1ib8s5np94";
  targets."apm821xx"."nand".packagesArch = "powerpc_464fp";
  packages."powerpc_464fp"."base".sha256 = "0qzxa4djb75y6fsk00i5ip6mfw76fg22b53mr6mk4ksfcn187m8j";
  packages."powerpc_464fp"."packages".sha256 = "0p87rvmzfxmjf1346kv3z19mwcl3wfv1vssaz6iqbw774lahqja1";
  packages."powerpc_464fp"."routing".sha256 = "1m3vlq3q5awdivsmyp7c75crlfdbz6m10p26fs7dfa5qsg78w9i0";
  packages."powerpc_464fp"."telephony".sha256 = "0bgzgyca5mjy7g5nlnrgzbnpm4wh8k5975qkpxkfsaivd1ql4vic";
  targets."apm821xx"."sata".sha256 = "0w819gr7vfv4faafvxi77ss1siyv136c8xr7az0kwb56h857pps4";
  targets."apm821xx"."sata".packagesArch = "powerpc_464fp";
  targets."bcm53xx"."generic".sha256 = "1ifw76y1gbppxspfsica67jz1jy07fp1w5r5zlvzcqijn002wyqn";
  targets."bcm53xx"."generic".packagesArch = "arm_cortex-a9";
  packages."arm_cortex-a9"."base".sha256 = "116xjba22si44cmkckmpij6ybd7rv46zp0zia8piid25y4fv6zbv";
  packages."arm_cortex-a9"."packages".sha256 = "1bhcfx3lh7hmqb4fd7dfba6md1l9gpqfjjllrg7nb79mjpm0mdsh";
  packages."arm_cortex-a9"."routing".sha256 = "1z4l8fqaphxibqbl2d55b74kigyrjbblrzpkr1c243vggx9k566j";
  packages."arm_cortex-a9"."telephony".sha256 = "04xqx5xdsq3qr4qi15h7smg0558w2iss6ybhjpqinyarrwjf3sk4";
  targets."ramips"."mt76x8".sha256 = "06jycljayq45zapdwxagrwgkl1mcnmxgifnga86s4w695fh24qdq";
  targets."ramips"."mt76x8".packagesArch = "mipsel_24kc";
  packages."mipsel_24kc"."base".sha256 = "0sz1m8zm59pwgil0dkbv5v74ddhj6s3zjg65274izyrx97yaikmc";
  packages."mipsel_24kc"."packages".sha256 = "1drwrj2q9ia1yvqw5jfdy7xzydgc2pis3lixrprmdjpb08sh38w6";
  packages."mipsel_24kc"."routing".sha256 = "1lxzi6p9a06vld1a2gyx78kz2wzary122c0mbfg8qcijgij1bq6x";
  packages."mipsel_24kc"."telephony".sha256 = "11rgw725hyn6459864qq4brnv9l7nv61r44vqpjxqygirpwqhbhh";
  targets."ramips"."mt7620".sha256 = "15319zlfyxjav6dgrfrf5x71nn5ks8xph3p06hfmjybkjgksrfhw";
  targets."ramips"."mt7620".packagesArch = "mipsel_24kc";
  targets."ramips"."rt3883".sha256 = "065m5y3rnjy6606bm2h76648if7jp3chs1q6x9iaaqc5jyia2if4";
  targets."ramips"."rt3883".packagesArch = "mipsel_74kc";
  targets."ramips"."rt305x".sha256 = "0spg7wlrlqnf0j1iy0aaf19wncaxwfsgxlyifnf8wwhs87sldxah";
  targets."ramips"."rt305x".packagesArch = "mipsel_24kc";
  targets."ramips"."mt7621".sha256 = "1i6i8bq8cpfx9ypbmivgvcwhf1czaxsbi0px5ydkny30lf3gi0a2";
  targets."ramips"."mt7621".packagesArch = "mipsel_24kc";
  targets."ramips"."rt288x".sha256 = "03x3di5x0fwj6hz4c6fqjjk2hds7rnc05mwhbf18lbidv138svc9";
  targets."ramips"."rt288x".packagesArch = "mipsel_24kc";
  targets."lantiq"."falcon".sha256 = "09a3kpgxdf7r02r1d45asqmfxj8fc7cbc5rbwa3xfi5nh36jj1na";
  targets."lantiq"."falcon".packagesArch = "mips_24kc";
  targets."lantiq"."xrx200".sha256 = "17hllsxc4znahwdrk8hv26lxr8nbjklxlvqjr6gcvr0fp74qa25b";
  targets."lantiq"."xrx200".packagesArch = "mips_24kc";
  targets."lantiq"."ase".sha256 = "04waciiignrmadkfgrqp9gnnx7qj0m5dhsv8l5bqyqhzq95sfsv5";
  targets."lantiq"."xway".sha256 = "023glxdv8dwp22pqfwk701kakbqh3k7rqqfb10qh95pvvnjwrs4y";
  targets."lantiq"."xway".packagesArch = "mips_24kc";
  targets."lantiq"."xway_legacy".sha256 = "0y7nrg9nmppjfdql0qajipx9ansqfcsygflna8w6rvfijx4r5m47";
  targets."octeon"."generic".sha256 = "13qp5bg4k6qlfa5y6vgf9csmcrga9808q8wp8aff7b2ikvpgrbn1";
  targets."octeon"."generic".packagesArch = "mips64_octeonplus";
  packages."mips64_octeonplus"."base".sha256 = "0bss2zhpx71piy85yvrh9lia94kx6j54hwcwm507rs141f3vq9xn";
  packages."mips64_octeonplus"."packages".sha256 = "18skas3h9m0jhf551yr3sa7jfgdllbwl2np47mpm3pkwgj2kvad0";
  packages."mips64_octeonplus"."routing".sha256 = "1xff9agxs2w71s3lwgwyjcylksq1p534nq2vkfwiddnwm77fivkg";
  packages."mips64_octeonplus"."telephony".sha256 = "17cvsrix2cw594v23kf7vvj98f8bhyqdwija46vi656gnwrlpzj4";
  targets."pistachio"."generic".sha256 = "0rgisddpaqnrs6rflfi9qff11s5akr07i6x3mshx85750q0h2yjz";
  targets."pistachio"."generic".packagesArch = "mipsel_24kc_24kf";
  packages."mipsel_24kc_24kf"."base".sha256 = "1ppi33k6844vjqdcvcy684qjbmqfh5flw4s180vg7pvqzf1h4gp5";
  packages."mipsel_24kc_24kf"."packages".sha256 = "0xwm2xk7smp9nlk0vrbcnp2krf38fsj4n251x9hw4q17qzgs4vmp";
  packages."mipsel_24kc_24kf"."routing".sha256 = "1awvizz74sj5gmp7ala1ygadc9qhn9q1r6kb11if1kcr1d5xvdn8";
  packages."mipsel_24kc_24kf"."telephony".sha256 = "06dra5pd0v253655j31i8l37cszpsv1m70bhirqh3wf3a72bc2vb";
  targets."layerscape"."armv8_32b".sha256 = "1pamf7i4r1wgm6b2sgkzivhplfsmmghgj3l5ilyim0ldfr5gd5kx";
  targets."layerscape"."armv8_64b".sha256 = "0ghijjkckb1yppbx56frwsp0s7icn5l9ngqfhj9cm1cgyv4bmbck";
  targets."layerscape"."armv8_64b".packagesArch = "aarch64_generic";
  targets."layerscape"."armv7".sha256 = "0pgsa6c5pkmphhp2hm9sf7knkwvrcpn2gdwgnclviqhp16invxr4";
  targets."layerscape"."armv7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."omap"."generic".sha256 = "147644m5xhcr1jy1bcrq2yppl9klhyh9srcchal30hg7sv98cgzs";
  targets."omap"."generic".packagesArch = "arm_cortex-a8_vfpv3";
  targets."tegra"."generic".sha256 = "1m7780xqzkpc9mc3rk0n5hkya9cvyzmhbxnrafdg9jc1hfyqdwnl";
  targets."tegra"."generic".packagesArch = "arm_cortex-a9_vfpv3-d16";
  targets."bcm4908"."generic".sha256 = "0pil5yqwqlr5njjsd2rh9nmcqqpgjf99ab1fbn55vwhhfljh1b4z";
  targets."bcm4908"."generic".packagesArch = "aarch64_cortex-a53";
}
