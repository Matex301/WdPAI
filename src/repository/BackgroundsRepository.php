<?php
include_once 'Repository.php';

class BackgroundsRepository extends Repository
{
    public function getAll() {
        $stmt = $this->database->prepare('
            SELECT id, name, bonuses FROM public.backgrounds
        ');
        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getAllAndDescription() {

        $stmt = $this->database->prepare('
            SELECT b.id, b.name,
                   json_agg(json_build_object(\'name\', bE.name, \'description\', bE.description)) as entries
            FROM backgrounds b
                     LEFT JOIN public."backgroundsEntries" bE on b.id = bE.background
            GROUP BY b.id
        ');
        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}