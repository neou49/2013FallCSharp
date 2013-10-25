namespace DataLayer.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Keywords : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.ContactMethods", "ContactsId", "dbo.Contacts");
            DropForeignKey("dbo.Contacts", "KeywordsId", "dbo.Keywords");
            DropForeignKey("dbo.Keywords", "KeywordsId", "dbo.Keywords");
            DropIndex("dbo.ContactMethods", new[] { "ContactsId" });
            DropIndex("dbo.Contacts", new[] { "KeywordsId" });
            DropIndex("dbo.Keywords", new[] { "KeywordsId" });
            AddColumn("dbo.ContactMethods", "Contact_Id", c => c.Int());
            AddColumn("dbo.Contacts", "Keyword_Id", c => c.Int());
            AddColumn("dbo.Keywords", "Parent_Id", c => c.Int());
            AlterColumn("dbo.ContactMethods", "Value", c => c.String());
            AlterColumn("dbo.Contacts", "FirstName", c => c.String());
            AlterColumn("dbo.Contacts", "LastName", c => c.String());
            AlterColumn("dbo.Keywords", "Name", c => c.String());
            CreateIndex("dbo.ContactMethods", "Contact_Id");
            CreateIndex("dbo.Contacts", "Keyword_Id");
            CreateIndex("dbo.Keywords", "Parent_Id");
            AddForeignKey("dbo.ContactMethods", "Contact_Id", "dbo.Contacts", "Id");
            AddForeignKey("dbo.Contacts", "Keyword_Id", "dbo.Keywords", "Id");
            AddForeignKey("dbo.Keywords", "Parent_Id", "dbo.Keywords", "Id");
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Keywords", "Parent_Id", "dbo.Keywords");
            DropForeignKey("dbo.Contacts", "Keyword_Id", "dbo.Keywords");
            DropForeignKey("dbo.ContactMethods", "Contact_Id", "dbo.Contacts");
            DropIndex("dbo.Keywords", new[] { "Parent_Id" });
            DropIndex("dbo.Contacts", new[] { "Keyword_Id" });
            DropIndex("dbo.ContactMethods", new[] { "Contact_Id" });
            AlterColumn("dbo.Keywords", "Name", c => c.String(nullable: false));
            AlterColumn("dbo.Contacts", "LastName", c => c.String(nullable: false));
            AlterColumn("dbo.Contacts", "FirstName", c => c.String(nullable: false));
            AlterColumn("dbo.ContactMethods", "Value", c => c.String(nullable: false));
            DropColumn("dbo.Keywords", "Parent_Id");
            DropColumn("dbo.Contacts", "Keyword_Id");
            DropColumn("dbo.ContactMethods", "Contact_Id");
            CreateIndex("dbo.Keywords", "KeywordsId");
            CreateIndex("dbo.Contacts", "KeywordsId");
            CreateIndex("dbo.ContactMethods", "ContactsId");
            AddForeignKey("dbo.Keywords", "KeywordsId", "dbo.Keywords", "Id");
            AddForeignKey("dbo.Contacts", "KeywordsId", "dbo.Keywords", "Id");
            AddForeignKey("dbo.ContactMethods", "ContactsId", "dbo.Contacts", "Id", cascadeDelete: true);
        }
    }
}
