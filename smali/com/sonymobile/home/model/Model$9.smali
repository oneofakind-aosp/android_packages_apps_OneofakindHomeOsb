.class Lcom/sonymobile/home/model/Model$9;
.super Landroid/os/AsyncTask;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/Model;->configureModel(Ljava/util/List;Lcom/sonymobile/home/model/Model$ModelStateConfigurable;Lcom/sonymobile/home/model/OnConfigCompletedCallback;)V
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

.field final synthetic val$modelStateConfigurable:Lcom/sonymobile/home/model/Model$ModelStateConfigurable;

.field final synthetic val$newItems:Ljava/util/List;

.field final synthetic val$onConfigCompletedCallback:Lcom/sonymobile/home/model/OnConfigCompletedCallback;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/Model;Ljava/util/List;Lcom/sonymobile/home/model/Model$ModelStateConfigurable;Lcom/sonymobile/home/model/OnConfigCompletedCallback;)V
    .locals 0

    .prologue
    .line 1400
    iput-object p1, p0, Lcom/sonymobile/home/model/Model$9;->this$0:Lcom/sonymobile/home/model/Model;

    iput-object p2, p0, Lcom/sonymobile/home/model/Model$9;->val$newItems:Ljava/util/List;

    iput-object p3, p0, Lcom/sonymobile/home/model/Model$9;->val$modelStateConfigurable:Lcom/sonymobile/home/model/Model$ModelStateConfigurable;

    iput-object p4, p0, Lcom/sonymobile/home/model/Model$9;->val$onConfigCompletedCallback:Lcom/sonymobile/home/model/OnConfigCompletedCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1400
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/model/Model$9;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 2
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
    .line 1404
    iget-object v0, p0, Lcom/sonymobile/home/model/Model$9;->this$0:Lcom/sonymobile/home/model/Model;

    iget-object v0, v0, Lcom/sonymobile/home/model/Model;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;

    iget-object v1, p0, Lcom/sonymobile/home/model/Model$9;->val$newItems:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/sonymobile/home/data/ItemCreator;->createItemsSync(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1400
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/model/Model$9;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 5
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
    .line 1409
    .local p1, "newItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v3, p0, Lcom/sonymobile/home/model/Model$9;->val$modelStateConfigurable:Lcom/sonymobile/home/model/Model$ModelStateConfigurable;

    if-eqz v3, :cond_0

    .line 1410
    iget-object v3, p0, Lcom/sonymobile/home/model/Model$9;->val$modelStateConfigurable:Lcom/sonymobile/home/model/Model$ModelStateConfigurable;

    invoke-interface {v3}, Lcom/sonymobile/home/model/Model$ModelStateConfigurable;->saveOldState()V

    .line 1411
    iget-object v3, p0, Lcom/sonymobile/home/model/Model$9;->val$modelStateConfigurable:Lcom/sonymobile/home/model/Model$ModelStateConfigurable;

    invoke-interface {v3}, Lcom/sonymobile/home/model/Model$ModelStateConfigurable;->updateState()V

    .line 1414
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/home/model/Model$9;->this$0:Lcom/sonymobile/home/model/Model;

    new-instance v4, Lcom/sonymobile/home/model/Model$9$1;

    invoke-direct {v4, p0}, Lcom/sonymobile/home/model/Model$9$1;-><init>(Lcom/sonymobile/home/model/Model$9;)V

    invoke-virtual {v3, p1, v4}, Lcom/sonymobile/home/model/Model;->updateModelItems(Ljava/util/List;Lcom/sonymobile/home/storage/OnWriteCompletedCallback;)Z

    move-result v2

    .line 1421
    .local v2, "updateSuccessful":Z
    if-nez v2, :cond_3

    .line 1423
    iget-object v3, p0, Lcom/sonymobile/home/model/Model$9;->val$modelStateConfigurable:Lcom/sonymobile/home/model/Model$ModelStateConfigurable;

    if-eqz v3, :cond_1

    .line 1424
    iget-object v3, p0, Lcom/sonymobile/home/model/Model$9;->val$modelStateConfigurable:Lcom/sonymobile/home/model/Model$ModelStateConfigurable;

    invoke-interface {v3}, Lcom/sonymobile/home/model/Model$ModelStateConfigurable;->restoreSavedState()V

    .line 1426
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 1427
    .local v1, "newItem":Lcom/sonymobile/home/data/Item;
    iget-object v3, p0, Lcom/sonymobile/home/model/Model$9;->this$0:Lcom/sonymobile/home/model/Model;

    invoke-virtual {v3, v1}, Lcom/sonymobile/home/model/Model;->deleteItemResource(Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 1429
    .end local v1    # "newItem":Lcom/sonymobile/home/data/Item;
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/home/model/Model$9;->val$onConfigCompletedCallback:Lcom/sonymobile/home/model/OnConfigCompletedCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/sonymobile/home/model/OnConfigCompletedCallback;->onConfigCompleted(Z)V

    .line 1431
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method
