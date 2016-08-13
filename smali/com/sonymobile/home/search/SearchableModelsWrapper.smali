.class public Lcom/sonymobile/home/search/SearchableModelsWrapper;
.super Ljava/lang/Object;
.source "SearchableModelsWrapper.java"


# instance fields
.field private final mModels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/home/model/Model;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/home/search/SearchableModelsWrapper;->mModels:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addModel(Lcom/sonymobile/home/model/Model;I)V
    .locals 2
    .param p1, "model"    # Lcom/sonymobile/home/model/Model;
    .param p2, "filterBitmask"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchableModelsWrapper;->mModels:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public getModels()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/home/model/Model;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchableModelsWrapper;->mModels:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchableModelsWrapper;->mModels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 28
    return-void
.end method
