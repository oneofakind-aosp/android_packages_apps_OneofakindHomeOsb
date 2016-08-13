.class public abstract Lcom/sonymobile/home/data/Item;
.super Ljava/lang/Object;
.source "Item.java"


# static fields
.field private static final sIdCounter:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private mLocation:Lcom/sonymobile/home/data/ItemLocation;

.field protected mPageViewName:Ljava/lang/String;

.field private mStorageId:J

.field private final mUniqueId:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/sonymobile/home/data/Item;->sIdCounter:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Lcom/sonymobile/home/data/Item;->mStorageId:J

    .line 40
    sget-object v0, Lcom/sonymobile/home/data/Item;->sIdCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndDecrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/home/data/Item;->mUniqueId:J

    .line 41
    return-void
.end method

.method protected constructor <init>(Lcom/sonymobile/home/data/Item;)V
    .locals 2
    .param p1, "other"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Lcom/sonymobile/home/data/Item;->mStorageId:J

    .line 49
    sget-object v0, Lcom/sonymobile/home/data/Item;->sIdCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndDecrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/home/data/Item;->mUniqueId:J

    .line 50
    iget-object v0, p1, Lcom/sonymobile/home/data/Item;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-static {v0}, Lcom/sonymobile/home/data/ItemLocation;->copy(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/data/Item;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    .line 51
    iget-object v0, p1, Lcom/sonymobile/home/data/Item;->mPageViewName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/home/data/Item;->mPageViewName:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public abstract getIntent()Landroid/content/Intent;
.end method

.method public getLocation()Lcom/sonymobile/home/data/ItemLocation;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonymobile/home/data/Item;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    return-object v0
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method protected getPageViewLocationString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonymobile/home/data/Item;->mPageViewName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/sonymobile/home/data/Item;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/data/Item;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    invoke-virtual {v0}, Lcom/sonymobile/home/data/ItemLocation;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, " null "

    goto :goto_0
.end method

.method public getPageViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sonymobile/home/data/Item;->mPageViewName:Ljava/lang/String;

    return-object v0
.end method

.method public final getStorageId()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/sonymobile/home/data/Item;->mStorageId:J

    return-wide v0
.end method

.method public final getUniqueId()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/sonymobile/home/data/Item;->mUniqueId:J

    return-wide v0
.end method

.method public abstract getUser()Landroid/os/UserHandle;
.end method

.method public isStored()Z
    .locals 4

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/sonymobile/home/data/Item;->mStorageId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLocation(Lcom/sonymobile/home/data/ItemLocation;)V
    .locals 0
    .param p1, "location"    # Lcom/sonymobile/home/data/ItemLocation;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/sonymobile/home/data/Item;->mLocation:Lcom/sonymobile/home/data/ItemLocation;

    .line 151
    return-void
.end method

.method public setPageViewName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageView"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/sonymobile/home/data/Item;->mPageViewName:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setStorageId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/sonymobile/home/data/Item;->mStorageId:J

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sonymobile/home/data/Item;->mUniqueId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/home/data/Item;->getPageViewLocationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
