recipes.remove(<chisel:chisel>);
recipes.remove(<chisel:diamondChisel>);

val stick = oreDict.stickWood;
val iron = oreDict.ingotIron;

recipes.addShaped( <chisel:chisel>, [ [stick,null,null], [null,iron,null], [null,null,iron] ]);

val diamond = oreDict.gemDiamond;
recipes.addShaped( <chisel:diamondChisel>, [ [stick,null,null], [null,diamond,null], [null,null,diamond] ]);
