.class public abstract Lcom/sonymobile/home/replacements/ReplacementManager;
.super Ljava/lang/Object;
.source "ReplacementManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask;,
        Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected final mIsDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mParser:Lcom/sonymobile/home/replacements/ReplacementsXmlParser;

.field private final mThreadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/sonymobile/home/replacements/ReplacementManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/replacements/ReplacementManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/home/replacements/ReplacementsXmlParser;)V
    .locals 2
    .param p1, "parser"    # Lcom/sonymobile/home/replacements/ReplacementsXmlParser;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/home/replacements/ReplacementManager;->mMainHandler:Landroid/os/Handler;

    .line 51
    new-instance v0, Lcom/sonymobile/home/util/NamingThreadFactory;

    sget-object v1, Lcom/sonymobile/home/replacements/ReplacementManager;->LOG_TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sonymobile/home/util/NamingThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/replacements/ReplacementManager;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sonymobile/home/replacements/ReplacementManager;->mIsDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    iput-object p1, p0, Lcom/sonymobile/home/replacements/ReplacementManager;->mParser:Lcom/sonymobile/home/replacements/ReplacementsXmlParser;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/replacements/ReplacementManager;)Lcom/sonymobile/home/replacements/ReplacementsXmlParser;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/replacements/ReplacementManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonymobile/home/replacements/ReplacementManager;->mParser:Lcom/sonymobile/home/replacements/ReplacementsXmlParser;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/sonymobile/home/replacements/ReplacementManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/home/replacements/ReplacementManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/replacements/ReplacementManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonymobile/home/replacements/ReplacementManager;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public findReplacingItemsAsync(Ljava/util/List;ILcom/sonymobile/home/replacements/ReplacementManager$ReplacementListener;)V
    .locals 2
    .param p2, "replacementsResId"    # I
    .param p3, "replacementListener"    # Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;I",
            "Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "oldItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sonymobile/home/replacements/ReplacementManager;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask;-><init>(Lcom/sonymobile/home/replacements/ReplacementManager;Ljava/util/List;ILcom/sonymobile/home/replacements/ReplacementManager$ReplacementListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 89
    :cond_0
    return-void
.end method

.method protected abstract getNewItemsFromReplacementMap(Ljava/util/Map;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            "Lcom/sonymobile/home/data/Item;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end method

.method public shutdownWhenFinished()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/home/replacements/ReplacementManager;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 71
    return-void
.end method

.method protected abstract validateItems(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end method
