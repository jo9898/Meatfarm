using UnityEngine;

public class PlayerFootsteps : MonoBehaviour
{

    private enum CURRENT_TERRAIN { WOOD, CONCRETE, WET };

    [SerializeField]
    private CURRENT_TERRAIN currentTerrain;

    private FMOD.Studio.EventInstance foosteps;

    private void Update()
    {
        DetermineTerrain();
    }

    private void DetermineTerrain()
    {
        RaycastHit[] hit;

        hit = Physics.RaycastAll(transform.position, Vector3.down, 10.0f);

        foreach (RaycastHit rayhit in hit)
        {
            if (rayhit.transform.gameObject.layer == LayerMask.NameToLayer("Wood"))
            {
                currentTerrain = CURRENT_TERRAIN.WOOD;
                break;
            }
            else if (rayhit.transform.gameObject.layer == LayerMask.NameToLayer("Concrete"))
            {
                currentTerrain = CURRENT_TERRAIN.CONCRETE;
                break;
            }
            else if (rayhit.transform.gameObject.layer == LayerMask.NameToLayer("Wet"))
            {
                currentTerrain = CURRENT_TERRAIN.WET;
            }
        }
    }

    public void SelectAndPlayFootstep()
    {
        switch (currentTerrain)
        {
            case CURRENT_TERRAIN.WOOD:
                PlayFootstep(2);
                break;

            case CURRENT_TERRAIN.CONCRETE:
                PlayFootstep(0);
                break;

            case CURRENT_TERRAIN.WET:
                PlayFootstep(1);
                break;

            default:
                PlayFootstep(0);
                break;
        }
    }

    private void PlayFootstep(int terrain)
    {
        foosteps = FMODUnity.RuntimeManager.CreateInstance("event:/SFX/Footsteps");
        foosteps.setParameterByName("Terrain", terrain);
        foosteps.set3DAttributes(FMODUnity.RuntimeUtils.To3DAttributes(gameObject));
        foosteps.start();
        foosteps.release();
    }
}