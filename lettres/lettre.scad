

// Instanciation du module
bloc_lettre("Léo");

// Définition du module.
// size = 600 définit un paramètre optionnel avec une valeur par défaut.

module bloc_lettre(letter, taille=10) 
{
 union()
  {
   difference() 
   {      
        difference() 
        {
            translate([0,0,taille/4]) cube([10,5,taille/10], center=true);
            translate([0,0,taille/6]) 
            {

              // une convexité est nécessaire pour un aperçu correct 
              // puisque les caractères peuvent être très concave
                linear_extrude(height=taille, convexity=4)
                    text(letter, 
                         size=taille*4/10,
                         font="Bitstream Vera Sans",
                         halign="center",
                         valign="center");
            }
                   
        }
    
        translate ([-10.7,0,0]) cylinder (r1=0, r2=0.4, h=5, $fn=100, center=true);
         translate ([10.7,0,0]) cylinder (r1=0, r2=0.4, h=5, $fn=100, center=true);
   
    }
   }
}

