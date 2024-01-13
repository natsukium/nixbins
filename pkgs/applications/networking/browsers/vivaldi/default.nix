{
  lib,
  stdenv,
  source,
  undmg,
}:
stdenv.mkDerivation {
  pname = "vivaldi";
  inherit (source) version src;

  nativeBuildInputs = [ undmg ];

  sourceRoot = "Vivaldi.app";

  installPhase = ''
    mkdir -p $out/Applications/Vivaldi.app
    cp -R . $out/Applications/Vivaldi.app
  '';

  meta = with lib; {
    description = "A Browser for our Friends, powerful and personal";
    homepage = "https://vivaldi.com";
    license = licenses.unfree;
    platforms = platforms.darwin;
    maintainers = with maintainers; [ natsukium ];
  };
}
