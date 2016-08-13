.class Lcom/sonymobile/home/model/Model$5;
.super Landroid/os/AsyncTask;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/Model;->writeModelToStorage(Ljava/util/List;Lcom/sonymobile/home/storage/OnWriteCompletedCallback;)V
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

.field final synthetic val$callback:Lcom/sonymobile/home/storage/OnWriteCompletedCallback;

.field final synthetic val$itemsInModel:Ljava/util/List;

.field final synthetic val$itemsRemovedFromModel:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/Model;Ljava/util/List;Ljava/util/List;Lcom/sonymobile/home/storage/OnWriteCompletedCallback;)V
    .locals 0

    .prologue
    .line 848
    iput-object p1, p0, Lcom/sonymobile/home/model/Model$5;->this$0:Lcom/sonymobile/home/model/Model;

    iput-object p2, p0, Lcom/sonymobile/home/model/Model$5;->val$itemsRemovedFromModel:Ljava/util/List;

    iput-object p3, p0, Lcom/sonymobile/home/model/Model$5;->val$itemsInModel:Ljava/util/List;

    iput-object p4, p0, Lcom/sonymobile/home/model/Model$5;->val$callback:Lcom/sonymobile/home/storage/OnWriteCompletedCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private getItemsToRemoveFromStorage(Ljava/util/List;Z)Ljava/util/List;
    .locals 4
    .param p2, "safeMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 881
    .local p1, "itemsRemovedFromModel":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    if-eqz p2, :cond_2

    .line 882
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 883
    .local v2, "itemsToRemoveFromStorage":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 884
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    instance-of v3, v1, Lcom/sonymobile/home/data/WidgetItem;

    if-nez v3, :cond_1

    instance-of v3, v1, Lcom/sonymobile/home/data/AdvWidgetItem;

    if-nez v3, :cond_1

    instance-of v3, v1, Lcom/sonymobile/home/data/TipItem;

    if-eqz v3, :cond_0

    .line 886
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    .end local v2    # "itemsToRemoveFromStorage":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_2
    move-object v2, p1

    .line 891
    :cond_3
    return-object v2
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 848
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/model/Model$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 852
    iget-object v1, p0, Lcom/sonymobile/home/model/Model$5;->val$itemsRemovedFromModel:Ljava/util/List;

    iget-object v2, p0, Lcom/sonymobile/home/model/Model$5;->this$0:Lcom/sonymobile/home/model/Model;

    iget-boolean v2, v2, Lcom/sonymobile/home/model/Model;->mIsSafeMode:Z

    invoke-direct {p0, v1, v2}, Lcom/sonymobile/home/model/Model$5;->getItemsToRemoveFromStorage(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 854
    .local v0, "itemsToRemoveFromStorage":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v1, p0, Lcom/sonymobile/home/model/Model$5;->this$0:Lcom/sonymobile/home/model/Model;

    iget-boolean v1, v1, Lcom/sonymobile/home/model/Model;->mIsSafeMode:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 855
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/model/Model$5;->this$0:Lcom/sonymobile/home/model/Model;

    iget-object v2, p0, Lcom/sonymobile/home/model/Model$5;->val$itemsInModel:Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/home/model/Model;->doStoreModel(Ljava/util/List;Ljava/util/List;)V

    .line 857
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 848
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/model/Model$5;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "voids"    # Ljava/lang/Void;

    .prologue
    .line 862
    iget-object v0, p0, Lcom/sonymobile/home/model/Model$5;->val$callback:Lcom/sonymobile/home/storage/OnWriteCompletedCallback;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/sonymobile/home/model/Model$5;->val$callback:Lcom/sonymobile/home/storage/OnWriteCompletedCallback;

    invoke-interface {v0}, Lcom/sonymobile/home/storage/OnWriteCompletedCallback;->onWriteCompleted()V

    .line 865
    :cond_0
    return-void
.end method
