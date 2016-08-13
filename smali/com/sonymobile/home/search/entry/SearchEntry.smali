.class public abstract Lcom/sonymobile/home/search/entry/SearchEntry;
.super Ljava/lang/Object;
.source "SearchEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/search/entry/SearchEntry$Type;
    }
.end annotation


# static fields
.field private static sIdGenerator:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private mLabel:Ljava/lang/String;

.field private final mType:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

.field private final mUniqueId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/sonymobile/home/search/entry/SearchEntry;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/home/search/entry/SearchEntry$Type;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Lcom/sonymobile/home/search/entry/SearchEntry$Type;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/sonymobile/home/search/entry/SearchEntry;->mType:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    .line 49
    iput-object p2, p0, Lcom/sonymobile/home/search/entry/SearchEntry;->mLabel:Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/sonymobile/home/search/entry/SearchEntry;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/home/search/entry/SearchEntry;->mUniqueId:J

    .line 51
    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/sonymobile/home/search/entry/SearchEntry;->mUniqueId:J

    return-wide v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonymobile/home/search/entry/SearchEntry;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/sonymobile/home/search/entry/SearchEntry$Type;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonymobile/home/search/entry/SearchEntry;->mType:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    return-object v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sonymobile/home/search/entry/SearchEntry;->mLabel:Ljava/lang/String;

    .line 79
    return-void
.end method
