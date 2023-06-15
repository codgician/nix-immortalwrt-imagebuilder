{
  targets."oxnas"."ox820".sha256 = "0dkwnhm4y0r4qqr88bmqa0m3fckz2aq295zq1dy9ss4rw7xdqcg6";
  targets."oxnas"."ox820".packagesArch = "arm_mpcore";
  packages."arm_mpcore"."base".sha256 = "1lamcjypdcn0fhnn4jp2f1nyvgq0rc6wh3kqzzhi5dxz8hz2l8f3";
  packages."arm_mpcore"."luci".sha256 = "0aq22klby16agr45y9mxqsw0245askr2gxb9bcxxark64rpgsr75";
  packages."arm_mpcore"."packages".sha256 = "0ggnsb75h1mrvpgq7nf2dynx82hfk8gjhchfwwlw0k63vahrqdfp";
  packages."arm_mpcore"."routing".sha256 = "017amdsa0rs6vlyxxblp2i06m85ddjjjf1vcd5yrs7kn4lfrp1c8";
  packages."arm_mpcore"."telephony".sha256 = "0j2q6rj1mc8067v90n040m0yhk100sr53sipxgj4bhs8ji2a6liv";
  targets."mxs"."generic".sha256 = "15n5cbyk795scdn5gskjykh0kpsgxnw196vg4hmdprhxz2ifh7pl";
  targets."zynq"."generic".sha256 = "06sbq0jqy6mfn3mr910j649q9nmzyg825kjhjhi1qv24ryh7gni9";
  targets."zynq"."generic".packagesArch = "arm_cortex-a9_neon";
  packages."arm_cortex-a9_neon"."base".sha256 = "134qsv88x0hzyvhdqypw53l8gw8w54g592qalbcpfkrs13xzpmjv";
  packages."arm_cortex-a9_neon"."luci".sha256 = "0vkgxj7srkk40g96rz02m2sqimf367hhlwxdwwqhq3sjncvhq4lg";
  packages."arm_cortex-a9_neon"."packages".sha256 = "15bl4ywzsl1hx8jzidhc4cxsmi76dj480lbcv23c6qz9x6z940d6";
  packages."arm_cortex-a9_neon"."routing".sha256 = "1mliy19bfz7cxz4kbzif6q6sqr9z68smypsx6dyaf3jw8i390dvc";
  packages."arm_cortex-a9_neon"."telephony".sha256 = "1i7m0yl7jj7swrd2qi4lm12cs04asb6shk9p5jz0sq0gzs81167s";
  targets."bcm63xx"."generic".sha256 = "1gcbil7rzikbb32ipwhycq2bs50clj8c7mn4a27z5im35lkrav9w";
  targets."bcm63xx"."generic".packagesArch = "mips_mips32";
  packages."mips_mips32"."base".sha256 = "0bbdyzh81qpzwvhp55xd1l9r5qw9ingbw0arrbd3zimy1xh7y70d";
  packages."mips_mips32"."luci".sha256 = "0mrln0crwnys1sdaj0kccynwshzqbxsq5rvwqhs0xm5ykajyczr3";
  packages."mips_mips32"."packages".sha256 = "1czvlvarnxay7sa8217810scsn20qcmmxivfy27hzrmzva2hvgmp";
  packages."mips_mips32"."routing".sha256 = "1604gr8ca66b2y167blsls8bwpzsf9d1sabmlycvc5mf7k6prwmq";
  packages."mips_mips32"."telephony".sha256 = "0ks7948awi64kb0pjvix8dcdc3km2y22kcczpwixa2jrqd3k06vj";
  targets."bcm63xx"."smp".sha256 = "1gkzc3rdfciav16nl744ryvzv2kllp1y3ib5r3mrqzqcvn6j902j";
  targets."bcm63xx"."smp".packagesArch = "mips_mips32";
  targets."bcm47xx"."generic".sha256 = "0py43pfqnz0kpg250h2w0zjnphbag77prng0alb613sihjkg55av";
  targets."bcm47xx"."generic".packagesArch = "mipsel_mips32";
  packages."mipsel_mips32"."base".sha256 = "08807mv4238i7a5rqyl6d9c2nc4ql2xx7r6rsqxqd6shxl9w1xkg";
  packages."mipsel_mips32"."luci".sha256 = "04whj9w3hv5blyglnc56jlnqc2imjid2p6sbdv9nidl29zvyavvx";
  packages."mipsel_mips32"."packages".sha256 = "0j1xw6d1a0np2wfvnsanzg168c9pvqqbglznjc2ssxyw2sj5msnx";
  packages."mipsel_mips32"."routing".sha256 = "1vpmg549z0xnca3rnz3hkc7168pyyxriblpm7yx3sslvd6234z1y";
  packages."mipsel_mips32"."telephony".sha256 = "19gcf77204flpav6ia1sppnqcidhmp35c2ngw8pxjkajcd51aqfs";
  targets."bcm47xx"."legacy".sha256 = "10nb3x7fyg4hwnq6ma3bs5lwshi5c9pwjjhmdkdpswdhzq5yhl5q";
  targets."bcm47xx"."legacy".packagesArch = "mipsel_mips32";
  targets."bcm47xx"."mips74k".sha256 = "02vbcrqqvay8yzg6ca278i5p3fai4ii27zhpxf15g0idjqlrs3k8";
  targets."bcm47xx"."mips74k".packagesArch = "mipsel_74kc";
  packages."mipsel_74kc"."base".sha256 = "1bwxdmk9c92w2szx9q6samx4k4s3pli111li6rnni1qa87wgkgsz";
  packages."mipsel_74kc"."luci".sha256 = "04xbkn2vs4pw1zf65v09v5ypqfxfawq641bqk4ihjp8nry9grx1f";
  packages."mipsel_74kc"."packages".sha256 = "09d9n0xirfy89q4mrvlq75ap69vvml1rvb27rik76v85xibh7x3v";
  packages."mipsel_74kc"."routing".sha256 = "0ccvw36mdg21r1y3l4034s4jigf3855zglv3b9jjcd4nn44d4bqk";
  packages."mipsel_74kc"."telephony".sha256 = "10vmjs9cdwvw6nm3iwdx4z3z5vjh95xgzvyhdihhnyhvxcf2fxxk";
  targets."bcm27xx"."bcm2711".sha256 = "1qykfh6qmwx84l5mvns8497j0xbyl2k4d7c32ksmbs3cgfzb8n90";
  targets."bcm27xx"."bcm2711".packagesArch = "aarch64_cortex-a72";
  packages."aarch64_cortex-a72"."base".sha256 = "1rbv851x7xpc4pndp5iv4x59cg76jiy6hyygk06n66fnavjyk3bg";
  packages."aarch64_cortex-a72"."luci".sha256 = "114p1s0aq2wnfj79j7zzh7mqrspn2n6qhw5wbi3ix3q4bawziryv";
  packages."aarch64_cortex-a72"."packages".sha256 = "0r6qkkmxn8463f12nr65nzw3xwh4ys9zbf0b6jlb2s6m2jm2a08x";
  packages."aarch64_cortex-a72"."routing".sha256 = "0p0pigvri65m8sya0pxc7py743n7s745kd26bprpgw8ml536l6zv";
  packages."aarch64_cortex-a72"."telephony".sha256 = "191b7h1qv91rw3w8nsq4p9jr5yknm039xqlcxvjnd9hh90m7ly2n";
  targets."bcm27xx"."bcm2708".sha256 = "14b70zwp3c8cmhwgpa77gcnnjx6sschf10n34kln9ssvc313nq95";
  targets."bcm27xx"."bcm2708".packagesArch = "arm_arm1176jzf-s_vfp";
  packages."arm_arm1176jzf-s_vfp"."base".sha256 = "0dji0xlhnvw208zn1m7xz20rgvz8jdhmbhxadb0ml61n71m740fb";
  packages."arm_arm1176jzf-s_vfp"."luci".sha256 = "0kdgvh3cgr71hx9cmz9bazbnjf1jwig9cikgdpqp2l773dyfw3kr";
  packages."arm_arm1176jzf-s_vfp"."packages".sha256 = "0m0xw8hqzlna7fzzmlg9avw1magpya1cccfamnhs3z9vvfiafc4g";
  packages."arm_arm1176jzf-s_vfp"."routing".sha256 = "1vb7i8z7f0ygxc94c7sp9qmnlvbn7fcr1dp8qs5z0fwd310dl119";
  packages."arm_arm1176jzf-s_vfp"."telephony".sha256 = "0ah7nv4qfybd6rch28mqn4jif9753g9fx5qiczcfzdn6qq8mnj91";
  targets."bcm27xx"."bcm2709".sha256 = "1317a1dl8qnbxaniqkx5pgm3ybkbcq35knqzzgih255hbbwy98zx";
  targets."bcm27xx"."bcm2709".packagesArch = "arm_cortex-a7_neon-vfpv4";
  packages."arm_cortex-a7_neon-vfpv4"."base".sha256 = "03vs9drs4gy56ggmxnblxrpdf5m5sd78q7z2zf171mksl7hf6mym";
  packages."arm_cortex-a7_neon-vfpv4"."luci".sha256 = "1djgnr01gkdy1q9hv4mi9xd7407mkgs0lw10d4jn2cipqd00ysjw";
  packages."arm_cortex-a7_neon-vfpv4"."packages".sha256 = "1hpnck0n90xpik9rgh258ynyqws72wyxkj9l1xi5gicg21c8vn2z";
  packages."arm_cortex-a7_neon-vfpv4"."routing".sha256 = "06d5finr36ns0z23cjfd7wygabkxlj1ms5j2a3064il767aavcr5";
  packages."arm_cortex-a7_neon-vfpv4"."telephony".sha256 = "0n36a9sh27xaypgdlkk1awb36y5w70g57g2mxb6vcd95k4ywx3cr";
  targets."bcm27xx"."bcm2710".sha256 = "1s716py970b8j64szap2ha08xdr55lrbhdc8ld0x4xp9rcs2pb0s";
  targets."bcm27xx"."bcm2710".packagesArch = "aarch64_cortex-a53";
  packages."aarch64_cortex-a53"."base".sha256 = "1qdnz3hc7c2p5m4hfmiq52ahjji86pqpj1waym6srzl4z6z1d22x";
  packages."aarch64_cortex-a53"."luci".sha256 = "0r3adqsakq8860lwwwb9yaz5qib2whzinp3cjclfkpjg3742mix4";
  packages."aarch64_cortex-a53"."packages".sha256 = "1sxs620jdf1mrbz3aylqp4pj5j7axb6al9zm7gsp3sm0wwv316xy";
  packages."aarch64_cortex-a53"."routing".sha256 = "101qcavwly4hn62vahhd7hx9jx456d2rv9wv0v3g7pwmkk9h23kv";
  packages."aarch64_cortex-a53"."telephony".sha256 = "08ncimp29yw69j6cimrn9pq426jclayks0ik26lyvhi6n54m9vab";
  targets."mvebu"."cortexa53".sha256 = "1hpj6w5d4qpslbibck5yj5ycwiyifbpyci29scxclf4plciy6ska";
  targets."mvebu"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."mvebu"."cortexa72".sha256 = "1k6g2dwi7zw805n0qxap6gy3a9r5hjiln7q7p6c6fwxwyim9yqgx";
  targets."mvebu"."cortexa72".packagesArch = "aarch64_cortex-a72";
  targets."mvebu"."cortexa9".sha256 = "1ahgqlydlb7bkh9fsl5179wpx4pmwy7r1wikdnvhmc7hfqjmnwvl";
  targets."mvebu"."cortexa9".packagesArch = "arm_cortex-a9_vfpv3-d16";
  packages."arm_cortex-a9_vfpv3-d16"."base".sha256 = "1rwbv0jhanv49zbkbpnpby665vcw749ywvb6n21qmzqqh7xpzz2g";
  packages."arm_cortex-a9_vfpv3-d16"."luci".sha256 = "1ir2v0sg0v9k4kq25ppbckzhr443ajcm72firg6v2xjkv5zm4gf4";
  packages."arm_cortex-a9_vfpv3-d16"."packages".sha256 = "0s0pnwwhm0mqrm236w8szj08mp4n3y7sr0pazspsqfr57fkharpg";
  packages."arm_cortex-a9_vfpv3-d16"."routing".sha256 = "13zpz7dqdjqwklfd8wwrrdcnc736qwfj57wyq77348awl4igzlb0";
  packages."arm_cortex-a9_vfpv3-d16"."telephony".sha256 = "0mlkyidyixh1n11w558il4j1695qmj7n7g400q2xvyi2kvzhxigz";
  targets."at91"."sam9x".sha256 = "10zyhysivh696smh3qq9d9y1qwvhg31w5ycrxgf9rb5l4vxhc0mv";
  targets."at91"."sam9x".packagesArch = "arm_arm926ej-s";
  packages."arm_arm926ej-s"."base".sha256 = "1a0bmwicmaai3qp7hll5hi3mfa3xk53ms9ch1ycb08fp4m8298gw";
  packages."arm_arm926ej-s"."luci".sha256 = "1pk2ccyhzmwrvhjl824k9y65pyps47bzz9jj4y47mhy9xzk7nimg";
  packages."arm_arm926ej-s"."packages".sha256 = "131203lli31jr50m8sc8bdb2jhkba72axmhnc7307sgpdmv7m72v";
  packages."arm_arm926ej-s"."routing".sha256 = "1a3y7kwrdfhac2vih261ikihjvgiwyrzzd4j1cfgnhqwf15rdg21";
  packages."arm_arm926ej-s"."telephony".sha256 = "1br2wnzixcdnb2fq2wawgrynr49f2sgczqbrhjiaigdkzjq4dgvb";
  targets."at91"."sama7".sha256 = "12bvgqan2ddq3c6ym7z93dkvj0yn86z215amw9myr42i3y1vkz26";
  targets."at91"."sama7".packagesArch = "arm_cortex-a7_vfpv4";
  packages."arm_cortex-a7_vfpv4"."base".sha256 = "1fcwcijqw8cv5lldrjz7s0aakgq91h4hdifpqcnpc00h0vk2qai4";
  packages."arm_cortex-a7_vfpv4"."luci".sha256 = "1jka7690clcjdmjjsnmk6qcxf7x9jirfarpd6rvyl5c6a2kvqq4m";
  packages."arm_cortex-a7_vfpv4"."packages".sha256 = "0ayj7dcksvd3wjqyp3kh414dlisyswgnwgf2x6qxlczncnandxg5";
  packages."arm_cortex-a7_vfpv4"."routing".sha256 = "0zfrah3f1c0c5nlacr0jv8rgd6kjn4f3q9pkgxk7vbjniq2qf2pl";
  packages."arm_cortex-a7_vfpv4"."telephony".sha256 = "1xl4l48ppygnjgjvy85y5mg4485r28xxwmks96h9cy00c16s9sgf";
  targets."at91"."sama5".sha256 = "1y710dzh2ysr88d6793xgdi4q2662ws98y0hg6hzxfnkksjxqhbf";
  targets."at91"."sama5".packagesArch = "arm_cortex-a5_vfpv4";
  packages."arm_cortex-a5_vfpv4"."base".sha256 = "0mbr8cqfrn035qcvcx8kgivqbgf04irzvn3v40p5v7gd3vdkr8kp";
  packages."arm_cortex-a5_vfpv4"."luci".sha256 = "1vvpdiyqnxmc8mswfdim1fdgz61hd5kkg1gc9jjvaslrfr9v2g2x";
  packages."arm_cortex-a5_vfpv4"."packages".sha256 = "0v6diprn29lvqiw2cinjv3rqzy595sni2j1vrn7hwk8mslxddq4x";
  packages."arm_cortex-a5_vfpv4"."routing".sha256 = "0g3r0h479n1k2pa3vpjlmyf9pwcpnv2vp2k3xl0240b4897vqqq9";
  packages."arm_cortex-a5_vfpv4"."telephony".sha256 = "029qv6m7p1900cwfwi9gzxv1w2s7camv44r5fv2q9j3cq9mxsc0w";
  targets."gemini"."generic".sha256 = "0g1zs4ici7abjy3rn3g1kf6s7bwlvwl98fy32hy4iz7a9vj13l3k";
  targets."gemini"."generic".packagesArch = "arm_fa526";
  packages."arm_fa526"."base".sha256 = "13aklqrffd5ka139m23m9p1kwzf5f8h17xwqsxkg0fsz80mnjrz6";
  packages."arm_fa526"."luci".sha256 = "0bcwfir0a13hf0ggmdwgbfdbjfh3k88cjlfrsgkvgajqnwb0rk8d";
  packages."arm_fa526"."packages".sha256 = "0isphgpzvaywgnbznx52vgrz4jcwfjd3liklcglvzdzzh67myd29";
  packages."arm_fa526"."routing".sha256 = "0gxkdq22bks5ksy8pwc9dh1bj22n7rzfjf38zfffgk6n7vqws3a9";
  packages."arm_fa526"."telephony".sha256 = "0ddcslr085bsnk7mqkd41fc4bknp8yp0na2wxbk6qcr4zy8wxqxz";
  targets."octeontx"."generic".sha256 = "1hzn23gmhp3q273qpcm5359b5clmfmq65qg961bzhib9ls7nxxhj";
  targets."ipq40xx"."generic".sha256 = "0q40p5h2l216azraxdjbfaqbd9fpkcqrwcmlh848lfrjbk4k6hvv";
  targets."ipq40xx"."generic".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."ipq40xx"."mikrotik".sha256 = "0v96rpz6qvwb3d69dlp5vh910if615hfrxrcihxgjhlfdl9ycp59";
  targets."ipq40xx"."mikrotik".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7623".sha256 = "0pczj4krrxwi4ss6ph9kcxs9xgd3gb2br5v1p43ml3qh8iipvh7v";
  targets."mediatek"."mt7623".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7629".sha256 = "02j057hpnxxybv55119dki9a4mm6sd0xk8p7xwbagmnzyym5hpm7";
  targets."mediatek"."mt7629".packagesArch = "arm_cortex-a7";
  packages."arm_cortex-a7"."base".sha256 = "0xs8d1msm6nnrgbc58mm8xifsa8snllaxw49j79hfgap03377s2l";
  packages."arm_cortex-a7"."luci".sha256 = "0c6fa3xv0qj8kysn3wff3fky5ykyd69xb2bwmj2fxx136l86786r";
  packages."arm_cortex-a7"."packages".sha256 = "1qfmrxx96rs7yk056pajbwy96iminx8z4fa2lniblk1r0vscqc02";
  packages."arm_cortex-a7"."routing".sha256 = "0jrn73afqxbvw0bfxmrmd5kqkjpcyh6piyqs5mkvwqqj5gna5f42";
  packages."arm_cortex-a7"."telephony".sha256 = "01mncjk6mwsiyzm3pik4zaj18k3sh8mmjy9nkj4362pi8p09ssb4";
  targets."mediatek"."mt7622".sha256 = "1wns4dgmx4vxk3n76dp6m7n7hmvcyi6kw9qp9nmhfgrfcid425mb";
  targets."mediatek"."mt7622".packagesArch = "aarch64_cortex-a53";
  targets."malta"."be".sha256 = "1l03sjlvymjigggyslx28bzy3k8rbq8pm8p2r3akixvj4qk5w8vr";
  targets."rockchip"."armv8".sha256 = "1vg8g4jwd49fwi0dic1h2myc3gny7fn2v6rc53scyclzfcvjdcg6";
  targets."rockchip"."armv8".packagesArch = "aarch64_generic";
  packages."aarch64_generic"."base".sha256 = "0dkvx8x6x5gbn2p1yiigv34saggh9pxg345zazrpzmwrv45cias1";
  packages."aarch64_generic"."luci".sha256 = "1bx7afh7ffl4rm9prjj4w8jxjb9c7l4y5gcgx5i6i9y10n5mn18x";
  packages."aarch64_generic"."packages".sha256 = "1nbxrjjasj5a27dx700fvm6xwg8xniknn66gf1cskqr451bjsiyi";
  packages."aarch64_generic"."routing".sha256 = "1h09da7nk3h4kb3cqqzb6nmzcxzy5m5kms2358jian85h5rwvdxa";
  packages."aarch64_generic"."telephony".sha256 = "1nv8n8fr42nfkzscz8hmhg8jxa7zalli2lkrmnsk48ga8ldj1fj8";
  targets."ipq806x"."generic".sha256 = "1zdaliybbff5p34y3cx3qkkmigad6ssqspmczc6h3z6xnv7yjs22";
  targets."ipq806x"."generic".packagesArch = "arm_cortex-a15_neon-vfpv4";
  packages."arm_cortex-a15_neon-vfpv4"."base".sha256 = "0ampbbcr695x9ankb45xsfm7dfpkifbxhc4i8vylwypbcc35k7l4";
  packages."arm_cortex-a15_neon-vfpv4"."luci".sha256 = "0ycg3vlh98m7z6gyzlzwxb0528sl8hqjclqz63wg80xkz740g89p";
  packages."arm_cortex-a15_neon-vfpv4"."packages".sha256 = "05ahmlmi7k117qjfzxqbsg60c9sgiv4q97i63nnlfnyq00xxk5ax";
  packages."arm_cortex-a15_neon-vfpv4"."routing".sha256 = "0xwpl0qrhs9pi7f8c1bs41v9k84gn8pghdkbcy4vnilrdm75gmrp";
  packages."arm_cortex-a15_neon-vfpv4"."telephony".sha256 = "0xakm4x0kfn8q1vplshnvkpfzg6nnl638anay671n72rs9bixymg";
  targets."sunxi"."cortexa8".sha256 = "08bhlgdi6imsqxlfpcpmbnmd5ak354x4p91yxxha46kqn5lpzwz2";
  targets."sunxi"."cortexa8".packagesArch = "arm_cortex-a8_vfpv3";
  packages."arm_cortex-a8_vfpv3"."base".sha256 = "00i1a94ic4rf1sp6wf0hx5mxvm8hfq3kk46gzhmsq74zg44ziga0";
  packages."arm_cortex-a8_vfpv3"."luci".sha256 = "1047jn09p8d09ji8ghdi5p8cc8214xhmvml94gj0m8ym6fj0qx8n";
  packages."arm_cortex-a8_vfpv3"."packages".sha256 = "1qhpm3wifg86js2qvszwfh3h8gk84d5x5g9c651mg16r273g1l8r";
  packages."arm_cortex-a8_vfpv3"."routing".sha256 = "1sz5h4h4z0mfzk8vyi8klq46w79jqaxmsvw67m9js20nj0b9943n";
  packages."arm_cortex-a8_vfpv3"."telephony".sha256 = "1ahkn2j0idh81r9v6fad0dlqrqfv2xkjn95n7z3zqi3x66qf647r";
  targets."sunxi"."cortexa53".sha256 = "1dalqj58s21y8xy7c1mpj7lsc6kg5v3x8jxr6n9ds7a44fv4rfrr";
  targets."sunxi"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."sunxi"."cortexa7".sha256 = "15fzfk6qfqxl25y4i97s3kb4akg4izjkv3giq6fd23vibwlp44y8";
  targets."sunxi"."cortexa7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mpc85xx"."p1010".sha256 = "1vjv4gjmzc8hfj2xnvf42l9j4y8r6l8y51kcfb91wh5m4q1m0k6g";
  targets."mpc85xx"."p1010".packagesArch = "powerpc_8540";
  packages."powerpc_8540"."base".sha256 = "1k3jy0m8h107i9nfb9xjs0y2i3r0sgazz95rfr6vw9g2wnsgq1zc";
  packages."powerpc_8540"."luci".sha256 = "0nikilj84nsh20aqfn6wyfviaxryf0scg5nvqhdnskmjc0b91jnd";
  packages."powerpc_8540"."packages".sha256 = "07k0nkpm6gygm374a19ayqx41pydqwp7flfbpf8c9hb0kf52ixxf";
  packages."powerpc_8540"."routing".sha256 = "0rjrxakyl4xi4sdibvb512cnz9rb32isnx9d3cnpfzdll7c9fanf";
  packages."powerpc_8540"."telephony".sha256 = "1j3aqrz3d7rfisahsp6h3n7mdbmz5nyr5wqa034lcqim9nnq2nba";
  targets."mpc85xx"."p2020".sha256 = "16863gs658480jb27qjv3n6lrwszlycli9b3xlz6w6g0y5ga9yk5";
  targets."mpc85xx"."p2020".packagesArch = "powerpc_8540";
  targets."mpc85xx"."p1020".sha256 = "0cgay5wb848dkvi9jrppsrvrw6c5dpdh24f9kwc7lfr02456rlfv";
  targets."mpc85xx"."p1020".packagesArch = "powerpc_8540";
  targets."imx"."cortexa7".sha256 = "03hngks0rqh89rj7qry69s3wvi4cawii3plwmnnim9zwn9rdxiga";
  targets."imx"."cortexa9".sha256 = "1jrg7nz25cnvqyvy2cbyw3r07146cxi49cm69v4pi18vdl1mdxxd";
  targets."imx"."cortexa9".packagesArch = "arm_cortex-a9_neon";
  targets."x86"."generic".sha256 = "0jsqn2d038qp51wmq6kc6lpfyy38g864nhs7fjrcc47a0zaahjny";
  targets."x86"."generic".packagesArch = "i386_pentium4";
  packages."i386_pentium4"."base".sha256 = "06jc8xhai574l40nwjxskzdqdqvgqgiazi6yvslvg16dwvc2f0gg";
  packages."i386_pentium4"."luci".sha256 = "0igrpl2rdqmnhasa9am4zn0js75q75nasln1xv8xsz1n3di2w68y";
  packages."i386_pentium4"."packages".sha256 = "0gv9vv4ivgbjyf62fm8spshv0xmafwyhmzmjgj2pgb9hhcqvs3r7";
  packages."i386_pentium4"."routing".sha256 = "06ybqvvr1wg8l9bc50nip6xzlk3234nl0si0x8xq9xds1ckgf7rs";
  packages."i386_pentium4"."telephony".sha256 = "13pjkri4m7xkdysvgq1bfccb5yxgajfh3zxm5cdl1dkvivn0mdx0";
  targets."x86"."legacy".sha256 = "0l0cwaxda838l4m3sw28mi4xa4n3q5i265sky5afw9w1qy4jc475";
  targets."x86"."legacy".packagesArch = "i386_pentium-mmx";
  packages."i386_pentium-mmx"."base".sha256 = "1wzpibxvjc9z2mwm0k47li00hg4al4drzvpjg8r459895j9l1504";
  packages."i386_pentium-mmx"."luci".sha256 = "0jw36rdn6p54115s1c86m4f7pr71v9kqlcjj42czg3bxy08y6ar0";
  packages."i386_pentium-mmx"."packages".sha256 = "0drvz2xv5xk88i60cq2jdlp7j8c27i8cibvbnkakr7f3pk5cn55h";
  packages."i386_pentium-mmx"."routing".sha256 = "1cbixxvgifwkx8x8blwzy9hpm0v37hwvnmfa2xqjqha02d6jl9vl";
  packages."i386_pentium-mmx"."telephony".sha256 = "0vbw1xmmq0knm8nq5b2fmj25yq6a7pqlzafrvz9z8czh5659z9lh";
  targets."x86"."geode".sha256 = "0cf12l74j7p1g111zvmm8vci96cg67w98chq8bnmjxxlq721yayx";
  targets."x86"."geode".packagesArch = "i386_pentium-mmx";
  targets."x86"."64".sha256 = "14mavvmnsfr98avlg521xryzp1ll2yxirsagj633mhr3ky4dmhw2";
  targets."x86"."64".packagesArch = "x86_64";
  packages."x86_64"."base".sha256 = "04yy1x7h3yjb13rw23bsi5p7fg6bijrsp79ir27nx65xg7z3qn3v";
  packages."x86_64"."luci".sha256 = "0p12s4cgc13qp036v0jzflkhkn4nllwcdfx38lnssd46rl57xcis";
  packages."x86_64"."packages".sha256 = "0sxvn4pzxc12v5qrn4m31vh5zidvq8hpi2g0dkb3wx58r24psmxg";
  packages."x86_64"."routing".sha256 = "11sl1dcwwhad6bfi5pmmbspd5babbv73fsv7l6gr0wvgkdhzlc36";
  packages."x86_64"."telephony".sha256 = "00iywycrp6zrb0355ap33jdnfzziw7arhv2xfcq0rk2fplwp3fvv";
  targets."realtek"."rtl838x".sha256 = "1429ysdmryd0ah07kw6pz6q9b1m0r535dcvzaria9c1vmlf1ngh9";
  targets."realtek"."rtl838x".packagesArch = "mips_4kec";
  packages."mips_4kec"."base".sha256 = "0dwy4mg7m8mn19vwsy07w2haa3nlva90bnaqp64gssqy650k1a5a";
  packages."mips_4kec"."luci".sha256 = "1ssf2y8vbb7ydj8blnhbz7p17db756rslpipjlilqrwww912q05y";
  packages."mips_4kec"."packages".sha256 = "0295s9738j9458amzz2214xs7wah06yqn4fk8ikmvvr3ymdrmbcr";
  packages."mips_4kec"."routing".sha256 = "1kvvc4ghd5l9i6q1p4isx3ys028icv00mdwmf2j136r3v58s4c9i";
  packages."mips_4kec"."telephony".sha256 = "0pi73y4dqs3i2ajf4bi0ir1iw05pq8ik9yk8xxvcf7ywvngpq2qc";
  targets."realtek"."rtl930x".sha256 = "1r7c9ndr15f2n3fjky1a19bnh4nszp21a0524qnaayaczvlbxing";
  targets."realtek"."rtl930x".packagesArch = "mips_24kc";
  packages."mips_24kc"."base".sha256 = "0d59s1iaz07isqcdfz7is31xb27ndm8c3issf8swfncaxmdm6kc7";
  packages."mips_24kc"."luci".sha256 = "1n1ba5nas2k64kln259xkijm79vfvjh4179qsafkwyjqpk4dsr8p";
  packages."mips_24kc"."packages".sha256 = "1qsslfph9y6gx1jy6ir3p5f2g8ssxyifcm1khdiqamr1yl53qx4b";
  packages."mips_24kc"."routing".sha256 = "1hz26ribjwy203jg4bq3m2fifci084pj5jb3z2ib8kzqdcrsjij1";
  packages."mips_24kc"."telephony".sha256 = "0jwj6p00fkx896wyy4vp7372i8070qmbwn8h6q0im919xw0x7sal";
  targets."realtek"."rtl931x".sha256 = "1gh4zxmj63lh29pg6aff4x4h2qli12l16ndd19sp8wlww3idhm7j";
  targets."realtek"."rtl839x".sha256 = "1vyidlr34h5p4ap389qb87g65zwxi8p6jgxy5yzaaj35hj4whsil";
  targets."realtek"."rtl839x".packagesArch = "mips_24kc";
  targets."armvirt"."32".sha256 = "1m7zgyw9jkw4b21b7prw0xg22gdaxr0cmx7drjdb184l1y54rs97";
  targets."armvirt"."64".sha256 = "11ciscm5ddh1mdn2c03sb5yf79yjlcmimqaaw9mjli9y0j2yzsr2";
  targets."kirkwood"."generic".sha256 = "02b92pv8fkmhd9flgynp7frjhpmj3bn4xspqb3yl8ljc4nzfviky";
  targets."kirkwood"."generic".packagesArch = "arm_xscale";
  packages."arm_xscale"."base".sha256 = "1lsscvjassgh0k92n629qlsj6gggw5yhpa3ahs3jkmcqb3h9gzzr";
  packages."arm_xscale"."luci".sha256 = "10g3r68cs4ggwh665y522j34gi9557pg1nmdax99q5q9gxw6zpx7";
  packages."arm_xscale"."packages".sha256 = "153i6klmch07bf9wljp1kf7f9ca4h7gh9488gyd2wah2ih6k50b3";
  packages."arm_xscale"."routing".sha256 = "1sinq43xind4n3anam4gzfqkdn6wx2irxqh2ab467y2n4bnavkz3";
  packages."arm_xscale"."telephony".sha256 = "0x2x4rwzcsx86h6ymaiakk9rgqbnzkkxyw5p55mklgvpv7l4xym7";
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
  packages."arc_archs"."base".sha256 = "1azxfzscyzpnyh2720ba1x3abhfb29gyd5rxi7zsyaxd6wn8dmzf";
  packages."arc_archs"."luci".sha256 = "0s2lnnff65l0z8w9jk4v7fmnsv6x35mb4143ml8k6qxqb4s6p8wv";
  packages."arc_archs"."packages".sha256 = "0jvdhbys4xhifzp6zj3jq4py0w6lwrjw0s7n1vr9vzlwz7ccx8ny";
  packages."arc_archs"."routing".sha256 = "1f7xcjmddwzyvrbhkjm5xj5sa3ml13wbrg5kmgrjyn4qaah3asg4";
  packages."arc_archs"."telephony".sha256 = "1r91v0nbh4nxq8n8blcv3amgnf2fxxcq0yldyrii6dl96mhf7k8m";
  targets."ath25"."generic".sha256 = "0md42dvx2qxqg4h62h3dabfqr2jxgkxsxifc9y98yjmchq8ar6df";
  targets."ath25"."generic".packagesArch = "mips_mips32";
  targets."apm821xx"."nand".sha256 = "1xlrcnddb0jqpv831j1x3n8bf41hm2wkcj9hywx0lgzbcyqbd0df";
  targets."apm821xx"."nand".packagesArch = "powerpc_464fp";
  packages."powerpc_464fp"."base".sha256 = "1hl5k6i21crj89zdkjl4i50fjfjip93ffc7rwkivgnb76lmpa7ii";
  packages."powerpc_464fp"."luci".sha256 = "0anxk6m3pndkrx8r0sa0nkjvjwq0x4xmsg8hmjqvzna5ahvyqxa8";
  packages."powerpc_464fp"."packages".sha256 = "1vgz7g2nbah72irlkw3vj2d7nckc138i2kq9w4i1by1cz8mb6bc3";
  packages."powerpc_464fp"."routing".sha256 = "0ss06kjky7claapbdvmi9z1pb7gjfyxv09lqxx99ixmr0k0cpf3g";
  packages."powerpc_464fp"."telephony".sha256 = "0259kcb0y0w9wi6hgffksi26nqxv6s07pj7ixqyxpdrn97b2mdy1";
  targets."apm821xx"."sata".sha256 = "1ssxq2x4jzl6c4z24xdy7pvlyin8n63swh7hgpx4w85wcm1n9adk";
  targets."apm821xx"."sata".packagesArch = "powerpc_464fp";
  targets."bcm53xx"."generic".sha256 = "0nxzixzwjw5cp0asi80b666dgcrkrlkgal1v5z4gyjqcicrnkyhq";
  targets."bcm53xx"."generic".packagesArch = "arm_cortex-a9";
  packages."arm_cortex-a9"."base".sha256 = "0sqf2wfr7giwzcmwx4yp2y528y3qadaq9dkzd58i533inbgapd3p";
  packages."arm_cortex-a9"."luci".sha256 = "1g6spr7vn47b2n6s7pwi583xplyjg38whazva4i7s20vcfmd0xyd";
  packages."arm_cortex-a9"."packages".sha256 = "0qbz8zzb5fspisyswslynzyydn2fc74whhic3s1mliqnkazbm61h";
  packages."arm_cortex-a9"."routing".sha256 = "0qkzz4brlq38n3vgrd6r81j4pvalskq9swyzc56zaqwmv76idlnh";
  packages."arm_cortex-a9"."telephony".sha256 = "0c66zrd3nfnzj4svy0sa20lk01m2v1x5zlwf286ii7a1y0b52yw2";
  targets."ramips"."mt76x8".sha256 = "0jldlhqg7yxiii3hzp3mjh34ymwy0vi3xrxk0hrm94m8vqnjs3ij";
  targets."ramips"."mt76x8".packagesArch = "mipsel_24kc";
  packages."mipsel_24kc"."base".sha256 = "15c0kxb4a9cgnzxn46bq74md0lr4ncc3gk6bpm6g8y60f8wic074";
  packages."mipsel_24kc"."luci".sha256 = "1hmm5irvgc47nml4w39jw3xzmz2gvnmb73c2vp5m9cacv7anha60";
  packages."mipsel_24kc"."packages".sha256 = "16qcirbmnmaaqfyngw5wsk5vh16bjap2jjmghxsqk044gxqv8l7w";
  packages."mipsel_24kc"."routing".sha256 = "0yd3ds5h6152nmqjzl5jc1kck2j4kr79ymzcif1dwsixp8drdpi9";
  packages."mipsel_24kc"."telephony".sha256 = "07bc9pqwmmcxjpqssyicamf3gsyfhf28a5yp3mrvpdvdpw1fq5g7";
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
  packages."mips64_octeonplus"."base".sha256 = "04f6g71vhba9j25jb476n0alnpm87wlyj9pp1fr39yrw2jf3754j";
  packages."mips64_octeonplus"."luci".sha256 = "115b0ibnbsr1kp7f2cj86f9advs7ik26k6m1cvgyhim58ahfwjpn";
  packages."mips64_octeonplus"."packages".sha256 = "1dyg8zdg92y0y04prg6kaagam0ham0a6jmpx3l1ig0l75wbxni1p";
  packages."mips64_octeonplus"."routing".sha256 = "1pplr1ijc7pb8awx9j1g57vwg5cp6szg4bx5n2r4g9n7yc731hv1";
  packages."mips64_octeonplus"."telephony".sha256 = "04bykmsww719y0k1lpy76jiqy4isy9b0ll44ypsck2f4qxghxsp0";
  targets."pistachio"."generic".sha256 = "12gsk9j72pvvw7j9rn4iwpnaada1z6w8cd96qxvgynhnpfci5fc5";
  targets."pistachio"."generic".packagesArch = "mipsel_24kc_24kf";
  packages."mipsel_24kc_24kf"."base".sha256 = "1ibcdqr3x9x4k547654b7kwfspin4vysqv660xj34kgdjz1814zc";
  packages."mipsel_24kc_24kf"."luci".sha256 = "0rv3grap2bg4bqfjgffjnpmmgq3sxs9rf98qzrwpzds7lpdrk98k";
  packages."mipsel_24kc_24kf"."packages".sha256 = "1jjd13a9kwk6hwhqsm9dw5vbb88v3az9aind9ngx1wa4g1capycn";
  packages."mipsel_24kc_24kf"."routing".sha256 = "072gwaskxd7jawnxnyyd09p3yhpf9zd6545yp108bdwi8rx5v0v3";
  packages."mipsel_24kc_24kf"."telephony".sha256 = "1alpw9qjhivv1pblf4p27zj63zj6zljgp0bjbk9k4f5sjyk5l7sa";
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