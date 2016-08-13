.class public Lcom/sonymobile/home/model/UserComponentName;
.super Ljava/lang/Object;
.source "UserComponentName.java"


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/sonymobile/home/model/UserComponentName;->mComponentName:Landroid/content/ComponentName;

    .line 48
    iput-object p2, p0, Lcom/sonymobile/home/model/UserComponentName;->mUser:Landroid/os/UserHandle;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 36
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/sonymobile/home/model/UserComponentName;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    if-ne p0, p1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v1

    .line 101
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 102
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 104
    check-cast v0, Lcom/sonymobile/home/model/UserComponentName;

    .line 105
    .local v0, "other":Lcom/sonymobile/home/model/UserComponentName;
    iget-object v3, p0, Lcom/sonymobile/home/model/UserComponentName;->mComponentName:Landroid/content/ComponentName;

    iget-object v4, v0, Lcom/sonymobile/home/model/UserComponentName;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 106
    goto :goto_0

    .line 107
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/home/model/UserComponentName;->mUser:Landroid/os/UserHandle;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sonymobile/home/model/UserComponentName;->mUser:Landroid/os/UserHandle;

    iget-object v4, v0, Lcom/sonymobile/home/model/UserComponentName;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 108
    goto :goto_0

    .line 107
    :cond_5
    iget-object v3, v0, Lcom/sonymobile/home/model/UserComponentName;->mUser:Landroid/os/UserHandle;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/home/model/UserComponentName;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/home/model/UserComponentName;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public hasPackageName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonymobile/home/model/UserComponentName;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasUser(Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonymobile/home/model/UserComponentName;->mUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/model/UserComponentName;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 91
    const/16 v0, 0x1f

    .line 92
    .local v0, "prime":I
    iget-object v2, p0, Lcom/sonymobile/home/model/UserComponentName;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->hashCode()I

    move-result v1

    .line 93
    .local v1, "result":I
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/sonymobile/home/model/UserComponentName;->mUser:Landroid/os/UserHandle;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/home/model/UserComponentName;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->hashCode()I

    move-result v2

    :goto_0
    add-int v1, v3, v2

    .line 94
    return v1

    .line 93
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonymobile/home/model/UserComponentName;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUser= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/model/UserComponentName;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
