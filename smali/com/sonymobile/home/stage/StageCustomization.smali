.class public abstract Lcom/sonymobile/home/stage/StageCustomization;
.super Lcom/sonymobile/home/customization/PageViewCustomization;
.source "StageCustomization.java"


# static fields
.field private static final SUPPORTED_TAGS:[Ljava/lang/String;


# instance fields
.field private final mSize:I

.field protected final mSlotList:Lcom/sonymobile/home/util/LimitedSlotList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/home/util/LimitedSlotList",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mStorage:Lcom/sonymobile/home/storage/Storage;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "activities"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "remove-activities"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "shortcuts"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "remove-shortcuts"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "internal-functions"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "folders"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "remove-folders"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/home/stage/StageCustomization;->SUPPORTED_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/storage/Storage;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p3, "folderManager"    # Lcom/sonymobile/home/folder/FolderManager;
    .param p4, "store"    # Lcom/sonymobile/home/storage/Storage;
    .param p5, "size"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/customization/PageViewCustomization;-><init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;)V

    .line 61
    iput p5, p0, Lcom/sonymobile/home/stage/StageCustomization;->mSize:I

    .line 62
    iput-object p4, p0, Lcom/sonymobile/home/stage/StageCustomization;->mStorage:Lcom/sonymobile/home/storage/Storage;

    .line 63
    new-instance v0, Lcom/sonymobile/home/util/LimitedSlotList;

    iget v1, p0, Lcom/sonymobile/home/stage/StageCustomization;->mSize:I

    invoke-direct {v0, v1}, Lcom/sonymobile/home/util/LimitedSlotList;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/home/stage/StageCustomization;->mSlotList:Lcom/sonymobile/home/util/LimitedSlotList;

    .line 64
    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageCustomization;->mStorage:Lcom/sonymobile/home/storage/Storage;

    invoke-virtual {p0}, Lcom/sonymobile/home/stage/StageCustomization;->getPageViewName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonymobile/home/storage/Storage;->clear(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method protected getItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/home/stage/StageCustomization;->mSlotList:Lcom/sonymobile/home/util/LimitedSlotList;

    invoke-virtual {v3}, Lcom/sonymobile/home/util/LimitedSlotList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 111
    iget-object v3, p0, Lcom/sonymobile/home/stage/StageCustomization;->mSlotList:Lcom/sonymobile/home/util/LimitedSlotList;

    invoke-virtual {v3, v0}, Lcom/sonymobile/home/util/LimitedSlotList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 113
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    if-eqz v1, :cond_0

    .line 114
    new-instance v3, Lcom/sonymobile/home/data/ItemLocation;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/sonymobile/home/data/ItemLocation;-><init>(II)V

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/data/Item;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 115
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_1
    return-object v2
.end method

.method protected isWithinBounds(Lcom/sonymobile/home/data/ItemLocation;)Z
    .locals 2
    .param p1, "location"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    .line 93
    iget v0, p1, Lcom/sonymobile/home/data/ItemLocation;->position:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/sonymobile/home/data/ItemLocation;->position:I

    iget v1, p0, Lcom/sonymobile/home/stage/StageCustomization;->mSize:I

    if-lt v0, v1, :cond_1

    :cond_0
    iget v0, p1, Lcom/sonymobile/home/data/ItemLocation;->position:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 95
    :cond_1
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onRemoveItem(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageCustomization;->mSlotList:Lcom/sonymobile/home/util/LimitedSlotList;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/util/LimitedSlotList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected removeOverlappingItems(Lcom/sonymobile/home/data/Item;)V
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 84
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    iget v0, v1, Lcom/sonymobile/home/data/ItemLocation;->position:I

    .line 86
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/sonymobile/home/stage/StageCustomization;->mSlotList:Lcom/sonymobile/home/util/LimitedSlotList;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/util/LimitedSlotList;->remove(I)Ljava/lang/Object;

    .line 89
    :cond_0
    return-void
.end method

.method protected store()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageCustomization;->mStorage:Lcom/sonymobile/home/storage/Storage;

    invoke-virtual {p0}, Lcom/sonymobile/home/stage/StageCustomization;->getPageViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/home/stage/StageCustomization;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/home/storage/Storage;->insertPageViewItems(Ljava/lang/String;Ljava/util/List;)V

    .line 75
    return-void
.end method

.method protected supportsGroup(Ljava/lang/String;)Z
    .locals 1
    .param p1, "groupType"    # Ljava/lang/String;

    .prologue
    .line 79
    sget-object v0, Lcom/sonymobile/home/stage/StageCustomization;->SUPPORTED_TAGS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/sonymobile/home/util/HomeUtils;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
