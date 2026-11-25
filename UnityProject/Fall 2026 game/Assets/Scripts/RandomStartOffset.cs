using UnityEngine;

public class RandomStartOffset : MonoBehaviour
{
    [SerializeField] private string stateName = "floaty";

    private void Start()
    {
        Animator animator = GetComponent<Animator>();
        // Layer 0, random normalized time between 0.0 and 1.0
        animator.Play(stateName, 0, Random.Range(0f, 1f));
    }
}
