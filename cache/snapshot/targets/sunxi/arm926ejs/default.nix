# snapshot sunxi/arm926ejs
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/sunxi/arm926ejs/";
  sha256sums = {
    hash = "sha256-8DlDrdvaRtDwTbh4/aC8P2cbvmzgO36Nb31fL0bLxTE=";
    name = "sunxi_arm926ejs-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/sunxi/arm926ejs/sha256sums";
  };
  imagebuilder = {
    sha256 = "b19173205d4ec8fc0a7ea1f68fe02486314c477dc9131e1a970f251c11d9060f";
    filename = "immortalwrt-imagebuilder-sunxi-arm926ejs.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-69Velsbc/tEjbErm6aQPU07EBmLS3paJoNRYNjf1cSk=";
    name = "sunxi_arm926ejs-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/sunxi/arm926ejs/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "07b1efcc58daf4ce9158c255628e3086";
      version = "6.12.67";
    };
    default_packages = [
      "apk-openssl"
      "automount"
      "base-files"
      "ca-bundle"
      "cpufreq"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.67-1-07b1efcc58daf4ce9158c255628e3086";
    profiles = {
      licheepi_licheepi-nano = {
        device_packages = [ "kmod-rtc-sunxi" ];
      };
      "sourceparts_popstick-v1.1" = {
        device_packages = [ "kmod-rtc-sunxi" ];
      };
    };
  };
  kmods."6.12.67-1-07b1efcc58daf4ce9158c255628e3086" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/sunxi/arm926ejs/kmods/6.12.67-1-07b1efcc58daf4ce9158c255628e3086/";
    sourceInfo = {
      hash = "sha256-TmeXMljC8SyMqGsRQAg2wPj7bjQRgc5oT66GkY4/8S0=";
      name = "kmods-sunxi_arm926ejs-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/sunxi/arm926ejs/kmods/6.12.67-1-07b1efcc58daf4ce9158c255628e3086/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/sunxi/arm926ejs/packages/";
    sourceInfo = {
      hash = "sha256-Cx6lIH2Fb/RkPvEwlGv4DfS9JkBRBvA29HAnEb5uj3Q=";
      name = "sunxi_arm926ejs-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/sunxi/arm926ejs/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_arm926ej-s";
  feeds = import ./../../../packages/arm_arm926ej-s.nix;
}
