.class public Lcom/sonymobile/home/search/suggest/PopularGenreManager;
.super Ljava/lang/Object;
.source "PopularGenreManager.java"


# instance fields
.field private final mStorage:Lcom/sonymobile/home/storage/Storage;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/storage/Storage;)V
    .locals 0
    .param p1, "storage"    # Lcom/sonymobile/home/storage/Storage;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/sonymobile/home/search/suggest/PopularGenreManager;->mStorage:Lcom/sonymobile/home/storage/Storage;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/search/suggest/PopularGenreManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/suggest/PopularGenreManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/suggest/PopularGenreManager;->writeToStorage(Ljava/lang/String;)V

    return-void
.end method

.method private writeToStorage(Ljava/lang/String;)V
    .locals 1
    .param p1, "genre"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/PopularGenreManager;->mStorage:Lcom/sonymobile/home/storage/Storage;

    invoke-interface {v0, p1}, Lcom/sonymobile/home/storage/Storage;->updateGenre(Ljava/lang/String;)V

    .line 65
    return-void
.end method


# virtual methods
.method public get()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/PopularGenreManager;->mStorage:Lcom/sonymobile/home/storage/Storage;

    invoke-interface {v0}, Lcom/sonymobile/home/storage/Storage;->getPopularGenres()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/lang/String;)V
    .locals 3
    .param p1, "genre"    # Ljava/lang/String;

    .prologue
    .line 49
    new-instance v0, Lcom/sonymobile/home/search/suggest/PopularGenreManager$1;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/home/search/suggest/PopularGenreManager$1;-><init>(Lcom/sonymobile/home/search/suggest/PopularGenreManager;Ljava/lang/String;)V

    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/search/suggest/PopularGenreManager$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 56
    return-void
.end method
