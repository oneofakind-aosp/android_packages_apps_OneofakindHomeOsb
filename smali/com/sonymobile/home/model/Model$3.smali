.class Lcom/sonymobile/home/model/Model$3;
.super Landroid/os/AsyncTask;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/Model;->clearItemsFromModel(Ljava/util/List;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/model/Model;

.field final synthetic val$itemsToClear:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/Model;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 722
    iput-object p1, p0, Lcom/sonymobile/home/model/Model$3;->this$0:Lcom/sonymobile/home/model/Model;

    iput-object p2, p0, Lcom/sonymobile/home/model/Model$3;->val$itemsToClear:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 722
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/model/Model$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 726
    iget-object v3, p0, Lcom/sonymobile/home/model/Model$3;->val$itemsToClear:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 729
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/home/model/Model$3;->this$0:Lcom/sonymobile/home/model/Model;

    iget-object v3, v3, Lcom/sonymobile/home/model/Model;->mStorage:Lcom/sonymobile/home/storage/Storage;

    invoke-interface {v3, v1}, Lcom/sonymobile/home/storage/Storage;->deletePageViewItem(Lcom/sonymobile/home/data/Item;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 730
    :catch_0
    move-exception v2

    .line 731
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "Model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problem cleaning item: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 735
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 722
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/model/Model$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "param"    # Ljava/lang/Void;

    .prologue
    .line 740
    iget-object v2, p0, Lcom/sonymobile/home/model/Model$3;->this$0:Lcom/sonymobile/home/model/Model;

    iget-boolean v2, v2, Lcom/sonymobile/home/model/Model;->mIsDestroyed:Z

    if-eqz v2, :cond_1

    .line 747
    :cond_0
    return-void

    .line 744
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/model/Model$3;->val$itemsToClear:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 745
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    iget-object v2, p0, Lcom/sonymobile/home/model/Model$3;->this$0:Lcom/sonymobile/home/model/Model;

    invoke-virtual {v2, v1}, Lcom/sonymobile/home/model/Model;->deleteItemResource(Lcom/sonymobile/home/data/Item;)V

    goto :goto_0
.end method
