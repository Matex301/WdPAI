<?php
require_once 'Repository.php';
class SubracesRepository extends Repository {
    public function getAllByRace($id) {
        $stmt = $this->database->prepare('
            SELECT id, name, subrace FROM public.races WHERE subrace = :id
        ');
        $stmt->bindParam(':id', $id, PDO::PARAM_STR);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getAllAndDescriptionByRace($id) {
        $stmt = $this->database->prepare('
                SELECT r.id, r.name, 
                       json_agg(json_build_object(\'name\', rE.name, \'description\', rE.description)) as entries
                FROM races r
                         LEFT JOIN public."racesEntries" rE on r.id = rE.race
                WHERE r.subrace = :id
                GROUP BY r.id
        ');
        $stmt->bindParam(':id', $id, PDO::PARAM_STR);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}