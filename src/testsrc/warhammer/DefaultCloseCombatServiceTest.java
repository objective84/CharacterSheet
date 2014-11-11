package warhammer;

import junit.framework.TestCase;
import org.junit.Before;
import org.junit.Test;

public class DefaultCloseCombatServiceTest extends TestCase {

    private CloseCombatService closeCombatService;

    private Unit unitA;
    private Unit unitB;
    private UnitModel modelA;
    private UnitModel modelB;
    private UnitModel championA;
    private UnitModel championB;

    @Before
    public void setup(){
        closeCombatService = new DefaultCloseCombatService();
        modelA = new UnitModel("Saurus Warriors", "High Elves", 4, 3, 0, 4, 4, 1, 1, 2, 8);
        modelB = new UnitModel("Spearmen", "High Elves", 5, 4, 4, 3, 3, 1, 5, 1, 8);
        championA = new UnitModel("Sentinel", "High Elves", 5, 4, 4, 3, 3, 1, 5, 2, 8);
        championB = new UnitModel("Spawn Leader", "Lizardmen", 4, 3, 0, 4, 4, 1, 1, 3, 8);
        unitA = new Unit();
        unitB = new Unit();

        unitA.setModels(modelA);
        unitA.setChampion(championA);
        unitA.setNumModels(30);
        unitA.setFiles(5);
        unitA.setSupportingRanks(1);
        unitA.setLeadership(8);
        unitA.setHasBanner(true);

        unitB.setModels(modelB);
        unitB.setChampion(championB);
        unitB.setNumModels(30);
        unitB.setFiles(5);
        unitB.setSupportingRanks(3);
        unitB.setLeadership(8);
        unitB.setHasBanner(true);
    }

    @Test
    public void testResolveCombat() throws Exception {
        closeCombatService.resolveCombat(unitA, unitB, AttackDirectionEnum.FRONT);

    }
}
