.class public Lcom/sonymobile/home/model/ResourceCacheItem;
.super Ljava/lang/Object;
.source "ResourceCacheItem.java"


# instance fields
.field private final mLoaderId:I

.field private mResource:Lcom/sonymobile/home/model/ResourceItem;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/model/ResourceItem;I)V
    .locals 0
    .param p1, "resource"    # Lcom/sonymobile/home/model/ResourceItem;
    .param p2, "loaderId"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sonymobile/home/model/ResourceCacheItem;->mResource:Lcom/sonymobile/home/model/ResourceItem;

    .line 21
    iput p2, p0, Lcom/sonymobile/home/model/ResourceCacheItem;->mLoaderId:I

    .line 22
    return-void
.end method


# virtual methods
.method public getLoaderId()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/sonymobile/home/model/ResourceCacheItem;->mLoaderId:I

    return v0
.end method

.method public declared-synchronized getResource()Lcom/sonymobile/home/model/ResourceItem;
    .locals 1

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/home/model/ResourceCacheItem;->mResource:Lcom/sonymobile/home/model/ResourceItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
