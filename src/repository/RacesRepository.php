<?php
include_once 'Repository.php';
class RacesRepository extends Repository {

    public function getAll() {
        $stmt = $this->database->prepare('
            SELECT id, name, subrace FROM public.races WHERE subrace IS NULL
        ');
        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getAllAndDesciption() {

        $stmt = $this->database->prepare('
            SELECT r.id, r.name,
                   json_agg(json_build_object(\'name\', rE.name, \'description\', rE.description)) as entries
            FROM races r
                     LEFT JOIN public."racesEntry" rE on r.id = rE.race
            WHERE r.subrace IS NULL
            GROUP BY r.id
        ');
        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
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