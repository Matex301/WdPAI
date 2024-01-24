<?php
include_once 'Repository.php';
class ClassesRepository extends Repository
{
    public static function getAllAndDescription() {

        $stmt = self::$database->prepare('
            WITH entriesTemp as (
                SELECT fE.feature,
                    json_agg(json_build_object(\'name\', fE.name, \'description\', fE.description)) as entries
                FROM "featuresEntries" fE
                GROUP BY fE.feature
            )
            
            SELECT c.id, c.name,
                   json_agg(json_build_object(\'name\', f.name, \'level\', f.level, \'entries\', eT.entries)) as features
            FROM classes c
                LEFT JOIN public."featuresReference" fR on fR.id = c.features
                LEFT JOIN public.features f on fR.id = f.reference
                LEFT JOIN entriesTemp eT on f.id = eT.feature
            GROUP BY c.id
        ');
        $stmt->execute();
        $classes = $stmt->fetchAll(PDO::FETCH_ASSOC);
        for($i = 0; $i < sizeof($classes); $i++){
            $classes[$i]['features'] = json_decode($classes[$i]['features']);
        }

        return $classes;
    }
}