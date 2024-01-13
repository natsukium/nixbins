{
  lib,
  stdenv,
  source,
  undmg,
}:
stdenv.mkDerivation {
  pname = "qutebrowser";
  inherit (source) version src;

  nativeBuildInputs = [ undmg ];

  sourceRoot = "qutebrowser.app";

  installPhase = ''
    mkdir -p $out/Applications/qutebrowser.app
    cp -R . $out/Applications/qutebrowser.app
  '';

  meta = with lib; {
    description = "Keyboard-focused browser with a minimal GUI";
    homepage = "https://github.com/qutebrowser/qutebrowser";
    license = licenses.gpl3Plus;
    platforms = platforms.darwin;
    maintainers = with maintainers; [ natsukium ];
  };
}
