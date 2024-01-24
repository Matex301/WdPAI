<?php
include_once 'Repository.php';

class BackgroundsRepository extends Repository
{
    public static function getAll() {
        $stmt = self::$database->prepare('
            SELECT id, name, bonuses FROM public.backgrounds
        ');
        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public static function getAllAndDescription() {

        $stmt = self::$database->prepare('
            SELECT b.id, b.name,
                   json_agg(json_build_object(\'name\', bE.name, \'description\', bE.description)) as entries
            FROM backgrounds b
                     LEFT JOIN public."backgroundsEntries" bE on b.id = bE.background
            GROUP BY b.id
        ');
        $stmt->execute();

        $backgrounds = $stmt->fetchAll(PDO::FETCH_ASSOC);

        for($i = 0; $i < sizeof($backgrounds); $i++){
            $backgrounds[$i]['entries'] = json_decode($backgrounds[$i]['entries']);
        }

        return $backgrounds;
    }
}