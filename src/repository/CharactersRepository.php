<?php
include_once 'Repository.php';
class CharactersRepository extends Repository
{
    public static function getByOwner($id) {
        $stmt = self::$database->prepare('
            SELECT
                characters.id,
                characters.owner,
                characters.name,
                characters.public,
                classes.name as class
            FROM characters
            INNER JOIN selections on characters.id = selections.id
            LEFT JOIN classes on selections.class = classes.id
            WHERE owner = :id
        ');
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public static function checkIfOwner($character, $user) {
        $stmt = self::$database->prepare('
            SELECT EXISTS(
                SELECT characters.id
                  FROM characters
                           INNER JOIN users on users.id = characters.owner
                  WHERE characters.id = :character
                    AND users.id = :user
            )
        ');
        $stmt->bindParam(':character', $character, PDO::PARAM_INT);
        $stmt->bindParam(':user', $user, PDO::PARAM_INT);
        $stmt->execute();

        return $stmt->fetch(PDO::FETCH_ASSOC);
    }
}