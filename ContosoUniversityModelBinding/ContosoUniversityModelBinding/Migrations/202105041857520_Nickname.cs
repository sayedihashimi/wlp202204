namespace ContosoUniversityModelBinding.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Nickname : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Students", "NickName", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Students", "NickName");
        }
    }
}
