package com.rational.converters;

import com.rational.model.equipment.EquipmentModel;
import com.rational.service.AdminService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Component
public class EquipmentConverter {

    @Resource
    private ArmorConverter armorConverter;

    @Resource
    private WeaponConverter weaponConverter;

    @Resource
    AdminService adminService;
//
//    public Equipment convert(EquipmentModel equipmentModel){
//        Equipment equipment = null;
//        if(equipmentModel instanceof WeaponModel){
//            equipment = weaponConverter.convert((WeaponModel)equipmentModel);
//        }else if(equipmentModel instanceof ArmorModel){
//            equipment = armorConverter.convert((ArmorModel)equipmentModel);
//        }
//
//        return equipment;
//    }
//
//    public List<Equipment> convertToForms(List<EquipmentModel> equipmentModels){
//        List<Equipment> equipment = new ArrayList<Equipment>();
//
//        for(EquipmentModel equipmentModel : equipmentModels){
//            if(equipmentModel instanceof ArmorModel){
//                equipment.add(armorConverter.convert((ArmorModel) equipmentModel));
//            }else if(equipmentModel instanceof WeaponModel){
//                equipment.add(weaponConverter.convert((WeaponModel)equipmentModel));
//            }
//        }
//
//        return equipment;
//    }
//
    public List<EquipmentModel> convertToModels(Set<Long> idList){
        List<EquipmentModel> equipmentModels = new ArrayList<EquipmentModel>();
        for(Long id : idList){
            equipmentModels.add(adminService.findEquipment(id));
        }
        return equipmentModels;
    }



}
