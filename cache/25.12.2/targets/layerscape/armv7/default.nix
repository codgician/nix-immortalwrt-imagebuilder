# 25.12.2 layerscape/armv7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/layerscape/armv7/";
  sha256sums = {
    hash = "sha256-/w3BK9Pu68lehvVZlQyVltXW1Bht3yJCmTiyzMrdDHo=";
    name = "layerscape_armv7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/layerscape/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "32063b09be2be24487c67e737753dfd8b66dd25e3585e98ee6e929724e157bc7";
    filename = "immortalwrt-imagebuilder-25.12.2-layerscape-armv7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-juGFw9cP7/wNXAagptg4VWbmwpC1zALrVz9DESH8JiE=";
    name = "layerscape_armv7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/layerscape/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "bf5dfeb34c61e4f057970efbc5a67d90";
      version = "6.12.103";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "kmod-usb-dwc3"
      "kmod-usb-storage"
      "kmod-usb3"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
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
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.103-1-bf5dfeb34c61e4f057970efbc5a67d90";
    profiles = {
      fsl_ls1021a-iot-sdboot = {
        device_packages = [ ];
      };
      fsl_ls1021a-twr = {
        device_packages = [ ];
      };
      fsl_ls1021a-twr-sdboot = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.103-1-bf5dfeb34c61e4f057970efbc5a67d90" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/layerscape/armv7/kmods/6.12.103-1-bf5dfeb34c61e4f057970efbc5a67d90/";
    sourceInfo = {
      hash = "sha256-dom2adYgGrNgdarcH2zUoo15jZCd9Aj/ADAEewVUZ3g=";
      name = "kmods-layerscape_armv7-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/layerscape/armv7/kmods/6.12.103-1-bf5dfeb34c61e4f057970efbc5a67d90/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/layerscape/armv7/packages/";
    sourceInfo = {
      hash = "sha256-pcGwJrJgCuVZEL/1omPmG5XXWuIRL2+8g83qgVpqF6A=";
      name = "layerscape_armv7-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/layerscape/armv7/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a7_neon-vfpv4";
  feeds = import ./../../../packages/arm_cortex-a7_neon-vfpv4.nix;
}
