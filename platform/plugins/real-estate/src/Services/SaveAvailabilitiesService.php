<?php

namespace Botble\RealEstate\Services;

use Botble\RealEstate\Models\Project;
use Botble\RealEstate\Models\Property;

class SaveAvailabilitiesService
{
    /**
     * @param Project| Property|mixed $item
     * @param array $availability
     */
    public function execute($item, $availability): bool
    {
        if (!$availability || !is_array($availability)) {
            return false;
        }		
		//echo "<pre>"; print_r($availability); exit;

		//Get Existing Ids
		$existingIdArr = $item->availabilities()->pluck('id')->all();
	
		$availableIdArr = [];
        foreach ($availability as $avail)
		{
			if(!$this->isValidDate($avail))
				continue;

			$avail['avail_date'] = date('Y-m-d', strtotime($avail['avail_date'])); 
            if(!empty($avail['id'])) {
                //Update
				$availObj = $item->availabilities()->find($avail['id']);
				$availObj->update($avail);
				$availableIdArr[] = $avail['id'];
            } else {
				//Insert
				$item->availabilities()->create($avail);
			}
        }

		//Delete
		if(!empty($existingIdArr) && !empty($availableIdArr))
		{
			$delIdArr = array_diff($existingIdArr,$availableIdArr);
			if(!empty($delIdArr)) {
				$item->availabilities()->whereIn('id', $delIdArr)->delete();
			}
		}
        return true;
    }

	/* Date & Time Validation */
	public function isValidDate($avail)
	{
		if (!$avail['avail_date'] || empty($avail['avail_date']))
			return false;
		
		if($avail['from_formate'] == "AM" && $avail['to_formate'] == "PM")
			return true;
		else if($avail['from_formate'] == "PM" && $avail['to_formate'] == "AM")
			return false;
		else if($avail['from_formate'] == $avail['to_formate']) {
			if($avail['from_hour'] >= $avail['to_hour']) {
				return false;
			}
		}
		return true;
	}
}
