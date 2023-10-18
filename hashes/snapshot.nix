{
  targets."oxnas"."ox820".sha256 = "11xj1wbx24x7ssn57bqnyz333nx8w11v71rxjqrmwq5wzq4rhc1i";
  targets."oxnas"."ox820".packagesArch = "arm_mpcore";
  packages."arm_mpcore"."base".sha256 = "14jq5qgx7zp6h54bmxjfj72wjh58p1dil5s1f1sklffn7ajwkmpp";
  packages."arm_mpcore"."luci".sha256 = "12xxdvrcn0yvqzzmd4lb9z6iyj03jxnv81nf5snhdblndncyxl25";
  packages."arm_mpcore"."packages".sha256 = "0fd26sznscvmn84x7agy1i8lkmw7qsn1nq3l6x74206ji678yfil";
  packages."arm_mpcore"."routing".sha256 = "18wh116jgl1gxcrcyb02h9nyajmyxfybz6vh1027hxd7xfrfy1ql";
  packages."arm_mpcore"."telephony".sha256 = "03dh70bxlax5cq9dvw9qfzjdd39yf05m8qphhkh7zz081zg6w1x8";
  targets."ipq807x"."generic".sha256 = "050flrniy7afdqwmw1lv4vhx2vphjhy8zk98bdq78ndq8dms2f3j";
  targets."ipq807x"."generic".packagesArch = "aarch64_cortex-a53";
  packages."aarch64_cortex-a53"."base".sha256 = "0ds3x6zb0kpffmz6wvaakrqj0m5k98pg9algjkx05yvv5wzyaxj8";
  packages."aarch64_cortex-a53"."luci".sha256 = "1k9dx7jlkp0zcc2i70g8myf7czbqyd354a7cm1j6vmgs2cwyilq3";
  packages."aarch64_cortex-a53"."packages".sha256 = "19669iwq34jq1b3p46ln2kphxymg236mc9yp03mnfdlsvk857q9f";
  packages."aarch64_cortex-a53"."routing".sha256 = "1zj3yvq1xcjh1i7j99afll2c9hsihacncf52d6vwaz8pdn6zdyxs";
  packages."aarch64_cortex-a53"."telephony".sha256 = "1p8z41mpyhb5dqvngks3x9kz9li62jpdldq9pkm1fai6n01i3gw1";
  targets."mxs"."generic".sha256 = "04g9skwyfl203an1kq103flzclhpzhwx8hfs35amzwx1bj21054y";
  targets."mxs"."generic".packagesArch = "arm_arm926ej-s";
  packages."arm_arm926ej-s"."base".sha256 = "1qgkkxig2dzrbrk6g39zx4ikxb55cnqkfp73wfnlxpkfclabq3fv";
  packages."arm_arm926ej-s"."luci".sha256 = "1ay3n0xsz67sb8pkijhrsp01fhhz7mmdhj2h5nd5dh05p3gnwqrp";
  packages."arm_arm926ej-s"."packages".sha256 = "1d29h0q5bz3yxnbrh496l90ls5jsq3fvfa7vn7qjys9w94lhw0yy";
  packages."arm_arm926ej-s"."routing".sha256 = "10da5myy8k84yhr7w1j2pq3w00s9qvsd4karc3ndbza81f467148";
  packages."arm_arm926ej-s"."telephony".sha256 = "13ssf5xcgkkxwc7f8a8w648mhajg2cg76ishq5rsrj7sipcjrnh7";
  targets."zynq"."generic".sha256 = "0nmcqy0znjhp5cbxq4w8cgyma8hxc2zxgjjgccvdpl97q3s6qfdx";
  targets."zynq"."generic".packagesArch = "arm_cortex-a9_neon";
  packages."arm_cortex-a9_neon"."base".sha256 = "0dymgd7kj1nj7955m16w65afpi45qs60vdnn5m817ig8r23sc364";
  packages."arm_cortex-a9_neon"."luci".sha256 = "0biz9f3cj1zri6y3x33xncxl7sm1h4yac54949vj8zh68psgp803";
  packages."arm_cortex-a9_neon"."packages".sha256 = "0cjnpj27ipvxhm662wvmb34dqj4fbwckw7k71593xp6rmscrwdyi";
  packages."arm_cortex-a9_neon"."routing".sha256 = "1ndplhn2qhvwghzycvpyqf0k7p8336fll51ngbnnj95jbafhnq27";
  packages."arm_cortex-a9_neon"."telephony".sha256 = "0ikngpd670kc3fsgr7ccn0gfp4v5ms0w9nqlsp5mardl693kqw80";
  targets."bcm63xx"."generic".sha256 = "0klxczj53wba64xifai70j5g50a4pd3hy0q8qqr11i7c0cw97b9y";
  targets."bcm63xx"."generic".packagesArch = "mips_mips32";
  packages."mips_mips32"."base".sha256 = "1iv7l4cp5ny8cfm85kllpr3clddnv7x739wqm5dmf0hyhghmhnzz";
  packages."mips_mips32"."luci".sha256 = "1zb9vg2zli59npb5j3h5h9h53hl4d89w72m017dc5zpyk5spkr4x";
  packages."mips_mips32"."packages".sha256 = "03g4qiac9208009y13j4cza6cbjm7r0p0ifz2cd78gdrz0vwajkz";
  packages."mips_mips32"."routing".sha256 = "0zy17460vnnjw0hkxmzq2b1si3bl9g84szgak0hr3ayzmfhbxs4z";
  packages."mips_mips32"."telephony".sha256 = "06113p3dwpr9kfrc8vz47rlk4bhkqqxyf02s9mfframzhjxywkcz";
  targets."bcm63xx"."smp".sha256 = "01an2fipgx2y4j3n3lzyrbqw25qskyfsi80vid2g88vnx0pihwfd";
  targets."bcm63xx"."smp".packagesArch = "mips_mips32";
  targets."bcm47xx"."generic".sha256 = "12d9b4s63wmrr05cakg36mpln03qqr2bz7w00m56djlw659nnn9s";
  targets."bcm47xx"."generic".packagesArch = "mipsel_mips32";
  packages."mipsel_mips32"."base".sha256 = "1hv9mcvv68axawvfx6v0drxrx8k28csc7nrnbbr56714szsnyssn";
  packages."mipsel_mips32"."luci".sha256 = "0wdsnmxf78qlkl5b8rw8b7sz4sa4wih30bfs90h2lh86pfxk04dx";
  packages."mipsel_mips32"."packages".sha256 = "1hxkqlh8pd0gnph57gfdxqz5msdzs75kfsgqplpfyas6hyz723ap";
  packages."mipsel_mips32"."routing".sha256 = "1s4bvfxlx0772kyj4blrhxrcqxwi2b39iz4xxb71vcrivhzm07cn";
  packages."mipsel_mips32"."telephony".sha256 = "19fldqzv67f3k6ixbgz8v5njdb23fr5jl7q54pwb0dv3favr7pf5";
  targets."bcm47xx"."legacy".sha256 = "16f0289dxf9hgxiby7bvn03brw0dy6bvy58imbkz98i00angab9p";
  targets."bcm47xx"."legacy".packagesArch = "mipsel_mips32";
  targets."bcm47xx"."mips74k".sha256 = "0yy6phxxjz6lvd4r5p9qin0w3bfh6daknq9213qybjqmzyjgig94";
  targets."bcm47xx"."mips74k".packagesArch = "mipsel_74kc";
  packages."mipsel_74kc"."base".sha256 = "0y9gh0cn538c8q41jmg2wdzmsx5499da91hqc4595n18fqb45gx2";
  packages."mipsel_74kc"."luci".sha256 = "1bw161y57w9shr3mdh31wnbqyxnhlg490r1piqsc3ssqhri13ky5";
  packages."mipsel_74kc"."packages".sha256 = "0sgij1877cqpg17mlm22g0cyh69h6q7y0p8gqfqvgajjk3y9dz7a";
  packages."mipsel_74kc"."routing".sha256 = "0gx0j830d4jnb87h8rdjl73a3v5wh7npw4baw3vclymvd9jqplxn";
  packages."mipsel_74kc"."telephony".sha256 = "0hhk95rq6ak8ynnbrzycp8fsdzxaz2rac63il5dp3ildrcw1qjrm";
  targets."bcm27xx"."bcm2711".sha256 = "1zc4lnra2dz7fda413fh76v9a2c9vsm6jvnwcjpivjzl4s2lpgcz";
  targets."bcm27xx"."bcm2711".packagesArch = "aarch64_cortex-a72";
  packages."aarch64_cortex-a72"."base".sha256 = "0gwls394qdhvnain21pkq6md3rr0lv8l4axa73jrk2l6qjkbypb1";
  packages."aarch64_cortex-a72"."luci".sha256 = "02lh74vm594jl1rjkfzj7qg4nvdgwn84l55y3aasrkniixga3sk0";
  packages."aarch64_cortex-a72"."packages".sha256 = "1kl5ic6sc69x1y7bgivvvr1q516x7flxlkhghjc2icajdgchdxl9";
  packages."aarch64_cortex-a72"."routing".sha256 = "0awss8z69mg7nkv443vhpwbcp37wv5csbhn50cvqq4ml6y4ixc7x";
  packages."aarch64_cortex-a72"."telephony".sha256 = "01y127z4zg222kw7hcmhqwr0k25c6n5bifw9rxh90mrgk2gm8fkf";
  targets."bcm27xx"."bcm2708".sha256 = "11nwgskkhrhwjlbla55jsxkklw8jns6kmq0sga06w8gmwnijppfp";
  targets."bcm27xx"."bcm2708".packagesArch = "arm_arm1176jzf-s_vfp";
  packages."arm_arm1176jzf-s_vfp"."base".sha256 = "1sivxcm8w09xjhr0f9mf8kx63c72n2hcly2cfzk09dm36mf3whp1";
  packages."arm_arm1176jzf-s_vfp"."luci".sha256 = "0dj0lbmqf0dxw4d8x80g3lydxm5rix2zzdxw5397m5r3bvafampr";
  packages."arm_arm1176jzf-s_vfp"."packages".sha256 = "1vwr6nhv9jfi219pjq8jvx0w10n5simahxjhrv06i8ibblamz3pl";
  packages."arm_arm1176jzf-s_vfp"."routing".sha256 = "0y3lyldp02j66h59sdcgbck9xw1iriismqi715wb9j3h7gx8hwzi";
  packages."arm_arm1176jzf-s_vfp"."telephony".sha256 = "0wqpdf7ci2b80mylqal4gdzwdmzzdvzsbvjd735zwsy03290fcaz";
  targets."bcm27xx"."bcm2709".sha256 = "0d3v7hfn6wwnsa5fwbsg221dv8nlcw28irl884ixczf7fi2gf5z2";
  targets."bcm27xx"."bcm2709".packagesArch = "arm_cortex-a7_neon-vfpv4";
  packages."arm_cortex-a7_neon-vfpv4"."base".sha256 = "1js2yz9r3884vs3a3jqss1aqm1k0cvhy0i0zg1d1c748bw1xw7fk";
  packages."arm_cortex-a7_neon-vfpv4"."luci".sha256 = "1d522drzy87c2bqz5gvcrwackmmh5lma08pn8g4wkg7l688lv45i";
  packages."arm_cortex-a7_neon-vfpv4"."packages".sha256 = "15r55x5f59caig9k2ydz2p4naq3pcnpdp9fzg3ab4wdf4xvbgj73";
  packages."arm_cortex-a7_neon-vfpv4"."routing".sha256 = "1ha890axsaxxhmwx21c8hv5l26ngj1zj6q1shxibmx5rh265mi5c";
  packages."arm_cortex-a7_neon-vfpv4"."telephony".sha256 = "132iyrxj4azw5g9rvg0nrvqn7ba0gw171m1cc8dch05m5ny8piy3";
  targets."bcm27xx"."bcm2710".sha256 = "01zf98dvk1c7kbq918bndz2mwpwzhxgg02l1h9b7dlxy9v18d099";
  targets."bcm27xx"."bcm2710".packagesArch = "aarch64_cortex-a53";
  targets."mvebu"."cortexa53".sha256 = "1mk4dkhh7p6nxyk8fg7hqz6x74iqnr2z0mwpmf9y0n471c8m48d0";
  targets."mvebu"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."mvebu"."cortexa72".sha256 = "1vlk0r3s4qj2j946plhqa2xpl35n8chmpfkz7crnl9pqgawch8w1";
  targets."mvebu"."cortexa72".packagesArch = "aarch64_cortex-a72";
  targets."mvebu"."cortexa9".sha256 = "07jc6f6p7l9blnxmsa35ssgb5wm6cd16ldag8vks2ywcdfs7w7n3";
  targets."mvebu"."cortexa9".packagesArch = "arm_cortex-a9_vfpv3-d16";
  packages."arm_cortex-a9_vfpv3-d16"."base".sha256 = "0p625bmvb1b7v77l7drl9c701wd6ki7683nvjphgsf73rklfvkqx";
  packages."arm_cortex-a9_vfpv3-d16"."luci".sha256 = "0003qnl1rjk8lxpabbwkdgk6wdzwp6ddj9r8a0f5jdgcb5laba5x";
  packages."arm_cortex-a9_vfpv3-d16"."packages".sha256 = "1w3fmwlswygqdlbrszcgpajykx2j2zm3256yldddf5ir5nhmplqy";
  packages."arm_cortex-a9_vfpv3-d16"."routing".sha256 = "076rzmqifk9c29kmfi654a3sdxr56dab1ag02ja173rnx50bjrdj";
  packages."arm_cortex-a9_vfpv3-d16"."telephony".sha256 = "00078shyr3ijrjc5ry4428vp38g3lp88c5ark09zgqyc7gsbfn1k";
  targets."at91"."sam9x".sha256 = "1bfh28qnfmvksn0r7i1zan5r8zwn0y7wygm4dsp52kszzwmg6zr3";
  targets."at91"."sam9x".packagesArch = "arm_arm926ej-s";
  targets."at91"."sama7".sha256 = "1m5wqmwb9cfl21flksx7qqqmpwmjd6bym5q54hl96if38fzfznpi";
  targets."at91"."sama7".packagesArch = "arm_cortex-a7_vfpv4";
  packages."arm_cortex-a7_vfpv4"."base".sha256 = "1xmzlcm2llarjzknq4vzg58ydydxjnvh7i5pyppvn5praifmhbvw";
  packages."arm_cortex-a7_vfpv4"."luci".sha256 = "1bwcy3acjkj2ym41w0j4j4gfl8j8xnhbk401mcxjlxyi1pmz9hfw";
  packages."arm_cortex-a7_vfpv4"."packages".sha256 = "1z1whhpacbnrcy1f87w8vlpncbrhdjckzcvraija0lz71s7mw9vb";
  packages."arm_cortex-a7_vfpv4"."routing".sha256 = "1d0qkzrbfa824sbf4cs10k1559acyb70mpa86fj3kggzhq5xmj9p";
  packages."arm_cortex-a7_vfpv4"."telephony".sha256 = "1a7fl2zzr2036bbnypzmqy83jih0ggz0ymww0cgn0fjpzj6l9mng";
  targets."at91"."sama5".sha256 = "1gq8yh95f8rsngyz2qyf4rksbdffq8x1fc0jqcxflg879pjq9vik";
  targets."at91"."sama5".packagesArch = "arm_cortex-a5_vfpv4";
  packages."arm_cortex-a5_vfpv4"."base".sha256 = "07j1f7a4a9dbhlrxv657n7my7vx7c1g32hc3p2x6blf8wg36vapn";
  packages."arm_cortex-a5_vfpv4"."luci".sha256 = "14yw24zf1xfbqksq9fn8bld78zp5wrf9g9pjl5c05q61bbww9msf";
  packages."arm_cortex-a5_vfpv4"."packages".sha256 = "1mgmpamixr6gg2a2icakml381kk87wgpf3i8b886rsi34ln18j5y";
  packages."arm_cortex-a5_vfpv4"."routing".sha256 = "0in3zl9lhr0xs2wb1zn09cc20qz3g7bl0szvv0yd83yad4nj3pmh";
  packages."arm_cortex-a5_vfpv4"."telephony".sha256 = "0fq553s7jrxn8i3p25b5q60c27h241j901yjpcksnvd6vrx72pif";
  targets."gemini"."generic".sha256 = "1x2jp32d837kv75sasdcx38pzzhaqrn92w6z0ds7lj0r6y37hn1a";
  targets."gemini"."generic".packagesArch = "arm_fa526";
  packages."arm_fa526"."base".sha256 = "1r5fc803wh7n1ywb8zmgk60z4cd61bxx25rjvvdm9vldgfr12fd1";
  packages."arm_fa526"."luci".sha256 = "13kq1pa259a5jw28q60pjpd17q2rq3ip4lly9axp66d5ldkz99mr";
  packages."arm_fa526"."packages".sha256 = "1s270grvj3fj10hspl6s1y3rqr98kjg1grcw8wqm19vhb1v6l5b0";
  packages."arm_fa526"."routing".sha256 = "17sdbskh7k5njay2m2wi3ycdbr4niabivknl52shz00svjaivzjy";
  packages."arm_fa526"."telephony".sha256 = "18qyjdjxzwsbzzbvvvqv6kaxq6mpqp9c6zx4h4pb722dbvcvwpwm";
  targets."gemini"."raidsonic".sha256 = "02cdrm8qjkm1xjgxhsr34ddqkp9vmp9bw7gj4fbfgivj5im1pva2";
  targets."gemini"."wiligear".sha256 = "10xqzjlws8psmqr69by44zavpvwnrl8s48m1dbcsdw3ix8w0p4vr";
  targets."qualcommax"."ipq807x".sha256 = "0g4hy573hbng79gncgd473a39s1x4vf27wsaz88wbv4p3xr0dbgd";
  targets."qualcommax"."ipq807x".packagesArch = "aarch64_cortex-a53";
  targets."octeontx"."generic".sha256 = "1cznm9y7qsmq0qswxn9m5ybjcgxx6iinxdry7vdgz6h9r0r020kx";
  targets."ipq40xx"."generic".sha256 = "0f5ci3fqr76nxw22y8ry9l3rcw9hnz7vshkhcdgsc85bygb48fww";
  targets."ipq40xx"."generic".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."ipq40xx"."mikrotik".sha256 = "12d12xbfiwk7gin46dldf01wn5kc2xa7plnvvyr4mx3hm2alssfx";
  targets."ipq40xx"."mikrotik".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."ipq40xx"."chromium".sha256 = "13szl6439dga21nsmcivvdr6ixw0g512yy4zb6z5fjmdbgf5cyr8";
  targets."ipq40xx"."chromium".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7623".sha256 = "09xza2i38n910s98w8p1lac7g4imik82vr0bdq1cw9jxm1lsx5qn";
  targets."mediatek"."mt7623".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."mediatek"."mt7629".sha256 = "1hxlivy9k8ykzgp061sb7qkdylkxvghnvg7ldyzxxkk2ihng9yqc";
  targets."mediatek"."mt7629".packagesArch = "arm_cortex-a7";
  packages."arm_cortex-a7"."base".sha256 = "06hsxww8ksxdraqgafn3v6rq1g87y62zgh97kza0r7g3aryyp1kr";
  packages."arm_cortex-a7"."luci".sha256 = "0axwdl8b6m7gz2kgmwahjk9xzyi4xmw5ricnxw0qmq88wwd4w0bb";
  packages."arm_cortex-a7"."packages".sha256 = "1z07vvkfcas2iznv7sqf1mbl1b8z27lgfqa13n6x7y4cnqy4wwid";
  packages."arm_cortex-a7"."routing".sha256 = "1h6i485fil3745wi665l6d3lzd7vrp3z972af6mqik6qr2026h9g";
  packages."arm_cortex-a7"."telephony".sha256 = "0nbm83chr824rw87dcl342c76klzpzagbhijriixdkdb7a2jvp72";
  targets."mediatek"."mt7622".sha256 = "08c8rnpmcx920fbbf7l6a5zwixrbg888szf6rfih7hvlzl0kbfx7";
  targets."mediatek"."mt7622".packagesArch = "aarch64_cortex-a53";
  targets."mediatek"."filogic".sha256 = "1f9mmnqbynwh5gqxc599s9z8vd5bxqzx8mhlb7h2j555wkrr8yfg";
  targets."mediatek"."filogic".packagesArch = "aarch64_cortex-a53";
  targets."malta"."be".sha256 = "17l1i16r414g6k40mvk2jnnxa33qkfw7fh67dd9lnrpk62zwxgsz";
  targets."malta"."le64".sha256 = "1ccqhvq32lzz47888x8jsml2bcvp04cg5785bdx8l3lifqhx9s20";
  targets."malta"."be64".sha256 = "0ngcys2ajz5vnj6465n638s6rggsrx215ahzk48pd9941nwzpqrs";
  targets."malta"."le".sha256 = "0cw4gfinqbz7xw47rlnka2zcf8z46shw9f4wbfvi0626a28v5wk8";
  targets."rockchip"."armv8".sha256 = "1726bg2mhy1dsrzm4z4gypa145h79rbg1rwylnigh9xcyl9vx7b7";
  targets."rockchip"."armv8".packagesArch = "aarch64_generic";
  packages."aarch64_generic"."base".sha256 = "159wvcz1ccr62l6sm37hva5d56x2ichl1qs99ringysl2wgdqlvd";
  packages."aarch64_generic"."luci".sha256 = "18h6im3h944hhid4s0wi1m8y6y9jjlqlv07apy6m2gc65384r277";
  packages."aarch64_generic"."packages".sha256 = "1b747f87053jq9j5ai2s9v9lc5bzak089bp7ja780kyj56kvpg4n";
  packages."aarch64_generic"."routing".sha256 = "04cd89ip7kdvsd970113qcaa4qp80rhj4kgh154pvscy9bpklilc";
  packages."aarch64_generic"."telephony".sha256 = "0zds9mv8b6dmgkax7dmwxarkxkymm3x5z6c4xzfs89m75sxj9wlg";
  targets."ipq806x"."generic".sha256 = "0jr2bnj67n4a9xjkcvx6r41aq4c03k7b1dwdwkwxhdiq8vs89cnc";
  targets."ipq806x"."generic".packagesArch = "arm_cortex-a15_neon-vfpv4";
  packages."arm_cortex-a15_neon-vfpv4"."base".sha256 = "0ggpv72ngmb3jmnvavn5gl92aw7smhq71ldbcdi55d4fb7b18vrh";
  packages."arm_cortex-a15_neon-vfpv4"."luci".sha256 = "0j2im83viaqxdaz6kz3xgn3rm15m48dbcpfdwdrwcsdjfrpv1wzc";
  packages."arm_cortex-a15_neon-vfpv4"."packages".sha256 = "0c0j1ab7kknm9f3f8634fyk0jf1gx53clfjsx2an4cd9hl4k56wi";
  packages."arm_cortex-a15_neon-vfpv4"."routing".sha256 = "0zj7nxncjkp80f96rxgv4q6zlxhf04qbppyhjk6qhkh1rzp7pb73";
  packages."arm_cortex-a15_neon-vfpv4"."telephony".sha256 = "060f0xkz7i0g9sdgxz79wgbs27zj4i0gdni6wa5r5gwykxnmk7zl";
  targets."ipq806x"."chromium".sha256 = "15isdascrln31bajyrijcimrm0wsmb6h33l3cjl0yg6d4b361b06";
  targets."ipq806x"."chromium".packagesArch = "arm_cortex-a15_neon-vfpv4";
  targets."sunxi"."cortexa8".sha256 = "1sil34qp35m2zxff2qhq5qi264zspb3rxz1vpssjm4bl6a1miayn";
  targets."sunxi"."cortexa8".packagesArch = "arm_cortex-a8_vfpv3";
  packages."arm_cortex-a8_vfpv3"."base".sha256 = "0mf8z2k9nnx9yl1xdix87rjix0gp1y1976dpbdx4r464liyc7i1d";
  packages."arm_cortex-a8_vfpv3"."luci".sha256 = "1h9s2nj8k3w82chym9qr3df67wdkmmifvn7byzxykxhsa922piww";
  packages."arm_cortex-a8_vfpv3"."packages".sha256 = "1jib974bfnkx3yfmy3h6xpg62yfqjrqlsr5cv8mvl1vbvy1gszw6";
  packages."arm_cortex-a8_vfpv3"."routing".sha256 = "1yszgnk6xyvxpd8wk28z2pp5my1pr8lg4r45vfwy733jhwy6gfl1";
  packages."arm_cortex-a8_vfpv3"."telephony".sha256 = "11cijdlb4vbxkp1hi7wx8l85hjkca2878iv79781kz12s61kyl4g";
  targets."sunxi"."cortexa53".sha256 = "099x9jqd2zmx431rjr5llshbkh7bq6n6fh595ryjj05xbxbdlga0";
  targets."sunxi"."cortexa53".packagesArch = "aarch64_cortex-a53";
  targets."sunxi"."cortexa7".sha256 = "154qhg0jl93fm933691352dm1kwp7qsybd5v69yqjzdv0rc56vqd";
  targets."sunxi"."cortexa7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."armsr"."armv8".sha256 = "1xvgwa70qa06nrwb90f9i81mjih75rjyx4dbyx52k19jf5407xiw";
  targets."armsr"."armv8".packagesArch = "aarch64_generic";
  targets."armsr"."armv7".sha256 = "0cj94ils64pnm1i6l1cn084793d19aln4n0hsxc0kpm35mgplps1";
  targets."armsr"."armv7".packagesArch = "arm_cortex-a15_neon-vfpv4";
  targets."mpc85xx"."p1010".sha256 = "0dzsx1ry8wv3afkdy0avjypjfdbnbmniym3fckki332a888fg79q";
  targets."mpc85xx"."p1010".packagesArch = "powerpc_8548";
  packages."powerpc_8548"."base".sha256 = "0rwvnvdnxrsqnswrk6sdg35vqd5bn5dlwgix3xw4z5fd0l4bni12";
  packages."powerpc_8548"."luci".sha256 = "0i718bf5xpgc2f11ysr13v29rw7gpcrm4xdd74pxn8axvxnpq2i6";
  packages."powerpc_8548"."packages".sha256 = "1r340h785mz4j0xjy1w1aqq0zi3bqw0vzfsp8z2xn0srl76hc77s";
  packages."powerpc_8548"."routing".sha256 = "0v7x4pfbf233dfs3a66qh2736fl5mdaqrvc7s3q4m2h3qw74r0sr";
  packages."powerpc_8548"."telephony".sha256 = "11wvv7bcixkl3idpr347g7wdji6k9ydagf8m7gg87cmqjxgdnj05";
  targets."mpc85xx"."generic".sha256 = "0d3swcpzb68y3ggkmjgn1hbg67xd7nzs7djjkyljnv7x32c4mrg5";
  targets."mpc85xx"."p2020".sha256 = "0xi99k0c4i5vwrpjxrh2wfqw13rh9fq5kscdh21m1qlbj7fy7hpg";
  targets."mpc85xx"."p2020".packagesArch = "powerpc_8548";
  targets."mpc85xx"."p1020".sha256 = "0q26z5akyqx7xqh9jq8gpf2qlkwag4235r9mr0jinip3chxx6qpw";
  targets."mpc85xx"."p1020".packagesArch = "powerpc_8548";
  targets."imx"."cortexa7".sha256 = "0i3nh0ls3f2iys31cjwkyb51agdm1l609cigwfcmi0dk0nfqyv65";
  targets."imx"."cortexa7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."imx"."cortexa9".sha256 = "13r1qnh74fvlgyalypy4fv8sy84y2wngxkq5iq5asj4l7mvan2wa";
  targets."imx"."cortexa9".packagesArch = "arm_cortex-a9_neon";
  targets."x86"."generic".sha256 = "1fkxmp9y1ahfal5wmjnw4c884ngb2ad6x40x963v7cqm70a062mn";
  targets."x86"."generic".packagesArch = "i386_pentium4";
  packages."i386_pentium4"."base".sha256 = "12dkk167nq0wk9x2xw2k083vacip9681hxjcqa6gi52vjc05db0n";
  packages."i386_pentium4"."luci".sha256 = "1vsww38kfai97cp8xvrpilywsc3nydjayqsrc5mamkkp51zilrdp";
  packages."i386_pentium4"."packages".sha256 = "115swybjq7fl4p1c34mkin3di1iv3fxg097l4pcp175569lk8dmx";
  packages."i386_pentium4"."routing".sha256 = "1p3mcgpk68qhar7c19krvndngzjz8cbkahrccd0l3yx1lpazk7gd";
  packages."i386_pentium4"."telephony".sha256 = "14m35lhjj2rnbqcigy31h8g7xdlfyyja7f2m67kr6c493s4260gh";
  targets."x86"."legacy".sha256 = "1dfsvdll2vqdzsxgzkkvk4fhl2j3a7ki0234qs0h6im8qpjcmvaw";
  targets."x86"."legacy".packagesArch = "i386_pentium-mmx";
  packages."i386_pentium-mmx"."base".sha256 = "0c7az58yhkd5mcq76y2g4aqz2l9ss966c6wzpfczgdcc4fzd3ncn";
  packages."i386_pentium-mmx"."luci".sha256 = "0hs4mxk1m710qnhgkw9k1hjgw15rpnv00kzcbi93sxv4r8p4xg2j";
  packages."i386_pentium-mmx"."packages".sha256 = "0hn82q0nqdidc7phx642ypdvm3v5i2b0wh4gp1x6f8pclalpd3qw";
  packages."i386_pentium-mmx"."routing".sha256 = "0i9yj2310n8ndiwag2f9jyz227jlfjqpk2val5fdivmnqxpiaq9i";
  packages."i386_pentium-mmx"."telephony".sha256 = "16a2b67phxk3hpnvg8cbvhjvn00nvnagyv08zd8g01ylrmvbs7nd";
  targets."x86"."geode".sha256 = "1yjxmzpw3rd26g5zmipw4x258n6vkpklzkz5sd19xcy41r01wga4";
  targets."x86"."geode".packagesArch = "i386_pentium-mmx";
  targets."x86"."64".sha256 = "1cafvc6axghrg33q7sf7qknkjgalya8c7y441zzfzfqhf9d2919r";
  targets."x86"."64".packagesArch = "x86_64";
  packages."x86_64"."base".sha256 = "0bg57hm3lxhj5hsz5yc2s4sv7xdpsz64974vrqm0h72ifm0bypv4";
  packages."x86_64"."luci".sha256 = "00rlldabyqzahd4nc4pb2czxc7y0fqlk427aybhqkdsykrh6ad8d";
  packages."x86_64"."packages".sha256 = "0pzlq3ivjgmv95xmcjj215gaj1fqhy3vs568z7k9hmxgfrvggvf4";
  packages."x86_64"."routing".sha256 = "13w5ikkrfy4pfrhz6wc9z3326blqgin84gc96ngjlgglbc4ws5i1";
  packages."x86_64"."telephony".sha256 = "18a78b1b8rlnkcb6b3ljqdm3j3msvif8d1khggdpkind55cric4y";
  targets."realtek"."rtl838x".sha256 = "1viisl4f07qm0a4xbdzvy33xlr73yg980in2ana6zlyfychvxb6p";
  targets."realtek"."rtl838x".packagesArch = "mips_4kec";
  packages."mips_4kec"."base".sha256 = "0f1viy33d5yws5ya7a7v7qmraigbxrb5yfyz8w0z3s7zldzfdjzq";
  packages."mips_4kec"."luci".sha256 = "1hpy43hx5xbdw0nfhzqw1vfqrvb88w2zf0d6gmky8hc0r6sqlzaw";
  packages."mips_4kec"."packages".sha256 = "10m5skl0q5cfdnf5igng0a8nsqivfc02qfdr49pi2wvqcn1v3p79";
  packages."mips_4kec"."routing".sha256 = "0n3i0r04gz9nbjnba15xg6cbynl9237fxx6shxl0f7q0xvydzr7k";
  packages."mips_4kec"."telephony".sha256 = "08ia94hsgwgw297x1c9zzsamqrdbkyphys8bdvravj083c7zg7cf";
  targets."realtek"."rtl930x".sha256 = "0hfky966aw2dmgxbhl7w39xgbqh53r4y8vcy23pr1axzd25jd7vi";
  targets."realtek"."rtl930x".packagesArch = "mips_24kc";
  packages."mips_24kc"."base".sha256 = "02pkl6v422rjg32ynwr8d5md5ky31sqhnq5kwxhc9h9ag4hn2dnv";
  packages."mips_24kc"."luci".sha256 = "0qlnbp29h1r915g78n3kqahc9ggp1bcqbzj9m572ws4jlwb8vi2i";
  packages."mips_24kc"."packages".sha256 = "0inrrp60ddnsb7g5b2afzkihnm99a5y708lnxl5ayhfd52iwmx11";
  packages."mips_24kc"."routing".sha256 = "1xf3vnrh3w2cagln8rmdzp6ikxamkpa0pxyv676445bk85fccbmz";
  packages."mips_24kc"."telephony".sha256 = "1xjnhd7zraivfpvjw5wng7midcksz2c8ggqzq7bh5l6v63iq053d";
  targets."realtek"."rtl931x".sha256 = "1d15vwnzdnqa9mlgdrva09yy0gwn452a678phywf3x7mb1yya4gq";
  targets."realtek"."rtl839x".sha256 = "15c3x1jl20dk72yd2nx4c1fyxq2nps3na3mq4p14zjdn541zla3p";
  targets."realtek"."rtl839x".packagesArch = "mips_24kc";
  targets."kirkwood"."generic".sha256 = "0w2bv0p7lyc39gym4n3binj6vwfnnljp4r5m2c97mwg9pk4m34ml";
  targets."kirkwood"."generic".packagesArch = "arm_xscale";
  packages."arm_xscale"."base".sha256 = "02sr01gzgfxkmn84fqb9gcdczp668hrsy8qczk9f9g69wcfvpsn7";
  packages."arm_xscale"."luci".sha256 = "1z0jw668bv5f3hlmv64596nwqd5h3nfgr97zsjq046jxailwpzh8";
  packages."arm_xscale"."packages".sha256 = "020kq7dac6zqgvbrzx10pllhiax6vy6qllpx30dv83yfzhhidg2f";
  packages."arm_xscale"."routing".sha256 = "0r49xcbrcd8nn32k4vbl6l200vh4imzp6qk4503q8gfk0zi1c739";
  packages."arm_xscale"."telephony".sha256 = "0awpswygpqd2s8fh6vgnpd1c4nbgpivhd6yg5ls74i6z7551qfba";
  targets."ath79"."generic".sha256 = "1xbhlxgw89qgv8cyddhr4nixrb2xdrlg6hvn1jwj1fsqngcjq0j5";
  targets."ath79"."generic".packagesArch = "mips_24kc";
  targets."ath79"."mikrotik".sha256 = "18v9jhzzq14jp3cv2sq40v38xgckdf59cmhq41amcd48b8k4zmh5";
  targets."ath79"."mikrotik".packagesArch = "mips_24kc";
  targets."ath79"."nand".sha256 = "16cszyih8h9cvg0j3afjzm32h1f87i6f08y8hpxxr6sz3rm7zif6";
  targets."ath79"."nand".packagesArch = "mips_24kc";
  targets."ath79"."tiny".sha256 = "1dhb89n4m432g5vkl5vg4fp2m4cj0h670wl29bbdzjym0yq4n2ra";
  targets."ath79"."tiny".packagesArch = "mips_24kc";
  targets."archs38"."generic".sha256 = "1ygyvjss3aayvb2v3d7h4k13p5vrfjs7y62sl19d2y1axpng9nf2";
  targets."archs38"."generic".packagesArch = "arc_archs";
  packages."arc_archs"."base".sha256 = "11b1iy11pl7gcj9nnf8prikqsy6s19cp361bdh5yqsz62vs03vyx";
  packages."arc_archs"."luci".sha256 = "089ri9v793gqbk2z01g6vlcv1i7k2zp6kpxcv73jy76sysgxrrn9";
  packages."arc_archs"."packages".sha256 = "1i7q4rj7ryfx7gy53nbf68bin0m73iar61bkds0b6p13rmarkcja";
  packages."arc_archs"."routing".sha256 = "1z58mw0yj8rggcwzigwf6ss1xlbxq9gi70j2lqimh0gmjmzg483k";
  packages."arc_archs"."telephony".sha256 = "0867b1fhbaasng19ivcc2xdphqm7jp29dda8kcyw70knr9vhf9jj";
  targets."ath25"."generic".sha256 = "0skhglrrk7s727i87jq8jplv7h8ldzy92qr6hz98yiwhgm65gnx6";
  targets."ath25"."generic".packagesArch = "mips_mips32";
  targets."apm821xx"."nand".sha256 = "0c55jm41yj1400a3dn5n3c896z6nrp296zcd512wpv264aidpwws";
  targets."apm821xx"."nand".packagesArch = "powerpc_464fp";
  packages."powerpc_464fp"."base".sha256 = "17wca2ww3flinvryvkwk1az0hc8shn1pcb36qwkyayxf3gjq7zvi";
  packages."powerpc_464fp"."luci".sha256 = "1d7mf1z3ny2rpnpkg0jbvwmkaj8vcfnf000hvhlwfica8in72fng";
  packages."powerpc_464fp"."packages".sha256 = "1hyh5qm0k5nskmldh2ydv38n6bx4a1jdf106b8hx91jvfl6w0h33";
  packages."powerpc_464fp"."routing".sha256 = "0kj8nv7xzxhn6haz5a3harwk801wa8xgdi3ahw5453j32kv6fynz";
  packages."powerpc_464fp"."telephony".sha256 = "0bbf6z70l0jm38ifdxz89ynyiv7wxiaf5sw3vd95mm2qbpfsvyh2";
  targets."apm821xx"."sata".sha256 = "0b3w9ln9hw934d8wckc8nm227adyc8siqif74jw56mx77w2lcknj";
  targets."apm821xx"."sata".packagesArch = "powerpc_464fp";
  targets."bcm53xx"."generic".sha256 = "05c43gxa8gfkm4fhbab5fr0ynzr3cx8n7k81q8nksfhrj6dyjbbj";
  targets."bcm53xx"."generic".packagesArch = "arm_cortex-a9";
  packages."arm_cortex-a9"."base".sha256 = "0b86zld394x0a4spwknhlbz41d9w7fy25lylb0f87pz74inppvwi";
  packages."arm_cortex-a9"."luci".sha256 = "1qwcl4r9qm6ssywkrgkjapgmmh7303aggs0fzwhfz474rdi9znqx";
  packages."arm_cortex-a9"."packages".sha256 = "04v7q7f0fmm6gzgn9fip13lynbr4jx2kdxddz7d51rqpklklh3da";
  packages."arm_cortex-a9"."routing".sha256 = "0c01rgq5xqrdra06hc2l79ifd64raifvi23iivcny15f5hmbl3s3";
  packages."arm_cortex-a9"."telephony".sha256 = "0wwl0ghk97vnkmmx6yfdxgrrw1ks4qyy3kici3xhji6cnspsj9w8";
  targets."ramips"."mt76x8".sha256 = "1kbhrha47i1sx8ibdahp2frs6igpz6dghgmw1km4x2j5npq1f0f0";
  targets."ramips"."mt76x8".packagesArch = "mipsel_24kc";
  packages."mipsel_24kc"."base".sha256 = "0ni0d34xd518if3ygiwapcymyha3c97zhcmxpa560cnzqqa3lcwa";
  packages."mipsel_24kc"."luci".sha256 = "191gdh0a6qmkd7viysn991m84601hawbrjnj6zmj6bkvaf6ipyq5";
  packages."mipsel_24kc"."packages".sha256 = "0g9q2chfcyxalgp7w79r80hfskp8snwiq18lmpvz3xhgr0bxqi8x";
  packages."mipsel_24kc"."routing".sha256 = "0vw1v2acndq1gfx75y4ym1f1f8vflil06fwmkqbki54zy6grxacn";
  packages."mipsel_24kc"."telephony".sha256 = "0wzfk2rbnyl1c4zjpzi54sy5il5ck087yghvm1c9y3smhjizfn5w";
  targets."ramips"."mt7620".sha256 = "1z3sbanb9gl5wxa60mx0x4rzai4kdj79li97n7ws07gpy72ffbb7";
  targets."ramips"."mt7620".packagesArch = "mipsel_24kc";
  targets."ramips"."rt3883".sha256 = "1cy7my4y8pjdlf1fwfxqs5bm13qrz56y14jd5bkq3la4w1lb21fs";
  targets."ramips"."rt3883".packagesArch = "mipsel_74kc";
  targets."ramips"."rt305x".sha256 = "18hb81qk1f112hwmmjh09jafpznrmhlinsdbsxhvgldngrqh281h";
  targets."ramips"."rt305x".packagesArch = "mipsel_24kc";
  targets."ramips"."mt7621".sha256 = "10n71glg61ancqk7h3s1yw9x3m2bjs92kidqpn2y6khalvgvw5ll";
  targets."ramips"."mt7621".packagesArch = "mipsel_24kc";
  targets."ramips"."rt288x".sha256 = "1ml2g9kbshjrakpks0ha98yjq5mkyvaddahs5187kl8fwxqig6h5";
  targets."sifiveu"."generic".sha256 = "0p7iyyla6gb1va53df4qjfff2sg3q1wvw3wnzydn4xkkhjmfan6r";
  targets."sifiveu"."generic".packagesArch = "riscv64_riscv64";
  packages."riscv64_riscv64"."base".sha256 = "0m5dl38640linja47g5p5yg07davabcpsqfz1cczkhkv8g60ba2h";
  packages."riscv64_riscv64"."luci".sha256 = "16cb9dmkaxaqy0jzqlrzc18gj0zx0168vqy9z70wm58kailfw1pk";
  packages."riscv64_riscv64"."packages".sha256 = "0sky9ya1c6ck7sc537day3i2r7fwqbybxs00pf2j0h5idi8r5bka";
  packages."riscv64_riscv64"."routing".sha256 = "1vrmi72i52nvzivl3jhq45rdxncapz1x6g26q9zgcxkqbh67v02g";
  packages."riscv64_riscv64"."telephony".sha256 = "010n4dg0j7rhbf02ci1z796mwfrqnr9pa2bnwj2cjk5fba0aqn4l";
  targets."lantiq"."falcon".sha256 = "09a3kpgxdf7r02r1d45asqmfxj8fc7cbc5rbwa3xfi5nh36jj1na";
  targets."lantiq"."falcon".packagesArch = "mips_24kc";
  targets."lantiq"."xrx200".sha256 = "0qgx1bgrwsq7pyswlnl9llyj52c1pi4xdmdzm1wmcrk0vpnp24y1";
  targets."lantiq"."xrx200".packagesArch = "mips_24kc";
  targets."lantiq"."ase".sha256 = "016c5xhmrs7lkwmxsiix3mfd11k2gz3sy0i5z0svzxrp1rpxa25g";
  targets."lantiq"."xway".sha256 = "0a38dzamrhs413g3a0pbawi8rzmh46hpcfwb3snvaj70sx6k8n1d";
  targets."lantiq"."xway".packagesArch = "mips_24kc";
  targets."lantiq"."xway_legacy".sha256 = "1g2qcqj18n8594farvzc3p50ynj17s8y4fpa3hl3aj14s506ny97";
  targets."octeon"."generic".sha256 = "0mp9fkwv4nhhg1di6yc94v9k1f2qk83rhwpjdhccffjk1cl9bmhq";
  targets."octeon"."generic".packagesArch = "mips64_octeonplus";
  packages."mips64_octeonplus"."base".sha256 = "1xjvv99iw18ms9wiqlyi6qgs7s0rxf53p27w8kd5d1kw1ypf7bgi";
  packages."mips64_octeonplus"."luci".sha256 = "15537clk39i0ny7vabi1j2q6xnzimxnjnf1cybdhzxz328lwnkpz";
  packages."mips64_octeonplus"."packages".sha256 = "0g75wfwsrlypzxj9ngsy4cgnipx9ryk7cl4b53zch47hwr7h8zm4";
  packages."mips64_octeonplus"."routing".sha256 = "0dfnsmcr85z09zaf7ycp9639yfyv3jw7wkqzsbk84dh9rh1awi29";
  packages."mips64_octeonplus"."telephony".sha256 = "1b68r4pgqp276cxn72cblcvgy1677bn2rh7qv3p723qx835860bs";
  targets."pistachio"."generic".sha256 = "1cglffbfp2mcf1003nyyd9dam0ivxg2kwl331q33saz6drb0ldfa";
  targets."pistachio"."generic".packagesArch = "mipsel_24kc_24kf";
  packages."mipsel_24kc_24kf"."base".sha256 = "0yslrf3lxccxrzpqznwdl7740w2wlc76z2ckgkf24vm06cvwc66k";
  packages."mipsel_24kc_24kf"."luci".sha256 = "0npkz2v8nwi3c42w3i15vqg0yfrq090gbm59vnsa9a2wm2ywidjz";
  packages."mipsel_24kc_24kf"."packages".sha256 = "0sb9qys1fnhspbsjfh78jsz7m343dyjb84krj2hkp31271ijpb7l";
  packages."mipsel_24kc_24kf"."routing".sha256 = "108fh1rqdpc1k6d9lbffsksssxy7495wfr2wfhghraaagjfs0yxs";
  packages."mipsel_24kc_24kf"."telephony".sha256 = "0529p1ag01knh3mjnjvha15i53i1ij0lwcby4kws65qvdq9zpckz";
  targets."layerscape"."armv8_32b".sha256 = "1pamf7i4r1wgm6b2sgkzivhplfsmmghgj3l5ilyim0ldfr5gd5kx";
  targets."layerscape"."armv8_64b".sha256 = "1zrni13jy4bfqd81bf7v2d0jndqpm5qfbppvfhxycp8vjnx6d9n3";
  targets."layerscape"."armv8_64b".packagesArch = "aarch64_generic";
  targets."layerscape"."armv7".sha256 = "0idwmgz2siv3ldaamysca69x1z3p5bwp2w9b9jnq1d6kkxf216qk";
  targets."layerscape"."armv7".packagesArch = "arm_cortex-a7_neon-vfpv4";
  targets."omap"."generic".sha256 = "1y0f2pbdd2ds1qjqpxsxldrypgz60pnpx0mm5sdvrin5nlic161w";
  targets."omap"."generic".packagesArch = "arm_cortex-a8_vfpv3";
  targets."tegra"."generic".sha256 = "1z6azawlq77ji5b2wbjm14f4xjxp4mab2wn6627fmz3gc4m3q2qi";
  targets."tegra"."generic".packagesArch = "arm_cortex-a9_vfpv3-d16";
  targets."bmips"."bcm6328".sha256 = "1prp2xanba0bqqz03lsmpm2hcm35rd8qifniajxymxyg939wxw48";
  targets."bmips"."bcm6328".packagesArch = "mips_mips32";
  targets."bmips"."bcm63268".sha256 = "1xsp6s9bijiw82iyzjzj80l6dvnhg69cagiy83hvqlnrgi5pv319";
  targets."bmips"."bcm63268".packagesArch = "mips_mips32";
  targets."bmips"."bcm6368".sha256 = "1k9w4zqls3ybyxqydhfk43crik8s6z0msaiawzhsn7w9da1sagsa";
  targets."bmips"."bcm6368".packagesArch = "mips_mips32";
  targets."bmips"."bcm6358".sha256 = "01ixka42hs5jxzd3b90sdh2hhzp88lfwahvbi6n24izznj429shb";
  targets."bmips"."bcm6358".packagesArch = "mips_mips32";
  targets."bmips"."bcm6318".sha256 = "0nam7j0pwdmrv1wpyf62plgrjhq5fv8q6vim31h8sm3h785m0hh7";
  targets."bmips"."bcm6318".packagesArch = "mips_mips32";
  targets."bmips"."bcm6362".sha256 = "0y1nwvgdm855v592li4pwinmyjnn3v77iyl0zhss85jfxdpkshqa";
  targets."bmips"."bcm6362".packagesArch = "mips_mips32";
  targets."bcm4908"."generic".sha256 = "07kzg56mjf1ypbv8sbqp1lifa39zvyn269d7kxq5r1ygdzi9dn4y";
  targets."bcm4908"."generic".packagesArch = "aarch64_cortex-a53";
}
