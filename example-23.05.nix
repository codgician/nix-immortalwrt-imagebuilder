{ pkgs ? import <nixpkgs> {}
, build ? import ./builder.nix
}:
build {
  release = "23.05.3";
  target = "ath79";
  variant = "tiny";
  profile = "engenius_eap350-v1";
  packages = [
    "tcpdump"
    "vxlan" "kmod-vxlan"
    "collectd" "collectd-mod-iwinfo" "collectd-mod-ping"
  ];
  files = pkgs.runCommand "image-files" {} ''
    mkdir -p $out/etc/uci-defaults
    cat > $out/etc/uci-defaults/99-custom <<EOF
    uci -q batch << EOI
    set system.@system[0].hostname='testap'
    commit
    EOI
    EOF
  '';
}
