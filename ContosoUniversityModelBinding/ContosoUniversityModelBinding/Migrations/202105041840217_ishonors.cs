namespace ContosoUniversityModelBinding.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class ishonors : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Students", "IsHonorsStudent", c => c.Boolean(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Students", "IsHonorsStudent");
        }
    }
}
