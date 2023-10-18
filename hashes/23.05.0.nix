{
  targets."oxnas"."ox820".sha256 = "0gizsd9f38zwsxp446ha8fk3vps8ibf6lqbwf6n6i40xlgw04r24";
  targets."oxnas"."ox820".packagesArch = "arm_mpcore";
  packages."arm_mpcore"."base".sha256 = "0vcly6f4ksd3yj6wc4xc2i4sapyx8siv96wv5fm1gm9h2dlx6s03";
  packages."arm_mpcore"."luci".sha256 = "0iin66ykfy0ck2r9vc5jdl6b5y3i7b6p05afra4nj5975xy1apb8";
  packages."arm_mpcore"."packages".sha256 = "1d91mk3610i22r6ylpggylxfckn5sxqk81l5j0sms801fpp24hyj";
  packages."arm_mpcore"."routing".sha256 = "1cjmm4q195xrl1kw2mkk3sp3jqdvpiizf9m3kl7s5navc7axs86i";
  packages."arm_mpcore"."telephony".sha256 = "0wqa8i2zlb3ivabjps7lqpxpjk3lflxxdq0px1ggs9mr8jffwh47";
  targets."ipq807x"."generic".sha256 = "0gqwxixhjw55cchqq5k378gndg68f7k9spqrn2hh3asmj4xa89df";
  targets."ipq807x"."generic".packagesArch = "aarch64_cortex-a53";
  packages."aarch64_cortex-a53"."base".sha256 = "1wz8icvykz1am70as6cgq8k10xkl19k8rlfryg6nkvvrd8wn4v9d";
  packages."aarch64_cortex-a53"."luci".sha256 = "0jbbvib9zskvkl33h47jmhmlz1gwv6r3yspvvdrzkm7l3zgb76n9";
  packages."aarch64_cortex-a53"."packages".sha256 = "0m57cfyx09kl9wfzz3gkxm7x0zgbvn8y6i23c5sbfdjy01id738b";
  packages."aarch64_cortex-a53"."routing".sha256 = "01hwychpa6s3kc2jvgkap5hxfdp7n8d8y6c8kai5mbfkx2vlyh3k";
  packages."aarch64_cortex-a53"."telephony".sha256 = "07yxjnbbprfyy0nx58fx99xjdr5qzxklvf2wlbah2g97ql0ll555";
  targets."mxs"."generic".sha256 = "10m2msh70wacxdlbxfk9w4p5rpksjc1srbrbcipxf4y0gy9qacfj";
  targets."mxs"."generic".packagesArch = "arm_arm926ej-s";
  packages."arm_arm926ej-s"."base".sha256 = "17skaiiyd61b5yjgfyw7xippxm1pkwx8wjncwhj7svmv2mdl5x9h";
  packages."arm_arm926ej-s"."luci".sha256 = "0l0k4pwd0wbaxdkqhbcm7xgxnxswsddybcpwzmbhmrsgss55yh5k";
  packages."arm_arm926ej-s"."packages".sha256 = "1x7jvmga92qq2rzc9s1sp96xprl3hvnbw42850n4p205axw62yyk";
  packages."arm_arm926ej-s"."routing".sha256 = "02k32m8ipimxabgiirrhbkmibc0cqnnipldk094l8zvcap8wkmr5";
  packages."arm_arm926ej-s"."telephony".sha256 = "0aqg4w3f975cq5gihmb76zh2xj38pw0y4lg8avx7bd5czjl9ab18";
  targets."zynq"."generic".sha256 = "1v68hpp8zdiirm1hdddxnjjv6ks0dhc7a3sf7hxp54azfdqigrg7";
  targets."zynq"."generic".packagesArch = "arm_cortex-a9_neon";
  packages."arm_cortex-a9_neon"."base".sha256 = "11mjj745iw6pdp354jm4iaw4jxkkgfwkm2rrwica4aj3f9025asm";
  packages."arm_cortex-a9_neon"."luci".sha256 = "107zh8b6jp1gdcxbx25iygk52pqb23awwdfc5dcznwrry773wp06";
  packages."arm_cortex-a9_neon"."packages".sha256 = "0b988ykydhy6a5l4vcw24yqgkaaws1dvm0n2lkdckjdbxk0wia7q";
  packages."arm_cortex-a9_neon"."routing".sha256 = "0mxhzi4i1lrx420x9a6synfsd0cnmc43mqlj988qrwlm8rbmpfhp";
  packages."arm_cortex-a9_neon"."telephony".sha256 = "0bc5rw3cppd4pcnh16m85hl9n51ncj5166617yxpby3xbmsfznil";
  targets."bcm63xx"."generic".sha256 = "1qzblaldi2h5zsznxrihqvkjwxmbj1if34spqkljrlpgk260z98p";
  targets."bcm63xx"."generic".packagesArch = "mips_mips32";
  packages."mips_mips32"."base".sha256 = "1y7p70d97iqzljiqxza776j20jyzqpqsir5r6bn9zv1cy1mrh985";
  packages."mips_mips32"."luci".sha256 = "131sazhwxzdbfnbbfxl34pccs7w9m7aqa05ray9w8qyl3pbkxgdw";
  packages."mips_mips32"."packages".sha256 = "1w4lr7nmig1053f803vf8hgp7l0vbk7b02jd3g759m08ya6gq4lf";
  packages."mips_mips32"."routing".sha256 = "0zvvls0kf63lhknp0kazd5brm8wvbr56107m7ckrll9m07ifjaps";
  packages."mips_mips32"."telephony".sha256 = "05kw2xicbpm2sd2pi59fjga0h2w4hazq1la903hcwchw3nkz7yad";
  targets."bcm63xx"."smp".sha256 = "046dsd64w4ib58ch9dxy56knlvfzpq9h346dgzwwapdbxlgqlhfq";
  targets."bcm63xx"."smp".packagesArch = "mips_mips32";
  targets."bcm47xx"."generic".sha256 = "1za9rn2ky4g0x1chcrbz061ka4nnb83xbp4ijhkw3ir9cvmxd3bq";
  targets."bcm47xx"."generic".packagesArch = "mipsel_mips32";
  packages."mipsel_mips32"."base".sha256 = "0gbzj3g1jz6m7gn7i2gb3phch8s0jiysw6im70hh7q0zcqzclzac";
  packages."mipsel_mips32"."luci".sha256 = "01iq5cm5kjxw95qa5j365vxcsywx6vh5y05qwr2blvc39cc1dg9l";
  packages."mipsel_mips32"."packages".sha256 = "1k4spm3lalxma0zyq8z2dv1kmbkzn8xpx3l47964xjcz8jlzy906";
  packages."mipsel_mips32"."routing".sha256 = "0zwd4393hmvpc6v6hwl3jr51lj9yimlwjlg72qz448821nkpwdmx";
  packages."mipsel_mips32"."telephony".sha256 = "11dp83iqfc3dn7srlr9p9849ihpljqwqbm5mlxwvkg2x0dkb1n21";
  targets."bcm47xx"."legacy".sha256 = "1q5apzza6zv4i2c7dp4csd5frd0s2qnkri5nys8yws0px7ak1s0c";
  targets."bcm47xx"."legacy".packagesArch = "mipsel_mips32";
  targets."bcm47xx"."mips74k".sha256 = "0fhs9w9nhxwr48ckrqidxlls1r5pqjsalgv7pg0ijia1jp944g40";
  targets."bcm47xx"."mips74k".packagesArch = "mipsel_74kc";
  packages."mipsel_74kc"."base".sha256 = "195x9h7gp4z3hx266zbk5ndwsr8llwh49rnlq6r4v5b9z60dv3jb";
  packages."mipsel_74kc"."luci".sha256 = "1g626w07a905nl7qhsxjnmd5k0v5g8824msxj3d6yp2khx5dx1dz";
  packages."mipsel_74kc"."packages".sha256 = "0myfb2xpz7fg0x5npgq6ppmhbgnm6q2s9dpccfkb42zgq6r11ax8";
  packages."mipsel_74kc"."routing".sha256 = "0ln7j1gp7j6m54m1arsqbwaka6bk347c36xhhp1810ab82yr4zy4";
  packages."mipsel_74kc"."telephony".sha256 = "1naqlpm91qfwc3gnhg7ll16khby450s1bmgdabsi55a81hir9y99";
  targets."bcm27xx"."bcm2711".sha256 = "0gqc5h2xqml9i6k8r4j4x4i6zijcbpjfmnqj93vl9qckbkrzczf8";
  targets."bcm27xx"."bcm2711".packagesArch = "aarch64_cortex-a72";
  packages."aarch64_cortex-a72"."base".sha256 = "1zik7ik3dycxfnc72f2xjvr0g7dhw997yp1svv5hlscn5rdlk2nj";
  packages."aarch64_cortex-a72"."luci".sha256 = "06774ghvdi0bdd5naqhj522h0qc2hg9p50lcqji6pyf3zdjr3r5b";
  packages."aarch64_cortex-a72"."packages".sha256 = "0791h9a0bpdgla9l9l4c1hwg470v3jkk1fdhjayzps1iv5l49wy8";
  packages."aarch64_cortex-a72"."routing".sha256 = "0hhwz5r9cjj1abxabx92snkvk7mb0bajfsjv2y1brdyq0mjn8kva";
  packages."aarch64_cortex-a72"."telephony".sha256 = "0xi48b57q1pmr8s093g6px3lfwj61jqjisbjpsb8v1nqzjhvr0s4";
  targets."bcm27xx"."bcm2708".sha256 = "12ixw05q7g717z3n70l2jj07f9np39gs8zh72rjn3q1kbbvw3m5v";
  targets."bcm27xx"."bcm2708".packagesArch = "arm_arm1176jzf-s_vfp";
  packages."arm_arm1176jzf-s_vfp"."base".sha256 = "0acqlsx9fgndchz8h2w2a8zsgwh91ykhkj8wsxj4i5fhx6v0iyq5";
  packages."arm_arm1176jzf-s_vfp"."luci".sha256 = "059138ayf7b50jn6clky55qqz2c935n8vmb9wirk7yf26mq1pdfl";
  packages."arm_arm1176jzf-s_vfp"."packages".sha256 = "0nym86qsal6yi4ls2p1daigifby23x7a295vs3jgqzdka3cx2wvg";
  packages."arm_arm1176jzf-s_vfp"."routing".sha256 = "0xizn1q1vx6r9xakh6lxmhiscllrbh38b809wjxpv44z4n5lvr83";
  packages."arm_arm1176jzf-s_vfp"."telephony".sha256 = "1wzrwrrw4qbj1640wzk02y7rbr84whva9q08s9pzarfj0c3nq2k5";
  targets."bcm27xx"."bcm2709".sha256 = "0d6ddks2spgfb87bnwl3vrzc47i3m73irsfcf9mvdjqrla5pxq9v";
  targets."bcm27xx"."bcm2709".packagesArch = "arm_cortex-a7_neon-vfpv4";
  packages."arm_cortex-a7_neon-vfpv4"."base".sha256 = "0badr0w4kdc0vk1p8zdlab2xrr0ac628df69yab2q2hgckhvg29l";
  packages."arm_cortex-a7_neon-vfpv4"."luci".sha256 = "0m6b1i0gpil9qr7182w5zla95203n12wcr4a9hrywjpyxf43x27g";
  packages."arm_cortex-a7_neon-vfpv4"."packages".sha256 = "12rkksdxqhsgivh57xkayjcpl78rbwrclkkycc3xmswms52vsplj";
  packages."arm_cortex-a7_neon-vfpv4"."routing".sha256 = "1c3ccp6gpwdnk9s0gwa8z1w89rlpnsll2jfhaccqiz4jrnq680l5";
  packages."arm_cortex-a7_neon-vfpv4"."telephony".sha256 = "0wn1bfmhq9djxxdmrssdghkm68g2bfsgdvb0ljzyp2554pv9m18x";
  targets."bcm27xx"."bcm2710".sha256 = "048kk38nmds5jcq5vw1rm2s14rhzzr4ycin8rp3xar7ccaisc5nl";
  targets."bcm27xx"."bcm2710".packagesArch = "aarch64_cortex-a53";
  targets."mvebu"."cortexa53".sha256 = "1xwgck3skyi3s4zl1n0rvs6759ybi3jj519fxjlvk929vjkbmm04";
  targets."mvebu"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."mvebu"."cortexa72".sha256 = "1wd7dxfip292knv3azvwr8la4kv5lm8cba4x58wndbbxj1hx47rn";
  targets."mvebu"."cortexa72".packagesArch = "aarch64_cortex-a72";
  targets."mvebu"."cortexa9".sha256 = "1rjax2wbqsrpvxplih1svx2nxr8nn7yxhj0ff8m69f9d3bgypb20";
  targets."mvebu"."cortexa9".packagesArch = "arm_cortex-a9_vfpv3-d16";
  packages."arm_cortex-a9_vfpv3-d16"."base".sha256 = "0p6217sh31kdfipgwlp1g37l725hg8p8ngaj4h97vv2grq3n5qm6";
  packages."arm_cortex-a9_vfpv3-d16"."luci".sha256 = "1ln02zywqbvg6xb5afbdv8899c6qchwg8zwxclh65220qjr4a90l";
  packages."arm_cortex-a9_vfpv3-d16"."packages".sha256 = "0c29mv95jdm7csn95872wc6lciqnny13c9p550w078jy1fwv8kni";
  packages."arm_cortex-a9_vfpv3-d16"."routing".sha256 = "0gw6papy4lw2lf53rq1a78jdd7hxwyhwkc52x07qkc8bhfrj2p68";
  packages."arm_cortex-a9_vfpv3-d16"."telephony".sha256 = "0wwiw8iqbacsdmyipyajrjixsqs9cw7hmlq3m2d4yczfvg6sdgj6";
  targets."at91"."sam9x".sha256 = "1m3ivxl7m18c6ni9qc1j6kmj8kwx0f2avsbpskgq2ji6dcz2w6rs";
  targets."at91"."sam9x".packagesArch = "arm_arm926ej-s";
  targets."at91"."sama7".sha256 = "0anaq9b7p1wja4y0p4kscp8bkp1xr8p7hfllprvk45nabai5rrr7";
  targets."at91"."sama7".packagesArch = "arm_cortex-a7_vfpv4";
  packages."arm_cortex-a7_vfpv4"."base".sha256 = "05739ddn1319k854xjfr9ar0l89z2m579yv12ixgf3fbidl27d3i";
  packages."arm_cortex-a7_vfpv4"."luci".sha256 = "18m3vi7riv14grdxfl0r94wchwlgbzl9z1a0gc6cy8r9b0rc9y83";
  packages."arm_cortex-a7_vfpv4"."packages".sha256 = "0wc2dcpd1nf96zybh63a37nach4sj93fy86z9wyvbdq4kry6hvz1";
  packages."arm_cortex-a7_vfpv4"."routing".sha256 = "09dhqwgd7mmm09n7jmp1rf78dylynag6nw2inwi8h1yga6vifc40";
  packages."arm_cortex-a7_vfpv4"."telephony".sha256 = "1apz2qz4mafp2b2kh3bas10wzfc56zhjjsbgagy42a19cnhypsx8";
  targets."at91"."sama5".sha256 = "1d2viicf099r90jkn5dqcidb29djs7wh0s0cqcmjc6vy6hajircx";
  targets."at91"."sama5".packagesArch = "arm_cortex-a5_vfpv4";
  packages."arm_cortex-a5_vfpv4"."base".sha256 = "0hnqi3pfy6hvvgkkxr4kpd3njyz70xi99nhs1vsv01rqh3xk55xm";
  packages."arm_cortex-a5_vfpv4"."luci".sha256 = "0wi1166n8lf3vz5gldl09p1azirbs0gb2ngrvp4q5m3wqdn6ml0h";
  packages."arm_cortex-a5_vfpv4"."packages".sha256 = "1pqvaylcin59ql3kd0k78m9155vs8l04hy9b5nqdky400msaywvr";
  packages."arm_cortex-a5_vfpv4"."routing".sha256 = "02ns5lpadpdb147g96h3vjxg83802c23840mxfmw75h473hax11l";
  packages."arm_cortex-a5_vfpv4"."telephony".sha256 = "172lc2xc6v7ardlk62cv4sx66hyi29z9l4n7vy6h8j2wpn6r9lhs";
  targets."gemini"."generic".sha256 = "1fjqgkickcsfywg8ynqc8c74k0c2m5ybm959ysdivpxkp5bl0czj";
  targets."gemini"."generic".packagesArch = "arm_fa526";
  packages."arm_fa526"."base".sha256 = "0bxnwx9svc4pg1kf4iksjkq2qx0hr7l480gvbnxiz00pk7hhv32d";
  packages."arm_fa526"."luci".sha256 = "014g2k707pi9jrfydzsdww2ll36c8hj5vzx5nli22khsfm70zdmc";
  packages."arm_fa526"."packages".sha256 = "0jrpqvix2f67x7ppw1fcziphd8hlkcf5bs0796m3wnk7jd1q82f3";
  packages."arm_fa526"."routing".sha256 = "1y5677ax4dwcbsm6wsqdds5w9149ljqfq9frdsahc62hsh9m833y";
  packages."arm_fa526"."telephony".sha256 = "1h6bpfapwxgm1r8ij5jww5g4c0y66pv8ziw4v1lng0lpkd30kizy";
  targets."octeontx"."generic".sha256 = "0678kkc8rsy4302a3df37bpmb046jr2bb2wbh263nsc2w5n0xiba";
  targets."ipq40xx"."generic".sha256 = "1z4f4rab42aar3a6wiavrpndpn8s8qg67x161z1n7swwsb34k571";
  targets."ipq40xx"."generic".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."ipq40xx"."mikrotik".sha256 = "0w50sff5j51x3dihfar4vybmb1007pl47hdmd0ghw9pwjcnsxgpj";
  targets."ipq40xx"."mikrotik".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."ipq40xx"."chromium".sha256 = "19xbbihaf98b4b92sd9qb8injd1c6r25gqcwc8amn2kl9r32hhn6";
  targets."ipq40xx"."chromium".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7623".sha256 = "18sdarrb17m0shlqscpm6hld6nxcq9s52w86pg8490v2w65722pd";
  targets."mediatek"."mt7623".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7629".sha256 = "0776yrnhijhwfzdn78rf0g7p0hv43qrn5r15pzh8za2j0dlmprkp";
  targets."mediatek"."mt7629".packagesArch = "arm_cortex-a7";
  packages."arm_cortex-a7"."base".sha256 = "15bz9bf4y7ymvkrazysg3b2xapd7li8ryczzb1slzdqi7w097zbw";
  packages."arm_cortex-a7"."luci".sha256 = "0a8am0ggs915bggl7vphs0lnllk0k3z7nq4kgz90zw69zhkg57ad";
  packages."arm_cortex-a7"."packages".sha256 = "1wwyn138myf8v6x13a9zs3m62r4ily43gkip1rn237ysfvb61czs";
  packages."arm_cortex-a7"."routing".sha256 = "1fh9yx8awpz27i4svrx97zxczxy643xlvada23al3zgpsrkmwlif";
  packages."arm_cortex-a7"."telephony".sha256 = "1ndywqv2ff8gi0mccycsvvc7fmmm5lq9l0xwb6l3bw0y9yqm2nwv";
  targets."mediatek"."mt7622".sha256 = "0p1nmq4fzvnqyrzix72vc00l0swvxk23qy7pg3y6ln83r71pz12l";
  targets."mediatek"."mt7622".packagesArch = "aarch64_cortex-a53";
  targets."mediatek"."filogic".sha256 = "0f9nsys73li78faz210wsprnm7kpbzhwm5sa7q8svdf9vbkcnlm3";
  targets."mediatek"."filogic".packagesArch = "aarch64_cortex-a53";
  targets."malta"."be".sha256 = "10zhmlbvq2m3i0ajvg7marfrd6584inic9gjg0vvwjy6j72yslgv";
  targets."rockchip"."armv8".sha256 = "11cfk2x83m9zv8ja6jc7xajskglc4xaszx090hzsy27i9fv76fzw";
  targets."rockchip"."armv8".packagesArch = "aarch64_generic";
  packages."aarch64_generic"."base".sha256 = "0hhkwj89h9aj25cbs4m8fn2g7dmimwjyhfmhn6p5lg2kqrnjk7xw";
  packages."aarch64_generic"."luci".sha256 = "0dh7x53vpfwlxmxmq5z6cmjyifhk3p3g190hysqwz6cfmpwbxkcs";
  packages."aarch64_generic"."packages".sha256 = "1sh1zdf00jcnqmxyf46flfbkzn2vf03ij4569iwfdh3mbr1gimid";
  packages."aarch64_generic"."routing".sha256 = "09pcs0m0lcfvn2qgdzqkyg137031iq84yq759p4qxa20yfj485cr";
  packages."aarch64_generic"."telephony".sha256 = "1q60mappb4fdld1jbzc23znsxfq7y7kdksym6c0lckmrf563aczd";
  targets."ipq806x"."generic".sha256 = "0h05z1fmg3h1ag955pi8dzs06rlrzmcwq5s75zqxdd4gkx27w1p2";
  targets."ipq806x"."generic".packagesArch = "arm_cortex-a15_neon-vfpv4";
  packages."arm_cortex-a15_neon-vfpv4"."base".sha256 = "1bgi7nn0imq93jv6xkqplsy6wpr5n5mjvc7p3cfprlhabd4ldcnv";
  packages."arm_cortex-a15_neon-vfpv4"."luci".sha256 = "1jmqkv9gwqdr91ycfhahsmj20pyhfa5skjxp8rwlfaddi5phvar4";
  packages."arm_cortex-a15_neon-vfpv4"."packages".sha256 = "1mypvi1smaix821cinwvfbh3vy0n7my1m1b744f9ykayzjijinms";
  packages."arm_cortex-a15_neon-vfpv4"."routing".sha256 = "0j82a9qsk9nw05y84bgyalva44k0yy1fz64bm6hh56fzl83d6sj0";
  packages."arm_cortex-a15_neon-vfpv4"."telephony".sha256 = "0jzbkjp8qa24jvx098760pi54nrjdpp6rw1j5285gdamnfwywsbf";
  targets."ipq806x"."chromium".sha256 = "0vpi66zlqrhyrpzjfvhj0dfn51cyckrjxkf37b27mwwaiwlcav2s";
  targets."ipq806x"."chromium".packagesArch = "arm_cortex-a15_neon-vfpv4";
  targets."sunxi"."cortexa8".sha256 = "1jqjr6f29hppfs6nk69wxd41qvz64i5247gkzbkcarzg52w0yvx6";
  targets."sunxi"."cortexa8".packagesArch = "arm_cortex-a8_vfpv3";
  packages."arm_cortex-a8_vfpv3"."base".sha256 = "0hdd182pihm8wicf40sp7i816ajbia6idhpqfy1w5zwxvigqqkcl";
  packages."arm_cortex-a8_vfpv3"."luci".sha256 = "0imvc83wwxxsl79n05h53c99xipswv0q8k3hkd1phq4b2hv2mddp";
  packages."arm_cortex-a8_vfpv3"."packages".sha256 = "0gc3kn0kvwdyl4qf00did49wgmz2swaq8p7an48a9czylhjj9mzg";
  packages."arm_cortex-a8_vfpv3"."routing".sha256 = "0zhr3y6gpzsanf5kjfzxd00v5ws4yrdkkczl1lwrw99qny0yq3yh";
  packages."arm_cortex-a8_vfpv3"."telephony".sha256 = "0gmfjmxwc0kg97jgvpim7kgz3qlpmhdkm0kz9rsnbyyjkviaa4x7";
  targets."sunxi"."cortexa53".sha256 = "0k4fl6vk71cp7h1ks0q6ar1z73dbhij5am7z6g6d49mrdk8y4gdd";
  targets."sunxi"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."sunxi"."cortexa7".sha256 = "1h2v2yvr34myj7qwriynj958fj9kqd86d66qnypablwbafxindrk";
  targets."sunxi"."cortexa7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."armsr"."armv8".sha256 = "0wn3gyj1h4nsf8qaww4r90pna9gh27l8a59gc3whjij68qnfzgj3";
  targets."armsr"."armv8".packagesArch = "aarch64_generic";
  targets."armsr"."armv7".sha256 = "1yxnn5ssn6pzsznfrji6bxgq3nr84kwv9r4k8kd4704jak2zsbdl";
  targets."armsr"."armv7".packagesArch = "arm_cortex-a15_neon-vfpv4";
  targets."mpc85xx"."p1010".sha256 = "0ypgj1iaipc31048sqm4rmg7hxy07mc90g0h6hj4pq08rqvgj65p";
  targets."mpc85xx"."p1010".packagesArch = "powerpc_8548";
  packages."powerpc_8548"."base".sha256 = "0v7icnhnq6p5fs6d4413arzyk4ri70a01hzqf1mhk1zy8jad2fy3";
  packages."powerpc_8548"."luci".sha256 = "10271v9nsaq50d93fs6giank2mida7aya2g292brzynm2sq7dglk";
  packages."powerpc_8548"."packages".sha256 = "0ij3r88ssazbrmpfi9k8aiwmigppi2axfv6al0wi522nwzn01l1d";
  packages."powerpc_8548"."routing".sha256 = "1yiivnhcaahklgn5w49y99lhhms6snisk408j1z4abpiaca48zm6";
  packages."powerpc_8548"."telephony".sha256 = "1zcjnapxjj4f8yg8lx3ai0imk5da7pw1n4h61r2x69zwsharpb7d";
  targets."mpc85xx"."p2020".sha256 = "074xyx30jk50dpky28yy2qa0mn2dsy00n90y94ldy3cr6gmv29ab";
  targets."mpc85xx"."p2020".packagesArch = "powerpc_8548";
  targets."mpc85xx"."p1020".sha256 = "0gqhjz1q3zhj39254gql3qwaacfa8dg6drr464amjbgr5hzw71fz";
  targets."mpc85xx"."p1020".packagesArch = "powerpc_8548";
  targets."imx"."cortexa7".sha256 = "1wr1v0csgq4ykk46h4443qdirjgqflpsv127dn9rd0kr56akspnq";
  targets."imx"."cortexa7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."imx"."cortexa9".sha256 = "1i2zk3wcvzb8wialswzqv1aq5slj373wpbygamjdyvs2zy14qrs1";
  targets."imx"."cortexa9".packagesArch = "arm_cortex-a9_neon";
  targets."x86"."generic".sha256 = "1w3y7im0n43ks0lc93kxbyf6fg7gha52j7852d4jwwhhvpvh23r9";
  targets."x86"."generic".packagesArch = "i386_pentium4";
  packages."i386_pentium4"."base".sha256 = "155731l3arpg12zkgir0fvhalrqwgjhwdddzzvwqgjs0xk65ar04";
  packages."i386_pentium4"."luci".sha256 = "1wx5zkldc8mzd6ziipwwhag3qzbzpffw123i47l5ihgkiifsdj62";
  packages."i386_pentium4"."packages".sha256 = "0w5gk8vqvdx99f5czyqa4qapz1fykfx4dwrggnjpwk3x8rrr1bm5";
  packages."i386_pentium4"."routing".sha256 = "0wivm79dnyhds7qll69npkdv4396wwsa2ri4zxfap0jgdy08rcvm";
  packages."i386_pentium4"."telephony".sha256 = "1kcilirmkazlivdhmpn4x6sb405pml3gx8z5acpi5gjznfmc7pbm";
  targets."x86"."legacy".sha256 = "18kmjv22wr1ipfkiajzbnvnin035366qys8kckasrxc6mx0yc0hc";
  targets."x86"."legacy".packagesArch = "i386_pentium-mmx";
  packages."i386_pentium-mmx"."base".sha256 = "12c6p8ni1v3xpk63qm4zncnrrc5ssrfqilf748xmj55a4cidvn6d";
  packages."i386_pentium-mmx"."luci".sha256 = "1f6qk4x37s3png9cnqp2g634hyjgkxkscmp17r83rygn75wmsp2w";
  packages."i386_pentium-mmx"."packages".sha256 = "04zasnd6lrmdzp6hmni2h7s7mr6v8m4rn2kzmgbgwrccfs2mh05z";
  packages."i386_pentium-mmx"."routing".sha256 = "05gkidnqklxmki54qj117ka0mj436hb47xrcpxgqbw4x282bkx24";
  packages."i386_pentium-mmx"."telephony".sha256 = "0dsqbw5pxj2pys5adfy2i8jvywbjjgd2xm4p6m03hq77vill3jai";
  targets."x86"."geode".sha256 = "1vdaw50zzsr8vrsdkzvy4435i3wl9bvmx4i0c8j0nr556z1n337n";
  targets."x86"."geode".packagesArch = "i386_pentium-mmx";
  targets."x86"."64".sha256 = "1rknas73j8ydighfkfhsmd8v3w6snw1ivdpfxpadipk5yw35zzib";
  targets."x86"."64".packagesArch = "x86_64";
  packages."x86_64"."base".sha256 = "15v4imi6h4rckx1yhzwgr8g9d3j6dw3hbib99zfzf0h3bsz2jc4x";
  packages."x86_64"."luci".sha256 = "0dr7rl89kgzmhjc7bhfzy8skamafmlqpjj3w4q7mk3vrxaji6qlr";
  packages."x86_64"."packages".sha256 = "07j7mnqmkiir1cjjfbwz6mykdmb3k8lmiy3am2bd9yigs0sc6v6m";
  packages."x86_64"."routing".sha256 = "0ns33ibfi1jn7qfvipb03x7bdgmjb1jzp4hfz6pfch8mzvacjl0n";
  packages."x86_64"."telephony".sha256 = "1n3wg99mipz1l5bl5hgq66x0h7xjs5rsymp1f3dj4lsj7kijkd4f";
  targets."realtek"."rtl838x".sha256 = "1pvkjxkfcd3qim95dxv46bdz71hf9933zn9fvgddr12ybjz4mrdw";
  targets."realtek"."rtl838x".packagesArch = "mips_4kec";
  packages."mips_4kec"."base".sha256 = "1cqsrwbinb484ms60x95krbzmycymnvym2792a8ma5i0bmyxalli";
  packages."mips_4kec"."luci".sha256 = "0mq1rhwwqhkflyf8m4m4rdfgxyd03f68dcdfd91nx2v26fqg9v21";
  packages."mips_4kec"."packages".sha256 = "1clzqzm7fvcffhlx8i36s6fdi8fza4vhvdkb45xzlnmy18mzf21q";
  packages."mips_4kec"."routing".sha256 = "1nk7105mka4m2dy08sxf1x8kxxbmr8hfcr7jrgscm29wgg1j8v2b";
  packages."mips_4kec"."telephony".sha256 = "0x1a295557w3pv6f8cdxcs2hf13yvy38jb450dlcywqwrwxjnrv5";
  targets."realtek"."rtl930x".sha256 = "1nlqcjgrp8jbmwd6pqqxbdqyjmwkq70w2a76dkx4x523dxkia03p";
  targets."realtek"."rtl930x".packagesArch = "mips_24kc";
  packages."mips_24kc"."base".sha256 = "0zcqpwimhchbgiaralnwrsnsq49vrir9dcqc99z1izvy0z3i524a";
  packages."mips_24kc"."luci".sha256 = "0vkzz7knb6bl7nr4bdmg60fk7a0krvyfnqjm4v6zfd4hfd6zw6hg";
  packages."mips_24kc"."packages".sha256 = "0y31hli30cls2v26ip6gvqj4lbrw6xc5zynm36n16qn1mp4xng6b";
  packages."mips_24kc"."routing".sha256 = "0lvs3f0hh332l0jk8haj8h742zbq7h9w8m479q50isp420ks8jmz";
  packages."mips_24kc"."telephony".sha256 = "1akzalksrrag76as3v7ljr0v9f5l7g61gs4pg3ypms3m4j1fs2bb";
  targets."realtek"."rtl931x".sha256 = "1z3di9vvqwvywrk4ycv0wra1kdwjlap7dpgr5vzwbz5qg6f887p9";
  targets."realtek"."rtl839x".sha256 = "07kq8xndjqjvh77v8x447fxmwdvjh4g866hf4h9ymf96p90zsp2k";
  targets."realtek"."rtl839x".packagesArch = "mips_24kc";
  targets."kirkwood"."generic".sha256 = "1n83v1gn9b0yja7cvd3f0jaigbp0iiwq4mlgnvnnil8klnwckp44";
  targets."kirkwood"."generic".packagesArch = "arm_xscale";
  packages."arm_xscale"."base".sha256 = "144m8rkidxv26gl12g87k4hfpw9x7jbp8pbk3q0iipbmkgydyakr";
  packages."arm_xscale"."luci".sha256 = "0scs9wql0mwig1wvzbxqbqhaypjzfcnlbildb0j2pf00bf6bia0r";
  packages."arm_xscale"."packages".sha256 = "0r81glny35advg100a2rzy6xi48iydqv9r9x1msxy3m072hc3k32";
  packages."arm_xscale"."routing".sha256 = "12agrnajij52ncjvmigm43w8nykw5bn21751417l86ymrsfzkgff";
  packages."arm_xscale"."telephony".sha256 = "0nk7dzmldzphn7y6cdmasg5lhp7qvynzvzlais2bkqbrb5n7yylr";
  targets."ath79"."generic".sha256 = "154280nhyl7hmr7mp1kxc4wk6bv09qy9njm1rag5866jr4hpisqg";
  targets."ath79"."generic".packagesArch = "mips_24kc";
  targets."ath79"."mikrotik".sha256 = "0bnx6zzwww88h8cciazfgl9cyhkifijs9sczhcn4nc6j3y1p2y0q";
  targets."ath79"."mikrotik".packagesArch = "mips_24kc";
  targets."ath79"."nand".sha256 = "1z5kwzl472b7k0jjk81yi88nbfjq703xa29ypfcfhq4f1qn0rfmy";
  targets."ath79"."nand".packagesArch = "mips_24kc";
  targets."ath79"."tiny".sha256 = "1ckpvsibhfhnyxdp3lx4hzdxky337fakg99x6nmrk9vawac8naq4";
  targets."ath79"."tiny".packagesArch = "mips_24kc";
  targets."apm821xx"."nand".sha256 = "0k6gf4w5bqbh24w9bkbcj62cqdh9l8xlz6zf89yy6c6by47s2v60";
  targets."apm821xx"."nand".packagesArch = "powerpc_464fp";
  packages."powerpc_464fp"."base".sha256 = "160qjzifq6srr9z1msmbdish0i9wclhr4jfi1jdnxvmsgr7ys58w";
  packages."powerpc_464fp"."luci".sha256 = "1y63b8sgy819zhq7qv7a9fv0kd1s12skwcqw4x0fappdqvvqpxk2";
  packages."powerpc_464fp"."packages".sha256 = "0hl8z0f9rmaxfdkp41g4aarg7lsd4hpd19k8h1q479w6d0x1qxaf";
  packages."powerpc_464fp"."routing".sha256 = "1r6cgr0bsfxd7rqc5q6xnr4lk7aznwqh4c4f0zh383ci01w1fz0p";
  packages."powerpc_464fp"."telephony".sha256 = "16rj26lmwj0fiqd6gwz5mmcw85vk6rx6i8jgxkdn9cdn4r5jqpi9";
  targets."apm821xx"."sata".sha256 = "1immx2ciymazg4qy53pwgg73jj9icam8ijv1ai4jh964sdgi0x00";
  targets."apm821xx"."sata".packagesArch = "powerpc_464fp";
  targets."bcm53xx"."generic".sha256 = "0r3xwragpb0mihq69sz2kwr4ygpnz9n2jq34jjx86qmk1k62fd4a";
  targets."bcm53xx"."generic".packagesArch = "arm_cortex-a9";
  packages."arm_cortex-a9"."base".sha256 = "0k9r24hmr39k1v4x7j4dyjkssw3dpdq0pr3p66014gdy5bqw22yx";
  packages."arm_cortex-a9"."luci".sha256 = "1fwsxvxqr8vd5mi2qkylk7zfv8yc4614i6wars9h4z5kfy0x1248";
  packages."arm_cortex-a9"."packages".sha256 = "0wb7qfkcrl8parzjk47vk5wrmz79gk5i09xjz7zfqip6bi5dg7qh";
  packages."arm_cortex-a9"."routing".sha256 = "1pfxdgi22s9107cs3xaal8qf3z4gckfdf5fksx98cp5hw8gj2fx3";
  packages."arm_cortex-a9"."telephony".sha256 = "097xlz3sq9y91dsnjklffsj5bhhs15nqrcvfd84hbsx7hb8iszj6";
  targets."ramips"."mt76x8".sha256 = "06mlqs4vfpggv6fhv7v2kmclysawbh5mzw8s6vj8pbchixa1cv52";
  targets."ramips"."mt76x8".packagesArch = "mipsel_24kc";
  packages."mipsel_24kc"."base".sha256 = "0fbbf0pdpbxhayylp04wmznahfm9ah577fnssycg5h2yqpjip495";
  packages."mipsel_24kc"."luci".sha256 = "10rhr73yal74fybc6bh653g2ibsh9mgg6b5yc8naj07yp7v0r2fj";
  packages."mipsel_24kc"."packages".sha256 = "1hwvdjlis7dr0ddvldyvas6q72800vwwchgbphhxmjnicwb0nb0i";
  packages."mipsel_24kc"."routing".sha256 = "1yc345d79k4k9jpk6lngsz5mh77313j9gb5bpgcv134l0v2cpkfp";
  packages."mipsel_24kc"."telephony".sha256 = "069cdcr4fyzg7k3bar2ckz8j79yf7rwyy8rp87w6dpkir2pxsvy2";
  targets."ramips"."mt7620".sha256 = "04khqkxjw9wqg0jhnllsxahdyqr9550gbgsl2bdqfjdbpx24f5b5";
  targets."ramips"."mt7620".packagesArch = "mipsel_24kc";
  targets."ramips"."rt3883".sha256 = "0f2m727qh5w7ncxj8x7dah81ilnd5f9y248rxaxqd9ps61ywvk89";
  targets."ramips"."rt3883".packagesArch = "mipsel_74kc";
  targets."ramips"."rt305x".sha256 = "02nppkczqvlyqm05v2hkcskaxys9vrcb0c8s6fy0c1lsm0w5waqk";
  targets."ramips"."rt305x".packagesArch = "mipsel_24kc";
  targets."ramips"."mt7621".sha256 = "1g2i7bax6ywx7vdsrj70pfvybiwqsvva32pigi278s07w7j77zp8";
  targets."ramips"."mt7621".packagesArch = "mipsel_24kc";
  targets."ramips"."rt288x".sha256 = "0apw6zvyhl5pzqkw3j8xf2yrj5a7w157ygrgfpq882flh27j20cj";
  targets."sifiveu"."generic".sha256 = "0xiss330nc9nf8qycbw109g33nvi3v1w04m08vms436lqv4hpgqd";
  targets."sifiveu"."generic".packagesArch = "riscv64_riscv64";
  packages."riscv64_riscv64"."base".sha256 = "0sm17f66m661d2i94vvwfcajf9ng3zwvlgxr2qjzjwgq7r875xpc";
  packages."riscv64_riscv64"."luci".sha256 = "08w65i1p33l8l7bdnbbwmzvaqrq6ja044w43ql2s631jdd9iyl9x";
  packages."riscv64_riscv64"."packages".sha256 = "0yyg6jh85wsz78ljm8z5v3g4xlnfpg25qpsy199fh183gllqn9x6";
  packages."riscv64_riscv64"."routing".sha256 = "1ij7q1f0w666kjvc28l94nym4h1ihxyicl9m9zlcwv956qhlp5x3";
  packages."riscv64_riscv64"."telephony".sha256 = "01bkqqsw5458ds950y4klxqrrid632zjma0z3xdd5j5figfgk39m";
  targets."lantiq"."ase".sha256 = "0smji3y5s7pj6p55nmrs151pp3r423mmf6sy3gcn2p5is2030yww";
  targets."lantiq"."xway".sha256 = "05a3n6bcfddc10pl9d3fbn6rwa4y0h04zcfs3qwrzs5a4zrw6h90";
  targets."lantiq"."xway".packagesArch = "mips_24kc";
  targets."lantiq"."xway_legacy".sha256 = "0xwzbbdjf1alnvpz1ghv2wpjl7gxlvppiiibshs9gx8n8svpjpzc";
  targets."octeon"."generic".sha256 = "01c3yfwxsi72a2vm5z89kwm3hmgb56pf5wqb2bajsdvyprpd6wbs";
  targets."octeon"."generic".packagesArch = "mips64_octeonplus";
  packages."mips64_octeonplus"."base".sha256 = "0fgc9ilsxa3qqgbif2q8ykycrxp02mb0c8bjxk5vmin9z08vpxq6";
  packages."mips64_octeonplus"."luci".sha256 = "177s6s8hv5jwjfcp6b342qpsgj450b64pj6l5r43n9h1bbclgpv9";
  packages."mips64_octeonplus"."packages".sha256 = "17kjkf1rysj3r4kvrr0k92x03m9ckr96wpmqi80j9db33ckwpqkf";
  packages."mips64_octeonplus"."routing".sha256 = "05xykb5z9gvswm9z8l0x9zfdvwmb47m0l55hp422kf9jlmgl3y3b";
  packages."mips64_octeonplus"."telephony".sha256 = "0xq6hd47yg8wrg68cj71yzz042rqblaqcp4nafqh53hqgsadh5a1";
  targets."pistachio"."generic".sha256 = "1af3iv3yqg016zqrhi0k39i7vq3r1705bjp1h0wf2p07qfbcxkqh";
  targets."pistachio"."generic".packagesArch = "mipsel_24kc_24kf";
  packages."mipsel_24kc_24kf"."base".sha256 = "1zw556n7iix54dv0k4qfvyqf9dnss8rq9f49db40v1vki9a0zbvs";
  packages."mipsel_24kc_24kf"."luci".sha256 = "1izwm929803mwf91jiljx2r9gixpz99ayr5fhi9cf4585f7s3nnk";
  packages."mipsel_24kc_24kf"."packages".sha256 = "118wpww2jd9aynyilkq16dx2nx0nlzjhm7qxgv54872fdbp8dkjx";
  packages."mipsel_24kc_24kf"."routing".sha256 = "17dycli0nn6xdl9zai82c1cyq7bvs3rdhrgab3v65ns6px5jwww8";
  packages."mipsel_24kc_24kf"."telephony".sha256 = "10gq6fj2hbcd64pambpz2y4clw4127np2pb3xhvy8syiz3h9mq1y";
  targets."layerscape"."armv8_64b".sha256 = "03wmy3dhgqmmnj3dn9a6yhnjj020y9d9g5lgfy8r8qdbvls9sb7n";
  targets."layerscape"."armv8_64b".packagesArch = "aarch64_generic";
  targets."layerscape"."armv7".sha256 = "1b7dqmdjrxkkflphz42pg45yfazcldmcnikp46arpyp9nrpnl51r";
  targets."layerscape"."armv7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."tegra"."generic".sha256 = "1fdybp0sa6bxp28sj1vg62bwivn4assz04fngxmzv7r6wkkwrjbn";
  targets."tegra"."generic".packagesArch = "arm_cortex-a9_vfpv3-d16";
  targets."bmips"."bcm6328".sha256 = "0l2pilfbpa5ggvw30173q8chgammfca90bfzvmf6rrwbgkpm741y";
  targets."bmips"."bcm6328".packagesArch = "mips_mips32";
  targets."bmips"."bcm63268".sha256 = "1z9axskgmfhvgpsc85wxafap59xlwl6j609spzqnrzl7rfdg71jz";
  targets."bmips"."bcm63268".packagesArch = "mips_mips32";
  targets."bmips"."bcm6368".sha256 = "0hwpp3ajmqw971wlgbjmxlc6lw2559pksm6f8kfq9ap4a54lnmkx";
  targets."bmips"."bcm6368".packagesArch = "mips_mips32";
  targets."bmips"."bcm6358".sha256 = "0qvy38dj74jlar1na6ls33wya72mby6hgvr3y6l30bddmv653v20";
  targets."bmips"."bcm6358".packagesArch = "mips_mips32";
  targets."bmips"."bcm6318".sha256 = "1c3hyrvffscki1kkvrdghfrixbmb10jzrdj6y53rm69c4n7l0fv9";
  targets."bmips"."bcm6318".packagesArch = "mips_mips32";
  targets."bmips"."bcm6362".sha256 = "1v6c6nmcr6pvibw1c6kvz9ikh4zjzjga6w2nxni0yfr0w2i7kg7n";
  targets."bmips"."bcm6362".packagesArch = "mips_mips32";
  targets."bcm4908"."generic".sha256 = "0ygpmd8dpcsif7y7ncs5y0aigmwybvznlmdzl690fvpai8b5yd6v";
  targets."bcm4908"."generic".packagesArch = "aarch64_cortex-a53";
}
