class SelectorScore {
    constructor(stats) {
        this.strength = stats.strength;
        this.dexterity = stats.dexterity;
        this.constitution = stats.constitution;
        this.wisdom = stats.wisdom;
        this.intelligence = stats.intelligence;
        this.charisma = stats.charisma;
    }

    setStats() {
        document.getElementById('strength').value = this.strength;
        document.getElementById('dexterity').value = this.dexterity;
        document.getElementById('constitution').value = this.constitution;
        document.getElementById('wisdom').value = this.wisdom;
        document.getElementById('intelligence').value = this.intelligence;
        document.getElementById('charisma').value = this.charisma;
    }

    getStats() {
        this.strength = document.getElementById('strength').value;
        this.dexterity = document.getElementById('dexterity').value;
        this.constitution = document.getElementById('constitution').value;
        this.wisdom = document.getElementById('wisdom').value;
        this.intelligence = document.getElementById('intelligence').value;
        this.charisma = document.getElementById('charisma').value;

        let stats = {};
        stats.strength = this.strength;
        stats.dexterity = this.dexterity;
        stats.constitution = this.constitution;
        stats.wisdom = this.wisdom;
        stats.intelligence = this.intelligence;
        stats.charisma = this.charisma;

        return stats;
    }
}

let score;