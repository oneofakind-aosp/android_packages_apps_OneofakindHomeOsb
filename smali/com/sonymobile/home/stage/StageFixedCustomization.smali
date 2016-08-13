.class public Lcom/sonymobile/home/stage/StageFixedCustomization;
.super Lcom/sonymobile/home/stage/StageCustomization;
.source "StageFixedCustomization.java"


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
    const v0, 0x7f0d0013

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
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/stage/StageFixedCustomization;->getXmlResource(I)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    return-object v0
.end method

.method public getCustomizationIdentifier()I
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/home/stage/StageFixedCustomization;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method protected getDefaultResource()Lorg/xmlpull/v1/XmlPullParser;
    .locals 1

    .prologue
    .line 59
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/stage/StageFixedCustomization;->getXmlResource(I)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    return-object v0
.end method

.method public getPageViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "stage"

    return-object v0
.end method

.method protected onAddItem(Lcom/sonymobile/home/data/Item;)Z
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    iget v0, v1, Lcom/sonymobile/home/data/ItemLocation;->position:I

    .line 77
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/sonymobile/home/stage/StageFixedCustomization;->mSlotList:Lcom/sonymobile/home/util/LimitedSlotList;

    invoke-virtual {v1, v0, p1}, Lcom/sonymobile/home/util/LimitedSlotList;->set(ILjava/lang/Object;)Z

    move-result v1

    .line 80
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/stage/StageFixedCustomization;->mSlotList:Lcom/sonymobile/home/util/LimitedSlotList;

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/util/LimitedSlotList;->add(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method
