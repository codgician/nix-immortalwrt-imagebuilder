# 25.12.0-rc2 sunxi/arm926ejs
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/sunxi/arm926ejs/";
  sha256sums = {
    hash = "sha256-CBk7/86bLLCwIEI3MeKvwg5cRyqoFds8AOtov6BGtx0=";
    name = "sunxi_arm926ejs-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/sunxi/arm926ejs/sha256sums";
  };
  imagebuilder = {
    sha256 = "599adf2917589b4094681e0057ab25dd61c5db88467a2c55c2ec24b653e996a8";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-sunxi-arm926ejs.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-vUJ7oDpi5yJuITjQoaOU4qSNDpBiDSOmGZy+5seCEV4=";
    name = "sunxi_arm926ejs-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/sunxi/arm926ejs/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "36e2721a0becf18d9007582a77b880ad";
      version = "6.12.79";
    };
    default_packages = [
      "apk-openssl"
      "autocore"
      "automount"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-cpufreq"
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
    kmods_target = "6.12.79-1-36e2721a0becf18d9007582a77b880ad";
    profiles = {
      licheepi_licheepi-nano = {
        device_packages = [ "kmod-rtc-sunxi" ];
      };
      "sourceparts_popstick-v1.1" = {
        device_packages = [ "kmod-rtc-sunxi" ];
      };
    };
  };
  kmods."6.12.79-1-36e2721a0becf18d9007582a77b880ad" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/sunxi/arm926ejs/kmods/6.12.79-1-36e2721a0becf18d9007582a77b880ad/";
    sourceInfo = {
      hash = "sha256-wVY27PO0BjrDKzwdX/no/NwKzkLDpwG7T92mf3E8K18=";
      name = "kmods-sunxi_arm926ejs-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/sunxi/arm926ejs/kmods/6.12.79-1-36e2721a0becf18d9007582a77b880ad/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/sunxi/arm926ejs/packages/";
    sourceInfo = {
      hash = "sha256-HDaBCZLl+ayUZax2OtCEd2oKqP7+o+k4xh2lZ/xtdVo=";
      name = "sunxi_arm926ejs-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/sunxi/arm926ejs/packages/packages.adb";
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
