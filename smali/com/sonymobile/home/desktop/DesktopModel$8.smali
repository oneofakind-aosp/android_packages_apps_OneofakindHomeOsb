.class Lcom/sonymobile/home/desktop/DesktopModel$8;
.super Landroid/os/AsyncTask;
.source "DesktopModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/DesktopModel;->configureVerizonDesktop(Lcom/sonymobile/home/desktop/VerizonDesktopConfig;Lcom/sonymobile/home/storage/OnWriteCompletedCallback;)V
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
.field final synthetic this$0:Lcom/sonymobile/home/desktop/DesktopModel;

.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$onWriteCompletedCallback:Lcom/sonymobile/home/storage/OnWriteCompletedCallback;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopModel;Ljava/util/List;Lcom/sonymobile/home/storage/OnWriteCompletedCallback;)V
    .locals 0

    .prologue
    .line 1907
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopModel$8;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    iput-object p2, p0, Lcom/sonymobile/home/desktop/DesktopModel$8;->val$items:Ljava/util/List;

    iput-object p3, p0, Lcom/sonymobile/home/desktop/DesktopModel$8;->val$onWriteCompletedCallback:Lcom/sonymobile/home/storage/OnWriteCompletedCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1907
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/desktop/DesktopModel$8;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

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
    .line 1911
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel$8;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/DesktopModel;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->access$4000(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/data/ItemCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$8;->val$items:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/sonymobile/home/data/ItemCreator;->createItemsSync(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1907
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/desktop/DesktopModel$8;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
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
    .line 1916
    .local p1, "newItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$8;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopModel$8;->val$onWriteCompletedCallback:Lcom/sonymobile/home/storage/OnWriteCompletedCallback;

    # invokes: Lcom/sonymobile/home/desktop/DesktopModel;->addItemsAndUpdatePersistentStorage(Ljava/util/Collection;Lcom/sonymobile/home/storage/OnWriteCompletedCallback;)Z
    invoke-static {v1, p1, v2}, Lcom/sonymobile/home/desktop/DesktopModel;->access$4100(Lcom/sonymobile/home/desktop/DesktopModel;Ljava/util/Collection;Lcom/sonymobile/home/storage/OnWriteCompletedCallback;)Z

    move-result v0

    .line 1920
    .local v0, "itemsAdded":Z
    if-nez v0, :cond_0

    .line 1924
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopModel$8;->val$onWriteCompletedCallback:Lcom/sonymobile/home/storage/OnWriteCompletedCallback;

    invoke-interface {v1}, Lcom/sonymobile/home/storage/OnWriteCompletedCallback;->onWriteCompleted()V

    .line 1926
    :cond_0
    return-void
.end method
