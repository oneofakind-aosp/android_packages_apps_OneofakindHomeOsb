.class public Lcom/sonymobile/home/ApplicationCustomizationFactory;
.super Ljava/lang/Object;
.source "ApplicationCustomizationFactory.java"

# interfaces
.implements Lcom/sonymobile/home/customization/CustomizationFactory;


# instance fields
.field private final mCustomizations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/customization/Customization;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p3, "folderManager"    # Lcom/sonymobile/home/folder/FolderManager;
    .param p4, "storage"    # Lcom/sonymobile/home/storage/Storage;
    .param p5, "resourceManager"    # Lcom/sonymobile/home/resources/ResourceManager;
    .param p6, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/home/ApplicationCustomizationFactory;->mCustomizations:Ljava/util/List;

    .line 35
    iget-object v7, p0, Lcom/sonymobile/home/ApplicationCustomizationFactory;->mCustomizations:Ljava/util/List;

    new-instance v0, Lcom/sonymobile/home/desktop/ManualDesktopCustomization;

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/desktop/ManualDesktopCustomization;-><init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/resources/ResourceManager;Z)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v7, p0, Lcom/sonymobile/home/ApplicationCustomizationFactory;->mCustomizations:Ljava/util/List;

    new-instance v0, Lcom/sonymobile/home/desktop/AutomaticDesktopCustomization;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/desktop/AutomaticDesktopCustomization;-><init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/resources/ResourceManager;Z)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v6, p0, Lcom/sonymobile/home/ApplicationCustomizationFactory;->mCustomizations:Ljava/util/List;

    new-instance v0, Lcom/sonymobile/home/apptray/AppTrayCustomization;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/apptray/AppTrayCustomization;-><init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/resources/ResourceManager;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v6, p0, Lcom/sonymobile/home/ApplicationCustomizationFactory;->mCustomizations:Ljava/util/List;

    new-instance v0, Lcom/sonymobile/home/stage/StageFixedCustomization;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/stage/StageFixedCustomization;-><init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/resources/ResourceManager;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v6, p0, Lcom/sonymobile/home/ApplicationCustomizationFactory;->mCustomizations:Ljava/util/List;

    new-instance v0, Lcom/sonymobile/home/stage/StageDynamicCustomization;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/stage/StageDynamicCustomization;-><init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/resources/ResourceManager;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/sonymobile/home/ApplicationCustomizationFactory;->mCustomizations:Ljava/util/List;

    new-instance v1, Lcom/sonymobile/home/search/SearchSuggestionsCustomization;

    invoke-direct {v1, p1, p2, p4, p6}, Lcom/sonymobile/home/search/SearchSuggestionsCustomization;-><init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/settings/UserSettings;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcom/sonymobile/home/ApplicationCustomizationFactory;->mCustomizations:Ljava/util/List;

    new-instance v1, Lcom/sonymobile/home/ApplicationCustomization;

    invoke-direct {v1, p1}, Lcom/sonymobile/home/ApplicationCustomization;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method


# virtual methods
.method public getCustomizations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/customization/Customization;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonymobile/home/ApplicationCustomizationFactory;->mCustomizations:Ljava/util/List;

    return-object v0
.end method
