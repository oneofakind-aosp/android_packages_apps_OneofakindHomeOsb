.class public Lcom/sonymobile/flix/util/SharedBoolean;
.super Ljava/lang/Object;
.source "SharedBoolean.java"


# instance fields
.field private mClients:[Ljava/lang/Object;

.field private final mMode:I

.field private mNbrClients:I

.field private mValues:[Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 30
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/flix/util/SharedBoolean;-><init>(II)V

    .line 31
    return-void
.end method

.method private constructor <init>(II)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "capacity"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/sonymobile/flix/util/SharedBoolean;->mMode:I

    .line 35
    new-array v0, p2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/sonymobile/flix/util/SharedBoolean;->mClients:[Ljava/lang/Object;

    .line 36
    new-array v0, p2, [Z

    iput-object v0, p0, Lcom/sonymobile/flix/util/SharedBoolean;->mValues:[Z

    .line 37
    return-void
.end method

.method private declared-synchronized ensureCapacity(I)V
    .locals 7
    .param p1, "newCapacity"    # I

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/flix/util/SharedBoolean;->mClients:[Ljava/lang/Object;

    array-length v0, v3

    .line 154
    .local v0, "currentCapacity":I
    if-le p1, v0, :cond_0

    .line 155
    mul-int/lit8 v3, v0, 0x3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x3

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 156
    iget-object v1, p0, Lcom/sonymobile/flix/util/SharedBoolean;->mClients:[Ljava/lang/Object;

    .line 157
    .local v1, "tempClients":[Ljava/lang/Object;
    iget-object v2, p0, Lcom/sonymobile/flix/util/SharedBoolean;->mValues:[Z

    .line 158
    .local v2, "tempValues":[Z
    new-array v3, p1, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/sonymobile/flix/util/SharedBoolean;->mClients:[Ljava/lang/Object;

    .line 159
    new-array v3, p1, [Z

    iput-object v3, p0, Lcom/sonymobile/flix/util/SharedBoolean;->mValues:[Z

    .line 160
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonymobile/flix/util/SharedBoolean;->mClients:[Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/sonymobile/flix/util/SharedBoolean;->mNbrClients:I

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonymobile/flix/util/SharedBoolean;->mValues:[Z

    const/4 v5, 0x0

    iget v6, p0, Lcom/sonymobile/flix/util/SharedBoolean;->mNbrClients:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    .end local v1    # "tempClients":[Ljava/lang/Object;
    .end local v2    # "tempValues":[Z
    :cond_0
    monitor-exit p0

    return-void

    .line 153
    .end local v0    # "currentCapacity":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public declared-synchronized get()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/sonymobile/flix/util/SharedBoolean;->mMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 61
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 47
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget v3, p0, Lcom/sonymobile/flix/util/SharedBoolean;->mNbrClients:I

    if-ge v0, v3, :cond_1

    .line 48
    iget-object v3, p0, Lcom/sonymobile/flix/util/SharedBoolean;->mValues:[Z

    aget-boolean v3, v3, v0

    if-nez v3, :cond_0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 52
    goto :goto_0

    .line 54
    .end local v0    # "i":I
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget v3, p0, Lcom/sonymobile/flix/util/SharedBoolean;->mNbrClients:I

    if-ge v0, v3, :cond_0

    .line 55
    iget-object v3, p0, Lcom/sonymobile/flix/util/SharedBoolean;->mValues:[Z

    aget-boolean v3, v3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    move v1, v2

    .line 56
    goto :goto_0

    .line 54
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 45
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized set(Ljava/lang/Object;Z)Z
    .locals 3
    .param p1, "client"    # Ljava/lang/Object;
    .param p2, "value"    # Z

    .prologue
    .line 101
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/sonymobile/flix/util/SharedBoolean;->mNbrClients:I

    if-ge v0, v1, :cond_2

    .line 102
    iget-object v1, p0, Lcom/sonymobile/flix/util/SharedBoolean;->mClients:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/flix/util/SharedBoolean;->mClients:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/flix/util/SharedBoolean;->mValues:[Z

    aput-boolean p2, v1, v0

    .line 104
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/SharedBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 111
    :goto_1
    monitor-exit p0

    return v1

    .line 101
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_2
    :try_start_1
    iget v1, p0, Lcom/sonymobile/flix/util/SharedBoolean;->mNbrClients:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/sonymobile/flix/util/SharedBoolean;->ensureCapacity(I)V

    .line 108
    iget-object v1, p0, Lcom/sonymobile/flix/util/SharedBoolean;->mClients:[Ljava/lang/Object;

    iget v2, p0, Lcom/sonymobile/flix/util/SharedBoolean;->mNbrClients:I

    aput-object p1, v1, v2

    .line 109
    iget-object v1, p0, Lcom/sonymobile/flix/util/SharedBoolean;->mValues:[Z

    iget v2, p0, Lcom/sonymobile/flix/util/SharedBoolean;->mNbrClients:I

    aput-boolean p2, v1, v2

    .line 110
    iget v1, p0, Lcom/sonymobile/flix/util/SharedBoolean;->mNbrClients:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sonymobile/flix/util/SharedBoolean;->mNbrClients:I

    .line 111
    invoke-virtual {p0}, Lcom/sonymobile/flix/util/SharedBoolean;->get()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_1

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
