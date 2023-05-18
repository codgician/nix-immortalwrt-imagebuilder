{
  targets."oxnas"."ox820".sha256 = "0dkwnhm4y0r4qqr88bmqa0m3fckz2aq295zq1dy9ss4rw7xdqcg6";
  targets."oxnas"."ox820".packagesArch = "arm_mpcore";
  packages."arm_mpcore"."base".sha256 = "0vgyv3pziiwgfz9l9njl9641n34nlqcpqabh39n82z706r9296d6";
  packages."arm_mpcore"."luci".sha256 = "0aha684c0g1pm3ddafsc84igrbvkb9bmcg1gbf03rbz9m72jx11p";
  packages."arm_mpcore"."packages".sha256 = "1vhm734zcnz62ydzffqgxim99nlvfq519kps9hgfxyzjpl10kapx";
  packages."arm_mpcore"."routing".sha256 = "1ycgpcpnfzr90a49h2jia0wn50xzai2ya464xsaajwnkw9gsakzc";
  packages."arm_mpcore"."telephony".sha256 = "0ajfmbcqpb10r22ja9zwqnvc1914qc7s18zmmgd38s9cm4p9y7kc";
  targets."mxs"."generic".sha256 = "15n5cbyk795scdn5gskjykh0kpsgxnw196vg4hmdprhxz2ifh7pl";
  targets."zynq"."generic".sha256 = "06sbq0jqy6mfn3mr910j649q9nmzyg825kjhjhi1qv24ryh7gni9";
  targets."zynq"."generic".packagesArch = "arm_cortex-a9_neon";
  packages."arm_cortex-a9_neon"."base".sha256 = "1g70lq7q8l0qpwr3slkawj5jkjzgmjpvq7yrm8x7b314l1zqh2d5";
  packages."arm_cortex-a9_neon"."luci".sha256 = "0a2y2nn6mwgh0fwg6rbnnkzdiz5bdhdmk2gszy3sdgi8hsc1nnk4";
  packages."arm_cortex-a9_neon"."packages".sha256 = "0ivfb1pdxqiwn70wyb90qb8962pqcsn3llkcpn745jw5kh45ad7v";
  packages."arm_cortex-a9_neon"."routing".sha256 = "1lkz9khl8sfmkdlagng5ns059d7sgsf92j8k2d20z76l8dv5vxir";
  packages."arm_cortex-a9_neon"."telephony".sha256 = "0hhss2994bsnj4a119w39b3ndkpkh1xjh4024x3yyljzyq7ncc11";
  targets."bcm63xx"."generic".sha256 = "1gcbil7rzikbb32ipwhycq2bs50clj8c7mn4a27z5im35lkrav9w";
  targets."bcm63xx"."generic".packagesArch = "mips_mips32";
  packages."mips_mips32"."base".sha256 = "032ywim2pgxxid15wdnhq3shasgdy8azargvg5x4n8jdcv102lgw";
  packages."mips_mips32"."luci".sha256 = "13m0z3bjz8na1j24ziclldyghx1zvzwcplcx5kkj9n8lw0xk660n";
  packages."mips_mips32"."packages".sha256 = "1aj61jqhyyxh4awr6z7rl18i52bsg31w98nf73nlv9ck47aw6245";
  packages."mips_mips32"."routing".sha256 = "18hd6f35gk1lpmcjfnyh5c2m3y9h082iih3915p3zxzk8yb076zf";
  packages."mips_mips32"."telephony".sha256 = "13gfvica2sp3s6b5bhs0fqgzfpbgc3g3r7hv37irmplaqwnmbzq3";
  targets."bcm63xx"."smp".sha256 = "1gkzc3rdfciav16nl744ryvzv2kllp1y3ib5r3mrqzqcvn6j902j";
  targets."bcm63xx"."smp".packagesArch = "mips_mips32";
  targets."bcm47xx"."generic".sha256 = "0py43pfqnz0kpg250h2w0zjnphbag77prng0alb613sihjkg55av";
  targets."bcm47xx"."generic".packagesArch = "mipsel_mips32";
  packages."mipsel_mips32"."base".sha256 = "1yslbd7spvm9ffgbkiavlg4ki0mj5fr2n9z42xdxixmy5nwhb2yp";
  packages."mipsel_mips32"."luci".sha256 = "1fnx7s9l7s1ffgxy0cskc3780jlfm7p40lg9fwxf9x4xx86l9f12";
  packages."mipsel_mips32"."packages".sha256 = "06hcx83qa6236p08fschvldwhwp85vpn28q9rb4yjig90l86g8x3";
  packages."mipsel_mips32"."routing".sha256 = "11fgf1xawqahsyczv1dij8zbfzy4sgdhjw0b5m97by457l760xfv";
  packages."mipsel_mips32"."telephony".sha256 = "1ykfs28p5hgrpg395486xyjifjx6nl3x4pnv0x5zjm8m9iz4q0s7";
  targets."bcm47xx"."legacy".sha256 = "10nb3x7fyg4hwnq6ma3bs5lwshi5c9pwjjhmdkdpswdhzq5yhl5q";
  targets."bcm47xx"."legacy".packagesArch = "mipsel_mips32";
  targets."bcm47xx"."mips74k".sha256 = "02vbcrqqvay8yzg6ca278i5p3fai4ii27zhpxf15g0idjqlrs3k8";
  targets."bcm47xx"."mips74k".packagesArch = "mipsel_74kc";
  packages."mipsel_74kc"."base".sha256 = "12rdwg1dxl2i3fkg8al28q78z5q8ij97sa4gw6jq3rll2dwvj62i";
  packages."mipsel_74kc"."luci".sha256 = "1vsaajmn9yxy26sdwf39alwdximrl6jlb13hnn4kjfmjsh6bqmn9";
  packages."mipsel_74kc"."packages".sha256 = "1v7fyyd1z49r3q8ywncnil9y8mmfkmqvkipz4hvh2vajgdjaiban";
  packages."mipsel_74kc"."routing".sha256 = "016zz1g32p2iyg9xx2aw83f96jrsd86rbn288fjzf30bsrkksrfn";
  packages."mipsel_74kc"."telephony".sha256 = "0vzn5q3imafrbakkp5c0sw98wlhyjygdm7js97f00df2wpb6fbw6";
  targets."bcm27xx"."bcm2711".sha256 = "1qykfh6qmwx84l5mvns8497j0xbyl2k4d7c32ksmbs3cgfzb8n90";
  targets."bcm27xx"."bcm2711".packagesArch = "aarch64_cortex-a72";
  packages."aarch64_cortex-a72"."base".sha256 = "0gwf0ahg3ixaybp58p0mgryi22gchjay2gc2im2xbh1bi6zxgr4v";
  packages."aarch64_cortex-a72"."luci".sha256 = "1qi60zc8v9kc4w78vh14ay0m08ndjqafdlnqsfxh7ya6gm088kid";
  packages."aarch64_cortex-a72"."packages".sha256 = "1qb5d7xvx1aixma13xny3kra6igsk1lbw1vfr6acwm3177mr9cp8";
  packages."aarch64_cortex-a72"."routing".sha256 = "0sqxqjmb0yynayyjcs5gamfnmlccy16bdq4qzmphmk2a83m25zxg";
  packages."aarch64_cortex-a72"."telephony".sha256 = "01jlcnkqv9lq9vxcx8hdlncaacr4g2yj91hz1d92qa4rakj0d5lf";
  targets."bcm27xx"."bcm2708".sha256 = "14b70zwp3c8cmhwgpa77gcnnjx6sschf10n34kln9ssvc313nq95";
  targets."bcm27xx"."bcm2708".packagesArch = "arm_arm1176jzf-s_vfp";
  packages."arm_arm1176jzf-s_vfp"."base".sha256 = "0dihqlirwnk5zx8kj2h7rm0gagw3rp6zg387rv0v7rm7gv684mwl";
  packages."arm_arm1176jzf-s_vfp"."luci".sha256 = "0x0b0h5sy4bf0kn3mkwni56g9w76qc6jh891b8900jkpkah0sdd6";
  packages."arm_arm1176jzf-s_vfp"."packages".sha256 = "1yyx0vr489l85qj5n7pb1xgvrjjy1plwap96pfgmwkkl2ixnr82s";
  packages."arm_arm1176jzf-s_vfp"."routing".sha256 = "00g9azw8q5d9979mbd6rqc1l4r2xgj94fnjznymq5fd9fcvhmnmr";
  packages."arm_arm1176jzf-s_vfp"."telephony".sha256 = "1s9z55a1yll3cvgkc1887n3kkwhv3y845rb13c8nsfm17fwqnz97";
  targets."bcm27xx"."bcm2709".sha256 = "1317a1dl8qnbxaniqkx5pgm3ybkbcq35knqzzgih255hbbwy98zx";
  targets."bcm27xx"."bcm2709".packagesArch = "arm_cortex-a7_neon-vfpv4";
  packages."arm_cortex-a7_neon-vfpv4"."base".sha256 = "1vgd1qdl10zk40gi4lpv22l4z50j6b5lmmybim24v9aqq9a7cynk";
  packages."arm_cortex-a7_neon-vfpv4"."luci".sha256 = "0jywrs21byg5wl0s2dg1h59pr46mn8mrlrvlj421s4kvkki9b9nc";
  packages."arm_cortex-a7_neon-vfpv4"."packages".sha256 = "13naia46jahv6xl23rf52z09as1x52dzc54y15q3s7iwcz3pzwi5";
  packages."arm_cortex-a7_neon-vfpv4"."routing".sha256 = "1mdx3ydpl1s4dxr6aab5fslq83r9givm33ccq3qz1p0zfcg8zw46";
  packages."arm_cortex-a7_neon-vfpv4"."telephony".sha256 = "0dlh6n0plhypmi7nd6jqhqy22w0g7xlwx151i2g9r65qp7wcs1qi";
  targets."bcm27xx"."bcm2710".sha256 = "1s716py970b8j64szap2ha08xdr55lrbhdc8ld0x4xp9rcs2pb0s";
  targets."bcm27xx"."bcm2710".packagesArch = "aarch64_cortex-a53";
  packages."aarch64_cortex-a53"."base".sha256 = "0ldpvj8fr5bljkd0z2bwkljxi1i1fickpzdkb51a5pp3qfjsyi83";
  packages."aarch64_cortex-a53"."luci".sha256 = "1hifk691zhs7xsbmszmcxsy14la2z90j3i8sbq6dh3j2dc5jq5lk";
  packages."aarch64_cortex-a53"."packages".sha256 = "01a881mh41ab1xk4riw1gya2dcc4jim84y182qbr7wrz208lrjj1";
  packages."aarch64_cortex-a53"."routing".sha256 = "1yn0ldarmqpk2sisapdr70g2i4dn2hi9bgffbny4hqh0fjhlh5lx";
  packages."aarch64_cortex-a53"."telephony".sha256 = "0inzmn0v4fnzzz7jr5ng0hkddmz6jk6kyvgdx3mynsfx8wnkdys0";
  targets."mvebu"."cortexa53".sha256 = "1hpj6w5d4qpslbibck5yj5ycwiyifbpyci29scxclf4plciy6ska";
  targets."mvebu"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."mvebu"."cortexa72".sha256 = "1k6g2dwi7zw805n0qxap6gy3a9r5hjiln7q7p6c6fwxwyim9yqgx";
  targets."mvebu"."cortexa72".packagesArch = "aarch64_cortex-a72";
  targets."mvebu"."cortexa9".sha256 = "1ahgqlydlb7bkh9fsl5179wpx4pmwy7r1wikdnvhmc7hfqjmnwvl";
  targets."mvebu"."cortexa9".packagesArch = "arm_cortex-a9_vfpv3-d16";
  packages."arm_cortex-a9_vfpv3-d16"."base".sha256 = "19z3gp3mnc3v5xgjnfp9iblxkq1khmrkmkawxswh4w63j2912jxa";
  packages."arm_cortex-a9_vfpv3-d16"."luci".sha256 = "1bh31z5allzkcx79v9vpwgihjzjy8j0k9lj2mwlzfq9586zahi6b";
  packages."arm_cortex-a9_vfpv3-d16"."packages".sha256 = "142yggw4xkyam0sz7ziap2sj313wq9cs3173kg6i7qcfczf1h29j";
  packages."arm_cortex-a9_vfpv3-d16"."routing".sha256 = "12sjdl38rw0g4ygk77ac0ww4fmrdpxp6n64gky5rpzb9mkla9wzb";
  packages."arm_cortex-a9_vfpv3-d16"."telephony".sha256 = "1gciim8if40r6p601v178khw6k5750jn8hfw0sfs558ja8gr9fhs";
  targets."at91"."sam9x".sha256 = "10zyhysivh696smh3qq9d9y1qwvhg31w5ycrxgf9rb5l4vxhc0mv";
  targets."at91"."sam9x".packagesArch = "arm_arm926ej-s";
  packages."arm_arm926ej-s"."base".sha256 = "0fpxsdbg1b00hjx3nxzngv0qmrimrsx5fxv2b51cpi8bkq9q4j8y";
  packages."arm_arm926ej-s"."luci".sha256 = "1aj9lb9ymmqq4dvq27qrwcaz63x7dibrawbsypyvqgbgmqih8hlq";
  packages."arm_arm926ej-s"."packages".sha256 = "05s5m6sq593kmnajwg9v8jfcmzdva8fxn82yxn1ys89686ccsb52";
  packages."arm_arm926ej-s"."routing".sha256 = "1mngip8w5rxf9rp11376b4chbfz2xmk78d4l36rjp18jqybgs67b";
  packages."arm_arm926ej-s"."telephony".sha256 = "1ljz8nl9fifb21ds9g4280c3d246dxc1kw2j06vwp60dsvm1c4px";
  targets."at91"."sama7".sha256 = "12bvgqan2ddq3c6ym7z93dkvj0yn86z215amw9myr42i3y1vkz26";
  targets."at91"."sama7".packagesArch = "arm_cortex-a7_vfpv4";
  packages."arm_cortex-a7_vfpv4"."base".sha256 = "0v1mg8pcrafpw9q1lw0gp8b8rq5lvk8dcsbpwafa8n8ph9dxcsww";
  packages."arm_cortex-a7_vfpv4"."luci".sha256 = "0vbwfaw488hi5iq093ff3pzaf9ng8sn93dlbpx0avj26yarfq29p";
  packages."arm_cortex-a7_vfpv4"."packages".sha256 = "0sdc1h26xxbq2zg1flqj5hylsy4ksqcwddinpm920zyx8p0bpqzn";
  packages."arm_cortex-a7_vfpv4"."routing".sha256 = "0273fvf9i9qnn85nj5q2rganscmrkmvc07qf3n3gpj1mhidv9s6y";
  packages."arm_cortex-a7_vfpv4"."telephony".sha256 = "0h0f2hd1ln3lmclrz0dghkv5iybp5gpsxlf6ppn30bxfmx7aqjdd";
  targets."at91"."sama5".sha256 = "1y710dzh2ysr88d6793xgdi4q2662ws98y0hg6hzxfnkksjxqhbf";
  targets."at91"."sama5".packagesArch = "arm_cortex-a5_vfpv4";
  packages."arm_cortex-a5_vfpv4"."base".sha256 = "0nl9dra07n97y78k37a5czbrf8z3lm0k298dmmqyzxg0ydgysix8";
  packages."arm_cortex-a5_vfpv4"."luci".sha256 = "1439wdzdf2xnh5q2zqgqwcwcg60dxchn8y2kndjvqrxcv0nv6z4l";
  packages."arm_cortex-a5_vfpv4"."packages".sha256 = "1nys2ji60my76a5vknrjw6cwz5fprbgpjaxallj5v5ivqgb2xg6j";
  packages."arm_cortex-a5_vfpv4"."routing".sha256 = "1f1yrcsgxzr5f9ddf0vijy66h4fqzjffiqhx8p930p4kybilgvg5";
  packages."arm_cortex-a5_vfpv4"."telephony".sha256 = "1a0mymddymbxdkf0570g8ij6y2h9mqb9vgcr4zckpy7saxfcd94g";
  targets."gemini"."generic".sha256 = "0g1zs4ici7abjy3rn3g1kf6s7bwlvwl98fy32hy4iz7a9vj13l3k";
  targets."gemini"."generic".packagesArch = "arm_fa526";
  packages."arm_fa526"."base".sha256 = "0wgdzaqk330zca29gkzb9sc0yvag21qcxymamx82sa1msqm22z1w";
  packages."arm_fa526"."luci".sha256 = "08fbkq4gyzpjkl5qlvafw38dakivaw892c3pwyisbyqrhryk0qjz";
  packages."arm_fa526"."packages".sha256 = "0in9hjmffjrxk4x6qzxkasr6p15gi456520dlm49f4f0knd91m8f";
  packages."arm_fa526"."routing".sha256 = "1scncr9yb21m7vwsibnrikzipij7lyz06i1bk8m611saqfln905y";
  packages."arm_fa526"."telephony".sha256 = "0757pxss81kqp1fg944nx0xl9kswv1plzp6hg306vxqhyys1gxc4";
  targets."octeontx"."generic".sha256 = "1hzn23gmhp3q273qpcm5359b5clmfmq65qg961bzhib9ls7nxxhj";
  targets."ipq40xx"."generic".sha256 = "0q40p5h2l216azraxdjbfaqbd9fpkcqrwcmlh848lfrjbk4k6hvv";
  targets."ipq40xx"."generic".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."ipq40xx"."mikrotik".sha256 = "0v96rpz6qvwb3d69dlp5vh910if615hfrxrcihxgjhlfdl9ycp59";
  targets."ipq40xx"."mikrotik".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7623".sha256 = "0pczj4krrxwi4ss6ph9kcxs9xgd3gb2br5v1p43ml3qh8iipvh7v";
  targets."mediatek"."mt7623".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7629".sha256 = "02j057hpnxxybv55119dki9a4mm6sd0xk8p7xwbagmnzyym5hpm7";
  targets."mediatek"."mt7629".packagesArch = "arm_cortex-a7";
  packages."arm_cortex-a7"."base".sha256 = "1662k2l032qxrzjx0a3w56747hajadls2gpqy41l2qvlx59jsii3";
  packages."arm_cortex-a7"."luci".sha256 = "0ig1gzh56zihyf0k213rzrf7cprycxmg6cxcwyxiqlhrqf1gyxr3";
  packages."arm_cortex-a7"."packages".sha256 = "123gh5wkp6ihc31ys4ldabbc0lpbd27kp9r19sls510r81zgh0ld";
  packages."arm_cortex-a7"."routing".sha256 = "1b21fq4yai9w2g8fnwg5hcs0z33z16lw2zp6m21yry6hz6z5j69s";
  packages."arm_cortex-a7"."telephony".sha256 = "1pj3f6p4d4vqgx2qrllqc4609smcp4sa7q08qyhbld0zvf8hibjv";
  targets."mediatek"."mt7622".sha256 = "1wns4dgmx4vxk3n76dp6m7n7hmvcyi6kw9qp9nmhfgrfcid425mb";
  targets."mediatek"."mt7622".packagesArch = "aarch64_cortex-a53";
  targets."malta"."be".sha256 = "1l03sjlvymjigggyslx28bzy3k8rbq8pm8p2r3akixvj4qk5w8vr";
  targets."rockchip"."armv8".sha256 = "1vg8g4jwd49fwi0dic1h2myc3gny7fn2v6rc53scyclzfcvjdcg6";
  targets."rockchip"."armv8".packagesArch = "aarch64_generic";
  packages."aarch64_generic"."base".sha256 = "1l3k8gbh919vhbxxfyw0ncvz5d63g2h3sp646fbwbv21qbyd98li";
  packages."aarch64_generic"."luci".sha256 = "15ac6lbhzcsffd7iamvbddb6mgmc4drnp71niw64r2vw6ang5cxv";
  packages."aarch64_generic"."packages".sha256 = "1b2wj18y6dj0ksgbpm6xf646zqlb2hqz0zmqlpm6sh8vxfl4x5i8";
  packages."aarch64_generic"."routing".sha256 = "0dkxplnjrv33nhj62zv67hkxkizbjf6dl0v9x7lhdq3slbj3hky6";
  packages."aarch64_generic"."telephony".sha256 = "1mn33wvk0jgxd0fzw7qq3zph5hgin70q0n4cdpvlwhs1d673z4z6";
  targets."ipq806x"."generic".sha256 = "1zdaliybbff5p34y3cx3qkkmigad6ssqspmczc6h3z6xnv7yjs22";
  targets."ipq806x"."generic".packagesArch = "arm_cortex-a15_neon-vfpv4";
  packages."arm_cortex-a15_neon-vfpv4"."base".sha256 = "1jq8b863ih216cdihq61qvazdisx68psphszz0dc8z95cg3la6n2";
  packages."arm_cortex-a15_neon-vfpv4"."luci".sha256 = "0fv87a7xmv55ml78d8mx4mjbld4c0b6irkphjprrlrnrfbcxsryf";
  packages."arm_cortex-a15_neon-vfpv4"."packages".sha256 = "08kniy610ns22pdxj4kgjbxd930n7j8bc2q05haa9jp2lv4f42ax";
  packages."arm_cortex-a15_neon-vfpv4"."routing".sha256 = "0xqq4iq29aziw8vpd12kq5z1zrqbn5bkvgk48labd4fwgkvs0nxq";
  packages."arm_cortex-a15_neon-vfpv4"."telephony".sha256 = "0g0kq7zlxpip7bp6kbjny1y0bbfl52zndi9d9bp7y17a788r3ajc";
  targets."sunxi"."cortexa8".sha256 = "08bhlgdi6imsqxlfpcpmbnmd5ak354x4p91yxxha46kqn5lpzwz2";
  targets."sunxi"."cortexa8".packagesArch = "arm_cortex-a8_vfpv3";
  packages."arm_cortex-a8_vfpv3"."base".sha256 = "0yki6kvml9p77lsa551x9wf78hbvlj02nvrgc4fcy2g0xn32gzkh";
  packages."arm_cortex-a8_vfpv3"."luci".sha256 = "0a4bprd5lf4by3gv58kx0w93kcz50r503qjm19jls03lm5fkl26r";
  packages."arm_cortex-a8_vfpv3"."packages".sha256 = "0f2plip6zzar2l09sl9qgck1gxi0irigaxki58y61mj2w95kqsi2";
  packages."arm_cortex-a8_vfpv3"."routing".sha256 = "0fhqfrcl9dplbsmlilm72qd6a5xdw7cbw7ds2zmqd8phdcp5y0qh";
  packages."arm_cortex-a8_vfpv3"."telephony".sha256 = "19fg3qab0jigyrnf7b4q2r4798kpl5cs89gij0a8b9iqhbqm23hy";
  targets."sunxi"."cortexa53".sha256 = "1dalqj58s21y8xy7c1mpj7lsc6kg5v3x8jxr6n9ds7a44fv4rfrr";
  targets."sunxi"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."sunxi"."cortexa7".sha256 = "15fzfk6qfqxl25y4i97s3kb4akg4izjkv3giq6fd23vibwlp44y8";
  targets."sunxi"."cortexa7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mpc85xx"."p1010".sha256 = "1vjv4gjmzc8hfj2xnvf42l9j4y8r6l8y51kcfb91wh5m4q1m0k6g";
  targets."mpc85xx"."p1010".packagesArch = "powerpc_8540";
  packages."powerpc_8540"."base".sha256 = "09a85aivk0kz0516ldwkp81gnnq1270sgq0ra21nl8a8jiqmnlh5";
  packages."powerpc_8540"."luci".sha256 = "0k3pdvnz1yxyivdcwjwgbsmc5sc8j0j51zmz5bm7lhcih8m1lh4j";
  packages."powerpc_8540"."packages".sha256 = "0j38gz2xckrcikc6xq25x6w2r8k2cxqjjwn2zbwbqwj09px1jcyl";
  packages."powerpc_8540"."routing".sha256 = "1y3y2c4ph51bv8sqms8ddpxd3j66i7jxyc1bcxj56yj9scls7nkh";
  packages."powerpc_8540"."telephony".sha256 = "1l5wryi29c01nlzz5g8hy34dm05b14a715hzxwv85gs4qcx4qqiy";
  targets."mpc85xx"."p2020".sha256 = "16863gs658480jb27qjv3n6lrwszlycli9b3xlz6w6g0y5ga9yk5";
  targets."mpc85xx"."p2020".packagesArch = "powerpc_8540";
  targets."mpc85xx"."p1020".sha256 = "0cgay5wb848dkvi9jrppsrvrw6c5dpdh24f9kwc7lfr02456rlfv";
  targets."mpc85xx"."p1020".packagesArch = "powerpc_8540";
  targets."imx"."cortexa7".sha256 = "03hngks0rqh89rj7qry69s3wvi4cawii3plwmnnim9zwn9rdxiga";
  targets."imx"."cortexa9".sha256 = "1jrg7nz25cnvqyvy2cbyw3r07146cxi49cm69v4pi18vdl1mdxxd";
  targets."imx"."cortexa9".packagesArch = "arm_cortex-a9_neon";
  targets."x86"."generic".sha256 = "0jsqn2d038qp51wmq6kc6lpfyy38g864nhs7fjrcc47a0zaahjny";
  targets."x86"."generic".packagesArch = "i386_pentium4";
  packages."i386_pentium4"."base".sha256 = "0q3pvk432p572wq0rfm6gndd7vzhhp255mlxw8h9h671q6v1fczn";
  packages."i386_pentium4"."luci".sha256 = "1q9ypr2w4zxmrywmvhbcp5yn8i4cvn6whmnfniqd9abnkl8vvajq";
  packages."i386_pentium4"."packages".sha256 = "1s5f01hwxrgdx08bpn4pfpd7jy2s7x6xpgxvy7q1i5j4fq4dgv7g";
  packages."i386_pentium4"."routing".sha256 = "1f48v25q48ck1rjk0pc7029y585kglg43fvvp2688vazgy3aslkx";
  packages."i386_pentium4"."telephony".sha256 = "0vkvqkgli1f0wby7jq85ppbia1z95wj2fxd5c0w0z1njvryv0z7x";
  targets."x86"."legacy".sha256 = "0l0cwaxda838l4m3sw28mi4xa4n3q5i265sky5afw9w1qy4jc475";
  targets."x86"."legacy".packagesArch = "i386_pentium-mmx";
  packages."i386_pentium-mmx"."base".sha256 = "1x6rfvcfdrjywcnjmvq6absxib0a72ml6miqy5cdmjiaananjq93";
  packages."i386_pentium-mmx"."luci".sha256 = "0bhg096md9mxk7gidrrdj4zc3ainnp0xcbgxyindn9qvcbvqgqza";
  packages."i386_pentium-mmx"."packages".sha256 = "1dy8a5jblvahf6japkmsn5hhla0fg5gl4ni4j14gwfsi7w98zp3r";
  packages."i386_pentium-mmx"."routing".sha256 = "1n0c702mxy0gbrrilnnvka8pv75wv6zfii9vsirqz9bm0hrpyv0z";
  packages."i386_pentium-mmx"."telephony".sha256 = "05j5d3zp0apwyd5cbyra28qmz6qfng1s8i5n18pigp7a75pjv0wr";
  targets."x86"."geode".sha256 = "0cf12l74j7p1g111zvmm8vci96cg67w98chq8bnmjxxlq721yayx";
  targets."x86"."geode".packagesArch = "i386_pentium-mmx";
  targets."x86"."64".sha256 = "14mavvmnsfr98avlg521xryzp1ll2yxirsagj633mhr3ky4dmhw2";
  targets."x86"."64".packagesArch = "x86_64";
  packages."x86_64"."base".sha256 = "16cdhqa082qyh8cm3i30cvwiwnwnrrrx98k0xwmmrd4i41xq4kgd";
  packages."x86_64"."luci".sha256 = "1jwd0fb1v9p2x7ngfl4zfsw2hwgbwxbhcwxzs7855i4759dfw6sx";
  packages."x86_64"."packages".sha256 = "09k40jcp851yr3wh3svs7n7kn86f7sns3ilzqph76f971dshpsid";
  packages."x86_64"."routing".sha256 = "0dxs0r3nz668xna7mll2mfji7lhkz8mb2q6wia1i1p9xckhry5sr";
  packages."x86_64"."telephony".sha256 = "1zmr28vc7yplnzfsbiwg8fyvd6r4hv7xkrihl0gi6pi5b8zkj4wd";
  targets."realtek"."rtl838x".sha256 = "1429ysdmryd0ah07kw6pz6q9b1m0r535dcvzaria9c1vmlf1ngh9";
  targets."realtek"."rtl838x".packagesArch = "mips_4kec";
  packages."mips_4kec"."base".sha256 = "15l0n3pcxs0ppvwx8nnmvv61g5vzf4xip3jw7wcx4ig8wpddslrz";
  packages."mips_4kec"."luci".sha256 = "1s7z5rxz5imwbzpafaczc3gk3rdx669rb984bk02kzwkba5i1kxn";
  packages."mips_4kec"."packages".sha256 = "1znc07xavnm0hsmdmv8dp5db9n9ri05smnrpvdibhlv7npw26g81";
  packages."mips_4kec"."routing".sha256 = "0dqhj6lxx70kb7zmvzl7awi8im36lcslqvrqz3g3jzj7bs56w669";
  packages."mips_4kec"."telephony".sha256 = "1na59jpqb85p7rsj65nfsrr4cja4nidv140rc1p1qbbam7h0x3z6";
  targets."realtek"."rtl930x".sha256 = "1r7c9ndr15f2n3fjky1a19bnh4nszp21a0524qnaayaczvlbxing";
  targets."realtek"."rtl930x".packagesArch = "mips_24kc";
  packages."mips_24kc"."base".sha256 = "0q0d2l930hsc6ippg5rmp7rrxn5fbkk7pkxmcagdy8b84skczvqq";
  packages."mips_24kc"."luci".sha256 = "0qk30rwdph88wp8q5ywnw0vb0g2ky2kf0qvs2z906lp0p266ck0r";
  packages."mips_24kc"."packages".sha256 = "0wjqnw3bbcw4r7v6qr7x9fgqhd1w32z2mslkrqmf1d63m46m1v29";
  packages."mips_24kc"."routing".sha256 = "154g5ai269b8qd5dl2lk8hbhxhdqfq4j29k84n2zp9a5j6s49dx8";
  packages."mips_24kc"."telephony".sha256 = "0q7lhsv0slwsdbgs1jawl5iwj7lygi04pmid8hcygrgcr6jg6gys";
  targets."realtek"."rtl931x".sha256 = "1gh4zxmj63lh29pg6aff4x4h2qli12l16ndd19sp8wlww3idhm7j";
  targets."realtek"."rtl839x".sha256 = "1vyidlr34h5p4ap389qb87g65zwxi8p6jgxy5yzaaj35hj4whsil";
  targets."realtek"."rtl839x".packagesArch = "mips_24kc";
  targets."armvirt"."32".sha256 = "1m7zgyw9jkw4b21b7prw0xg22gdaxr0cmx7drjdb184l1y54rs97";
  targets."armvirt"."64".sha256 = "11ciscm5ddh1mdn2c03sb5yf79yjlcmimqaaw9mjli9y0j2yzsr2";
  targets."kirkwood"."generic".sha256 = "02b92pv8fkmhd9flgynp7frjhpmj3bn4xspqb3yl8ljc4nzfviky";
  targets."kirkwood"."generic".packagesArch = "arm_xscale";
  packages."arm_xscale"."base".sha256 = "02aln3z9bpr3jj767rap8s3295lr2dsg0jwb0mwfz0clg8bp5828";
  packages."arm_xscale"."luci".sha256 = "1c0wpj33dwiy98lqc0jr4gnvrg2x0cznnjaadmmx8wzdal8q19bs";
  packages."arm_xscale"."packages".sha256 = "0n2k547iqzq6adp8rwzp30mapa3lra6fm529sks3k6a9ck07z0qh";
  packages."arm_xscale"."routing".sha256 = "12244linjmnmkki0vwj6ja5ljr7lfka6iggnz1yalaxg0x09q7j2";
  packages."arm_xscale"."telephony".sha256 = "14dmxqh4w9lj35bvhrrjxs4p7gjkbqs7jvq2q8ay7pgh53qp4mz6";
  targets."ath79"."generic".sha256 = "1fp3n4gdjc8ar7lb8dskbhikgw35qn3cqq87dvvc7d7q0z8fk7wy";
  targets."ath79"."generic".packagesArch = "mips_24kc";
  targets."ath79"."mikrotik".sha256 = "185ah7v2shh9if7p8j1a46vrndgrrbkf4x0kxlk5bc81dv6hcg60";
  targets."ath79"."mikrotik".packagesArch = "mips_24kc";
  targets."ath79"."nand".sha256 = "1p6516l5h45kk3q7a159wg2l36mpf5p76qah4kj9z41b64q1qfii";
  targets."ath79"."nand".packagesArch = "mips_24kc";
  targets."ath79"."tiny".sha256 = "0b2581w0005dnn7fpj4shi2ln89kdwj2a2ay2jdy40zsw55hsb2p";
  targets."ath79"."tiny".packagesArch = "mips_24kc";
  targets."archs38"."generic".sha256 = "087kln2q6hs5jm8s1jvfbliav2pn387161683k0c8ycdh9x0yj0p";
  targets."archs38"."generic".packagesArch = "arc_archs";
  packages."arc_archs"."base".sha256 = "1z4dshr5b8vf66n4lll9xslzjzrz271ss7j2n1yrcwbqpwq0x6zf";
  packages."arc_archs"."luci".sha256 = "0ycpyq0mw1ivq25j40w7k94fx34lbq5psyzafs5v72xbhc43vafg";
  packages."arc_archs"."packages".sha256 = "0h0krryhpjb4hlrp00jqsz9j4p5hz3zr2jrjpv2ff5msdzksmlps";
  packages."arc_archs"."routing".sha256 = "001a987vj2fj7qbrpr251zvzg6pnkwjl2apqpyq0a13lds2aj8id";
  packages."arc_archs"."telephony".sha256 = "15rmhbyp4fk73din5d7jvzx8d9v09dzinb7bm8frfmhkjk44cn9i";
  targets."ath25"."generic".sha256 = "0md42dvx2qxqg4h62h3dabfqr2jxgkxsxifc9y98yjmchq8ar6df";
  targets."ath25"."generic".packagesArch = "mips_mips32";
  targets."apm821xx"."nand".sha256 = "1xlrcnddb0jqpv831j1x3n8bf41hm2wkcj9hywx0lgzbcyqbd0df";
  targets."apm821xx"."nand".packagesArch = "powerpc_464fp";
  packages."powerpc_464fp"."base".sha256 = "0rq3bpc8xzyj2p36alir40d51ranib3s8h83x7dxlr9xj9aw141f";
  packages."powerpc_464fp"."luci".sha256 = "0p5dxpskzj61j9r149plj24y209m2w1g7mjd8mafx8yl1lw2hvjp";
  packages."powerpc_464fp"."packages".sha256 = "0di9wbp16lla2dpmxz17d01xjkri7h9jb13534sykkfq4sas02lb";
  packages."powerpc_464fp"."routing".sha256 = "0d32wkl870nilmkgf5kw3m3589x6dxpyfdk31iv0gvldpsfjv9a6";
  packages."powerpc_464fp"."telephony".sha256 = "1x9b6miiy0343y988x7b8197zbj4jrnj24vs072kwalbd0lw73mi";
  targets."apm821xx"."sata".sha256 = "1ssxq2x4jzl6c4z24xdy7pvlyin8n63swh7hgpx4w85wcm1n9adk";
  targets."apm821xx"."sata".packagesArch = "powerpc_464fp";
  targets."bcm53xx"."generic".sha256 = "0nxzixzwjw5cp0asi80b666dgcrkrlkgal1v5z4gyjqcicrnkyhq";
  targets."bcm53xx"."generic".packagesArch = "arm_cortex-a9";
  packages."arm_cortex-a9"."base".sha256 = "193x5wnlyhkjapa4v4phw53b92kyhvc8q7b058azk3680c6zrqfx";
  packages."arm_cortex-a9"."luci".sha256 = "079bilx19whill2j8liq8bbrszn0k18n42gapqjz4f88p94rjjyb";
  packages."arm_cortex-a9"."packages".sha256 = "0rjhpndcg2jdsaz06r8m5kvvdl9iii7qnpnqx1y9868xr1j1vivg";
  packages."arm_cortex-a9"."routing".sha256 = "1wzyg2ryxbk2wvazxy1nb6bk7ggg2d8rnca37wgs52512958gyi1";
  packages."arm_cortex-a9"."telephony".sha256 = "0cxkk27slrxqyg3f8m197fb3kqjy0frcqxzlpnzamm9bj917xb6r";
  targets."ramips"."mt76x8".sha256 = "0jldlhqg7yxiii3hzp3mjh34ymwy0vi3xrxk0hrm94m8vqnjs3ij";
  targets."ramips"."mt76x8".packagesArch = "mipsel_24kc";
  packages."mipsel_24kc"."base".sha256 = "02xf38p23al24bnyir6sdw0ah1rhpvgadgnr4f7wl3p9983l7v7d";
  packages."mipsel_24kc"."luci".sha256 = "1blhhfk3r9n6cdslz03k9jxzpzwf48gvcrp7p639akjmrf6jxhq6";
  packages."mipsel_24kc"."packages".sha256 = "10h7k42881b3dv803chykdy5lw5hw98l2yf2l6cf6khk935z6vi9";
  packages."mipsel_24kc"."routing".sha256 = "17w5m8rkdzib7crh9g4fl0yaqx2x02j3qzk5yw0sv4h2xm4rkwx5";
  packages."mipsel_24kc"."telephony".sha256 = "0gq0vpcb2rahdxz1nm32r7bdkxx7bp9h52xffri0isj6i59gw6a8";
  targets."ramips"."mt7620".sha256 = "09xadynhfjzrrdhybw73i90djr25v9m9cx2j6mybwsgfryp7qik2";
  targets."ramips"."mt7620".packagesArch = "mipsel_24kc";
  targets."ramips"."rt3883".sha256 = "1ax3ialwag52n24awdf8cb4i34nv662hik4q5fxij275l7gmhk36";
  targets."ramips"."rt3883".packagesArch = "mipsel_74kc";
  targets."ramips"."rt305x".sha256 = "14wxyf4rkjsdjani84kcc2nk50ypqyrwsd1hiswal5vd44rp1nhp";
  targets."ramips"."rt305x".packagesArch = "mipsel_24kc";
  targets."ramips"."mt7621".sha256 = "131cx4hgrgscssdd82ksid67nqpfzfxfsv9g913n4inmj5mg1y6s";
  targets."ramips"."mt7621".packagesArch = "mipsel_24kc";
  targets."ramips"."rt288x".sha256 = "1qma5a1x87z085sn4dixzry7i8mpzgzg65m51vp893ih26lppcsv";
  targets."ramips"."rt288x".packagesArch = "mipsel_24kc";
  targets."lantiq"."xrx200".sha256 = "1zywm58skwsb60zsfvrfisrxjd8666zabsaamjci170ira60015h";
  targets."lantiq"."xrx200".packagesArch = "mips_24kc";
  targets."lantiq"."ase".sha256 = "1fw20gmb6npjn9abknfn8ikpxm16qviavq4k354aa1ylplmkvwyr";
  targets."lantiq"."xway".sha256 = "0556234pj5wvynaqphfwvf9xyyy7yc4sqncdvi1kvmppg90qx52b";
  targets."lantiq"."xway".packagesArch = "mips_24kc";
  targets."lantiq"."xway_legacy".sha256 = "1yj0q6702nyb01ixwa40fgyd70ap5irrkn6zyahf8xz6f5rdcfm0";
  targets."octeon"."generic".sha256 = "09z7lvr0h37q9ibqf1w38m9w9djr01fmsny79r9s68knrkccmghq";
  targets."octeon"."generic".packagesArch = "mips64_octeonplus";
  packages."mips64_octeonplus"."base".sha256 = "0pbs3xnxa51qdjpdj6pkbj6hihr7haylsl6z2dm8nf1f0mqskydr";
  packages."mips64_octeonplus"."luci".sha256 = "0sdyiliid28xz2945smsfmwwga4j8i9znyfipph7xhavfc053lfh";
  packages."mips64_octeonplus"."packages".sha256 = "0h4g2i9i8dqkn7w4inaiflzl2krv1rl10gsxsj5ja8cb53nhanj1";
  packages."mips64_octeonplus"."routing".sha256 = "0qag33ddanny3g7p8x9r4qsy39453ghh9qccf89h5d8ds1xak6jk";
  packages."mips64_octeonplus"."telephony".sha256 = "1nzrmlcxcw1g1vhbjn3c6jpckpb8cpbr73ql3iscid7l2y6r41kv";
  targets."pistachio"."generic".sha256 = "12gsk9j72pvvw7j9rn4iwpnaada1z6w8cd96qxvgynhnpfci5fc5";
  targets."pistachio"."generic".packagesArch = "mipsel_24kc_24kf";
  packages."mipsel_24kc_24kf"."base".sha256 = "1hglcjnpy7ahxgcirk4fdd12i7jw0faic9n81jq5817sw192grj1";
  packages."mipsel_24kc_24kf"."luci".sha256 = "1b54v0xgixci8gvivs982r7nyp7ghsr9f9r1qh5xazx0f11ayzp9";
  packages."mipsel_24kc_24kf"."packages".sha256 = "0j566243havcqydszvma8c27r0y95r7h7smpadln0j4r43i5wn19";
  packages."mipsel_24kc_24kf"."routing".sha256 = "1p7yhl9lfyi79n61q8d7h3qa2fkhhd0nzq5svhbxapjnlh831nmi";
  packages."mipsel_24kc_24kf"."telephony".sha256 = "1j69zslscg9c1bc1j76hchchgzwi2cjwa36jzvnw5a2n43phxgam";
  targets."layerscape"."armv8_64b".sha256 = "0566vsbx38r033dp9ayhwx1fmsqfqjhjr26hv1wvn6s3dlw1l063";
  targets."layerscape"."armv8_64b".packagesArch = "aarch64_generic";
  targets."layerscape"."armv7".sha256 = "1lslg9i1hf9l17y1c4gy21sdz7hwkdcg5dqy64i5843q7778gnhg";
  targets."layerscape"."armv7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."omap"."generic".sha256 = "1d7na594j9dc73bjkj7d6h561n6pz8h1b8d093gaaqkam463g19n";
  targets."omap"."generic".packagesArch = "arm_cortex-a8_vfpv3";
  targets."tegra"."generic".sha256 = "0mdpa94pa4zxi3dpjvppwd53lchwnlx9gqwzcyb27nnmbcdyf89j";
  targets."tegra"."generic".packagesArch = "arm_cortex-a9_vfpv3-d16";
  targets."bcm4908"."generic".sha256 = "061357k7shpqs343ic27pv5qk2d6q39369a4cpj0fz01pbs0iga0";
  targets."bcm4908"."generic".packagesArch = "aarch64_cortex-a53";
}
