package classes.Items.Consumables {
    import classes.Items.Consumable;

    public class UnlabeledBrownMilkBottle extends Consumable {
        public function UnlabeledBrownMilkBottle() {
            super("UBMBottle", "UBM Bottle", "Unlabled Brown Milk Bottle", 1000, "");
        }

        override public function useItem():Boolean {
            clearOutput();
            if (player.udder.HasUdder == false) {
                if (player.isMale()) {
                    outputText("you're staggered briefly as the area above your genitals swells, quickly ballooning up into a singular hefty sac.  Your skin tingles as matching rows of teats sprout from it, leaving you with a perfectly good udder.");
                }
                if (player.isFemale()) {
                    outputText("you're staggered briefly as the patch of skin between your legs swells, quickly ballooning up into a singular hefty sac.  Your skin tingles as matching rows of teats sprout from it, leaving you with a perfectly good udder.");
                }
                player.udder.HasUdder = true;
            } else {
                if (player.udder.fullness >= 1000) {
                    outputText("you feel your udder empty itself because it cant hold anymore milk");
                    player.udder.fullness = 0;
                } else {
                    outputText("you feel your udder lightly gurgle and fill with a small amount of milk");
                    player.udder.fullness += 10;
                }
            }
            return (false);
        }
    }
}
