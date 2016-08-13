.class public Lcom/sonymobile/home/stage/dynamic/DynamicStageModel;
.super Lcom/sonymobile/home/stage/StageModel;
.source "DynamicStageModel.java"


# instance fields
.field private final mItemSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end field


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
    .line 57
    const-string v1, "stage_dynamic"

    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0014

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

    .line 30
    new-instance v0, Lcom/sonymobile/home/stage/dynamic/DynamicStageModel$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/stage/dynamic/DynamicStageModel$1;-><init>(Lcom/sonymobile/home/stage/dynamic/DynamicStageModel;)V

    iput-object v0, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageModel;->mItemSorter:Ljava/util/Comparator;

    .line 60
    return-void
.end method


# virtual methods
.method public getMaximumMovementRange()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageModel;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onPackageSyncItemsRemoved()V
    .locals 0

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/sonymobile/home/stage/dynamic/DynamicStageModel;->packItems()V

    .line 88
    return-void
.end method

.method public packItems(I)V
    .locals 4
    .param p1, "skip"    # I

    .prologue
    .line 67
    iget-object v2, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageModel;->mItems:Ljava/util/List;

    iget-object v3, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageModel;->mItemSorter:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "position":I
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageModel;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 69
    if-ne v1, p1, :cond_0

    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/stage/dynamic/DynamicStageModel;->mItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    invoke-virtual {v2}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v2

    iput v1, v2, Lcom/sonymobile/home/data/ItemLocation;->position:I

    .line 68
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/home/stage/dynamic/DynamicStageModel;->notifyOnModelOrderChanged()V

    .line 75
    return-void
.end method
