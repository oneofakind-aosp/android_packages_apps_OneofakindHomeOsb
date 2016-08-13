.class public Lcom/sonymobile/home/model/UserPackage;
.super Ljava/lang/Object;
.source "UserPackage.java"


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/sonymobile/home/model/UserPackage;->packageName:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/sonymobile/home/model/UserPackage;->user:Landroid/os/UserHandle;

    .line 21
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 25
    if-ne p0, p1, :cond_1

    .line 33
    :cond_0
    :goto_0
    return v1

    .line 26
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 28
    check-cast v0, Lcom/sonymobile/home/model/UserPackage;

    .line 30
    .local v0, "that":Lcom/sonymobile/home/model/UserPackage;
    iget-object v3, p0, Lcom/sonymobile/home/model/UserPackage;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/home/model/UserPackage;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 31
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/home/model/UserPackage;->user:Landroid/os/UserHandle;

    iget-object v4, v0, Lcom/sonymobile/home/model/UserPackage;->user:Landroid/os/UserHandle;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 38
    iget-object v1, p0, Lcom/sonymobile/home/model/UserPackage;->packageName:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 39
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/sonymobile/home/model/UserPackage;->user:Landroid/os/UserHandle;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    add-int v0, v2, v1

    .line 40
    return v0

    .line 38
    .end local v0    # "result":I
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/model/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 39
    .restart local v0    # "result":I
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/home/model/UserPackage;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->hashCode()I

    move-result v1

    goto :goto_1
.end method
