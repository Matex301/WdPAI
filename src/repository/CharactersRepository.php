<?php
include_once 'Repository.php';
require_once __DIR__ . '/../models/Character.php';
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

    public static function createCharacter($owner) {
        $stmt = self::$database->prepare('
            INSERT INTO characters (owner)
            VALUES (?)
            RETURNING *
        ');
        $stmt->bindParam(1, $owner, PDO::PARAM_STR);
        $stmt->execute();

        $character = $stmt->fetch(PDO::FETCH_ASSOC);

        if(!$character) {
            return null;
        }

        return new Character(
            $character['id'],
            $character['owner'],
            $character['name'],
            $character['public']
        );
    }

    public static function getDataById($id) {
        $stmt = self::$database->prepare('
            SELECT
                characters.id,
                characters.name,
                json_build_object(\'strength\', strength, \'dexterity\', dexterity, \'constitution\', constitution, \'intelligence\', intelligence, \'wisdom\', wisdom, \'charisma\', charisma) as stats,
                selections.race,
                races.subrace,
                selections.background,
                selections.class,
                selections.subclass,
                selections.selected,
                characters.owner,
                characters.public
            FROM characters
            INNER JOIN selections ON characters.id = selections.id
            INNER JOIN stats ON characters.id = stats.id
            LEFT JOIN races ON selections.race = races.id
            WHERE characters.id = :id
        ');
        $stmt->bindParam(1, $id, PDO::PARAM_STR);
        $stmt->execute();

        $data = $stmt->fetch(PDO::FETCH_ASSOC);

        if(!$data) {
            return null;
        }

        $data['stats'] = json_decode($data['stats']);

        return $data;
    }

    public static function updateName($id, $name) {
        $stmt = self::$database->prepare('
            UPDATE characters
            SET name = :name
            WHERE characters.id = :id;
        ');
        $stmt->bindParam('id', $id, PDO::PARAM_STR);
        $stmt->bindParam('name', $name, PDO::PARAM_STR);
        $stmt->execute();
    }

    public static function updateStats($id, $strength, $dexterity, $constitution, $wisdom, $intelligence, $charisma) {
        $stmt = self::$database->prepare('
            UPDATE stats
            SET
                strength = :strength,
                dexterity = :dexterity,
                constitution = :constitution,
                wisdom = :wisdom,
                intelligence = :intelligence,
                charisma = :charisma
            WHERE stats.id = :id;
        ');
        $stmt->bindParam('id', $id, PDO::PARAM_STR);
        $stmt->bindParam('strength', $strength, PDO::PARAM_STR);
        $stmt->bindParam('dexterity', $dexterity, PDO::PARAM_STR);
        $stmt->bindParam('constitution', $constitution, PDO::PARAM_STR);
        $stmt->bindParam('wisdom', $wisdom, PDO::PARAM_STR);
        $stmt->bindParam('intelligence', $intelligence, PDO::PARAM_STR);
        $stmt->bindParam('charisma', $charisma, PDO::PARAM_STR);
        $stmt->execute();
    }

    public static function updateSelections($id, $class, $subclass, $background, $race, $selected) {
        $stmt = self::$database->prepare('
            UPDATE selections
            SET
                class = :class,
                subclass = :subclass,
                background = :background,
                race = :race,
                selected = :selected
            WHERE selections.id = :id;
        ');
        $stmt->bindParam('id', $id, PDO::PARAM_STR);
        $stmt->bindParam('class', $class, PDO::PARAM_STR);
        $stmt->bindParam('subclass', $subclass, PDO::PARAM_STR);
        $stmt->bindParam('background', $background, PDO::PARAM_STR);
        $stmt->bindParam('race', $race, PDO::PARAM_STR);
        $stmt->bindParam('selected', $selected, PDO::PARAM_STR);
        $stmt->execute();
    }
}