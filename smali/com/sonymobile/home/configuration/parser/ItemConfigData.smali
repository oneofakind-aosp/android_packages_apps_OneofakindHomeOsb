.class public Lcom/sonymobile/home/configuration/parser/ItemConfigData;
.super Ljava/lang/Object;
.source "ItemConfigData.java"


# instance fields
.field private final mIntent:Landroid/content/Intent;

.field private final mItemLocation:Lcom/sonymobile/home/data/ItemLocation;

.field private final mLayer:Ljava/lang/String;

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/data/ItemLocation;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/Intent;)V
    .locals 0
    .param p1, "itemLocation"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p2, "layer"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->mItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    .line 24
    iput-object p3, p0, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->mUserHandle:Landroid/os/UserHandle;

    .line 25
    iput-object p2, p0, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->mLayer:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->mIntent:Landroid/content/Intent;

    .line 27
    return-void
.end method

.method private isIntentValid()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLocationValid()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->mItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    if-ne p0, p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v1

    .line 56
    :cond_1
    instance-of v3, p1, Lcom/sonymobile/home/configuration/parser/ItemConfigData;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 58
    check-cast v0, Lcom/sonymobile/home/configuration/parser/ItemConfigData;

    .line 60
    .local v0, "that":Lcom/sonymobile/home/configuration/parser/ItemConfigData;
    iget-object v3, p0, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->mIntent:Landroid/content/Intent;

    iget-object v4, v0, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    .line 61
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->mItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    iget-object v4, v0, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->mItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/data/ItemLocation;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 62
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->mLayer:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->mLayer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 63
    :cond_5
    iget-object v3, p0, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->mUserHandle:Landroid/os/UserHandle;

    iget-object v4, v0, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemLocation()Lcom/sonymobile/home/data/ItemLocation;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->mItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    return-object v0
.end method

.method public getLayer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->mLayer:Ljava/lang/String;

    return-object v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 70
    iget-object v1, p0, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->mItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {v1}, Lcom/sonymobile/home/data/ItemLocation;->hashCode()I

    move-result v0

    .line 71
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 72
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->mLayer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 73
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 74
    return v0
.end method

.method public isItemConfigDataValid()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->mItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    if-eqz v0, :cond_1

    .line 47
    invoke-direct {p0}, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->isIntentValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->isLocationValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 49
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->isIntentValid()Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ItemConfigData{mItemLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->mItemLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLayer=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->mLayer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
