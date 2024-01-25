<?php

class Character {
    private $id;
    private $owner;
    private $name;
    private $public;

    public function __construct(int $id, string $owner, string $name, bool $public) {
        $this->id = $id;
        $this->owner = $owner;
        $this->name = $name;
        $this->public = $public;
    }

    public function getId(): int
    {
        return $this->id;
    }

    public function getOwner(): string
    {
        return $this->owner;
    }

    public function setOwner(string $owner)
    {
        $this->owner = $owner;
    }

    public function getName(): string
    {
        return $this->name;
    }

    public function setName(string $name)
    {
        $this->name = $name;
    }

    public function isPublic(): bool
    {
        return $this->public;
    }

    public function setPublic(bool $public)
    {
        $this->public = $public;
    }

}