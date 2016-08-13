.class public Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;
.super Ljava/lang/Object;
.source "StatisticsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/statistics/StatisticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatisticsKey"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput-object p1, p0, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mPackageName:Ljava/lang/String;

    .line 437
    iput-object p2, p0, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mName:Ljava/lang/String;

    .line 438
    iput-object p3, p0, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mUser:Landroid/os/UserHandle;

    .line 439
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 443
    if-ne p0, p1, :cond_1

    .line 452
    :cond_0
    :goto_0
    return v1

    .line 444
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

    .line 446
    check-cast v0, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;

    .line 448
    .local v0, "that":Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;
    iget-object v3, p0, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mName:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mName:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 449
    :cond_6
    iget-object v3, p0, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mPackageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    move v1, v2

    goto :goto_0

    :cond_8
    iget-object v3, v0, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mPackageName:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 450
    :cond_9
    iget-object v3, p0, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mUser:Landroid/os/UserHandle;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mUser:Landroid/os/UserHandle;

    iget-object v4, v0, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_a
    iget-object v3, v0, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mUser:Landroid/os/UserHandle;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 457
    iget-object v2, p0, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 458
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 459
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mUser:Landroid/os/UserHandle;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/sonymobile/home/statistics/StatisticsManager$StatisticsKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 460
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 457
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 458
    goto :goto_1
.end method
