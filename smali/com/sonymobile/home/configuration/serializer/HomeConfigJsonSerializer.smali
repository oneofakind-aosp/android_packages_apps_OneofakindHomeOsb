.class public Lcom/sonymobile/home/configuration/serializer/HomeConfigJsonSerializer;
.super Ljava/lang/Object;
.source "HomeConfigJsonSerializer.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContentProviderUri:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;

.field private final mHomeConfigJson:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/sonymobile/home/configuration/serializer/HomeConfigJsonSerializer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/configuration/serializer/HomeConfigJsonSerializer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentProviderUri"    # Landroid/net/Uri;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/configuration/serializer/HomeConfigJsonSerializer;->mHomeConfigJson:Lorg/json/JSONObject;

    .line 30
    iput-object p1, p0, Lcom/sonymobile/home/configuration/serializer/HomeConfigJsonSerializer;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/sonymobile/home/configuration/serializer/HomeConfigJsonSerializer;->mContentProviderUri:Landroid/net/Uri;

    .line 32
    return-void
.end method

.method private addAttributes()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/home/configuration/serializer/HomeConfigJsonSerializer;->mHomeConfigJson:Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v2, "OneofakindHomeConfiguration"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    iget-object v0, p0, Lcom/sonymobile/home/configuration/serializer/HomeConfigJsonSerializer;->mHomeConfigJson:Lorg/json/JSONObject;

    const-string v1, "version"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    return-void
.end method

.method private addJsonObject(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonymobile/home/configuration/serializer/HomeConfigJsonSerializer;->mHomeConfigJson:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    return-void
.end method


# virtual methods
.method public varargs createHomeConfigJson([Lcom/sonymobile/home/configuration/Config;)Lorg/json/JSONObject;
    .locals 12
    .param p1, "configs"    # [Lcom/sonymobile/home/configuration/Config;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/home/configuration/ConfigException;
        }
    .end annotation

    .prologue
    .line 42
    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/home/configuration/serializer/HomeConfigJsonSerializer;->addAttributes()V

    .line 44
    move-object v0, p1

    .local v0, "arr$":[Lcom/sonymobile/home/configuration/Config;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v0, v4

    .line 45
    .local v1, "config":Lcom/sonymobile/home/configuration/Config;
    instance-of v8, v1, Lcom/sonymobile/home/configuration/DesktopConfig;

    if-eqz v8, :cond_1

    .line 46
    new-instance v2, Lcom/sonymobile/home/configuration/serializer/DesktopJsonSerializer;

    iget-object v8, p0, Lcom/sonymobile/home/configuration/serializer/HomeConfigJsonSerializer;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/sonymobile/home/configuration/serializer/HomeConfigJsonSerializer;->mContentProviderUri:Landroid/net/Uri;

    invoke-direct {v2, v8, v9}, Lcom/sonymobile/home/configuration/serializer/DesktopJsonSerializer;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 47
    .local v2, "desktopJsonSerializer":Lcom/sonymobile/home/configuration/serializer/DesktopJsonSerializer;
    invoke-virtual {v2, v1}, Lcom/sonymobile/home/configuration/serializer/DesktopJsonSerializer;->createLayer(Lcom/sonymobile/home/configuration/Config;)Lorg/json/JSONObject;

    move-result-object v5

    .line 48
    .local v5, "jsonObject":Lorg/json/JSONObject;
    check-cast v1, Lcom/sonymobile/home/configuration/DesktopConfig;

    .end local v1    # "config":Lcom/sonymobile/home/configuration/Config;
    invoke-virtual {v1}, Lcom/sonymobile/home/configuration/DesktopConfig;->getPageViewName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v5}, Lcom/sonymobile/home/configuration/serializer/HomeConfigJsonSerializer;->addJsonObject(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 44
    .end local v2    # "desktopJsonSerializer":Lcom/sonymobile/home/configuration/serializer/DesktopJsonSerializer;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 49
    .restart local v1    # "config":Lcom/sonymobile/home/configuration/Config;
    :cond_1
    instance-of v8, v1, Lcom/sonymobile/home/configuration/StageConfig;

    if-eqz v8, :cond_0

    .line 50
    new-instance v7, Lcom/sonymobile/home/configuration/serializer/StageJsonSerializer;

    iget-object v8, p0, Lcom/sonymobile/home/configuration/serializer/HomeConfigJsonSerializer;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/sonymobile/home/configuration/serializer/HomeConfigJsonSerializer;->mContentProviderUri:Landroid/net/Uri;

    invoke-direct {v7, v8, v9}, Lcom/sonymobile/home/configuration/serializer/StageJsonSerializer;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 51
    .local v7, "stageJsonSerializer":Lcom/sonymobile/home/configuration/serializer/StageJsonSerializer;
    invoke-virtual {v7, v1}, Lcom/sonymobile/home/configuration/serializer/StageJsonSerializer;->createLayer(Lcom/sonymobile/home/configuration/Config;)Lorg/json/JSONObject;

    move-result-object v5

    .line 52
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    check-cast v1, Lcom/sonymobile/home/configuration/StageConfig;

    .end local v1    # "config":Lcom/sonymobile/home/configuration/Config;
    invoke-virtual {v1}, Lcom/sonymobile/home/configuration/StageConfig;->getPageViewName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v5}, Lcom/sonymobile/home/configuration/serializer/HomeConfigJsonSerializer;->addJsonObject(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 55
    .end local v0    # "arr$":[Lcom/sonymobile/home/configuration/Config;
    .end local v4    # "i$":I
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "len$":I
    .end local v7    # "stageJsonSerializer":Lcom/sonymobile/home/configuration/serializer/StageJsonSerializer;
    :catch_0
    move-exception v3

    .line 56
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    sget-object v8, Lcom/sonymobile/home/configuration/serializer/HomeConfigJsonSerializer;->TAG:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "JSON serialization failed: "

    aput-object v11, v9, v10

    invoke-static {v3, v8, v9}, Lcom/sonymobile/home/configuration/ConfigExceptionHandler;->trackAndThrowException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v8, p0, Lcom/sonymobile/home/configuration/serializer/HomeConfigJsonSerializer;->mHomeConfigJson:Lorg/json/JSONObject;

    return-object v8

    .line 55
    :catch_1
    move-exception v3

    goto :goto_2
.end method
