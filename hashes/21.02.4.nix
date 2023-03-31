{
  targets."arc770"."generic".sha256 = "06cz4nbmhyaq4gf1i0a1hh87djm82jzb1cr88qj4imfz4dqk7l5g";
  targets."arc770"."generic".packagesArch = "arc_arc700";
  packages."arc_arc700"."base".sha256 = "008n0qgqm9c11pc448rsn0622x3qzzpylkc90a892dwka1szgcvm";
  packages."arc_arc700"."packages".sha256 = "0f06626s1xr14xwnqzpsznf62b4f6vn0hhssg0wxqcx0ci93wxqy";
  packages."arc_arc700"."routing".sha256 = "0rc0dm059bn0cj22kj4zzpj46dpdzzci9485lckiy8syk9iwi8zj";
  packages."arc_arc700"."telephony".sha256 = "1x0qp3hgv0scvmys8182sjq49riy88wg83amb03r72afag86ajsb";
  targets."imx6"."generic".sha256 = "0rqj3ccp5hrph5m85z7b42kisc9pn303q5ksmrja0cna6jzmgkgc";
  targets."imx6"."generic".packagesArch = "arm_cortex-a9_neon";
  packages."arm_cortex-a9_neon"."base".sha256 = "1vnr2z93i48vrqn4p80ywmmr6xis1cdpgkf7n4i2a2fjf5mw3c70";
  packages."arm_cortex-a9_neon"."packages".sha256 = "0f8bzkq1cgmnr2gk8vw69nscjc19sifa954fy4jxrrba7xkd9hss";
  packages."arm_cortex-a9_neon"."routing".sha256 = "1mp2rih0hvk1b30mbizhzi9ana2p24xfr7qlkvv972pl2b0flkya";
  packages."arm_cortex-a9_neon"."telephony".sha256 = "1piamiifl4wvdn76wfj808dblaas321rf77hs8vnihcsh5hpbp5b";
  targets."oxnas"."ox820".sha256 = "0a2wlhv8azynjhy1rr61l5spwxx2pg2mbiqfpvbm31gdhs8rs1gv";
  targets."oxnas"."ox820".packagesArch = "arm_mpcore";
  packages."arm_mpcore"."base".sha256 = "0bnxr4d18m04dwk2yrba281gw7n5xcwkxh0bfjvksr3n214sqvvk";
  packages."arm_mpcore"."packages".sha256 = "0zrm38vk6xwrpx14qw1l154283yz2mvlml864myqbax2jx37n7sv";
  packages."arm_mpcore"."routing".sha256 = "10q2vspbr6dfvi899djnn7i3q5xw65hgv2lmzd0rzzxq2cjvr4v9";
  packages."arm_mpcore"."telephony".sha256 = "0mrvqa7dcwqf96ra6qnzwm2n4l9k9y6xnizq599p5kvfiip0ckv2";
  targets."mxs"."generic".sha256 = "0kjj9v1f1nh1v8ywn5lbq1g3af4qigz7h0n57jdz8sjj9s4nhz8p";
  targets."zynq"."generic".sha256 = "166vmcgs2x6s3941qm1lbnpxxbb5pfv86afciajdvb2lk2b6i0pv";
  targets."zynq"."generic".packagesArch = "arm_cortex-a9_neon";
  targets."bcm63xx"."generic".sha256 = "18im3b99yaalam433qxlhia87sz4ayw1l3199il1kysq0myfmsx1";
  targets."bcm63xx"."generic".packagesArch = "mips_mips32";
  packages."mips_mips32"."base".sha256 = "081115y5d8jgl5mysw0ccv6nqizrk2f5pzdfizh596hahqn8b9sh";
  packages."mips_mips32"."packages".sha256 = "0zwzgbrsq5mm51ms1wqls0kg1smy7ffgqhrm2b69r1iym3dv1bk6";
  packages."mips_mips32"."routing".sha256 = "1hh8hwrv66k5s216cib1dqdr950jxzpiy58iwxdfq58aspq7av39";
  packages."mips_mips32"."telephony".sha256 = "0zm08y5xmgm0zy1k2zin6kajd9wgcm9w5p1g3gfq8zalslhi3s8c";
  targets."bcm63xx"."smp".sha256 = "0chwx6pz0ki4biipp4biab91k0lls9zhff2jmmyv8c5kpb0qql9c";
  targets."bcm63xx"."smp".packagesArch = "mips_mips32";
  targets."bcm47xx"."generic".sha256 = "1gpklrnk9mf7zh47bymhy0xirvib1qsvixnsk9a13868qnad1gin";
  targets."bcm47xx"."generic".packagesArch = "mipsel_mips32";
  packages."mipsel_mips32"."base".sha256 = "1x6w835nnqwvac2ffcyca7djf4n9l0sn2ancpi8kvhdj72xl6qxj";
  packages."mipsel_mips32"."packages".sha256 = "0hvlxmkld81dj5wqiw9b2m83jwljwva06bsh3ljajxgmy55nzwvw";
  packages."mipsel_mips32"."routing".sha256 = "0flldf1bmrcbjd6ldhk0wbpqrrdk3md2gyswsp0i0fk8n9glq57i";
  packages."mipsel_mips32"."telephony".sha256 = "08csg9hgz9mkbd01p92n9savq11i3lqxy9b21agq7fn4bx7awvd7";
  targets."bcm47xx"."legacy".sha256 = "0aqbrd7y11d8dmfqi2pddk80qqndvzhmlladmq649az6aa74y0zv";
  targets."bcm47xx"."legacy".packagesArch = "mipsel_mips32";
  targets."bcm47xx"."mips74k".sha256 = "0hzr5wq83i8ny0y12gfz14pb9995s9z3fddpbgy9zqgv9piywg70";
  targets."bcm47xx"."mips74k".packagesArch = "mipsel_74kc";
  packages."mipsel_74kc"."base".sha256 = "0fm7i9j4b26451pc4vkiq7c6d2i0hx4d8wp9fnpg4ax0glzvd4ns";
  packages."mipsel_74kc"."packages".sha256 = "1x3sc2lj57jdgc8ikkdbdk6c0wsrrgx7s74ayysfwg1sk1cy00rd";
  packages."mipsel_74kc"."routing".sha256 = "14zb57k3v2jx5wxcnsp45kndf4f78inzwpl1cvsq7icjrk72n8c4";
  packages."mipsel_74kc"."telephony".sha256 = "0dzy43py0a7f71jjgvzf1bg4rjli9rp5r3wkahdhyfhjyri7wsxc";
  targets."bcm27xx"."bcm2711".sha256 = "1sjkmr3rqvdyv2vbidg40jss6wsaddvm5agg7l11z9h7sars9106";
  targets."bcm27xx"."bcm2711".packagesArch = "aarch64_cortex-a72";
  packages."aarch64_cortex-a72"."base".sha256 = "1jysr02fvkmabx7aasrisj3fyp51x8hknsg8byzicjsld27cn6dx";
  packages."aarch64_cortex-a72"."packages".sha256 = "17anhqgjk6y372j4ya8mk9s6z9lfldjp46yr5pcmp0j3zflzl59r";
  packages."aarch64_cortex-a72"."routing".sha256 = "1qgqjd8jsafak7xi7a0is62dym4fyg6i73a15nnnnqd4m5cp7x4w";
  packages."aarch64_cortex-a72"."telephony".sha256 = "01kvym1gkq3vpn981wl45qcv8wnkacwm8zna4ad3y1h8bbdywqvp";
  targets."bcm27xx"."bcm2708".sha256 = "1ipvspnvv55nfqghfq13y4820rrrm74s5vg6b9qc9ccfdn0mj1g5";
  targets."bcm27xx"."bcm2708".packagesArch = "arm_arm1176jzf-s_vfp";
  packages."arm_arm1176jzf-s_vfp"."base".sha256 = "0x79s98vasz5y3k0x4lyr4i3xmdfj1asawlhrsmmc4nhaz4qg5hy";
  packages."arm_arm1176jzf-s_vfp"."packages".sha256 = "1ai3k0zzn83l78w224s61a2hsaq5grx4625qdam7fz0asszx125c";
  packages."arm_arm1176jzf-s_vfp"."routing".sha256 = "1qxjmg3b6n324pqafdmrmaasd4vkc1gl119sdccya9b2x4lsxdqi";
  packages."arm_arm1176jzf-s_vfp"."telephony".sha256 = "0grciv4145v9fdv3aarn3vbs3haj4p9bs2mhpwa5vxvg056awqgy";
  targets."bcm27xx"."bcm2709".sha256 = "0ry5f53g67n79ji2gj8qafvpn45b2ya63y7f2ys4p0r1bkcvmcl4";
  targets."bcm27xx"."bcm2709".packagesArch = "arm_cortex-a7_neon-vfpv4";
  packages."arm_cortex-a7_neon-vfpv4"."base".sha256 = "02xa883y11fxmxxf4x16ivvyyv22m7y3pkcggjjyj36nrgx3j5g2";
  packages."arm_cortex-a7_neon-vfpv4"."packages".sha256 = "0hd7dwxmbm68hp9f1nd5hn2nd12dgjhr03wzqz638c0ixg6wqydw";
  packages."arm_cortex-a7_neon-vfpv4"."routing".sha256 = "10l95lrxy9l2rq9b44i4ifa5yv16jfcrnbywfq9y1ssw261zvh1h";
  packages."arm_cortex-a7_neon-vfpv4"."telephony".sha256 = "1ffky0k8ski9j4l5wyc1hpfcs2mph7fl105hsin4fcffczvmmhyp";
  targets."bcm27xx"."bcm2710".sha256 = "09r410nig48cclmhswissb73sy7g3xwzqshaw3gc18mbjikhj3ln";
  targets."bcm27xx"."bcm2710".packagesArch = "aarch64_cortex-a53";
  packages."aarch64_cortex-a53"."base".sha256 = "0vpq5bqwjsmv9glxrrkv28sqnzj4s22cxah9lavlsrivxp1n8ksx";
  packages."aarch64_cortex-a53"."packages".sha256 = "0j5g65ij7p07ls2za1n2xfvqkvxjgm0nipjca00lpkxpr03v8nw4";
  packages."aarch64_cortex-a53"."routing".sha256 = "1mh1r33k7nwll31wv1if6jc7h2bhr7cwgv4hwwrn1jlr57ibks0z";
  packages."aarch64_cortex-a53"."telephony".sha256 = "0jkqfzgpgkwdwj6pmgdh1c6shz2ja7v3sjfgrnykf3591f9n7fnp";
  targets."mvebu"."cortexa53".sha256 = "096wbwwj9l33c7xdkmz0i63kymvhjn1wv4rfv7fir2bg3sidj7py";
  targets."mvebu"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."mvebu"."cortexa72".sha256 = "1wxykc860w4h9yvhh8glx8nshfxxjhlny2bgd1giywl4zrapxq3l";
  targets."mvebu"."cortexa72".packagesArch = "aarch64_cortex-a72";
  targets."mvebu"."cortexa9".sha256 = "155kppc6nhvkr9l0rl2dfkbcfb17bh0g9wpnmrfvg1k3avgglnr0";
  targets."mvebu"."cortexa9".packagesArch = "arm_cortex-a9_vfpv3-d16";
  packages."arm_cortex-a9_vfpv3-d16"."base".sha256 = "0jpjgasxx2qg8ap2zm8v4zyqjbgnkzvmijyf5z781mgfmirj5dy3";
  packages."arm_cortex-a9_vfpv3-d16"."packages".sha256 = "1hvshsayzmznppsgw8jcq12ivd45a5sbbff2fb4zrl58xad65n1q";
  packages."arm_cortex-a9_vfpv3-d16"."routing".sha256 = "1n873ydsjpvb30z2g65daz1i4zijqbx2lhq6xajmix20xfd5vr05";
  packages."arm_cortex-a9_vfpv3-d16"."telephony".sha256 = "0lk3dp5ilsax54i3lk9fhm1b3yn327a1jy733h69ahkcvrpkfsq1";
  targets."at91"."sam9x".sha256 = "0hhv855i6hafqc0s827jgnx7pb3gsg895w4526fzl50cn6kyyxq3";
  targets."at91"."sam9x".packagesArch = "arm_arm926ej-s";
  packages."arm_arm926ej-s"."base".sha256 = "118naqb1s8rx0lfrzm3vqhsd0zj07sa2lwfq6cfv4c40163nylvi";
  packages."arm_arm926ej-s"."packages".sha256 = "1b9d3mbpxsgika26c3330im6hk0dp758aq089gvw43vr76prfb31";
  packages."arm_arm926ej-s"."routing".sha256 = "05q3kbwq08n3lxfhsfwr8bsgn1h65xzq5a04mxc69kvfsmsl7qcp";
  packages."arm_arm926ej-s"."telephony".sha256 = "0dq1hf0imharfjlg5jlpvis5l9p8cc9mi3rrvapibfkjwn2alkak";
  targets."at91"."sama5".sha256 = "1jqgwybz3dybz0f5n9b1v3yjn2wdni295f3vk71a7g4z4wdm5yiz";
  targets."at91"."sama5".packagesArch = "arm_cortex-a5_vfpv4";
  packages."arm_cortex-a5_vfpv4"."base".sha256 = "1m0g1y6r9s443w26a18q86vkr21hsnfhn58yj9pj6liwq7w2wcma";
  packages."arm_cortex-a5_vfpv4"."packages".sha256 = "1x278ripv04h4h67jgn1rgz78v322wrfqnp5zgvpbvbqxj48vmwz";
  packages."arm_cortex-a5_vfpv4"."routing".sha256 = "1p9z8pfhxwk2d6ag7gb4i859sz9d13zcwc0fh1mymx92pf0v72jc";
  packages."arm_cortex-a5_vfpv4"."telephony".sha256 = "0x4ak00fwmcllp2xhsmbyr230iyx50ih5yb0bzp2xl71w5zcyvsc";
  targets."gemini"."generic".sha256 = "0xzzp80522lcny6vy2r1m4hzghzsgijv124547wp5b79wlb1andm";
  targets."gemini"."generic".packagesArch = "arm_fa526";
  packages."arm_fa526"."base".sha256 = "1is6ffj2d6y12nnqmjazcdgfk6zzn814mhaaqdbwaa42z2c5wkjb";
  packages."arm_fa526"."packages".sha256 = "1d06j27y72hzfcqcl702dsrq282sxpbg2zgpngv7ah65ijl3kgfr";
  packages."arm_fa526"."routing".sha256 = "1wavkkf98822adpmy2rdn1plx2v6sbjiw3vysf289avznb43a5as";
  packages."arm_fa526"."telephony".sha256 = "0nmic6fxly517ma1zxza0zjvwvg306i10md93kghzh74drcczmsi";
  targets."octeontx"."generic".sha256 = "0f06jzbivszyfa2w5xm1lkz8gkz6h5d0n6gvw511mavxccp9bapf";
  targets."ipq40xx"."generic".sha256 = "0z7ds3j3cfz5wqxbhpa6m7p1bbglzxayjm9334zqvnhl9av2f9nw";
  targets."ipq40xx"."generic".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."ipq40xx"."mikrotik".sha256 = "0rf1s7vz4pi5dy0naffvig6smpfwl8fxh2ss4645p7363lijwgzz";
  targets."ipq40xx"."mikrotik".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7623".sha256 = "1z98fkzxcmw76i730pj0rx28binj277jq8nrk16lvg2fwzigaq2a";
  targets."mediatek"."mt7623".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7629".sha256 = "02m1rvp9bzn7gqzv0dn6llaazzm8qfyh5ckw9cbilmf2jcx63a0m";
  targets."mediatek"."mt7629".packagesArch = "arm_cortex-a7";
  packages."arm_cortex-a7"."base".sha256 = "1qrmm79qhrkqws5lq2828c4g53nvjifcdrngqvb6ikknh43j1wdq";
  packages."arm_cortex-a7"."packages".sha256 = "0jldy93rar91g81w9ff1559mb8zhb1dw05kg1m7l3036glad7fz8";
  packages."arm_cortex-a7"."routing".sha256 = "06rrl25ygnnz65yf5743jj52fry5b59xncmh19sy531jfjyqx8bm";
  packages."arm_cortex-a7"."telephony".sha256 = "1h55758rb4s2yla5ch64yg6x3qm2414km408df37jim2r0d75nzw";
  targets."mediatek"."mt7622".sha256 = "142vy32hc5w9rq0ci5ymbnmji6fa28zj2xs39kaid9kwkhy2zfns";
  targets."mediatek"."mt7622".packagesArch = "aarch64_cortex-a53";
  targets."malta"."be".sha256 = "12p5q5f88rlgi8fhiz33a69cnb2amqn5r87gm3yjbw50a63fgsm6";
  targets."rockchip"."armv8".sha256 = "0zrc26bq3np5r4m2n0b0wd9i84jajgfmvncjgjr95f1gqh724qnl";
  targets."rockchip"."armv8".packagesArch = "aarch64_generic";
  packages."aarch64_generic"."base".sha256 = "1hkrbx7a5mn4v8vs2ms99iaxsmdbrph1q1s1aax1f9jy6qqk7az4";
  packages."aarch64_generic"."packages".sha256 = "05s4nykvcknfmqv5w3h2sxz0y3sn97d3p6jwxv2vyv60zcs79nd3";
  packages."aarch64_generic"."routing".sha256 = "0dww5j2aalrpm7ddvvs793iiivga15jdgvfjmpnyqyvf55p6la9h";
  packages."aarch64_generic"."telephony".sha256 = "1sdwn67amlnr2433b5krv8zjqcm22gfgwj7wgw18h0kqqjd85r7a";
  targets."ipq806x"."generic".sha256 = "0w2q1d3xdsndjzf03hb4gf6dkn7h2vsv2p8hyjavhr6ki12k4q5x";
  targets."ipq806x"."generic".packagesArch = "arm_cortex-a15_neon-vfpv4";
  packages."arm_cortex-a15_neon-vfpv4"."base".sha256 = "1255dldi5d0i886axpz9q55pz1ghv5i2k7zaa55khz2hn2blhsi6";
  packages."arm_cortex-a15_neon-vfpv4"."packages".sha256 = "07j7az7x51x9sdy45l5mgk58kw2r4s9v28q016s7vd5wjhvfbkx2";
  packages."arm_cortex-a15_neon-vfpv4"."routing".sha256 = "09w6pfalfy3lk0sam8zr956223q9ybxign6vh74sc04hn6x613ak";
  packages."arm_cortex-a15_neon-vfpv4"."telephony".sha256 = "1zqf9inlxkhm60vm63qpjp9dzzj0pmxs77iqzw7dcvjc96j9n97m";
  targets."sunxi"."cortexa8".sha256 = "16yg7nwli9c9icmwc28kpv1j61l169b1sn4z3z1kg6z5anvsfwga";
  targets."sunxi"."cortexa8".packagesArch = "arm_cortex-a8_vfpv3";
  packages."arm_cortex-a8_vfpv3"."base".sha256 = "1va01s4kmkmn3jznkdw4chk2zw2f452bdip9dz1fv33pj7i99z9i";
  packages."arm_cortex-a8_vfpv3"."packages".sha256 = "1fcy8nghga11m9qs0zbpf47s02kxxcfxgi8iwlm6jviqscpjfmhb";
  packages."arm_cortex-a8_vfpv3"."routing".sha256 = "0yv9krhjq4ymz099bp3hzy5ll5kckhzcj5lrpj7jkddqp4kfxn7r";
  packages."arm_cortex-a8_vfpv3"."telephony".sha256 = "0rcnvx0xjc6nrwyq03w2lwz7vjqx2cfd31mb5i6p2h40kqzgwmgm";
  targets."sunxi"."cortexa53".sha256 = "0a8kvf1rbx1sss9f5pd1nhkrdvklp4d0x4215sxdiy5cnf6n0jna";
  targets."sunxi"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."sunxi"."cortexa7".sha256 = "0zg83zp24da5dnrdrdm1lq0xr5gr3d0dhfa4d1nw8pikww4bz3yw";
  targets."sunxi"."cortexa7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mpc85xx"."p1010".sha256 = "1sjrx7jc7vpa4mjpqhyilk5acmislkzw0smmawpzxb6532zihpf0";
  targets."mpc85xx"."p1010".packagesArch = "powerpc_8540";
  packages."powerpc_8540"."base".sha256 = "1jrphqr80gkdj1ac803f1cmmmv434p2rg8p36bbn91z5yb3r091j";
  packages."powerpc_8540"."packages".sha256 = "0rqq5gzpwqf4gax1cvxbi9z6ak273i6xbbj8whpxj9b9i2296ivc";
  packages."powerpc_8540"."routing".sha256 = "0g5jqnvwjbpggjq5iglrhlqcb9navsybnx8cnjzixdgq19ifjb23";
  packages."powerpc_8540"."telephony".sha256 = "0j7l8zwq3dxjvvfi1sz290d9ps495wlpwzsfsb0fi255iflmq42f";
  targets."mpc85xx"."p2020".sha256 = "0bg8yf85cz09gw245lsxx1fjrwp8afgj9f402lm841sm00bwmlz2";
  targets."mpc85xx"."p2020".packagesArch = "powerpc_8540";
  targets."mpc85xx"."p1020".sha256 = "10pr1mlkknmz20skpm9yjrddv0nyxz59k7a8x9gja47kvhgsb3s1";
  targets."mpc85xx"."p1020".packagesArch = "powerpc_8540";
  targets."x86"."generic".sha256 = "1bxyqy1s7pq9mqnf0pdyg865b395f1zvfyppxx1w37b7qpslmklv";
  targets."x86"."generic".packagesArch = "i386_pentium4";
  packages."i386_pentium4"."base".sha256 = "0zxbqmg674948pg116344xlr53i99s45sqclg6gsymqhmcj7inhv";
  packages."i386_pentium4"."packages".sha256 = "1jvgr5dg9in1q3dvi0lj8zp4nnyb2lh9xam8shdw1724zq8b68g8";
  packages."i386_pentium4"."routing".sha256 = "05h1ki39bwrajx8f1126sbd5i6x28m5rfmyk6nsdp9i3rwfrrddi";
  packages."i386_pentium4"."telephony".sha256 = "09cnxvnqm9sldjry4qvnv9skmf08z7n2pmyqjj7kf6rrnf7n4ybj";
  targets."x86"."legacy".sha256 = "1b21f366wjh6l8m652alvwvnl9v2g1k75hcd18il59676322hjaf";
  targets."x86"."legacy".packagesArch = "i386_pentium-mmx";
  packages."i386_pentium-mmx"."base".sha256 = "0zpx1y4p3695r2y4aijvriyg4ynph1x8hlxrflz1h1xf575s8qrm";
  packages."i386_pentium-mmx"."packages".sha256 = "13960cpklqswdlvpchrl6mvi1j1d13hrvd9z4csz30zl19vqq218";
  packages."i386_pentium-mmx"."routing".sha256 = "1smgkdbpghhcdp3qm9gmi5i30p1a30wjnklh526bni3k711wvz48";
  packages."i386_pentium-mmx"."telephony".sha256 = "15znd1jmah5qicrbwhcjg5llja7hip1h0agwbhr5ydpw60db4ywg";
  targets."x86"."geode".sha256 = "1ibkb5m1kvhndiz4jsgc4y67q4mk5248n59253gfq68nxwa2if3x";
  targets."x86"."geode".packagesArch = "i386_pentium-mmx";
  targets."x86"."64".sha256 = "0i9gz0bqbps8bff984bd2lkp7anrifnl055f67a843lw37k7i9mj";
  targets."x86"."64".packagesArch = "x86_64";
  packages."x86_64"."base".sha256 = "1l2y55x1whkmplcb7xc7gfd07dr048hmsg0ykcfyj9sb2mklx191";
  packages."x86_64"."packages".sha256 = "1hkc6z1xhya9b152ygx7m901vhwbcbgbk9zng4ghh33b4w45xhm9";
  packages."x86_64"."routing".sha256 = "1kh1dgvh8nr70y1id0w9liacjbzyn7a8id51x8cdam952lf7yw9h";
  packages."x86_64"."telephony".sha256 = "0hcqkafm1vfzdfwisj2n95bd5vq72w94s0cn4jj1a09qzq62p5v6";
  targets."realtek"."generic".sha256 = "1331516ryfv5afqn7x94n68a94780l064wrb6ydlhdkxvx9690h7";
  targets."realtek"."generic".packagesArch = "mips_4kec";
  packages."mips_4kec"."base".sha256 = "0f0qcva3x4jkih09b3mgga9wvc7q0dil1xxdbybj6c0bscabxw0g";
  packages."mips_4kec"."packages".sha256 = "1b3imdi7p6045rbqk2aj6hqndg6hsl9bzrfmx19v6v4z7wjdls0r";
  packages."mips_4kec"."routing".sha256 = "1k5m401kwwhp3j8lragfq2pb864l3j0is96ifi2mdxczgrqqc5r6";
  packages."mips_4kec"."telephony".sha256 = "1gzxbksmb553v131vi3r5m92bbq2mmx1mgwyb6x94rjx7jsvyjhh";
  targets."armvirt"."32".sha256 = "1x43zsx6ai5343sy3b66s7m5ngd4rznp2jms78ajk7lwqmcif4hr";
  targets."armvirt"."64".sha256 = "159vf4n6zx9dbx68g56zkd8vbbagdw0r9ydpg5iggy6qm5rj2vby";
  targets."kirkwood"."generic".sha256 = "0dzqz598ryycc9x0z29f7y0xq88dxnkp3if9v4flziv1gz1y26fn";
  targets."kirkwood"."generic".packagesArch = "arm_xscale";
  packages."arm_xscale"."base".sha256 = "0d9kh8nhgq4c0l8j8fafbnmlpb1krcxqdfil2akqy4g5fnxi1z1q";
  packages."arm_xscale"."packages".sha256 = "0d1329zsasm585ajrwinw2bx94iznmxr6nb3g3pi5slajlfb8p76";
  packages."arm_xscale"."routing".sha256 = "1hcwckzi0kms23rqhwfbnyz5sy5xn8fwg7qdrvj3rk15nr1ahc56";
  packages."arm_xscale"."telephony".sha256 = "1p9akbr49r8k059zslbrdps0j613jmk8vbyqyc70hr29zzla6vp9";
  targets."ath79"."generic".sha256 = "0lj3qf3gz8169kma05qzbd3sipc31pk9gr4m5l7q14bawzsqbn9i";
  targets."ath79"."generic".packagesArch = "mips_24kc";
  packages."mips_24kc"."base".sha256 = "0ax9d61daghcbs4w4zg9ybqxyqzlxybj2iv0yfr04s4z9gaffg7v";
  packages."mips_24kc"."packages".sha256 = "0c5in3mi7ws0r6ng6f4dqvy97alh1ma7g1zkjgydl7l9am813yxr";
  packages."mips_24kc"."routing".sha256 = "1ky1c8zb6fb44yp6v9mk4dfka3zz2bcvvqvgf6dj55rharmlj1ik";
  packages."mips_24kc"."telephony".sha256 = "1fryw5awvig0dibqyz6dl8haavv639szx3vh8mbhn1wijiiafwwg";
  targets."ath79"."mikrotik".sha256 = "0gmdbzqh87fllp0ky4drypada2l0fbdx79d74nzfyk9yqi53va40";
  targets."ath79"."mikrotik".packagesArch = "mips_24kc";
  targets."ath79"."nand".sha256 = "1gf9mvzwy6fb7z2mvbfyfhdr1wrjzipkx5wc1hv5lfmvbginwyg0";
  targets."ath79"."nand".packagesArch = "mips_24kc";
  targets."ath79"."tiny".sha256 = "021qxpjyzbzjqmdwjlw30bkrkmk77h20jxdfgkgsvjmgqzqaqg9g";
  targets."ath79"."tiny".packagesArch = "mips_24kc";
  targets."archs38"."generic".sha256 = "0iqya7nmcknsc8f4gp2rwcj1s2x5yp7s31ffyn1m6jawqg444bhz";
  targets."archs38"."generic".packagesArch = "arc_archs";
  packages."arc_archs"."base".sha256 = "0rrg608h3md1v3s9kjyrl73js9ixjmwkykgq3id0dd1ybnj0fwzx";
  packages."arc_archs"."packages".sha256 = "1ik2jvsx9r93pa4vfglvpfj3b4lmkp71640qbm5w60l1wgk22l9k";
  packages."arc_archs"."routing".sha256 = "1ks3ymwhxybm8brghazh8v4fmayh2ipkr84q8zkm7ywm3vgwj9bk";
  packages."arc_archs"."telephony".sha256 = "08nhfz6kf1xbq38r0jzy11a591qc0sf96gb46k3snk3dv60fa1a5";
  targets."ath25"."generic".sha256 = "0cj2h3z4p9h6dbf4g7caqqwgki4hg30q33lyddjfyglp07xakqff";
  targets."ath25"."generic".packagesArch = "mips_mips32";
  targets."apm821xx"."nand".sha256 = "0a2yjdxx5nxqpjddipnj7r1xp62jv43hh6f7d94h9vxv9k23n865";
  targets."apm821xx"."nand".packagesArch = "powerpc_464fp";
  packages."powerpc_464fp"."base".sha256 = "0d64zyqy3lq9g81lc44f2fkl3a1zbrq3ckhklhwxj2ma5ql7pjyd";
  packages."powerpc_464fp"."packages".sha256 = "1sdcanp53q1h85dwsh5hz3rkr7y8z3aarrnl5b3npfpj0gi8jrhi";
  packages."powerpc_464fp"."routing".sha256 = "1f3knpjvp2qb6rjpnhvc8zhrj7wipvvxb9b2xfmd5arabj5mxi24";
  packages."powerpc_464fp"."telephony".sha256 = "0xz3n39s3n33q71qrh68wh2maqy2hywch8zrla8yzsi325g1anir";
  targets."apm821xx"."sata".sha256 = "116x74arrcjvz2958mw0w6ix1a3yw8z1q70gh3mhwi8ng4sf7gbx";
  targets."apm821xx"."sata".packagesArch = "powerpc_464fp";
  targets."bcm53xx"."generic".sha256 = "0jgl2gbwkb2j3dx5173zp9vghz7disrl0q52iw0gz9pfxbh4qfj3";
  targets."bcm53xx"."generic".packagesArch = "arm_cortex-a9";
  packages."arm_cortex-a9"."base".sha256 = "1xw9kfmdn2aiyyd4b9020npahrc0ahjfpa47wbpps2hvshg16val";
  packages."arm_cortex-a9"."packages".sha256 = "0d258zkjiivy40ckl5jap42h01r32s4cwzjj64v0aymrf1vn9zdz";
  packages."arm_cortex-a9"."routing".sha256 = "0pd1vhh9zp6rjss5jg04r84777n90yrgj62rp62gknmiv0kihgkl";
  packages."arm_cortex-a9"."telephony".sha256 = "16xh789hjvx3pq5wqmqfk2vwaq2jknx8n7fxw1dx98p31mpchlil";
  targets."ramips"."mt76x8".sha256 = "1lpazmcmva1par0108j4dq2zqxvb3kpjzaxln5cs4vi3ka8w9hbj";
  targets."ramips"."mt76x8".packagesArch = "mipsel_24kc";
  packages."mipsel_24kc"."base".sha256 = "1fkq3rhal3d83v85ciivbqprv3rkwfmg5b3ql2kgjnd609ivhabw";
  packages."mipsel_24kc"."packages".sha256 = "06c5gmi0bnplg2vp93yh28lcvrlmxjiv9q5rqd8csm2sv7xxh2jp";
  packages."mipsel_24kc"."routing".sha256 = "1mlxa0dmhnbgd51ypfaxj8dm8bh78rljbz5i62m8fn01qjp80194";
  packages."mipsel_24kc"."telephony".sha256 = "0an1n1w7ppcv88lsqv8vg8d0j7j16klf3slfnxbk8d25mzznhihj";
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
  packages."mips64_octeonplus"."base".sha256 = "1z7jmskri42px4jgjr05j0wy505j96izglkk2rb5yxyp4p19mvmz";
  packages."mips64_octeonplus"."packages".sha256 = "0jxr970wbi2zj34vzf4svcq3g5p072c0wzb0hfq1zi244qar3lsl";
  packages."mips64_octeonplus"."routing".sha256 = "0jk3icrfd5nnzab4kbi4dq289sicz402yyb1m9zgz4vvxszg55gk";
  packages."mips64_octeonplus"."telephony".sha256 = "0l4j2gggn7hvb8v8hx6g69j9gb80bx0rzj790wd485vppzb6i9di";
  targets."pistachio"."generic".sha256 = "0apndxqjwh9p5a8vvdcwxmb2byrm5j5848frpg9grnzl1d8sls8y";
  targets."pistachio"."generic".packagesArch = "mipsel_24kc_24kf";
  packages."mipsel_24kc_24kf"."base".sha256 = "0kjf45fngy58k908nkm4p75c3fslpi96rmmppgkf3yv4jpr8dx4i";
  packages."mipsel_24kc_24kf"."packages".sha256 = "07b8biwbvgvacdcgl2h6xa3hhcfdrh1si7i8hfmi06f7wwp9kvzw";
  packages."mipsel_24kc_24kf"."routing".sha256 = "009bis507vnwg1zdvgx9pivnnj1m21nycvjnifsriagbbdmfkibv";
  packages."mipsel_24kc_24kf"."telephony".sha256 = "1302wx5icqp4p0ad7pp6ldsha4sqsiwbsgfagwancczxanpnvrsg";
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
