using UnityEngine;
using UnityEngine.InputSystem;
using FMODUnity;

public class DoorOpenSoundScript : MonoBehaviour, IInteractable
{
    private bool hasPlayed = false;
    private bool isPlayerNearby = false;
    private StudioEventEmitter emitter;
    public ItemType requiredObject;
    void Start()
    {

        emitter = GetComponent<StudioEventEmitter>();

        if (emitter == null)
        {
            Debug.LogError("No FMOD Studio Event Emitter found on this GameObject.");
        }
    }

    public void Interact()
    {

        if (!hasPlayed && emitter != null && requiredObject != null)
        {
            emitter.Play();
            hasPlayed = true;
        }
    }

    void Update()
    {

        if (isPlayerNearby && (Keyboard.current.eKey.wasPressedThisFrame || (Gamepad.current != null && Gamepad.current.buttonSouth.wasPressedThisFrame)))
        {
            Interact();
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            isPlayerNearby = true;
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            isPlayerNearby = false;
        }
    }
}