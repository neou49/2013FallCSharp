namespace DataLayer.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Start : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.ContactMethods",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Value = c.String(nullable: false),
                        ContactsId = c.Int(nullable: false),
                        KeywordId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Contacts", t => t.ContactsId, cascadeDelete: false)
                .ForeignKey("dbo.Keywords", t => t.KeywordId, cascadeDelete: false)
                .Index(t => t.ContactsId)
                .Index(t => t.KeywordId);
            
            CreateTable(
                "dbo.Contacts",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        FirstName = c.String(nullable: false),
                        LastName = c.String(nullable: false),
                        KeywordsId = c.Int(nullable: false),
                        fbid = c.String(maxLength: 500),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Keywords", t => t.KeywordsId, cascadeDelete: false)
                .Index(t => t.KeywordsId);
            
            CreateTable(
                "dbo.Keywords",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(nullable: false),
                        KeywordsId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Keywords", t => t.KeywordsId, false)
                .Index(t => t.KeywordsId);
            
        }
        
        public override void Down()
        {
            DropIndex("dbo.Keywords", new[] { "KeywordsId" });
            DropIndex("dbo.Contacts", new[] { "KeywordsId" });
            DropIndex("dbo.ContactMethods", new[] { "KeywordId" });
            DropIndex("dbo.ContactMethods", new[] { "ContactsId" });
            DropForeignKey("dbo.Keywords", "KeywordsId", "dbo.Keywords");
            DropForeignKey("dbo.Contacts", "KeywordsId", "dbo.Keywords");
            DropForeignKey("dbo.ContactMethods", "KeywordId", "dbo.Keywords");
            DropForeignKey("dbo.ContactMethods", "ContactsId", "dbo.Contacts");
            DropTable("dbo.Keywords");
            DropTable("dbo.Contacts");
            DropTable("dbo.ContactMethods");
        }
    }
}
