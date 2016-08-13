.class Lcom/sonymobile/home/folder/FolderManager$10;
.super Lcom/sonymobile/flix/util/Worker$Task;
.source "FolderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/folder/FolderManager;->writeModelToStorage(JLjava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/folder/FolderManager;

.field final synthetic val$itemsRemoveCopy:Ljava/util/List;

.field final synthetic val$itemsUpdateCopy:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/folder/FolderManager;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 807
    iput-object p1, p0, Lcom/sonymobile/home/folder/FolderManager$10;->this$0:Lcom/sonymobile/home/folder/FolderManager;

    iput-object p2, p0, Lcom/sonymobile/home/folder/FolderManager$10;->val$itemsRemoveCopy:Ljava/util/List;

    iput-object p3, p0, Lcom/sonymobile/home/folder/FolderManager$10;->val$itemsUpdateCopy:Ljava/util/List;

    invoke-direct {p0}, Lcom/sonymobile/flix/util/Worker$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()V
    .locals 4

    .prologue
    .line 812
    iget-object v2, p0, Lcom/sonymobile/home/folder/FolderManager$10;->val$itemsRemoveCopy:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 814
    iget-object v2, p0, Lcom/sonymobile/home/folder/FolderManager$10;->val$itemsRemoveCopy:Ljava/util/List;

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

    .line 815
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    iget-object v2, p0, Lcom/sonymobile/home/folder/FolderManager$10;->this$0:Lcom/sonymobile/home/folder/FolderManager;

    # getter for: Lcom/sonymobile/home/folder/FolderManager;->mStorage:Lcom/sonymobile/home/storage/Storage;
    invoke-static {v2}, Lcom/sonymobile/home/folder/FolderManager;->access$700(Lcom/sonymobile/home/folder/FolderManager;)Lcom/sonymobile/home/storage/Storage;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sonymobile/home/storage/Storage;->deleteFolderItem(Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 819
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/folder/FolderManager$10;->this$0:Lcom/sonymobile/home/folder/FolderManager;

    # getter for: Lcom/sonymobile/home/folder/FolderManager;->mStorage:Lcom/sonymobile/home/storage/Storage;
    invoke-static {v2}, Lcom/sonymobile/home/folder/FolderManager;->access$700(Lcom/sonymobile/home/folder/FolderManager;)Lcom/sonymobile/home/storage/Storage;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/folder/FolderManager$10;->val$itemsUpdateCopy:Ljava/util/List;

    invoke-interface {v2, v3}, Lcom/sonymobile/home/storage/Storage;->updateFolderItems(Ljava/util/List;)I

    .line 820
    return-void
.end method
