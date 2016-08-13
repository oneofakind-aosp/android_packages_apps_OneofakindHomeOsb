.class public Lcom/sonymobile/home/desktop/ManualDesktopCustomization;
.super Lcom/sonymobile/home/desktop/DesktopCustomization;
.source "ManualDesktopCustomization.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/resources/ResourceManager;Z)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p3, "folderManager"    # Lcom/sonymobile/home/folder/FolderManager;
    .param p4, "storage"    # Lcom/sonymobile/home/storage/Storage;
    .param p5, "resourceManager"    # Lcom/sonymobile/home/resources/ResourceManager;
    .param p6, "removeOldWidgets"    # Z

    .prologue
    .line 35
    const v1, 0x7f0d002f

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v7

    const v1, 0x7f0d0029

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v8

    const-string v9, "desktop"

    new-instance v10, Lcom/sonymobile/home/desktop/ManualDesktopPreferenceManager;

    invoke-direct {v10, p1}, Lcom/sonymobile/home/desktop/ManualDesktopPreferenceManager;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v11, p6

    invoke-direct/range {v1 .. v11}, Lcom/sonymobile/home/desktop/DesktopCustomization;-><init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/resources/ResourceManager;IILjava/lang/String;Lcom/sonymobile/home/desktop/DesktopPreferenceManager;Z)V

    .line 41
    return-void
.end method


# virtual methods
.method protected getCustomSettingsResource()Lorg/xmlpull/v1/XmlPullParser;
    .locals 1

    .prologue
    .line 64
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/ManualDesktopCustomization;->getXmlResource(I)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    return-object v0
.end method

.method public getCustomizationIdentifier()I
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ManualDesktopCustomization;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method protected getDefaultResource()Lorg/xmlpull/v1/XmlPullParser;
    .locals 1

    .prologue
    .line 56
    const v0, 0x7f060009

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/ManualDesktopCustomization;->getXmlResource(I)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    return-object v0
.end method
