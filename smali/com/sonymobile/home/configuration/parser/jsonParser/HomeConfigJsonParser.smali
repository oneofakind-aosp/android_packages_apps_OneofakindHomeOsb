.class public Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;
.super Ljava/lang/Object;
.source "HomeConfigJsonParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsRetainState:Z

.field final mLayerConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonymobile/home/configuration/Layers;",
            "Lcom/sonymobile/home/configuration/Config;",
            ">;"
        }
    .end annotation
.end field

.field private mNbrOfDoneConfigs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;->mLayerConfigs:Ljava/util/HashMap;

    .line 57
    iput-object p1, p0, Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method private addLayerConfig(Lcom/sonymobile/home/configuration/Layers;Lcom/sonymobile/home/configuration/Config;)V
    .locals 1
    .param p1, "layer"    # Lcom/sonymobile/home/configuration/Layers;
    .param p2, "config"    # Lcom/sonymobile/home/configuration/Config;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;->mLayerConfigs:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-void
.end method

.method private createConfig(Ljava/lang/String;Lcom/sonymobile/home/configuration/Layers;)Lcom/sonymobile/home/configuration/Config;
    .locals 5
    .param p1, "homeConfig"    # Ljava/lang/String;
    .param p2, "layer"    # Lcom/sonymobile/home/configuration/Layers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "config":Lcom/sonymobile/home/configuration/Config;
    sget-object v3, Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser$1;->$SwitchMap$com$sonymobile$home$configuration$Layers:[I

    invoke-virtual {p2}, Lcom/sonymobile/home/configuration/Layers;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 108
    :goto_0
    return-object v0

    .line 97
    :pswitch_0
    new-instance v1, Lcom/sonymobile/home/configuration/parser/jsonParser/DesktopLayerJsonParser;

    iget-object v3, p0, Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/sonymobile/home/configuration/parser/jsonParser/DesktopLayerJsonParser;-><init>(Landroid/content/Context;)V

    .line 98
    .local v1, "desktopParser":Lcom/sonymobile/home/configuration/parser/jsonParser/DesktopLayerJsonParser;
    invoke-virtual {v1, p1, p2}, Lcom/sonymobile/home/configuration/parser/jsonParser/DesktopLayerJsonParser;->createConfig(Ljava/lang/String;Lcom/sonymobile/home/configuration/Layers;)Lcom/sonymobile/home/configuration/Config;

    move-result-object v0

    .line 99
    goto :goto_0

    .line 102
    .end local v1    # "desktopParser":Lcom/sonymobile/home/configuration/parser/jsonParser/DesktopLayerJsonParser;
    :pswitch_1
    new-instance v2, Lcom/sonymobile/home/configuration/parser/jsonParser/StageLayerJsonParser;

    iget-object v3, p0, Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p2}, Lcom/sonymobile/home/configuration/parser/jsonParser/StageLayerJsonParser;-><init>(Landroid/content/Context;Lcom/sonymobile/home/configuration/Layers;)V

    .line 103
    .local v2, "stageParser":Lcom/sonymobile/home/configuration/parser/jsonParser/StageLayerJsonParser;
    invoke-virtual {v2, p1, p2}, Lcom/sonymobile/home/configuration/parser/jsonParser/StageLayerJsonParser;->createConfig(Ljava/lang/String;Lcom/sonymobile/home/configuration/Layers;)Lcom/sonymobile/home/configuration/Config;

    move-result-object v0

    .line 104
    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public createConfig(Ljava/lang/String;)V
    .locals 9
    .param p1, "homeConfig"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 70
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 72
    .local v4, "json":Lorg/json/JSONObject;
    const-string v7, "OneofakindHomeConfiguration"

    const-string v8, "type"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 73
    new-instance v7, Lcom/sonymobile/home/configuration/ConfigException;

    const-string v8, "Only type OneofakindHomeConfiguration is supported"

    invoke-direct {v7, v8}, Lcom/sonymobile/home/configuration/ConfigException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v4    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 88
    .local v2, "e":Lorg/json/JSONException;
    sget-object v7, Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;->TAG:Ljava/lang/String;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2, v7, v8}, Lcom/sonymobile/home/configuration/ConfigExceptionHandler;->trackAndThrowException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_0
    return-void

    .line 77
    .restart local v4    # "json":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string v7, "version"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    .line 78
    new-instance v7, Lcom/sonymobile/home/configuration/ConfigException;

    const-string v8, "Unsupported format version"

    invoke-direct {v7, v8}, Lcom/sonymobile/home/configuration/ConfigException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 80
    :cond_2
    invoke-static {}, Lcom/sonymobile/home/configuration/Layers;->values()[Lcom/sonymobile/home/configuration/Layers;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonymobile/home/configuration/Layers;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v5, v0, v3

    .line 81
    .local v5, "layer":Lcom/sonymobile/home/configuration/Layers;
    invoke-direct {p0, p1, v5}, Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;->createConfig(Ljava/lang/String;Lcom/sonymobile/home/configuration/Layers;)Lcom/sonymobile/home/configuration/Config;

    move-result-object v1

    .line 82
    .local v1, "config":Lcom/sonymobile/home/configuration/Config;
    if-eqz v1, :cond_3

    .line 83
    invoke-direct {p0, v5, v1}, Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;->addLayerConfig(Lcom/sonymobile/home/configuration/Layers;Lcom/sonymobile/home/configuration/Config;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getLayerConfigs()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonymobile/home/configuration/Layers;",
            "Lcom/sonymobile/home/configuration/Config;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;->mLayerConfigs:Ljava/util/HashMap;

    return-object v0
.end method

.method public getNbrOfDoneConfigs()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;->mNbrOfDoneConfigs:I

    return v0
.end method

.method public increaseNumberOfDoneConfigs()V
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;->mNbrOfDoneConfigs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;->mNbrOfDoneConfigs:I

    .line 126
    return-void
.end method

.method public setRetainState(Z)V
    .locals 0
    .param p1, "retainState"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;->mIsRetainState:Z

    .line 134
    return-void
.end method
