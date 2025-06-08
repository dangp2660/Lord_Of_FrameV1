using UnityEngine;

public enum WeaponModelSlot
{
    RightHand,
    LeftHand
}
public class WeaponModelInstantiationSlot : MonoBehaviour
{
    public WeaponModelSlot Slot;
    public GameObject currentWeaponModel;

    public void UnLoadWeapon()
    {
        if (currentWeaponModel != null)
        {
            Destroy(currentWeaponModel);
        }
    }

    public void LoadWeapon(GameObject weaponModel)
    {
        currentWeaponModel = weaponModel;

        weaponModel.transform.parent = transform;

        weaponModel.transform.localPosition = Vector3.zero;
        weaponModel.transform.localRotation = Quaternion.identity;

    }

}
