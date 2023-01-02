{
  targets."arc770"."generic".sha256 = "06cz4nbmhyaq4gf1i0a1hh87djm82jzb1cr88qj4imfz4dqk7l5g";
  targets."arc770"."generic".packagesArch = "arc_arc700";
  packages."arc_arc700"."base".sha256 = "1jvhpvj6gp6ljksqa76w17a1xpp702n3cbhcwr9qxxjd4p67sk9d";
  packages."arc_arc700"."packages".sha256 = "0vhj2vmckdy4jc7p98z0j7f9z1g61q3m2vxlbs950hhnzvbpy3rl";
  packages."arc_arc700"."routing".sha256 = "0y1dmh24338mv88wxinyzmj9mgwqzdl8k4xqjp6kw1v7ja2nj2q3";
  packages."arc_arc700"."telephony".sha256 = "1njr0r5fhxm2qi63di5m9fih0iqi2yp6pwxjs7rr8kdcxfhmsfhz";
  targets."imx6"."generic".sha256 = "0rqj3ccp5hrph5m85z7b42kisc9pn303q5ksmrja0cna6jzmgkgc";
  targets."imx6"."generic".packagesArch = "arm_cortex-a9_neon";
  packages."arm_cortex-a9_neon"."base".sha256 = "07b0ajd9zhj0dg74zh7bg6yh7kx5zqyd3ja6mf29sc7js9zbay43";
  packages."arm_cortex-a9_neon"."packages".sha256 = "1v6p7s7315rbg6c7s6ds2vfivmnffl0l3n0c4l0r5zz1srzw7dah";
  packages."arm_cortex-a9_neon"."routing".sha256 = "11qm6rg3vfwzwir7cj23f5wima0z1bl88pyqdwhr93k55q2cyzdn";
  packages."arm_cortex-a9_neon"."telephony".sha256 = "0mipycs1xg6sn48zxf209bc961lv8zx225f3znycdak4x9wd8qda";
  targets."oxnas"."ox820".sha256 = "0a2wlhv8azynjhy1rr61l5spwxx2pg2mbiqfpvbm31gdhs8rs1gv";
  targets."oxnas"."ox820".packagesArch = "arm_mpcore";
  packages."arm_mpcore"."base".sha256 = "1ajgpdgsjpzhp004f9v0isxinym12bnfbyaq0vfaqclrphrgzlym";
  packages."arm_mpcore"."packages".sha256 = "1y1cs4m1cg1l6db893j2bp9qhr89bsgbjsyjf5xld5lfvdp46bm6";
  packages."arm_mpcore"."routing".sha256 = "0cgabqf646hv8bkbw9am5bagiij0988r7kgkz2p4mm2y19z5hbr1";
  packages."arm_mpcore"."telephony".sha256 = "1v8mhhd4acjhwnvnpmqvshaz0sbxv2q39jlf3wm0f0zn6cqw20mf";
  targets."mxs"."generic".sha256 = "0kjj9v1f1nh1v8ywn5lbq1g3af4qigz7h0n57jdz8sjj9s4nhz8p";
  targets."zynq"."generic".sha256 = "166vmcgs2x6s3941qm1lbnpxxbb5pfv86afciajdvb2lk2b6i0pv";
  targets."zynq"."generic".packagesArch = "arm_cortex-a9_neon";
  targets."bcm63xx"."generic".sha256 = "18im3b99yaalam433qxlhia87sz4ayw1l3199il1kysq0myfmsx1";
  targets."bcm63xx"."generic".packagesArch = "mips_mips32";
  packages."mips_mips32"."base".sha256 = "08i5d46dgva4ygn6bkh5xqhrn9jl1swix32s4r3lsyah2zy0wj5d";
  packages."mips_mips32"."packages".sha256 = "0v2dh0rardf5wrfib2p2si7chkm19abqgndnm3f52fbddylxkplr";
  packages."mips_mips32"."routing".sha256 = "1vpwj6mf6iwc19c6gmlgqv9ln1zhnq3nlqyqilf4b7av5rpr6lgx";
  packages."mips_mips32"."telephony".sha256 = "1cblpabbx0ixzkq81qka9k6lpa94vkdwkv0ispywp1vyssw7kawc";
  targets."bcm63xx"."smp".sha256 = "0chwx6pz0ki4biipp4biab91k0lls9zhff2jmmyv8c5kpb0qql9c";
  targets."bcm63xx"."smp".packagesArch = "mips_mips32";
  targets."bcm47xx"."generic".sha256 = "1gpklrnk9mf7zh47bymhy0xirvib1qsvixnsk9a13868qnad1gin";
  targets."bcm47xx"."generic".packagesArch = "mipsel_mips32";
  packages."mipsel_mips32"."base".sha256 = "0kqha482rljq1s26nyb4sgbrcp710kmvvdiglqynbj0dllsywhj9";
  packages."mipsel_mips32"."packages".sha256 = "1xrci3k2cn8b7xswfy8xhzlpsxxnzq17wmgv9j3jlfhsb9lgrn9d";
  packages."mipsel_mips32"."routing".sha256 = "1zxg0bgw5bh8dp792116q93r818534sgjdi06bq3lrymlwrj9yji";
  packages."mipsel_mips32"."telephony".sha256 = "1wbjvpc1fx0ljc0sclbqfpa8yi1y5g6iv2l1mhbsx2apswdg5ikq";
  targets."bcm47xx"."legacy".sha256 = "0aqbrd7y11d8dmfqi2pddk80qqndvzhmlladmq649az6aa74y0zv";
  targets."bcm47xx"."legacy".packagesArch = "mipsel_mips32";
  targets."bcm47xx"."mips74k".sha256 = "0hzr5wq83i8ny0y12gfz14pb9995s9z3fddpbgy9zqgv9piywg70";
  targets."bcm47xx"."mips74k".packagesArch = "mipsel_74kc";
  packages."mipsel_74kc"."base".sha256 = "1qsg0d3r2kbs90vw4rzjqfas8z2gc0ii7r6sikif71m2ggc0k0cw";
  packages."mipsel_74kc"."packages".sha256 = "1x69glhk6gry660xfn1biw1mj6mms4s2xpgd33hcm81r024vsx2s";
  packages."mipsel_74kc"."routing".sha256 = "1bhnbmkpvzp6v7ipa61rv88w21hfr20snvpy2mxjgyhqrkhqy40g";
  packages."mipsel_74kc"."telephony".sha256 = "0yn1bg9bl3i68d1cs3ar96s67jf40l1n4wdjd3b26gwp0vr2zgzl";
  targets."bcm27xx"."bcm2711".sha256 = "1sjkmr3rqvdyv2vbidg40jss6wsaddvm5agg7l11z9h7sars9106";
  targets."bcm27xx"."bcm2711".packagesArch = "aarch64_cortex-a72";
  packages."aarch64_cortex-a72"."base".sha256 = "1immsif1xzx7fa3h900csrnpqqksi11ck2kv8rckh7cpq3qcmkya";
  packages."aarch64_cortex-a72"."packages".sha256 = "17j5l6iy5pbhc5kmnsq28cajmzaizi44fkjik5m3vg9qx12wwg4q";
  packages."aarch64_cortex-a72"."routing".sha256 = "01wag6ifd22m74l95rxg81wy84dm4fav7apfv9mv3nh6l9albvzj";
  packages."aarch64_cortex-a72"."telephony".sha256 = "0crk0pqsps0qxip598227nz0qm79j753dqq0v1hmmka9w1pa2sy4";
  targets."bcm27xx"."bcm2708".sha256 = "1ipvspnvv55nfqghfq13y4820rrrm74s5vg6b9qc9ccfdn0mj1g5";
  targets."bcm27xx"."bcm2708".packagesArch = "arm_arm1176jzf-s_vfp";
  packages."arm_arm1176jzf-s_vfp"."base".sha256 = "1y2h0hn8hx8ahcyvyr7r94zk4r48v2p54b01018jrqf16ifly2kk";
  packages."arm_arm1176jzf-s_vfp"."packages".sha256 = "07fnlw7mf4wni1a9airmppzapqx7dv42f2y999n6z22zhzis0192";
  packages."arm_arm1176jzf-s_vfp"."routing".sha256 = "1mlwpp5zhw20hyjiy6h8zanjp8wqighbim8myx8dr10f8vg2qwim";
  packages."arm_arm1176jzf-s_vfp"."telephony".sha256 = "1s1ny8adgg1w0r5di13c62kfypl4h9gg2sm6r1xbby95dgv1jq55";
  targets."bcm27xx"."bcm2709".sha256 = "0ry5f53g67n79ji2gj8qafvpn45b2ya63y7f2ys4p0r1bkcvmcl4";
  targets."bcm27xx"."bcm2709".packagesArch = "arm_cortex-a7_neon-vfpv4";
  packages."arm_cortex-a7_neon-vfpv4"."base".sha256 = "1dd39gzaf0r08cj4cifzlqy4ac6wi3wfiga7xyczlpg0qmbnps2l";
  packages."arm_cortex-a7_neon-vfpv4"."packages".sha256 = "0iqhsizp259gcr2sqxcqsywdjydi8fdmm2gl0hg9ax7a8jmdaqd8";
  packages."arm_cortex-a7_neon-vfpv4"."routing".sha256 = "12zddqcsiavrliz2317p8z3xi959x78ppmwyliayq6fbrkmq1w7q";
  packages."arm_cortex-a7_neon-vfpv4"."telephony".sha256 = "188mkc8kc9v5n8vkcd6kvx9bqy7qi8f1lv3vgs1mshpky248ckxl";
  targets."bcm27xx"."bcm2710".sha256 = "09r410nig48cclmhswissb73sy7g3xwzqshaw3gc18mbjikhj3ln";
  targets."bcm27xx"."bcm2710".packagesArch = "aarch64_cortex-a53";
  packages."aarch64_cortex-a53"."base".sha256 = "1n7gdk93lfdcmw69i69323b2akvkzli1072any7m12s63wmpkvcx";
  packages."aarch64_cortex-a53"."packages".sha256 = "09mgzfdzcxi2m9194g9hkr3ivqvi0z5dvhx4zqnnfrd6y912pww0";
  packages."aarch64_cortex-a53"."routing".sha256 = "1nw3mqg2nal1rr5h4wkrybr6ydja61l14987dr84rad8k16pk900";
  packages."aarch64_cortex-a53"."telephony".sha256 = "1fl82fqwf0y2rg5h4yrggdqk3lzjmia9wa06rhbn88m7pqk5w8kk";
  targets."mvebu"."cortexa53".sha256 = "096wbwwj9l33c7xdkmz0i63kymvhjn1wv4rfv7fir2bg3sidj7py";
  targets."mvebu"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."mvebu"."cortexa72".sha256 = "1wxykc860w4h9yvhh8glx8nshfxxjhlny2bgd1giywl4zrapxq3l";
  targets."mvebu"."cortexa72".packagesArch = "aarch64_cortex-a72";
  targets."mvebu"."cortexa9".sha256 = "155kppc6nhvkr9l0rl2dfkbcfb17bh0g9wpnmrfvg1k3avgglnr0";
  targets."mvebu"."cortexa9".packagesArch = "arm_cortex-a9_vfpv3-d16";
  packages."arm_cortex-a9_vfpv3-d16"."base".sha256 = "16i0mas26nv4i1ps4l1wx1czh5xg5abz634bnqj5kavbxx21w2j8";
  packages."arm_cortex-a9_vfpv3-d16"."packages".sha256 = "1hj9q2whpysbm4bfw3j64k6c7s75ngkz3rhjz705h6nxd3j5lqki";
  packages."arm_cortex-a9_vfpv3-d16"."routing".sha256 = "0k600pjynk3rqhnbgh79kk8n042hmviizyfpr34wizjmb02f7hnn";
  packages."arm_cortex-a9_vfpv3-d16"."telephony".sha256 = "15a21frik2y7qq2758pf1jc0d76qqzyv4m7sd80p4dxj543d0zwm";
  targets."at91"."sam9x".sha256 = "0hhv855i6hafqc0s827jgnx7pb3gsg895w4526fzl50cn6kyyxq3";
  targets."at91"."sam9x".packagesArch = "arm_arm926ej-s";
  packages."arm_arm926ej-s"."base".sha256 = "1sprybg9slr31xglbzzswkl3c7vg21jzfb8vrri6m7w59rq8ifz6";
  packages."arm_arm926ej-s"."packages".sha256 = "1l6ci77qnwzi7d3a5qrnb70a248xvp2d6d1izbaxzfvlhv9bpc0l";
  packages."arm_arm926ej-s"."routing".sha256 = "0dhpd8ha88a9wk48jnrsjm7jqdk6b14c708h3l90a1pkmj68zsgm";
  packages."arm_arm926ej-s"."telephony".sha256 = "0964hb7jvinlqs246zi793q1zq2dnmfgl3n59kkhi38i50ajbv7k";
  targets."at91"."sama5".sha256 = "1jqgwybz3dybz0f5n9b1v3yjn2wdni295f3vk71a7g4z4wdm5yiz";
  targets."at91"."sama5".packagesArch = "arm_cortex-a5_vfpv4";
  packages."arm_cortex-a5_vfpv4"."base".sha256 = "15yc5jpnpyjnqbp8a5xw70a9mgjzi71m56j4rxafxnsx4ihzri6a";
  packages."arm_cortex-a5_vfpv4"."packages".sha256 = "0zp2cwxd6p85y05910p2k2d4yq5vapaxqhkl5zqxzhjzgybd487i";
  packages."arm_cortex-a5_vfpv4"."routing".sha256 = "0jxcqpbd1qq51b13mg08c3m2scwgf5b69f4y621i3k8wqgkwd1xv";
  packages."arm_cortex-a5_vfpv4"."telephony".sha256 = "1aaxmyzzsbavkvvjp75ay51wrvabwawpibiy2lba5cnj41ji5ymz";
  targets."gemini"."generic".sha256 = "0xzzp80522lcny6vy2r1m4hzghzsgijv124547wp5b79wlb1andm";
  targets."gemini"."generic".packagesArch = "arm_fa526";
  packages."arm_fa526"."base".sha256 = "0dgdalxmyvia9vrr0835nrgb7dv9rh48fh96krwx28kri0j2d6g7";
  packages."arm_fa526"."packages".sha256 = "0vd1zqjydnpfr9bj4bj8vv0ihil8wc6x3xxap61y6pn20ncbr3h9";
  packages."arm_fa526"."routing".sha256 = "0mzxsyzlj2cv4l78mhcb7gi8736yiih0sx9kza6bgd3zllrnzrzr";
  packages."arm_fa526"."telephony".sha256 = "1x3jzn4wc2lf76p2rx2niavs6nf2gkl37y6pr1vbin41awdmr0dr";
  targets."octeontx"."generic".sha256 = "0f06jzbivszyfa2w5xm1lkz8gkz6h5d0n6gvw511mavxccp9bapf";
  targets."ipq40xx"."generic".sha256 = "0z7ds3j3cfz5wqxbhpa6m7p1bbglzxayjm9334zqvnhl9av2f9nw";
  targets."ipq40xx"."generic".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."ipq40xx"."mikrotik".sha256 = "0rf1s7vz4pi5dy0naffvig6smpfwl8fxh2ss4645p7363lijwgzz";
  targets."ipq40xx"."mikrotik".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7623".sha256 = "1z98fkzxcmw76i730pj0rx28binj277jq8nrk16lvg2fwzigaq2a";
  targets."mediatek"."mt7623".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7629".sha256 = "02m1rvp9bzn7gqzv0dn6llaazzm8qfyh5ckw9cbilmf2jcx63a0m";
  targets."mediatek"."mt7629".packagesArch = "arm_cortex-a7";
  packages."arm_cortex-a7"."base".sha256 = "1hhgvb5xv8sqh95w91938qmvc5yand9wxwgb25kji0nx57r09wc3";
  packages."arm_cortex-a7"."packages".sha256 = "1kf7wdflk3l20wc103sn9bqvg9nylsbvcfqyc5lz0zc7sj6m15i5";
  packages."arm_cortex-a7"."routing".sha256 = "1bgrcfl6gpj3xd9zh81rr5ikwibcl8h50sys5a2rib5pxpnpc3bz";
  packages."arm_cortex-a7"."telephony".sha256 = "1gqvn8lzgfcfsyzy970w3ssbdj0qm6156kr6b5pfhlyqsy8xli88";
  targets."mediatek"."mt7622".sha256 = "142vy32hc5w9rq0ci5ymbnmji6fa28zj2xs39kaid9kwkhy2zfns";
  targets."mediatek"."mt7622".packagesArch = "aarch64_cortex-a53";
  targets."malta"."be".sha256 = "12p5q5f88rlgi8fhiz33a69cnb2amqn5r87gm3yjbw50a63fgsm6";
  targets."rockchip"."armv8".sha256 = "0zrc26bq3np5r4m2n0b0wd9i84jajgfmvncjgjr95f1gqh724qnl";
  targets."rockchip"."armv8".packagesArch = "aarch64_generic";
  packages."aarch64_generic"."base".sha256 = "0xbilwnkh7fb4qpdjhknx6s8a38him846x4b4fn0xmg7fffbj76m";
  packages."aarch64_generic"."packages".sha256 = "0il1nw9lq60nzij0gb9353y9jjv5dj7vml23g4x5pyq7b215xi9q";
  packages."aarch64_generic"."routing".sha256 = "01gs6i5yi5kpk25mkd8j601nrss1l68kqrpjnz5k7343wlpsgw9f";
  packages."aarch64_generic"."telephony".sha256 = "0rwdfsj3nl65l70nayadlbmcqnj4i9837b7n4r580n1gmn1mdpwr";
  targets."ipq806x"."generic".sha256 = "0w2q1d3xdsndjzf03hb4gf6dkn7h2vsv2p8hyjavhr6ki12k4q5x";
  targets."ipq806x"."generic".packagesArch = "arm_cortex-a15_neon-vfpv4";
  packages."arm_cortex-a15_neon-vfpv4"."base".sha256 = "05aqifwr71mflrdi8ngpd3imk2r1qyi8233cvz4jb84jyz1vm4qj";
  packages."arm_cortex-a15_neon-vfpv4"."packages".sha256 = "1p7hbwsfsb08ljdkj75zpmxhbyqxym9n2c6l0h6v5i9bv02lpy8z";
  packages."arm_cortex-a15_neon-vfpv4"."routing".sha256 = "0gi41dwy8six5d6xk3fwmza4jnrfvbi8v2hlv7y6rh09a2lnkyad";
  packages."arm_cortex-a15_neon-vfpv4"."telephony".sha256 = "0pvglf7dgchm4xfnai8gxhfa4264zn7c6xs59380878f4xvmi7mc";
  targets."sunxi"."cortexa8".sha256 = "16yg7nwli9c9icmwc28kpv1j61l169b1sn4z3z1kg6z5anvsfwga";
  targets."sunxi"."cortexa8".packagesArch = "arm_cortex-a8_vfpv3";
  packages."arm_cortex-a8_vfpv3"."base".sha256 = "18d25zzp30xdx6pdy9aq4b4w0ann15307fwqdl4ic6gn5fscrqw9";
  packages."arm_cortex-a8_vfpv3"."packages".sha256 = "1acylri6av7ag5k8pk4nmihgiwib1127cl4k4zi0d57jx2wkqhfj";
  packages."arm_cortex-a8_vfpv3"."routing".sha256 = "0kbankqmngvpim5sszkms97pz82hrygf2y5znhdniq3n5xpdlk38";
  packages."arm_cortex-a8_vfpv3"."telephony".sha256 = "18czphqy15nz9x2rg05w3jwhc3gkhjbaq5khghw6s45bkl730nwi";
  targets."sunxi"."cortexa53".sha256 = "0a8kvf1rbx1sss9f5pd1nhkrdvklp4d0x4215sxdiy5cnf6n0jna";
  targets."sunxi"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."sunxi"."cortexa7".sha256 = "0zg83zp24da5dnrdrdm1lq0xr5gr3d0dhfa4d1nw8pikww4bz3yw";
  targets."sunxi"."cortexa7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mpc85xx"."p1010".sha256 = "1sjrx7jc7vpa4mjpqhyilk5acmislkzw0smmawpzxb6532zihpf0";
  targets."mpc85xx"."p1010".packagesArch = "powerpc_8540";
  packages."powerpc_8540"."base".sha256 = "1676rmv2f4wfma5gsrmcmnnpy67gyq841cniakpwx7vgr4lavyz9";
  packages."powerpc_8540"."packages".sha256 = "075218xvf70slimzq2085m6iylvwx2ca8qyxy6jrd109wg3lzirj";
  packages."powerpc_8540"."routing".sha256 = "1f1c2wzk0s9bfa8mq4dw02igqjx3fd0vb3vgl344xa1s8m2pc3yz";
  packages."powerpc_8540"."telephony".sha256 = "1ns4grlkm474401p5dbkpsyiq8zj4m4qpkj00vabmmlh3a3r2dd5";
  targets."mpc85xx"."p2020".sha256 = "0bg8yf85cz09gw245lsxx1fjrwp8afgj9f402lm841sm00bwmlz2";
  targets."mpc85xx"."p2020".packagesArch = "powerpc_8540";
  targets."mpc85xx"."p1020".sha256 = "10pr1mlkknmz20skpm9yjrddv0nyxz59k7a8x9gja47kvhgsb3s1";
  targets."mpc85xx"."p1020".packagesArch = "powerpc_8540";
  targets."x86"."generic".sha256 = "1bxyqy1s7pq9mqnf0pdyg865b395f1zvfyppxx1w37b7qpslmklv";
  targets."x86"."generic".packagesArch = "i386_pentium4";
  packages."i386_pentium4"."base".sha256 = "0v0pcbbkrpvslfhpds03qjhsnkhg0afh00f7am3v5bnk0avbjb0w";
  packages."i386_pentium4"."packages".sha256 = "0w2y3b2f3mqh0mbm53dzxkrlzvrdgb6ynng8z1qrnbzjnlv3yqq6";
  packages."i386_pentium4"."routing".sha256 = "0dnx5qm9gl9zc5idq87pz7wzir032axbgjpabccz40xhxrf1a4vr";
  packages."i386_pentium4"."telephony".sha256 = "09hrvfkcsj2876dby2bsdjdrr5752wc5w1x1wsw6xvw8znr67dh6";
  targets."x86"."legacy".sha256 = "1b21f366wjh6l8m652alvwvnl9v2g1k75hcd18il59676322hjaf";
  targets."x86"."legacy".packagesArch = "i386_pentium-mmx";
  packages."i386_pentium-mmx"."base".sha256 = "1pz6iagivmananr18qdx4n9nxicd7vi0lm7x2vasa817n2l2rdak";
  packages."i386_pentium-mmx"."packages".sha256 = "1jcxzgngmrbw2zx5ahs9m2mxdlnqiprdnzj9w20n9443avsjjzqs";
  packages."i386_pentium-mmx"."routing".sha256 = "0mrfva0zjm5bw3vnpyk21qw8pzwym9l2ppix6l74zxq7hkzzqlzv";
  packages."i386_pentium-mmx"."telephony".sha256 = "1kl9ak2hngqn4kl0dwfk89jk2hfjy9m0qbb5q6gj5xrzn5cpr7x0";
  targets."x86"."geode".sha256 = "1ibkb5m1kvhndiz4jsgc4y67q4mk5248n59253gfq68nxwa2if3x";
  targets."x86"."geode".packagesArch = "i386_pentium-mmx";
  targets."x86"."64".sha256 = "0i9gz0bqbps8bff984bd2lkp7anrifnl055f67a843lw37k7i9mj";
  targets."x86"."64".packagesArch = "x86_64";
  packages."x86_64"."base".sha256 = "1w2rlj1rvc5wdfs5d156xi35zc18z2nvcirayadr6cblg5zhp62p";
  packages."x86_64"."packages".sha256 = "1v2addikncdbcxzxf619zrr8wysy6jaqwqh3ysmb46c1ha77l521";
  packages."x86_64"."routing".sha256 = "1x4zg4sd0880c5n4srff6hilrwwf344wsw3fnhg16b3fp4l3ida4";
  packages."x86_64"."telephony".sha256 = "1yik026ii49xzvhcyb2x78a3pk6qs4f01ryjjlp15h1jd1hb2yj9";
  targets."realtek"."generic".sha256 = "1331516ryfv5afqn7x94n68a94780l064wrb6ydlhdkxvx9690h7";
  targets."realtek"."generic".packagesArch = "mips_4kec";
  packages."mips_4kec"."base".sha256 = "0y5ypmnd3dbz8fkprlhq3aiyvkba5w59msdqa2yfx4a2zl1qz72r";
  packages."mips_4kec"."packages".sha256 = "0vskv19fwb8d06fdjbhikgv3n9kvjbjjmmvrjqv5kyngbz121bxm";
  packages."mips_4kec"."routing".sha256 = "04mk6qi1dnixb4841l20asrg36x1b860a22knghcls7fcl4py6bs";
  packages."mips_4kec"."telephony".sha256 = "0c3dn7bfs7r84gmaq91jkibvyj0wgs60zn5j5fj281rlgqk4ydrn";
  targets."armvirt"."32".sha256 = "1x43zsx6ai5343sy3b66s7m5ngd4rznp2jms78ajk7lwqmcif4hr";
  targets."armvirt"."64".sha256 = "159vf4n6zx9dbx68g56zkd8vbbagdw0r9ydpg5iggy6qm5rj2vby";
  targets."kirkwood"."generic".sha256 = "0dzqz598ryycc9x0z29f7y0xq88dxnkp3if9v4flziv1gz1y26fn";
  targets."kirkwood"."generic".packagesArch = "arm_xscale";
  packages."arm_xscale"."base".sha256 = "00gkd6c7crki3hbb1bx7ych2xmsdw2jqkcz6r9riw5prfnpzz7ii";
  packages."arm_xscale"."packages".sha256 = "13dd62p2044d83pw9af3cy8sj0i5hwnyq7afwb724r7z22qq2zqk";
  packages."arm_xscale"."routing".sha256 = "1l50qbjphimy77v26fp1vx9h83fpv2y9fd2ka5gls86xvj52v86q";
  packages."arm_xscale"."telephony".sha256 = "12nf6xrw9pn2hrqhcylsy7kc6zpfbh44rpdvaqh8b6zq2c8wrlji";
  targets."ath79"."generic".sha256 = "0lj3qf3gz8169kma05qzbd3sipc31pk9gr4m5l7q14bawzsqbn9i";
  targets."ath79"."generic".packagesArch = "mips_24kc";
  packages."mips_24kc"."base".sha256 = "1m48w7s095l2lskj29pn9vqm7g2n412bima7n18721var9fa1dcz";
  packages."mips_24kc"."packages".sha256 = "0yv7kni6svm6xk7w5yd4k6rvhzfgqb4j5wlkr1j8znywrivk7zgh";
  packages."mips_24kc"."routing".sha256 = "079mspmyyv5b3nrzbpdb1iqzcyb5zjln9pjajz67yddxwszpy0zn";
  packages."mips_24kc"."telephony".sha256 = "08cdx609mia7z23bc87alddha6i878kphkcjvmrvlyphq1ghdd8v";
  targets."ath79"."mikrotik".sha256 = "0gmdbzqh87fllp0ky4drypada2l0fbdx79d74nzfyk9yqi53va40";
  targets."ath79"."mikrotik".packagesArch = "mips_24kc";
  targets."ath79"."nand".sha256 = "1gf9mvzwy6fb7z2mvbfyfhdr1wrjzipkx5wc1hv5lfmvbginwyg0";
  targets."ath79"."nand".packagesArch = "mips_24kc";
  targets."ath79"."tiny".sha256 = "021qxpjyzbzjqmdwjlw30bkrkmk77h20jxdfgkgsvjmgqzqaqg9g";
  targets."ath79"."tiny".packagesArch = "mips_24kc";
  targets."archs38"."generic".sha256 = "0iqya7nmcknsc8f4gp2rwcj1s2x5yp7s31ffyn1m6jawqg444bhz";
  targets."archs38"."generic".packagesArch = "arc_archs";
  packages."arc_archs"."base".sha256 = "0lnn56w0a4hc6i2wvj7bpryq2dycph82kc3iki8wlriims4v19pv";
  packages."arc_archs"."packages".sha256 = "0mgscmpsk35wwqdl6v176azqjm1d1lapbcbx7hi4gg70xdrz1w8j";
  packages."arc_archs"."routing".sha256 = "1w1rw7fsrib9jbaywsw9by1wlfl1jd037kmrpg5139glp92fg6v6";
  packages."arc_archs"."telephony".sha256 = "0lzvx2ixi4qn02h3krqp35fvlnw4pkkza3sfl4rb4mwdjn7zhmic";
  targets."ath25"."generic".sha256 = "0cj2h3z4p9h6dbf4g7caqqwgki4hg30q33lyddjfyglp07xakqff";
  targets."ath25"."generic".packagesArch = "mips_mips32";
  targets."apm821xx"."nand".sha256 = "0a2yjdxx5nxqpjddipnj7r1xp62jv43hh6f7d94h9vxv9k23n865";
  targets."apm821xx"."nand".packagesArch = "powerpc_464fp";
  packages."powerpc_464fp"."base".sha256 = "0nc1xr1z65i00knyf7rd696yk5ijmfnsix1mh5zd3aasp5jb534m";
  packages."powerpc_464fp"."packages".sha256 = "1j7pgk38gbzxfak7y8lijbzb94y58im9pm2z2sv6r5vmvdj50xz1";
  packages."powerpc_464fp"."routing".sha256 = "19qjxmj56vfxqsggw5df6rjga9idlrz3wgalpayha42vpw50q002";
  packages."powerpc_464fp"."telephony".sha256 = "1sas4d286qjxv2prd8sbkp72xswmzhkgrnirjq37jmhsn1mmg54v";
  targets."apm821xx"."sata".sha256 = "116x74arrcjvz2958mw0w6ix1a3yw8z1q70gh3mhwi8ng4sf7gbx";
  targets."apm821xx"."sata".packagesArch = "powerpc_464fp";
  targets."bcm53xx"."generic".sha256 = "0jgl2gbwkb2j3dx5173zp9vghz7disrl0q52iw0gz9pfxbh4qfj3";
  targets."bcm53xx"."generic".packagesArch = "arm_cortex-a9";
  packages."arm_cortex-a9"."base".sha256 = "0f30daf3x38vbsz8hy5x8x86wwq5kcdjsak37zlc7rsvirz2bqm5";
  packages."arm_cortex-a9"."packages".sha256 = "12qh0jmj8iir9b5ww60xlk1xs3g5a1dffv670ygshxppma9pibhx";
  packages."arm_cortex-a9"."routing".sha256 = "0bkdx5kjccb50kklbd3508cl11rwqv6w2vs8m5h90x3gq86pcbnk";
  packages."arm_cortex-a9"."telephony".sha256 = "1p1y3s7nfzm6d7mzacvdy2hvyzm9j47b9x108rk6h5mw717gfk6k";
  targets."ramips"."mt76x8".sha256 = "1lpazmcmva1par0108j4dq2zqxvb3kpjzaxln5cs4vi3ka8w9hbj";
  targets."ramips"."mt76x8".packagesArch = "mipsel_24kc";
  packages."mipsel_24kc"."base".sha256 = "19lq5rxs40d59w7q7b428irnqzqxji0kpd01a6ay22pmcs8vg7il";
  packages."mipsel_24kc"."packages".sha256 = "0ala1vah2q3j437gr38gn9l7iip88bgslrrybgwdddpk3jn2hzpn";
  packages."mipsel_24kc"."routing".sha256 = "030c44ah9m1kd69k97i4p0qz3la9smvyi9znn7r73y52b05lasdl";
  packages."mipsel_24kc"."telephony".sha256 = "03179d181s544swlgq6yq1wcsvgsk791azzm542la3r19251208v";
  targets."ramips"."mt7620".sha256 = "0z24qf1r8af2bcbyw8zfknv7br609l2x04mwaxph3mrgnka54hab";
  targets."ramips"."mt7620".packagesArch = "mipsel_24kc";
  targets."ramips"."rt3883".sha256 = "1h70d6rxzpqn7f1h6j2r0kbq36iwzjm1hcrjavljsm537djmjcir";
  targets."ramips"."rt3883".packagesArch = "mipsel_74kc";
  targets."ramips"."rt305x".sha256 = "1lidpksm54bzbwy36kqqxyyfk1qlnifjlvwmaf9zfy4awjsfb02l";
  targets."ramips"."rt305x".packagesArch = "mipsel_24kc";
  targets."ramips"."mt7621".sha256 = "1599isx514ypd0hrams2kr53kmjawa9myix83x5l48glpsdh89bg";
  targets."ramips"."mt7621".packagesArch = "mipsel_24kc";
  targets."ramips"."rt288x".sha256 = "0hczhlvkjz8q900ndf9xvvigiz2v2q4gxhwp3bk4cjjsplr4vjh9";
  targets."ramips"."rt288x".packagesArch = "mipsel_24kc";
  targets."lantiq"."xrx200".sha256 = "0jrzlmgvx7rsn68j57qw4p4p1hrxsxd49s6h5sfxwmg31isy8xrg";
  targets."lantiq"."xrx200".packagesArch = "mips_24kc";
  targets."lantiq"."ase".sha256 = "06gl3dk269k73y55xl2nc7bg7q2a9jyhhhkd6b5kavf27m24hc50";
  targets."lantiq"."xway".sha256 = "06a6zk7f7jd3hgy52hz3k65swbdx1c7v6ychzhq6qc506lhhyjrj";
  targets."lantiq"."xway".packagesArch = "mips_24kc";
  targets."lantiq"."xway_legacy".sha256 = "1qx8b6alxkmnzjp83whxxbjfgpbiw3fd97h7dak35kd1nfxkdx9x";
  targets."octeon"."generic".sha256 = "0bv2kvnrqcxx94iqrbkf4p30lcjvmkk7nh4v5f6cilrb31cvjlg1";
  targets."octeon"."generic".packagesArch = "mips64_octeonplus";
  packages."mips64_octeonplus"."base".sha256 = "1sv879dwffhaw6p5lnql14y47a83225qb1rmbm5jvmv6ix7cgrz8";
  packages."mips64_octeonplus"."packages".sha256 = "1l6k4qvc3hli7x82q241indsdpadar3h4vk4nn0igzb0hzggs9pw";
  packages."mips64_octeonplus"."routing".sha256 = "0rx75csncfkfw5pj29phyxp48j874y1j8kdch3x73p9jv9hpbbvj";
  packages."mips64_octeonplus"."telephony".sha256 = "1f81h4f4pl4drfsvdx4zs6hr4cg9dvzmjzzbgb34mzlzz2lqaabs";
  targets."pistachio"."generic".sha256 = "0apndxqjwh9p5a8vvdcwxmb2byrm5j5848frpg9grnzl1d8sls8y";
  targets."pistachio"."generic".packagesArch = "mipsel_24kc_24kf";
  packages."mipsel_24kc_24kf"."base".sha256 = "0vvj1l7w73g5qh5im77cgvnz8w2anphnd0sp8yn1cqgm4a56mpwh";
  packages."mipsel_24kc_24kf"."packages".sha256 = "03n5rnyw9jfi16bj381vy2dr6rr7qlmlwsydrd8c6d06w5hhfs3w";
  packages."mipsel_24kc_24kf"."routing".sha256 = "0qf6jllmbc84fbn8439i4gycbx4lx4p6ksjgydrb9i4vim4d7k3r";
  packages."mipsel_24kc_24kf"."telephony".sha256 = "180aqpc84jw2sgij93124yayfiwdi7pqlw2j3wwcd16bcq14n7z6";
  targets."layerscape"."armv8_64b".sha256 = "0db47qlaxr85hh7l0mfmv6pwxgpxyv92db3yz8q66si7ycgw2hql";
  targets."layerscape"."armv8_64b".packagesArch = "aarch64_generic";
  targets."layerscape"."armv7".sha256 = "0ddan471zly1lagqdl6hxvw7ii5gaqc3nwsymb020pqlfzgdf93a";
  targets."layerscape"."armv7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."omap"."generic".sha256 = "0f73ijrlh068vjygwhyp3klyc67kh10621n6cwjx7s3i29hk6vdq";
  targets."omap"."generic".packagesArch = "arm_cortex-a8_vfpv3";
  targets."tegra"."generic".sha256 = "0m8v1in8sg4ji8lnx1vwdrd6878gahqs6miml86n0lvzl5q9rbbs";
  targets."tegra"."generic".packagesArch = "arm_cortex-a9_vfpv3-d16";
  targets."bcm4908"."generic".sha256 = "0qpdx5ckdkzgvnfpxjv89r2kxgqdayazw17bhq9rwh256kiab3ir";
  targets."bcm4908"."generic".packagesArch = "aarch64_cortex-a53";
}
