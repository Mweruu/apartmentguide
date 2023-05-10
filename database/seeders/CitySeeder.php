<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Botble\Location\Models\City;
#use Botble\Location\Models\Country;
use Botble\Location\Models\State;

/*
* php artisan db:seed --class=CitySeeder
*/
class CitySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
		City::truncate();
		$cities = file_get_contents(__DIR__ . '/../../db/kenya-city.json');	
		//print_r($cities);exit;
		$cities = json_decode($cities, true);
		//print_r($cities);exit;
		foreach ($cities as $item) {

			//print_r($item);exit;
			$state = State::where('name', $item['state'])->first();
			if (!$state) {
				continue;
			}
			//print_r($state->toArray());exit;

			foreach ($item['cities'] as $cityName) {
				$city = [
					'name'       => $cityName,
					'state_id'   => $state->id,
					'country_id' => $state->country_id,
					'is_featured' => "1"
				];

				$cityObj = City::create($city);

				/* Create Slug */
				$slugName = $this->slugify($cityName);
				$slugArr = City::where('slug', $slugName)->first();
				if(!empty($slugArr) && !empty($slugArr->slug))
					$slugName = $slugName.'-'.$cityObj->id;
				$cityObj->slug = $slugName;
				$cityObj->save();
			}
		}
    }

	/* Create Slug for city */
	public static function slugify($text, string $divider = '-')
	{
		// replace non letter or digits by divider
		$text = preg_replace('~[^\pL\d]+~u', $divider, $text);

		// transliterate
		$text = iconv('utf-8', 'us-ascii//TRANSLIT', $text);

		// remove unwanted characters
		$text = preg_replace('~[^-\w]+~', '', $text);

		// trim
		$text = trim($text, $divider);

		// remove duplicate divider
		$text = preg_replace('~-+~', $divider, $text);

		// lowercase
		$text = strtolower($text);

		if (empty($text)) {
		return 'n-a';
		}

		return $text;
	}
}
