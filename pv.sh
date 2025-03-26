#!/bin/sh
# use chafa/sixel to preview images in lf. If not image use bat with colour styling

case "$(file -Lb --mime-type -- "$1")" in
    image/*)
        chafa -f sixel -s "$2x$3" --animate off --polite on "$1"
        exit 1
        ;;
    *)
        bat --color=always --style="numbers,snip" "$1"
        ;;
esac
