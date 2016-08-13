.class public Lcom/sonymobile/home/desktop/AutomaticDesktopCustomization;
.super Lcom/sonymobile/home/desktop/DesktopCustomization;
.source "AutomaticDesktopCustomization.java"


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
    .line 38
    const v1, 0x7f0d0027

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v7

    const v1, 0x7f0d0026

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/resources/ResourceManager;->getInteger(I)I

    move-result v8

    const-string v9, "desktop_automatic"

    new-instance v10, Lcom/sonymobile/home/desktop/AutomaticDesktopPreferenceManager;

    invoke-direct {v10, p1}, Lcom/sonymobile/home/desktop/AutomaticDesktopPreferenceManager;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v11, p6

    invoke-direct/range {v1 .. v11}, Lcom/sonymobile/home/desktop/DesktopCustomization;-><init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/resources/ResourceManager;IILjava/lang/String;Lcom/sonymobile/home/desktop/DesktopPreferenceManager;Z)V

    .line 43
    return-void
.end method


# virtual methods
.method protected addActivity(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "page"    # I
    .param p2, "position"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "folderId"    # Ljava/lang/String;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "packageName"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-virtual {p0, p6, p7}, Lcom/sonymobile/home/desktop/AutomaticDesktopCustomization;->removeActivityItem(Ljava/lang/String;Ljava/lang/String;)Z

    .line 76
    invoke-super/range {p0 .. p7}, Lcom/sonymobile/home/desktop/DesktopCustomization;->addActivity(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected getCustomSettingsResource()Lorg/xmlpull/v1/XmlPullParser;
    .locals 1

    .prologue
    .line 66
    const v0, 0x7f060002

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/AutomaticDesktopCustomization;->getXmlResource(I)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    return-object v0
.end method

.method public getCustomizationIdentifier()I
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopCustomization;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method protected getDefaultResource()Lorg/xmlpull/v1/XmlPullParser;
    .locals 1

    .prologue
    .line 58
    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/desktop/AutomaticDesktopCustomization;->getXmlResource(I)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    return-object v0
.end method

.method public preCustomization(I)V
    .locals 3
    .param p1, "customizationsCompletedMask"    # I

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/sonymobile/home/desktop/DesktopCustomization;->preCustomization(I)V

    .line 85
    if-eqz p1, :cond_0

    .line 87
    const/4 v0, 0x0

    const-string v1, "Default"

    iget-object v2, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopCustomization;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonymobile/home/settings/HomeSettingsPreferenceManager;->updateAutomaticDesktopSetting(ZLjava/lang/String;Landroid/content/Context;)V

    .line 91
    :cond_0
    return-void
.end method
