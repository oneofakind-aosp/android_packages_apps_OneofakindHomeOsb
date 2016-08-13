.class public Lcom/sonymobile/home/stage/StageDynamicCustomization;
.super Lcom/sonymobile/home/stage/StageCustomization;
.source "StageDynamicCustomization.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/resources/ResourceManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p3, "folderManager"    # Lcom/sonymobile/home/folder/FolderManager;
    .param p4, "store"    # Lcom/sonymobile/home/storage/Storage;
    .param p5, "resourceManager"    # Lcom/sonymobile/home/resources/ResourceManager;

    .prologue
    .line 34
    const v0, 0x7f0d0014

    invoke-virtual {p5, v0}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/stage/StageCustomization;-><init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/storage/Storage;I)V

    .line 36
    return-void
.end method


# virtual methods
.method protected getCustomSettingsResource()Lorg/xmlpull/v1/XmlPullParser;
    .locals 1

    .prologue
    .line 67
    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/stage/StageDynamicCustomization;->getXmlResource(I)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    return-object v0
.end method

.method public getCustomizationIdentifier()I
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDynamicCustomization;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method protected getDefaultResource()Lorg/xmlpull/v1/XmlPullParser;
    .locals 1

    .prologue
    .line 59
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/stage/StageDynamicCustomization;->getXmlResource(I)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    return-object v0
.end method

.method public getPageViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "stage_dynamic"

    return-object v0
.end method

.method protected onAddItem(Lcom/sonymobile/home/data/Item;)Z
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 76
    instance-of v0, p1, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/stage/StageDynamicCustomization;->removeItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/stage/StageDynamicCustomization;->mSlotList:Lcom/sonymobile/home/util/LimitedSlotList;

    invoke-virtual {v1}, Lcom/sonymobile/home/util/LimitedSlotList;->size()I

    move-result v1

    iput v1, v0, Lcom/sonymobile/home/data/ItemLocation;->position:I

    .line 81
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageDynamicCustomization;->mSlotList:Lcom/sonymobile/home/util/LimitedSlotList;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/util/LimitedSlotList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
