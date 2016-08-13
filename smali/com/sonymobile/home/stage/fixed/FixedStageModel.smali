.class public Lcom/sonymobile/home/stage/fixed/FixedStageModel;
.super Lcom/sonymobile/home/stage/StageModel;
.source "FixedStageModel.java"


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/data/ItemCreator;Landroid/content/Context;)V
    .locals 9
    .param p1, "storage"    # Lcom/sonymobile/home/storage/Storage;
    .param p2, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p3, "resourceHandler"    # Lcom/sonymobile/home/model/ResourceHandler;
    .param p4, "badgeManager"    # Lcom/sonymobile/home/badge/BadgeManager;
    .param p5, "folderManager"    # Lcom/sonymobile/home/folder/FolderManager;
    .param p6, "itemCreator"    # Lcom/sonymobile/home/data/ItemCreator;
    .param p7, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const-string v1, "stage"

    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0013

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/home/stage/StageModel;-><init>(Ljava/lang/String;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/data/ItemCreator;I)V

    .line 43
    return-void
.end method


# virtual methods
.method public getMaximumMovementRange()I
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/sonymobile/home/stage/fixed/FixedStageModel;->getMaxNumberOfItems()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public packItems(I)V
    .locals 0
    .param p1, "skip"    # I

    .prologue
    .line 50
    return-void
.end method
