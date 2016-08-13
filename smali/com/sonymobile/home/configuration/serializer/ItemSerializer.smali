.class public abstract Lcom/sonymobile/home/configuration/serializer/ItemSerializer;
.super Ljava/lang/Object;
.source "ItemSerializer.java"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private final mItemLocationSerializable:Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;

.field protected final mJsonObject:Lorg/json/JSONObject;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemLocationSerializable"    # Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/sonymobile/home/configuration/serializer/ItemSerializer;->mContext:Landroid/content/Context;

    .line 30
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/configuration/serializer/ItemSerializer;->mJsonObject:Lorg/json/JSONObject;

    .line 31
    iput-object p2, p0, Lcom/sonymobile/home/configuration/serializer/ItemSerializer;->mItemLocationSerializable:Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;

    .line 32
    return-void
.end method

.method private addLocationAttributes(Lcom/sonymobile/home/data/Item;)V
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonymobile/home/configuration/serializer/ItemSerializer;->mItemLocationSerializable:Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/sonymobile/home/configuration/serializer/ItemSerializer;->mItemLocationSerializable:Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;

    iget-object v1, p0, Lcom/sonymobile/home/configuration/serializer/ItemSerializer;->mJsonObject:Lorg/json/JSONObject;

    invoke-interface {v0, v1, p1}, Lcom/sonymobile/home/configuration/serializer/ItemLocationSerializable;->addLocationAttributes(Lorg/json/JSONObject;Lcom/sonymobile/home/data/Item;)V

    .line 48
    :cond_0
    return-void
.end method

.method private addProfileAttribute(Lcom/sonymobile/home/data/Item;)V
    .locals 6
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    .line 58
    .local v0, "user":Landroid/os/UserHandle;
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 59
    iget-object v4, p0, Lcom/sonymobile/home/configuration/serializer/ItemSerializer;->mContext:Landroid/content/Context;

    const-string v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 60
    .local v1, "userManager":Landroid/os/UserManager;
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    .line 61
    .local v2, "userSerial":J
    iget-object v4, p0, Lcom/sonymobile/home/configuration/serializer/ItemSerializer;->mJsonObject:Lorg/json/JSONObject;

    const-string v5, "profile"

    invoke-virtual {v4, v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 63
    .end local v1    # "userManager":Landroid/os/UserManager;
    .end local v2    # "userSerial":J
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract addAttributes(Lcom/sonymobile/home/data/Item;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public final createObject(Lcom/sonymobile/home/data/Item;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/configuration/serializer/ItemSerializer;->addAttributes(Lcom/sonymobile/home/data/Item;)V

    .line 83
    invoke-direct {p0, p1}, Lcom/sonymobile/home/configuration/serializer/ItemSerializer;->addProfileAttribute(Lcom/sonymobile/home/data/Item;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/sonymobile/home/configuration/serializer/ItemSerializer;->addLocationAttributes(Lcom/sonymobile/home/data/Item;)V

    .line 85
    iget-object v0, p0, Lcom/sonymobile/home/configuration/serializer/ItemSerializer;->mJsonObject:Lorg/json/JSONObject;

    return-object v0
.end method
