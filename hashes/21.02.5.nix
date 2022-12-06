{
  targets."arc770"."generic".sha256 = "1gysy0s8bqh1dgbbn88fbwplcr006m4g775m4iwi4nwk9mw2wq9j";
  targets."arc770"."generic".packagesArch = "arc_arc700";
  packages."arc_arc700"."base".sha256 = "11qr292k5vvh2b9havj4ni5frbkiiyaxfhr5ib48fs2c4ln02288";
  packages."arc_arc700"."packages".sha256 = "1ipwwczx73wwb1lzij9ys82wihql7cjc2g7km2pz65p44ra8gb6b";
  packages."arc_arc700"."routing".sha256 = "1mz990zysyhghnczwkxlgvwmbzxkf016v1msmqhz5hr74m4rhlqj";
  packages."arc_arc700"."telephony".sha256 = "1f3ij3lisq4ggg48jd3l2ai2si2b25mwy75fqa1942nlzlr9dbsq";
  targets."imx6"."generic".sha256 = "1qr7hx6zr9360jpr04s9900rqymk7bw8d804qlv8b042qg84xgdg";
  targets."imx6"."generic".packagesArch = "arm_cortex-a9_neon";
  packages."arm_cortex-a9_neon"."base".sha256 = "1arikhhyk8srg046a49cazq89mbi765j2zr0si87ldvr9i3jsrha";
  packages."arm_cortex-a9_neon"."packages".sha256 = "0fnxkb3sgxgi4n9rgi3ih7cvn28dm7irjv9w4hpw0072wcfibh9y";
  packages."arm_cortex-a9_neon"."routing".sha256 = "1nn15zs1l2byswaa2sr5dq2jx1xl52f6gkz9l37kjni4g3dvbddb";
  packages."arm_cortex-a9_neon"."telephony".sha256 = "0p8qa17hpgz9i3334nxl57l8kb2gkvigxlkzmqbgg10a7liq7kn7";
  targets."oxnas"."ox820".sha256 = "0p4g86alnjh3hwj38jqp1h7saa7vl4vp5wnj288s8nmsgmznkp5y";
  targets."oxnas"."ox820".packagesArch = "arm_mpcore";
  packages."arm_mpcore"."base".sha256 = "0bk5asfsqqy2557dbhm3xwhjkg4fmavpx48vyqfg43bdp06acf46";
  packages."arm_mpcore"."packages".sha256 = "131ms69yfk1fp0rd94ydcia20ihb6gjmqmi58975gisny13knfgb";
  packages."arm_mpcore"."routing".sha256 = "0kkmzcqsdh9fcvxwc9nbrqc7vqkx6svmsz1ilwsdvwzjaj9vvxki";
  packages."arm_mpcore"."telephony".sha256 = "0w8vv4qzp0q0pcxaihcsrn6x9r23j8y7p87lqhjxrrfj9i7ymqa3";
  targets."mxs"."generic".sha256 = "13dlarf4rvpdi6kffj9ff3hbvkcr03x7jlbdx96lp0jcj7qvpvzz";
  targets."zynq"."generic".sha256 = "1gmz8av3xarbg7z4w5hh51h9im8wyf9yzg6zxwjndacydgpq9994";
  targets."zynq"."generic".packagesArch = "arm_cortex-a9_neon";
  targets."bcm63xx"."generic".sha256 = "1a9jfyf4kshgjyj2xdgw3qj8hf5jkygsh5j6x0sdryv5x5lm4shd";
  targets."bcm63xx"."generic".packagesArch = "mips_mips32";
  packages."mips_mips32"."base".sha256 = "13clrk27gxd738v9ypbf6aqcfk75qi8p34m865mxilr5csrgcv28";
  packages."mips_mips32"."packages".sha256 = "05yzyfi4c9v1nsxp4sa9jijlgb376yd620qrk9qnjhkwzlmvhn83";
  packages."mips_mips32"."routing".sha256 = "0wm8d8g4pqlbk3jcbkm3yxqvl9c11d8hjpnmxvv65v1yv2035i2d";
  packages."mips_mips32"."telephony".sha256 = "12m0ilr1y8pp86k16974p5jnl4pgwbsfkgvcwqwlvn8l1d80wln1";
  targets."bcm63xx"."smp".sha256 = "0lrmw4s4jgbyqfxiyvl3xbvp81hlvfhz8ah5zhk198nrnsys0hr2";
  targets."bcm63xx"."smp".packagesArch = "mips_mips32";
  targets."bcm47xx"."generic".sha256 = "0fywwgb3znw6c0p8fnhz4898s5d5jlbgf533dqlq89sjix8npjyr";
  targets."bcm47xx"."generic".packagesArch = "mipsel_mips32";
  packages."mipsel_mips32"."base".sha256 = "038acwmnfc5ci7yxcjqg359ks815fs7chkqzs35qdskrmvzi31r5";
  packages."mipsel_mips32"."packages".sha256 = "030yhgyjvfmsp3xpww7v445ybd4qmvn5p4d4vh9r6gwf4527da7j";
  packages."mipsel_mips32"."routing".sha256 = "1mmlilsb03xd9sg3ncbdrfivi4fp51hh27mnxlckn3x4qrscg6d3";
  packages."mipsel_mips32"."telephony".sha256 = "1xw37q4mlbz1xpp3hlwhlmlphncxqijbi7swnbhxzcs4s5p3hvv2";
  targets."bcm47xx"."legacy".sha256 = "12i2irxinc4hxsd0f9094q65w90h3n7n6ivk0xpcn44slm2snl0z";
  targets."bcm47xx"."legacy".packagesArch = "mipsel_mips32";
  targets."bcm47xx"."mips74k".sha256 = "14pzs31s0ck40200ys407jfg5419m24kg1niivp3kb8h8p7n4jhj";
  targets."bcm47xx"."mips74k".packagesArch = "mipsel_74kc";
  packages."mipsel_74kc"."base".sha256 = "1cxkwwb8qns4i190cm6c0fhcrjfs3yrj81rgk1w8z10y1y0gczlx";
  packages."mipsel_74kc"."packages".sha256 = "1zc1xy419xhapq0hgypn0v7k72b59mim0dz8yn505vmvqys7jml1";
  packages."mipsel_74kc"."routing".sha256 = "1rpr4ipcphhxd5g4ivgilxisiqra145495sll6xsrv9v9ihbykz9";
  packages."mipsel_74kc"."telephony".sha256 = "0nz6561b8xyilixdcmz74j9qxgrr2nf84flm0csz25h5lgmif1s4";
  targets."bcm27xx"."bcm2711".sha256 = "1zkxmg8ckq44w3bimmvrkxzm38x7mcg3rx91p6v4k166v1bsblvx";
  targets."bcm27xx"."bcm2711".packagesArch = "aarch64_cortex-a72";
  packages."aarch64_cortex-a72"."base".sha256 = "1fqf3c3mnczdvfqhcb1cd8m6123xywqphx8rswm0dlbrbiaflf86";
  packages."aarch64_cortex-a72"."packages".sha256 = "0yj2b9m0276nkbxsx62isgxy0rx82jds9wjpdnapw9wd361fwvq2";
  packages."aarch64_cortex-a72"."routing".sha256 = "158garqncr2wzsm8a69gr67h5vgr1pmwj3r5g67hmcf0qbjyl8bj";
  packages."aarch64_cortex-a72"."telephony".sha256 = "0jnmsclv5lz9im7bjp86wcp8x3dh6z61g5fkkp67hvhjra8r4ms3";
  targets."bcm27xx"."bcm2708".sha256 = "0szsb72ggf88sfhgjmrkp5wb40ylmgqh02axv68dpmiwsaz2rzz2";
  targets."bcm27xx"."bcm2708".packagesArch = "arm_arm1176jzf-s_vfp";
  packages."arm_arm1176jzf-s_vfp"."base".sha256 = "1aph8rk0ngipw1f9f8n9v5y7cdg6jznmq96v0asph4z3x178dhxc";
  packages."arm_arm1176jzf-s_vfp"."packages".sha256 = "1nslg0yvdvv3xx3ww5sgii4nsmzkqb9qs03fry4a12d01lfpdk3x";
  packages."arm_arm1176jzf-s_vfp"."routing".sha256 = "0l428ncs25v2kf3w41dadxdnsfhbi527lfnhhfr364bamcakkr27";
  packages."arm_arm1176jzf-s_vfp"."telephony".sha256 = "0xan4s5r60fm9dqipyqa6rh47cf6hw46l6zwgbhmcpp9db2d604i";
  targets."bcm27xx"."bcm2709".sha256 = "0kpry9bh43522smljq387r9y6rajzjm8dcizvx3p5nr8j0mli9r4";
  targets."bcm27xx"."bcm2709".packagesArch = "arm_cortex-a7_neon-vfpv4";
  packages."arm_cortex-a7_neon-vfpv4"."base".sha256 = "15fg0apw270qn137a5c4f5xwlddxfiji6j2mjwl64mvmqqyx30vq";
  packages."arm_cortex-a7_neon-vfpv4"."packages".sha256 = "084ivcadgpagij8cs8b3wiirg0d3417l0gciaqipks8zww5dqgqr";
  packages."arm_cortex-a7_neon-vfpv4"."routing".sha256 = "1rnczlhhqny8f47zy1gz64g0iv8am5kdj4bgil60ipchpcwkb398";
  packages."arm_cortex-a7_neon-vfpv4"."telephony".sha256 = "03zv6rwjsay8y2yixymh9s213mfgy6075smh6nr4vigm3jlzbscz";
  targets."bcm27xx"."bcm2710".sha256 = "055gh5rqbnhlgipr37ljvyf6k7fprk0aclb9kpkhx4g53jvb6sj8";
  targets."bcm27xx"."bcm2710".packagesArch = "aarch64_cortex-a53";
  packages."aarch64_cortex-a53"."base".sha256 = "17qywlavygxrkyybpngpq7q7xh0xcf0yrqrxnzzf71ssq7iyggl8";
  packages."aarch64_cortex-a53"."packages".sha256 = "1vbmi0189l3c8fi79qa55vxm8ggy2sns1ikj14iqna7m3lzxzq75";
  packages."aarch64_cortex-a53"."routing".sha256 = "10dzx3sd1cpax9d5w56mwgnwx415lwswpnqcir0fpkmzww29klmn";
  packages."aarch64_cortex-a53"."telephony".sha256 = "1axc8nj8p9givikkvdpcnmvv5pz8376dykwvz5w96ym531f1az7n";
  targets."mvebu"."cortexa53".sha256 = "03607ql42k4djw1gdk8fvy126fs4mwxm0x9kv146j3cbwx18irgg";
  targets."mvebu"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."mvebu"."cortexa72".sha256 = "0ylg4fy8gbn4f8gbv8vxjq2scj6mizgp9ai6pf846lk43ajylndq";
  targets."mvebu"."cortexa72".packagesArch = "aarch64_cortex-a72";
  targets."mvebu"."cortexa9".sha256 = "08symjd15x6w7zifj4paimq82g4ja0nm6gvfl8lc82cq2vcn77qn";
  targets."mvebu"."cortexa9".packagesArch = "arm_cortex-a9_vfpv3-d16";
  packages."arm_cortex-a9_vfpv3-d16"."base".sha256 = "1yy5ymd2n1hhyxqqfgpdxnfz1sjgql87467izmi3dzdplc48ay4l";
  packages."arm_cortex-a9_vfpv3-d16"."packages".sha256 = "11kvm513rydhigp3zib74dx76wzsac8dkyl5hc76mp7hnii7z3pn";
  packages."arm_cortex-a9_vfpv3-d16"."routing".sha256 = "12x7g473fhsqjgcdcns9af6ki096vwkr5j09jvfkimd0068hvj2h";
  packages."arm_cortex-a9_vfpv3-d16"."telephony".sha256 = "1kr5jhpljj4i4xqp3kb57iwc60q0pva945bqlhnq0wy9z6753hsk";
  targets."at91"."sam9x".sha256 = "0cwy9idn0zvcwwgc9jvm58b2z5sn7j5yl58spgbxkvpcdam5p7r7";
  targets."at91"."sam9x".packagesArch = "arm_arm926ej-s";
  packages."arm_arm926ej-s"."base".sha256 = "1pqvyc4wb2wm4zc520yjhksp3dd1kicfabz4c2rawvhv00jsf9w0";
  packages."arm_arm926ej-s"."packages".sha256 = "1i8hjq010ybpmgxlrh486h2pq1kw07lmkp4cp8p29qm9aw6sj95p";
  packages."arm_arm926ej-s"."routing".sha256 = "02m1lhgwa5bk58b18fb4fkyyn7gjll4iqbgg8rzssikxqbwk0qaj";
  packages."arm_arm926ej-s"."telephony".sha256 = "0fnd6yhppj8kzrhf0i3y2mg0f5fhx50aw9121hkz0cwsyy7562qb";
  targets."at91"."sama5".sha256 = "17zxgnlcd8fadnkmbgy2af4wky66pkkrzjc3d7z1zgin8145vm7m";
  targets."at91"."sama5".packagesArch = "arm_cortex-a5_vfpv4";
  packages."arm_cortex-a5_vfpv4"."base".sha256 = "0xf214n0ma0d7ijbddcj2bg2ygihsz8r0j670186f7xmjl9ddf7d";
  packages."arm_cortex-a5_vfpv4"."packages".sha256 = "0kzjyk1x58nwqghv8yg60glxr713sv7fxz2zgrmalspz1ili408r";
  packages."arm_cortex-a5_vfpv4"."routing".sha256 = "08y8wrrh496wn3ni71l87rdqb8wp5yjzvsdvcdb9pz96akw61x0n";
  packages."arm_cortex-a5_vfpv4"."telephony".sha256 = "1ph7gn40q32w3na4hpz8bhgd3jax6gf8f51dslzj8bsm8ci5vzqk";
  targets."gemini"."generic".sha256 = "1zi20zrgx482vdqp0aks1wrc1g8z5qdzaz4310jw5i1bw5qc3nwx";
  targets."gemini"."generic".packagesArch = "arm_fa526";
  packages."arm_fa526"."base".sha256 = "1zr11w96h4mivpy5vax7xqibwvqgnvd64viz6g555bnnb357hqhc";
  packages."arm_fa526"."packages".sha256 = "00wz224zmn58l1883545653zmajphzfdxqv6jchmrrbc2fvd3i3f";
  packages."arm_fa526"."routing".sha256 = "1gm2pxrvgwh831hpwkv4xqnk09mf77zx5l4rwqhq1jhl6x7waslh";
  packages."arm_fa526"."telephony".sha256 = "1wsgda0x9jfn6qwsykmfsvf0qy6p9xbagzdigplprd41i0fixx35";
  targets."octeontx"."generic".sha256 = "0y9indgi0wzc51isycm74hjzblrd49nsc35nklqkn8f8f3x2xmnc";
  targets."ipq40xx"."generic".sha256 = "0l9nfzixa3d55y12pwbmsricx9gg3cbrcy6ps571lzkhqcl5xlh4";
  targets."ipq40xx"."generic".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."ipq40xx"."mikrotik".sha256 = "1ckrnj46d42zkvn57hpak8p681ivkp5q932k6z60zz698lw51p0g";
  targets."ipq40xx"."mikrotik".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7623".sha256 = "1bdjh52ll4xa5k0psj48sw357hlq198134mvkpbjv9bb200hz63r";
  targets."mediatek"."mt7623".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7629".sha256 = "1r8d0m3p9hr31m33zv01fy9x68ighddv0fcvvpmcf3w2583kz41b";
  targets."mediatek"."mt7629".packagesArch = "arm_cortex-a7";
  packages."arm_cortex-a7"."base".sha256 = "0smhyf8n3hvi9d98vn57zcl75664kgcc80415drg5ngnmwh1ijfv";
  packages."arm_cortex-a7"."packages".sha256 = "061lx3znykrpvajjw1lrm9q3k81ba5pkxz4c525i9b4191n2fq6n";
  packages."arm_cortex-a7"."routing".sha256 = "08027y718awnp4y84xv3bmmq85fxb7r8h9n04c8pfnndyshi3af8";
  packages."arm_cortex-a7"."telephony".sha256 = "0x5xgg5pwxpihcdhy2pg0n3w3k4gkfsq2di73zi53gr0gm2mda4z";
  targets."mediatek"."mt7622".sha256 = "0yk0018gn91pc4451yvlh8k3h0ck59c66qg41ijdsnwrrh8wg190";
  targets."mediatek"."mt7622".packagesArch = "aarch64_cortex-a53";
  targets."malta"."be".sha256 = "1w7yp3iia2ggmzk6falkbickrvqsz9gwhw303rbhjg2afchkyj8i";
  targets."rockchip"."armv8".sha256 = "03ibgqgl9p5liamr4czmksr0qw2sa61hd82gpxpq9gwa58kqnqpq";
  targets."rockchip"."armv8".packagesArch = "aarch64_generic";
  packages."aarch64_generic"."base".sha256 = "1f1xfv6avjv3hkyg2h6w9hixss5x4l6i7mnj14q5gpa3zc9lhpgz";
  packages."aarch64_generic"."packages".sha256 = "0pj347arb5lg94missky8449kc9k7bd49ysdsjbffv5gqcmwiayh";
  packages."aarch64_generic"."routing".sha256 = "1q2yxsymdwaxfsb93mh1r3lpgsg3g0ryqvar4594i4wvc88vz4pw";
  packages."aarch64_generic"."telephony".sha256 = "1wsk2whqfgglgj5agjsgqkml1x1ap8cgvjch1y3ypk4hl7qcvn9w";
  targets."ipq806x"."generic".sha256 = "0529p9fs1pw6yjzns6d1g4c4xrgs8hpkr1wv4k2hklz1v45qhp5v";
  targets."ipq806x"."generic".packagesArch = "arm_cortex-a15_neon-vfpv4";
  packages."arm_cortex-a15_neon-vfpv4"."base".sha256 = "016r4vwnffpg6p0nas9y2x03g6hnfw3li2yap7gr9vn7qaj3q132";
  packages."arm_cortex-a15_neon-vfpv4"."packages".sha256 = "13m3ac0zlk6v3myvn80baxg0hxhb3az8gasqpfgv77w7v9mjm84g";
  packages."arm_cortex-a15_neon-vfpv4"."routing".sha256 = "0yrgj7r8flzcpsp6nxhfidday6nsbzm9nzi17khw7frrk0rsnrwd";
  packages."arm_cortex-a15_neon-vfpv4"."telephony".sha256 = "069cddzgf5v76psk457sj3njsv2vqsjlz1wqmhgvm67b2yw3rq53";
  targets."sunxi"."cortexa8".sha256 = "0ibw60gln8wsggz3schjzl0gw0m4vmrck50nh24qlgkra1nnl7ks";
  targets."sunxi"."cortexa8".packagesArch = "arm_cortex-a8_vfpv3";
  packages."arm_cortex-a8_vfpv3"."base".sha256 = "1sg9lmsmcfjc8x8w256kgkcsy69b948868kji9vh4zdcvx4mrdch";
  packages."arm_cortex-a8_vfpv3"."packages".sha256 = "0r4bvib6fk2q6wl0iakk057rqf8i9n0ax63ma59qbbh383q78wpq";
  packages."arm_cortex-a8_vfpv3"."routing".sha256 = "1i35rrb4dklxsg73x7ps89fxqzv2kjnk80cynzf4i02wjn0cc6as";
  packages."arm_cortex-a8_vfpv3"."telephony".sha256 = "1nl0yn6pz02bxkrx42kl32fb99qv4vggb0wvdvilvnz0yaki23my";
  targets."sunxi"."cortexa53".sha256 = "1mcx8wgpcxmpxjjk8v6i5lqk7bj4bdjyj8six6jfnrf047g1w5ia";
  targets."sunxi"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."sunxi"."cortexa7".sha256 = "0kyd0qxijgxnkqyz81mbx1g0a5q5g2wk83lxrz69jvpqgfdlhhwd";
  targets."sunxi"."cortexa7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mpc85xx"."p1010".sha256 = "0g51szz76kwg4ppfcw8m6kg4ksrysxc22yf82x2gpxni753jii0w";
  targets."mpc85xx"."p1010".packagesArch = "powerpc_8540";
  packages."powerpc_8540"."base".sha256 = "0vlmmr45d5h6i4v0abc06jd4s6nhys580zjxdc838i5dkk4rab7a";
  packages."powerpc_8540"."packages".sha256 = "1ki8s9wm3y29mqx63mjar9kbzd1ykk0fp7zmkpybixdyac2zlaq2";
  packages."powerpc_8540"."routing".sha256 = "0kv75iz8gh8hwn36crlb4gb72b5vyjcnp9c7dw29kgygn049bfjx";
  packages."powerpc_8540"."telephony".sha256 = "1z2vd4mhd5r7nl71zrjv7qad08vjlbl5xkknm5bn4qvvf5a5nzk8";
  targets."mpc85xx"."p2020".sha256 = "00jqayvvy8sqs7da83ccj3a9d6c0d7vhk99i6r8rzqbp3kpzxxf0";
  targets."mpc85xx"."p2020".packagesArch = "powerpc_8540";
  targets."mpc85xx"."p1020".sha256 = "0ry241b2iy40gjhc8g50xvqd4w15x0lqiipbw2imyj8fykb57lpy";
  targets."mpc85xx"."p1020".packagesArch = "powerpc_8540";
  targets."x86"."generic".sha256 = "0dvfy8zlcxz29538d4659v0fk7kh53x9chnrgj97chlzi9j558jv";
  targets."x86"."generic".packagesArch = "i386_pentium4";
  packages."i386_pentium4"."base".sha256 = "1z20n9yjp1s8mrf1d7zbh70ipkbhywjd3zhjkkq4mw26gk41pg4c";
  packages."i386_pentium4"."packages".sha256 = "04rvmih7v0maldmd7dhsy9ny1jl7ylapas8cvwrf288l9mnla17b";
  packages."i386_pentium4"."routing".sha256 = "0zb0vpyf85af4j33myn190nnq01hla7r7rz7shx0x6vr8dwk9ca0";
  packages."i386_pentium4"."telephony".sha256 = "0f5kz0a58yfws5fxd5wyf6vwwc7d8xiv9l32gf3csfrcj9bkw6r2";
  targets."x86"."legacy".sha256 = "1mg0y07b35q5mvwpn3hia6mr0ckra37sgv6ik8kkqc0y91a0x8ab";
  targets."x86"."legacy".packagesArch = "i386_pentium-mmx";
  packages."i386_pentium-mmx"."base".sha256 = "111vbjwwsscrl5sb9vgysydi37lgcwh226dhzxsxdyjxl76a07ca";
  packages."i386_pentium-mmx"."packages".sha256 = "0kqq4pdrxslwb9kzi98bdkfpxvxwhaj711ki48jcz0b17khbpsjm";
  packages."i386_pentium-mmx"."routing".sha256 = "0013acwrvd2kw1kf5y2fcz4pd4my0n0cf7srvp2p458sl66p5ijp";
  packages."i386_pentium-mmx"."telephony".sha256 = "0j2w7ag2h6yznapv5jgkxwd834alfqdzi1qm4s0nxcldhi0jxmzm";
  targets."x86"."geode".sha256 = "0dsra022vfbmhb6qaf31w992p9n5kjj28xvw33h0k55f46y2095w";
  targets."x86"."geode".packagesArch = "i386_pentium-mmx";
  targets."x86"."64".sha256 = "1rb8lw9kiskrw6s2g118a6ky4lkx9y767bpx6jc5qbngza59icq3";
  targets."x86"."64".packagesArch = "x86_64";
  packages."x86_64"."base".sha256 = "01fxa311xff5nahy3g1z31cqhiwx72dligj78x0sw3jlin3z8hm4";
  packages."x86_64"."packages".sha256 = "198gz1z27mzw2zr8p09lpmjwzy0vib47skilqi7hbi0pvr6mzxcr";
  packages."x86_64"."routing".sha256 = "0lqk874vn1hh4gvp628qx4m4hys2jibcaaxb30gyi2lqmzm2brbw";
  packages."x86_64"."telephony".sha256 = "0ags7fm9q5nn6l0vzr15kqfgvrhv203352k6cq1by9vsz3sq5f7g";
  targets."realtek"."generic".sha256 = "1skvgvdqaaa9i82ihlmpw69j61qabczdp4wwwp8ggkffwyy15pqg";
  targets."realtek"."generic".packagesArch = "mips_4kec";
  packages."mips_4kec"."base".sha256 = "115p1anxk7sm8sxican1ymqngbphazqvzqnf1hcivwm6a2ca21dv";
  packages."mips_4kec"."packages".sha256 = "15cj6hdvgla0280rhxv6vk697avzk7rnwn548djm8gr8rk6xkxxg";
  packages."mips_4kec"."routing".sha256 = "0z0rfhp2bwzl191amp5qpyy69hsmlyghccqa2vc2n89xw7syffbj";
  packages."mips_4kec"."telephony".sha256 = "1bj8ybkn8r051y6fxknfj41d677hp8igifzn0h8flyx0ql9fk1ik";
  targets."armvirt"."32".sha256 = "0mvif1b0b3n66pb22yxnp7wlsrrml7wizyjgzgcj19yzwj3djasd";
  targets."armvirt"."64".sha256 = "15lbfvip8lsbfnw4y8iz7mp1dzfrrkqwrcc4xk2f18bk1lgjp17l";
  targets."kirkwood"."generic".sha256 = "1bd0bkw0qva48n635g5bmn4dwzqhqhcfbjw7pqz9l394lvcq2lj5";
  targets."kirkwood"."generic".packagesArch = "arm_xscale";
  packages."arm_xscale"."base".sha256 = "15pbc9amrh6czdvpn269mk7hvwm3847w4y64j6flya12y684nijp";
  packages."arm_xscale"."packages".sha256 = "1jq3klk3h45b79pvnzg7jgipm60mn04fbwnk4rchays46bpkf7sz";
  packages."arm_xscale"."routing".sha256 = "0ghjpbrzxzqr0aqrmr6bqxbchx3hsj034a0bxnl8nzsfsl0a01x5";
  packages."arm_xscale"."telephony".sha256 = "0ay6ny7jvhxica2z564k0vpap1drblawvwdjz0bq9kcsi5i0x52v";
  targets."ath79"."generic".sha256 = "18h7xcfxvi7cccxl2qdrzqk4nf7cb60ndn4ywc10jncbvch3x040";
  targets."ath79"."generic".packagesArch = "mips_24kc";
  packages."mips_24kc"."base".sha256 = "1ygrlvr0y3iz6r1ndq95xf9zn7z6f5as83z91cfy10zvpv8pp8xd";
  packages."mips_24kc"."packages".sha256 = "1p0p7rs8q8xmpbavmcs6yhfr9sjpz7kr6hcz0r0mpiblxsx82w9v";
  packages."mips_24kc"."routing".sha256 = "12qypa21n80664nvfyh78xw3f7yyiydacy8cks6q7lgay0y4q5fs";
  packages."mips_24kc"."telephony".sha256 = "0s7hrxl5y1fv4fknqkz5dqan69jiiqxm95bxsxpjm2wsfrsp573y";
  targets."ath79"."mikrotik".sha256 = "18xghc8n93sldkgl7vlbw2n90fq3l5ylbwa06hpfw5xmd6wws7rz";
  targets."ath79"."mikrotik".packagesArch = "mips_24kc";
  targets."ath79"."nand".sha256 = "0bmzp2mbv2z97wagd5d38vcmvldpq07lp4nvc6kncl9xq07cdqvq";
  targets."ath79"."nand".packagesArch = "mips_24kc";
  targets."ath79"."tiny".sha256 = "0zndy447hnx4542v4l03r5fq6hk1gyvqmnsdgc2v3g6xi17f6sw0";
  targets."ath79"."tiny".packagesArch = "mips_24kc";
  targets."archs38"."generic".sha256 = "0r6k4v9pr9fg02yxxcn1rsivnmgc8qmphabci3ycknyhv355an1n";
  targets."archs38"."generic".packagesArch = "arc_archs";
  packages."arc_archs"."base".sha256 = "1kdmjnyyd4mny8g0z1v1qhs84p9rk812qzdfj7gckda37n69p40d";
  packages."arc_archs"."packages".sha256 = "1k4ynismz2sigcprgpf407rhwbypgqwyl3438050jms5nanwmk74";
  packages."arc_archs"."routing".sha256 = "17dmjkhjamfif5q9mq0sip5dvf0pk86fnq9w31135f0q2xrvvsx8";
  packages."arc_archs"."telephony".sha256 = "11m324cxcmfhy0j57h2wqwl0gycwgzx94ajygwfwka7pvlhqj08w";
  targets."ath25"."generic".sha256 = "05ff9ddf3079afh8hcsxw445yq0mqi4bqyhrlq11amjjip07j6na";
  targets."ath25"."generic".packagesArch = "mips_mips32";
  targets."apm821xx"."nand".sha256 = "1nfdapzb8yh75cagmvr30lvdjmawg1wmxq0sdzzs114n5qvxvshm";
  targets."apm821xx"."nand".packagesArch = "powerpc_464fp";
  packages."powerpc_464fp"."base".sha256 = "133j06k5zdf2sa7dkb8cicxjya1cnspiw6hbq4g2lbpvfh2kfzs7";
  packages."powerpc_464fp"."packages".sha256 = "0zsd1cdj3dr63v4vnxp08nri3rminawfnnkf69nj5j48s5nhkc8j";
  packages."powerpc_464fp"."routing".sha256 = "1szq18a1pzac7ngpxbfmr1h2w67s0wldrlxdd4xq238dwq3jnczl";
  packages."powerpc_464fp"."telephony".sha256 = "0qpdidib5rp9w0hqlx2m6418bn9ja57hm2f6a1m95ypj800vv68d";
  targets."apm821xx"."sata".sha256 = "0idwpmhbw5kga3cqwljf4kivfc3bybfd5g573x614xnpjwba2kgq";
  targets."apm821xx"."sata".packagesArch = "powerpc_464fp";
  targets."bcm53xx"."generic".sha256 = "05yvfyfkzdb5nkw1qlygfj4kf7b2wbkcn5bza5kws2w3q7rbnlln";
  targets."bcm53xx"."generic".packagesArch = "arm_cortex-a9";
  packages."arm_cortex-a9"."base".sha256 = "0qr9m9ngsyp928xj71yrwk3jrs3s618hlj6wrff4sp1358nsq9lb";
  packages."arm_cortex-a9"."packages".sha256 = "149mbcn1w18wvhrk3jxvl2xlazjv66zc2ff0pccyq6d1z1wpyn2z";
  packages."arm_cortex-a9"."routing".sha256 = "1nyzj9bfjwbj5njfay8dnw48phcya1sv16adkqf24g3ym2k7g8vi";
  packages."arm_cortex-a9"."telephony".sha256 = "0ph2nk94py8gzckcx3hs2rp8jl3hn2n410yv8h4r3hiia0pyac12";
  targets."ramips"."mt76x8".sha256 = "04f4kiz5xm2r7054s3c1qjxpasfq9qw1km034wxwhz7wz8lr15gd";
  targets."ramips"."mt76x8".packagesArch = "mipsel_24kc";
  packages."mipsel_24kc"."base".sha256 = "1h422aqawmlks07bybpa4bj6j1clvkg3g2kbwxlxln9144f8s6xv";
  packages."mipsel_24kc"."packages".sha256 = "1hql9srg3cfg67ggrwaz43pj08bhk0lkfnba61blmryqvm02q9l5";
  packages."mipsel_24kc"."routing".sha256 = "1r1bswnl8r4j3h7j87cc4fqx27vya25cxfawx345389wpikxf6hb";
  packages."mipsel_24kc"."telephony".sha256 = "05qzl26hzm6k24mrmjgp5668l03v7rcnff51pvgvpx4c50jacix3";
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
  packages."mips64_octeonplus"."base".sha256 = "0y6x00a8045hmf5qr3z7xzgh8mq41l4qhvzwlwyyzwiph55hpavl";
  packages."mips64_octeonplus"."packages".sha256 = "1h8b4rnw0yp9bghn5frw1v5bvjamdndkdj06qa40yqgkj0qqzciz";
  packages."mips64_octeonplus"."routing".sha256 = "0x0cf9fzwmd7zl78bpcp7s0cfxxihb25zd4dfmqqa90k6wii1ahc";
  packages."mips64_octeonplus"."telephony".sha256 = "1irmcdzwb8hadnnx79anhi4z8k641yx9y0hbi9ff3jmipif0arpa";
  targets."pistachio"."generic".sha256 = "141w55p4sqfgcyz08s4s8ca7sy31z89dwmgim5mi7hqhvzvyy06k";
  targets."pistachio"."generic".packagesArch = "mipsel_24kc_24kf";
  packages."mipsel_24kc_24kf"."base".sha256 = "1hss0g5nm8cjw6rxq55nh9k5k4rkcqxzkqikikwaw867gg0fwx6y";
  packages."mipsel_24kc_24kf"."packages".sha256 = "1n95i354j7pchzvdg7zzig8rcczd8m4294z49bcyp25bjc4qipf7";
  packages."mipsel_24kc_24kf"."routing".sha256 = "0f0z8brb4jhj2wfdl7n2hirjl7dnik2qz1pfdgrn3pzlmx159z9v";
  packages."mipsel_24kc_24kf"."telephony".sha256 = "0v3midakm2kzsbc2hx8n15xr4kwlhgabb2938hj7m6x6qqdy1hln";
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
