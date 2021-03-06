package classes.StatusEffects.Combat {
import classes.StatusEffectType;

public class BasiliskSlowDebuff extends CombatBuff {
	public var count:int = 0;
	public static const TYPE:StatusEffectType = register("BasiliskSlow",BasiliskSlowDebuff);
	public function BasiliskSlowDebuff() {
		super(TYPE,'spe');
	}

	public function applyEffect(amount:Number):void {
		buffHost('spe', -amount, 'scale', false, 'max', false);
		count++;
	}
}

}
