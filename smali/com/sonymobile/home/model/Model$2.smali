.class Lcom/sonymobile/home/model/Model$2;
.super Landroid/os/AsyncTask;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/Model;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/sonymobile/home/data/Item;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/model/Model;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/Model;)V
    .locals 0

    .prologue
    .line 660
    iput-object p1, p0, Lcom/sonymobile/home/model/Model$2;->this$0:Lcom/sonymobile/home/model/Model;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 660
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/model/Model$2;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 663
    iget-object v0, p0, Lcom/sonymobile/home/model/Model$2;->this$0:Lcom/sonymobile/home/model/Model;

    invoke-virtual {v0}, Lcom/sonymobile/home/model/Model;->doLoadModel()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 660
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/model/Model$2;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 668
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v1, p0, Lcom/sonymobile/home/model/Model$2;->this$0:Lcom/sonymobile/home/model/Model;

    iget-boolean v1, v1, Lcom/sonymobile/home/model/Model;->mIsDestroyed:Z

    if-eqz v1, :cond_1

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    if-nez p1, :cond_2

    .line 674
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 676
    .restart local p1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/home/model/Model$2;->this$0:Lcom/sonymobile/home/model/Model;

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/model/Model;->addItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 678
    .local v0, "notAddedItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 679
    iget-object v1, p0, Lcom/sonymobile/home/model/Model$2;->this$0:Lcom/sonymobile/home/model/Model;

    # invokes: Lcom/sonymobile/home/model/Model;->clearItemsFromModel(Ljava/util/List;)V
    invoke-static {v1, v0}, Lcom/sonymobile/home/model/Model;->access$100(Lcom/sonymobile/home/model/Model;Ljava/util/List;)V

    .line 683
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/home/model/Model$2;->this$0:Lcom/sonymobile/home/model/Model;

    iget-object v1, v1, Lcom/sonymobile/home/model/Model;->mOnPackagesLoadedListener:Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;

    if-eqz v1, :cond_4

    .line 684
    iget-object v1, p0, Lcom/sonymobile/home/model/Model$2;->this$0:Lcom/sonymobile/home/model/Model;

    iget-object v1, v1, Lcom/sonymobile/home/model/Model;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v2, p0, Lcom/sonymobile/home/model/Model$2;->this$0:Lcom/sonymobile/home/model/Model;

    iget-object v2, v2, Lcom/sonymobile/home/model/Model;->mOnPackagesLoadedListener:Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;

    iget-object v3, p0, Lcom/sonymobile/home/model/Model$2;->this$0:Lcom/sonymobile/home/model/Model;

    iget-object v3, v3, Lcom/sonymobile/home/model/Model;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/home/model/PackageHandler;->addOnPackagesLoadedListener(Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;Landroid/os/Handler;)V

    .line 687
    :cond_4
    iget-object v1, p0, Lcom/sonymobile/home/model/Model$2;->this$0:Lcom/sonymobile/home/model/Model;

    iget-object v1, v1, Lcom/sonymobile/home/model/Model;->mOnPackageChangedListener:Lcom/sonymobile/home/model/OnPackageChangeListener;

    if-eqz v1, :cond_0

    .line 688
    iget-object v1, p0, Lcom/sonymobile/home/model/Model$2;->this$0:Lcom/sonymobile/home/model/Model;

    iget-object v1, v1, Lcom/sonymobile/home/model/Model;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    iget-object v2, p0, Lcom/sonymobile/home/model/Model$2;->this$0:Lcom/sonymobile/home/model/Model;

    iget-object v2, v2, Lcom/sonymobile/home/model/Model;->mOnPackageChangedListener:Lcom/sonymobile/home/model/OnPackageChangeListener;

    iget-object v3, p0, Lcom/sonymobile/home/model/Model$2;->this$0:Lcom/sonymobile/home/model/Model;

    iget-object v3, v3, Lcom/sonymobile/home/model/Model;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/home/model/PackageHandler;->addOnPackageChangeListener(Lcom/sonymobile/home/model/OnPackageChangeListener;Landroid/os/Handler;)V

    goto :goto_0
.end method
