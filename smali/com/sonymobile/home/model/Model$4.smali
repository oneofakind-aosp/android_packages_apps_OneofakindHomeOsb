.class Lcom/sonymobile/home/model/Model$4;
.super Landroid/os/AsyncTask;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/Model;->updateModelToStorage(Ljava/util/List;)V
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

.field final synthetic val$deleteItems:Ljava/util/List;

.field final synthetic val$itemsInModel:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/Model;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 769
    iput-object p1, p0, Lcom/sonymobile/home/model/Model$4;->this$0:Lcom/sonymobile/home/model/Model;

    iput-object p2, p0, Lcom/sonymobile/home/model/Model$4;->val$deleteItems:Ljava/util/List;

    iput-object p3, p0, Lcom/sonymobile/home/model/Model$4;->val$itemsInModel:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 769
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/model/Model$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 774
    iget-object v2, p0, Lcom/sonymobile/home/model/Model$4;->val$deleteItems:Ljava/util/List;

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

    .line 775
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    iget-object v2, p0, Lcom/sonymobile/home/model/Model$4;->this$0:Lcom/sonymobile/home/model/Model;

    iget-object v2, v2, Lcom/sonymobile/home/model/Model;->mStorage:Lcom/sonymobile/home/storage/Storage;

    invoke-interface {v2, v1}, Lcom/sonymobile/home/storage/Storage;->deletePageViewItem(Lcom/sonymobile/home/data/Item;)I

    goto :goto_0

    .line 777
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/model/Model$4;->this$0:Lcom/sonymobile/home/model/Model;

    iget-object v2, v2, Lcom/sonymobile/home/model/Model;->mStorage:Lcom/sonymobile/home/storage/Storage;

    iget-object v3, p0, Lcom/sonymobile/home/model/Model$4;->this$0:Lcom/sonymobile/home/model/Model;

    iget-object v3, v3, Lcom/sonymobile/home/model/Model;->mPageViewName:Ljava/lang/String;

    iget-object v4, p0, Lcom/sonymobile/home/model/Model$4;->val$itemsInModel:Ljava/util/List;

    invoke-interface {v2, v3, v4}, Lcom/sonymobile/home/storage/Storage;->insertPageViewItems(Ljava/lang/String;Ljava/util/List;)V

    .line 779
    const/4 v2, 0x0

    return-object v2
.end method
