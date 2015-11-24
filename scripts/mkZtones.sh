#!/bin/bash

addTone() {
	if [[ -z "$1" || -z "$2" ]]
	then
		echo "WARN: Params not passed to addTones! Ignoring..."
		return 0
	fi

	# $1 = chisel group name
	# $2 = block binding ID (eg Ztones:tile.zoeaBlock)

	# add the group to chisel
	echo "///////////////////////////////////////////////////////////"
	echo "// ZTone $1 [$2]"
	echo "mods.chisel.Groups.addGroup(\"$1\");"

	for i in `seq 0 15`;
	do
		echo "mods.chisel.Groups.addVariation(\"$1\", <$2:$i>);"
	done

	return 0
}

addToneQuick() {
	addTone "ztone$1" "Ztones:tile.$1Block"
}

addToneQuick cray
addToneQuick fort
addToneQuick iszm
addToneQuick jelt
addToneQuick korp
addToneQuick kryp
addToneQuick lair
addToneQuick lave
addToneQuick mint
addToneQuick myst
addToneQuick reds
addToneQuick roen
addToneQuick sols
addToneQuick tank
addToneQuick vect
addToneQuick vena
addToneQuick zech
addToneQuick zion
addToneQuick zome
addToneQuick zone
addToneQuick zorg
addToneQuick bitt
addTone ztoneGlaxx Ztones:tile.glaxx
addToneQuick reed
addToneQuick sync
addToneQuick zkul
addToneQuick azur
addToneQuick zeta
addToneQuick zest
addToneQuick zoea
addToneQuick zane
addToneQuick zyth
addToneQuick ztyl








#addTone ztoneCray Ztones:tile.crayBlock
#addTone ztoneFort Ztones:tile.fortBlock
#addTone ztoneIszm Ztones:tile.iszmBlock
#addTone ztoneJelt Ztones:tile.jeltBlock
#addTone ztoneZoea Ztones:tile.korpBlock
#addTone ztoneZoea Ztones:tile.zoeaBlock
#addTone ztoneZoea Ztones:tile.zoeaBlock
#addTone ztoneZoea Ztones:tile.zoeaBlock
