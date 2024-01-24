<?php
require_once 'Repository.php';
class SubclassesRepository extends Repository
{
    public static function getAllByClass($id) {
        $stmt = self::$database->prepare('
            WITH entriesTemp as (
                SELECT fE.feature,
                       json_agg(json_build_object(\'name\', fE.name, \'description\', fE.description)) as entries
                FROM "featuresEntries" fE
                GROUP BY fE.feature
            )
            
            SELECT s.id, s.name,
                   json_agg(json_build_object(\'name\', f.name, \'level\', f.level, \'entries\', eT.entries)) as features
            FROM subclasses s
                     LEFT JOIN public."featuresReference" fR on fR.id = s.features
                     LEFT JOIN public.features f on fR.id = f.reference
                     LEFT JOIN entriesTemp eT on f.id = eT.feature
            WHERE s.class = :id
            GROUP BY s.id
        ');
        $stmt->bindParam(':id', $id, PDO::PARAM_STR);
        $stmt->execute();

        $subclasses = $stmt->fetchAll(PDO::FETCH_ASSOC);

        for($i = 0; $i < sizeof($subclasses); $i++){
            $subclasses[$i]['features'] = json_decode($subclasses[$i]['features']);
        }

        return $subclasses;
    }
}