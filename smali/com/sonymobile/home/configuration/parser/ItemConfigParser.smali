.class public abstract Lcom/sonymobile/home/configuration/parser/ItemConfigParser;
.super Ljava/lang/Object;
.source "ItemConfigParser.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private final mMainUser:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/sonymobile/home/configuration/parser/ItemConfigParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/configuration/parser/ItemConfigParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sonymobile/home/configuration/parser/ItemConfigParser;->mContext:Landroid/content/Context;

    .line 35
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/configuration/parser/ItemConfigParser;->mMainUser:Landroid/os/UserHandle;

    .line 36
    return-void
.end method

.method private isItemLocationSizeValid(Lcom/sonymobile/home/data/ItemLocation;)Z
    .locals 1
    .param p1, "itemLocation"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    .line 145
    iget-object v0, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v0, v0, Lcom/sonymobile/grid/GridRect;->rowSpan:I

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v0, v0, Lcom/sonymobile/grid/GridRect;->colSpan:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isItemLocationValid(Lcom/sonymobile/home/data/Item;)Z
    .locals 5
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    const/4 v4, -0x1

    .line 109
    const/4 v0, 0x1

    .line 110
    .local v0, "isLocationValid":Z
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getPageViewName()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "pageViewName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    .line 112
    .local v1, "itemLocation":Lcom/sonymobile/home/data/ItemLocation;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    move v3, v4

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 133
    const/4 v0, 0x0

    .line 136
    :cond_1
    :goto_1
    :pswitch_0
    return v0

    .line 112
    :sswitch_0
    const-string v3, "desktop_automatic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "desktop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "stage_dynamic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "stage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "temp_folder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    .line 116
    :pswitch_1
    iget v3, v1, Lcom/sonymobile/home/data/ItemLocation;->page:I

    if-eq v3, v4, :cond_2

    iget-object v3, v1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->col:I

    if-eq v3, v4, :cond_2

    iget-object v3, v1, Lcom/sonymobile/home/data/ItemLocation;->grid:Lcom/sonymobile/grid/GridRect;

    iget v3, v3, Lcom/sonymobile/grid/GridRect;->row:I

    if-eq v3, v4, :cond_2

    invoke-direct {p0, v1}, Lcom/sonymobile/home/configuration/parser/ItemConfigParser;->isItemLocationSizeValid(Lcom/sonymobile/home/data/ItemLocation;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 119
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 125
    :pswitch_2
    iget v3, v1, Lcom/sonymobile/home/data/ItemLocation;->position:I

    if-ne v3, v4, :cond_1

    .line 126
    const/4 v0, 0x0

    goto :goto_1

    .line 112
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3df160c7 -> :sswitch_4
        -0x215db638 -> :sswitch_0
        -0x203c1402 -> :sswitch_2
        0x68ac2fe -> :sswitch_3
        0x5ccf901c -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private setProperties(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/Item;Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "pageView"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-virtual {p2, p3}, Lcom/sonymobile/home/data/Item;->setPageViewName(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2, p1}, Lcom/sonymobile/home/data/Item;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 142
    return-void
.end method


# virtual methods
.method protected final buildItem(Lcom/sonymobile/home/configuration/parser/ItemConfigData;)Lcom/sonymobile/home/data/Item;
    .locals 3
    .param p1, "itemConfigData"    # Lcom/sonymobile/home/configuration/parser/ItemConfigData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/configuration/parser/ItemConfigParser;->validateParsedData(Lcom/sonymobile/home/configuration/parser/ItemConfigData;)V

    .line 90
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/configuration/parser/ItemConfigParser;->createItem(Lcom/sonymobile/home/configuration/parser/ItemConfigData;)Lcom/sonymobile/home/data/Item;

    move-result-object v0

    .line 91
    invoke-virtual {p1}, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->getItemLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->getLayer()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/sonymobile/home/configuration/parser/ItemConfigParser;->setProperties(Lcom/sonymobile/home/data/ItemLocation;Lcom/sonymobile/home/data/Item;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/configuration/parser/ItemConfigParser;->isItemInfoValid(Lcom/sonymobile/home/data/Item;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    .end local v0    # "item":Lcom/sonymobile/home/data/Item;
    :goto_0
    return-object v0

    .restart local v0    # "item":Lcom/sonymobile/home/data/Item;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract createItem(Lcom/sonymobile/home/configuration/parser/ItemConfigData;)Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation
.end method

.method protected abstract isItemInfoValid(Lcom/sonymobile/home/data/Item;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation
.end method

.method protected final isLocationValid(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/sonymobile/home/configuration/parser/ItemConfigParser;->isItemLocationValid(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    return v0
.end method

.method protected parseProfile(Lorg/json/JSONObject;)Landroid/os/UserHandle;
    .locals 8
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const-wide/16 v6, -0x1

    .line 149
    const-string v4, "profile"

    invoke-virtual {p1, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 152
    .local v0, "profile":J
    cmp-long v4, v0, v6

    if-nez v4, :cond_0

    .line 153
    iget-object v2, p0, Lcom/sonymobile/home/configuration/parser/ItemConfigParser;->mMainUser:Landroid/os/UserHandle;

    .line 159
    .local v2, "userHandle":Landroid/os/UserHandle;
    :goto_0
    return-object v2

    .line 155
    .end local v2    # "userHandle":Landroid/os/UserHandle;
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/home/configuration/parser/ItemConfigParser;->mContext:Landroid/content/Context;

    const-string v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 156
    .local v3, "userManager":Landroid/os/UserManager;
    invoke-virtual {v3, v0, v1}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v2

    .restart local v2    # "userHandle":Landroid/os/UserHandle;
    goto :goto_0
.end method

.method protected abstract validateParsedData(Lcom/sonymobile/home/configuration/parser/ItemConfigData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation
.end method
