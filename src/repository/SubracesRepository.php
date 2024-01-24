<?php
require_once 'Repository.php';
class SubracesRepository extends Repository {
    public static function getAllByRace($id) {
        $stmt = self::$database->prepare('
            SELECT id, name, subrace FROM public.races WHERE subrace = :id
        ');
        $stmt->bindParam(':id', $id, PDO::PARAM_STR);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public static function getAllAndDescriptionByRace($id) {
        $stmt = self::$database->prepare('
                SELECT r.id, r.name, 
                       json_agg(json_build_object(\'name\', rE.name, \'description\', rE.description)) as entries
                FROM races r
                         LEFT JOIN public."racesEntries" rE on r.id = rE.race
                WHERE r.subrace = :id
                GROUP BY r.id
        ');
        $stmt->bindParam(':id', $id, PDO::PARAM_STR);
        $stmt->execute();

        $subraces = $stmt->fetchAll(PDO::FETCH_ASSOC);

        for($i = 0; $i < sizeof($subraces); $i++){
            $subraces[$i]['entries'] = json_decode($subraces[$i]['entries']);
        }

        return $subraces;
    }
}