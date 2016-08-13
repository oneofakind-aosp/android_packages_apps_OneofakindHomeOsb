.class public Lcom/sonymobile/home/configuration/parser/jsonParser/FolderConfigJsonParser;
.super Lcom/sonymobile/home/configuration/parser/ItemConfigParser;
.source "FolderConfigJsonParser.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCategories:[Ljava/lang/String;

.field private final mFolderLocalizedNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/sonymobile/home/configuration/parser/jsonParser/FolderConfigJsonParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/configuration/parser/jsonParser/FolderConfigJsonParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/sonymobile/home/configuration/parser/ItemConfigParser;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/configuration/parser/jsonParser/FolderConfigJsonParser;->mCategories:[Ljava/lang/String;

    .line 52
    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/configuration/parser/jsonParser/FolderConfigJsonParser;->mFolderLocalizedNames:[Ljava/lang/String;

    .line 53
    return-void
.end method

.method private createItemLocation(Lorg/json/JSONObject;Ljava/lang/String;Lcom/sonymobile/home/configuration/Config;)Lcom/sonymobile/home/data/ItemLocation;
    .locals 4
    .param p1, "icon"    # Lorg/json/JSONObject;
    .param p2, "layer"    # Ljava/lang/String;
    .param p3, "config"    # Lcom/sonymobile/home/configuration/Config;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "itemLocationJsonParser":Lcom/sonymobile/home/configuration/parser/jsonParser/ItemLocationJsonParser;
    instance-of v1, p3, Lcom/sonymobile/home/configuration/DesktopConfig;

    if-eqz v1, :cond_0

    .line 134
    new-instance v0, Lcom/sonymobile/home/configuration/parser/jsonParser/DesktopItemLocationJsonParser;

    .end local v0    # "itemLocationJsonParser":Lcom/sonymobile/home/configuration/parser/jsonParser/ItemLocationJsonParser;
    invoke-direct {v0}, Lcom/sonymobile/home/configuration/parser/jsonParser/DesktopItemLocationJsonParser;-><init>()V

    .line 140
    .restart local v0    # "itemLocationJsonParser":Lcom/sonymobile/home/configuration/parser/jsonParser/ItemLocationJsonParser;
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/configuration/parser/jsonParser/ItemLocationJsonParser;->parseItemLocation(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    return-object v1

    .line 135
    :cond_0
    instance-of v1, p3, Lcom/sonymobile/home/configuration/StageConfig;

    if-eqz v1, :cond_1

    .line 136
    new-instance v0, Lcom/sonymobile/home/configuration/parser/jsonParser/StageItemLocationJsonParser;

    .end local v0    # "itemLocationJsonParser":Lcom/sonymobile/home/configuration/parser/jsonParser/ItemLocationJsonParser;
    invoke-direct {v0}, Lcom/sonymobile/home/configuration/parser/jsonParser/StageItemLocationJsonParser;-><init>()V

    .restart local v0    # "itemLocationJsonParser":Lcom/sonymobile/home/configuration/parser/jsonParser/ItemLocationJsonParser;
    goto :goto_0

    .line 138
    :cond_1
    new-instance v1, Lcom/sonymobile/home/configuration/ConfigException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Config "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/home/configuration/ConfigException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private updateFolderItemsProperties(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v1, 0x0

    .line 150
    .local v1, "index":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 151
    .local v2, "item":Lcom/sonymobile/home/data/Item;
    new-instance v3, Lcom/sonymobile/home/data/ItemLocation;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1}, Lcom/sonymobile/home/data/ItemLocation;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/data/Item;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 152
    const-string v3, "folder"

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/data/Item;->setPageViewName(Ljava/lang/String;)V

    .line 153
    add-int/lit8 v1, v1, 0x1

    .line 154
    goto :goto_0

    .line 155
    .end local v2    # "item":Lcom/sonymobile/home/data/Item;
    :cond_0
    return-void
.end method


# virtual methods
.method protected createItem(Lcom/sonymobile/home/configuration/parser/ItemConfigData;)Lcom/sonymobile/home/data/Item;
    .locals 7
    .param p1, "itemConfigData"    # Lcom/sonymobile/home/configuration/parser/ItemConfigData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;

    .line 76
    .local v0, "folderConfigData":Lcom/sonymobile/home/configuration/parser/FolderConfigData;
    invoke-virtual {v0}, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->isCategorySet()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    iget-object v4, p0, Lcom/sonymobile/home/configuration/parser/jsonParser/FolderConfigJsonParser;->mCategories:[Ljava/lang/String;

    iget-object v5, p0, Lcom/sonymobile/home/configuration/parser/jsonParser/FolderConfigJsonParser;->mFolderLocalizedNames:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->getCategory()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sonymobile/home/customization/CustomizationUtils;->getFolderName([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "name":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/sonymobile/home/data/FolderItem;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/sonymobile/home/data/FolderItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .local v1, "folderItem":Lcom/sonymobile/home/data/FolderItem;
    invoke-virtual {v0}, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->getFolderItems()Ljava/util/List;

    move-result-object v2

    .line 84
    .local v2, "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-direct {p0, v2}, Lcom/sonymobile/home/configuration/parser/jsonParser/FolderConfigJsonParser;->updateFolderItemsProperties(Ljava/util/List;)V

    .line 85
    invoke-virtual {v1, v2}, Lcom/sonymobile/home/data/FolderItem;->addTemporaryItems(Ljava/util/List;)V

    .line 86
    return-object v1

    .line 79
    .end local v1    # "folderItem":Lcom/sonymobile/home/data/FolderItem;
    .end local v2    # "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->getName()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_0
.end method

.method protected isItemInfoValid(Lcom/sonymobile/home/data/Item;)Z
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/home/data/FolderItem;

    .line 68
    .local v0, "folderItem":Lcom/sonymobile/home/data/FolderItem;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/configuration/parser/jsonParser/FolderConfigJsonParser;->isLocationValid(Lcom/sonymobile/home/data/Item;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/home/data/FolderItem;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public parseFolder(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lcom/sonymobile/home/configuration/Config;)Lcom/sonymobile/home/data/FolderItem;
    .locals 11
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "layer"    # Ljava/lang/String;
    .param p4, "config"    # Lcom/sonymobile/home/configuration/Config;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/home/configuration/Config;",
            ")",
            "Lcom/sonymobile/home/data/FolderItem;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 101
    .local p3, "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v8, 0x0

    .line 102
    .local v8, "folderItem":Lcom/sonymobile/home/data/FolderItem;
    const/4 v1, 0x0

    .line 103
    .local v1, "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    const/4 v3, 0x0

    .line 107
    .local v3, "name":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Lcom/sonymobile/home/configuration/parser/jsonParser/FolderConfigJsonParser;->createItemLocation(Lorg/json/JSONObject;Ljava/lang/String;Lcom/sonymobile/home/configuration/Config;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    .line 108
    const-string v2, "name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 114
    :goto_0
    const-string v2, "category"

    const-string v5, ""

    invoke-virtual {p1, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, "category":Ljava/lang/String;
    new-instance v0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v5, 0x1

    :goto_1
    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/configuration/parser/FolderConfigData;-><init>(Lcom/sonymobile/home/data/ItemLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    .line 119
    .local v0, "folderConfigData":Lcom/sonymobile/home/configuration/parser/FolderConfigData;
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/configuration/parser/jsonParser/FolderConfigJsonParser;->buildItem(Lcom/sonymobile/home/configuration/parser/ItemConfigData;)Lcom/sonymobile/home/data/Item;

    move-result-object v9

    .line 121
    .local v9, "item":Lcom/sonymobile/home/data/Item;
    instance-of v2, v9, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v2, :cond_1

    move-object v8, v9

    .line 122
    check-cast v8, Lcom/sonymobile/home/data/FolderItem;

    .line 127
    :goto_2
    return-object v8

    .line 109
    .end local v0    # "folderConfigData":Lcom/sonymobile/home/configuration/parser/FolderConfigData;
    .end local v4    # "category":Ljava/lang/String;
    .end local v9    # "item":Lcom/sonymobile/home/data/Item;
    :catch_0
    move-exception v7

    .line 110
    .local v7, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/sonymobile/home/configuration/parser/jsonParser/FolderConfigJsonParser;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {v7, v2, v5}, Lcom/sonymobile/home/configuration/ConfigExceptionHandler;->trackAndThrowException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    .end local v7    # "e":Lorg/json/JSONException;
    .restart local v4    # "category":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 124
    .restart local v0    # "folderConfigData":Lcom/sonymobile/home/configuration/parser/FolderConfigData;
    .restart local v9    # "item":Lcom/sonymobile/home/data/Item;
    :cond_1
    new-instance v2, Lcom/sonymobile/home/configuration/ConfigException;

    const-string v5, "Parsing of folder failed"

    invoke-direct {v2, v5}, Lcom/sonymobile/home/configuration/ConfigException;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/sonymobile/home/configuration/parser/jsonParser/FolderConfigJsonParser;->TAG:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v6, v10

    const/4 v10, 0x1

    aput-object v9, v6, v10

    invoke-static {v2, v5, v6}, Lcom/sonymobile/home/configuration/ConfigExceptionHandler;->trackAndThrowException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method protected validateParsedData(Lcom/sonymobile/home/configuration/parser/ItemConfigData;)V
    .locals 6
    .param p1, "itemConfigData"    # Lcom/sonymobile/home/configuration/parser/ItemConfigData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/home/configuration/parser/FolderConfigData;

    .line 58
    .local v0, "folderConfigData":Lcom/sonymobile/home/configuration/parser/FolderConfigData;
    invoke-virtual {v0}, Lcom/sonymobile/home/configuration/parser/FolderConfigData;->isItemConfigDataValid()Z

    move-result v1

    .line 59
    .local v1, "isParsedDataValid":Z
    if-nez v1, :cond_0

    .line 60
    new-instance v2, Lcom/sonymobile/home/configuration/ConfigException;

    const-string v3, "Parsed data for Folder is not valid "

    invoke-direct {v2, v3}, Lcom/sonymobile/home/configuration/ConfigException;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/sonymobile/home/configuration/parser/jsonParser/FolderConfigJsonParser;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/sonymobile/home/configuration/ConfigExceptionHandler;->trackAndThrowException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :cond_0
    return-void
.end method
