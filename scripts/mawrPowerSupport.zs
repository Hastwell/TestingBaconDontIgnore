val ldaIngot = <MawrPower:exoticMetalIngot>;
val ldaBlock = <MawrPower:exoticMetalBlock>;
// val deshIngot = <ore:ingotDesh>;
// val ludicriteIngot = <ore:ludicriteIngot>;
val deshIngot = <GalacticraftMars:item.null:2>;
val ludicriteIngot = <BigReactors:BRIngot:8>;

val deshBlock = <GalacticraftMars:tile.mars:8>;
val ludicriteBlock = <BigReactors:BRMetalBlock:4>;

var t3cap = <EnderIO:itemBasicCapacitor:2>;
var t4cap = <MawrPower:exoticMetalIngot:1>;
var t5cap = <MawrPower:exoticMetalIngot:2>;
var enderCrystal = <EnderIO:itemMaterial:8>;

// add disclaimer to capbanks
<EnderIO:blockCapBank:4>.addTooltip(format.yellow("MawrPower Addon - ") + format.red("NOT") + format.yellow(" a part of stock EnderIO!"));
<EnderIO:blockCapBank:4>.addTooltip(format.aqua("200 MRF Capacity @ 125 kRF/t"));

<EnderIO:blockCapBank:5>.addTooltip(format.yellow("MawrPower Addon - ") + format.red("NOT") + format.yellow(" a part of stock EnderIO!"));
<EnderIO:blockCapBank:5>.addTooltip(format.aqua("1.4 GRF Capacity @ 625 kRF/t"));

<ore:blockLDA>.add(ldaBlock);
<ore:ingotLDA>.add(ldaIngot);
mods.thermalexpansion.Smelter.addRecipe(12000, ludicriteIngot, deshIngot, ldaIngot*2);
mods.thermalexpansion.Smelter.addRecipe(108000, ludicriteBlock, deshBlock, ldaBlock*2);

recipes.addShapeless(ldaBlock, [ldaIngot,ldaIngot,ldaIngot,ldaIngot,ldaIngot,ldaIngot,ldaIngot,ldaIngot,ldaIngot]);
recipes.addShapeless(ldaIngot*9, [ldaBlock]);
recipes.addShaped(ldaBlock, [[deshIngot,ludicriteIngot,deshIngot],[ludicriteIngot,ludicriteIngot,ludicriteIngot],[deshIngot,ludicriteIngot,deshIngot]]);
recipes.addShaped(ldaBlock*9, [[deshBlock,ludicriteBlock,deshBlock],[ludicriteBlock,ludicriteBlock,ludicriteBlock],[deshBlock,ludicriteBlock,deshBlock]]);

// capbank recipies! :D
recipes.addShaped(t4cap, [[null, ludicriteIngot, null], [t3cap, enderCrystal, t3cap], [null,ludicriteIngot,null]]);
recipes.addShaped(<EnderIO:blockCapBank:4>, [[ludicriteIngot, t4cap, ludicriteIngot], [t4cap, enderCrystal, t4cap], [ludicriteIngot,t4cap,ludicriteIngot]]);
recipes.addShaped(<EnderIO:blockCapBank:4>, [[t4cap, ludicriteIngot, t4cap], [<EnderIO:blockCapBank:3>, enderCrystal, <EnderIO:blockCapBank:3>], [t4cap, ludicriteIngot, t4cap] ]);

recipes.addShaped(t5cap, [[null, deshIngot, null], [t4cap, ludicriteBlock, t4cap], [null,deshIngot,null]]);

recipes.addShaped(<EnderIO:blockCapBank:5>, [[ldaIngot, t5cap, ldaIngot], [t5cap, ludicriteIngot, t5cap], [ldaIngot,t5cap,ldaIngot]]);
recipes.addShaped(<EnderIO:blockCapBank:5>, [[t5cap, ldaIngot, t5cap], [<EnderIO:blockCapBank:4>, ldaIngot, <EnderIO:blockCapBank:4>], [t5cap, ldaIngot, t5cap] ]);
