using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FormulaOneDll
{
    public class Team
    {
        private int id;
        private string name;
        private string fullTeamName;
        private Country country;
        private string powerUnit;
        private string technicalChief;
        private string chassis;
        private Driver firstDriver;
        private Driver secondDriver;
        private string logo;
        private string img;

        public Team(int id, string name, string fullTeamName, Country country, string powerUnit, string technicalChief, string chassis, Driver firstDriver, Driver secondDriver, string logo, string img)
        {
            this.id = id;
            this.name = name;
            this.fullTeamName = fullTeamName;
            this.country = country;
            this.powerUnit = powerUnit;
            this.technicalChief = technicalChief;
            this.chassis = chassis;
            this.firstDriver = firstDriver;
            this.secondDriver = secondDriver;
            this.logo = logo;
            this.img = img;
        }

        public int ID { get => id; set => id = value; }
        public string Name { get => name; set => name = value; }
        public string FullTeamName { get => fullTeamName; set => fullTeamName = value; }
        public Country Country { get => country; set => country = value; }
        public string PowerUnit { get => powerUnit; set => powerUnit = value; }
        public string TechnicalChief { get => technicalChief; set => technicalChief = value; }
        public string Chassis { get => chassis; set => chassis = value; }
        public Driver FirstDriver { get => firstDriver; set => firstDriver = value; }
        public Driver SecondDriver { get => secondDriver; set => secondDriver = value; }


        public string Logo { get => logo; set => logo = value; }
        public string Img { get => img; set => img = value; }

        public override string ToString() => $"{this.Name}";

    }
}
