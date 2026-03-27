# 24.10.2 sunxi/cortexa8
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/sunxi/cortexa8/";
  sha256sums = {
    hash = "sha256-QlNbd2cioe0BoyjHyyLJwacygUzrM91DTYQtWAjUI5Y=";
    name = "sunxi_cortexa8-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/sunxi/cortexa8/sha256sums";
  };
  imagebuilder = {
    sha256 = "10f995be6592919f71853ca85c4293b86cb4fc1aa07599abd15e475bb0c3106f";
    filename = "immortalwrt-imagebuilder-24.10.2-sunxi-cortexa8.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-6UJ8O3U5DbMMsjnCUVIJXE0ID5uwXA2MfgTx2CgwYAQ=";
    name = "sunxi_cortexa8-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/sunxi/cortexa8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = {
      release = "1";
      vermagic = "e688994f9f09c952611aea724c3dad22";
      version = "6.6.93";
    };
    default_packages = [
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
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-cpufreq"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
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
    kmods_target = "6.6.93-1-e688994f9f09c952611aea724c3dad22";
    profiles = {
      cubietech_a10-cubieboard = {
        device_packages = [
          "kmod-ata-sunxi"
          "kmod-sun4i-emac"
          "kmod-rtc-sunxi"
        ];
      };
      haoyu_a10-marsboard = {
        device_packages = [
          "kmod-ata-core"
          "kmod-ata-sunxi"
          "kmod-sun4i-emac"
          "kmod-rtc-sunxi"
          "kmod-sound-core"
          "kmod-sound-soc-sunxi"
        ];
      };
      linksprite_a10-pcduino = {
        device_packages = [
          "kmod-sun4i-emac"
          "kmod-rtc-sunxi"
          "kmod-rtl8192cu"
        ];
      };
      olimex_a10-olinuxino-lime = {
        device_packages = [
          "kmod-ata-sunxi"
          "kmod-sun4i-emac"
          "kmod-rtc-sunxi"
        ];
      };
      olimex_a13-olimex-som = {
        device_packages = [ "kmod-rtl8192cu" ];
      };
      olimex_a13-olinuxino = {
        device_packages = [ "kmod-rtl8192cu" ];
      };
    };
  };
  kmods."6.6.93-1-e688994f9f09c952611aea724c3dad22" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/sunxi/cortexa8/kmods/6.6.93-1-e688994f9f09c952611aea724c3dad22/";
    sourceInfo = {
      hash = "sha256-4UqQin3QnU2qH1yP+5OVzUx6Uv8fU/DPbb+j0jllxb0=";
      name = "kmods-sunxi_cortexa8-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/sunxi/cortexa8/kmods/6.6.93-1-e688994f9f09c952611aea724c3dad22/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/sunxi/cortexa8/packages/";
    sourceInfo = {
      hash = "sha256-Qm7FjZiBnFXAMq0tAlrTbkZIGDczf8Oog3qTyuDUyDQ=";
      name = "sunxi_cortexa8-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/sunxi/cortexa8/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a8_vfpv3";
  feeds = import ./../../../packages/arm_cortex-a8_vfpv3.nix;
}
