# 25.12.0-rc1 realtek/rtl930x_nand
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl930x_nand/";
  sha256sums = {
    hash = "sha256-12vNUWURAah/3SKhIBzga3vXpTDZBxNCcPqCBSi4mzw=";
    name = "realtek_rtl930x_nand-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl930x_nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "16fa5de0f741829c854de23bf7da87a048b5afd0957ca20a5f6421e3543b2319";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-realtek-rtl930x_nand.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-kY0svM4eFbkoECpbjt7QBMFFt4ixrCj7/wlrWLTzvKA=";
    name = "realtek_rtl930x_nand-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl930x_nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "63de8288d58ce063a26fb2b91a70a0e2";
      version = "6.12.74";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "mtd"
      "netifd"
      "odhcp6c"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.74-1-63de8288d58ce063a26fb2b91a70a0e2";
    profiles = {
      linksys_lgs328c = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.74-1-63de8288d58ce063a26fb2b91a70a0e2" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl930x_nand/kmods/6.12.74-1-63de8288d58ce063a26fb2b91a70a0e2/";
    sourceInfo = {
      hash = "sha256-APnHBlsLfPG3ZaCymS31seCFRR3nOIFAQo8SF/03nIo=";
      name = "kmods-realtek_rtl930x_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl930x_nand/kmods/6.12.74-1-63de8288d58ce063a26fb2b91a70a0e2/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl930x_nand/packages/";
    sourceInfo = {
      hash = "sha256-R6h9iMXUDSv2nX98+JbSz2vdQsBZJn6f+9CzIVXmszg=";
      name = "realtek_rtl930x_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl930x_nand/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_24kc";
  feeds = import ./../../../packages/mips_24kc.nix;
}
