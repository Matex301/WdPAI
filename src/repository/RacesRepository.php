<?php
include_once 'Repository.php';
class RacesRepository extends Repository {

    public static function getAll() {
        $stmt = self::$database->prepare('
            SELECT id, name, subrace FROM public.races WHERE subrace IS NULL
        ');
        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public static function getAllAndDescription() {

        $stmt = self::$database->prepare('
            SELECT r.id, r.name,
                   json_agg(json_build_object(\'name\', rE.name, \'description\', rE.description)) as entries
            FROM races r
                     LEFT JOIN public."racesEntries" rE on r.id = rE.race
            WHERE r.subrace IS NULL
            GROUP BY r.id
        ');
        $stmt->execute();

        $races = $stmt->fetchAll(PDO::FETCH_ASSOC);

        for($i = 0; $i < sizeof($races); $i++){
            $races[$i]['entries'] = json_decode($races[$i]['entries']);
        }

        return $races;
    }
}

/*
SELECT r.id, r.name,
       json_agg(json_build_object(\'name\', rE.name, \'description\', rE.description)) as entries
FROM races r
         LEFT JOIN public."racesEntry" rE on r.id = rE.race
WHERE r.subrace IS NULL
GROUP BY r.id
 */

/*
SELECT r.id, r.name,
       array_agg(array[rE.name, rE.description]) as entries
FROM races r
         LEFT JOIN public."racesEntry" rE on r.id = rE.race
WHERE r.subrace IS NULL
GROUP BY r.id
 */