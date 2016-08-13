.class Lcom/sonymobile/home/model/ItemCreatorImpl$7;
.super Ljava/lang/Object;
.source "ItemCreatorImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/ItemCreatorImpl;->copy(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

.field final synthetic val$folderItem:Lcom/sonymobile/home/data/FolderItem;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/sonymobile/home/data/ItemCreator$ResultListener;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/ItemCreatorImpl;Lcom/sonymobile/home/data/FolderItem;Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$7;->this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

    iput-object p2, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$7;->val$folderItem:Lcom/sonymobile/home/data/FolderItem;

    iput-object p3, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$7;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$7;->val$listener:Lcom/sonymobile/home/data/ItemCreator$ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 304
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v2, "newFolderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v6, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$7;->this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

    # getter for: Lcom/sonymobile/home/model/ItemCreatorImpl;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;
    invoke-static {v6}, Lcom/sonymobile/home/model/ItemCreatorImpl;->access$400(Lcom/sonymobile/home/model/ItemCreatorImpl;)Lcom/sonymobile/home/folder/FolderManager;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$7;->val$folderItem:Lcom/sonymobile/home/data/FolderItem;

    invoke-virtual {v6, v7}, Lcom/sonymobile/home/folder/FolderManager;->getFolderItems(Lcom/sonymobile/home/data/FolderItem;)Ljava/util/List;

    move-result-object v4

    .line 307
    .local v4, "oldFolderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/home/data/Item;

    .line 308
    .local v5, "oldItem":Lcom/sonymobile/home/data/Item;
    instance-of v6, v5, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v6, :cond_1

    .line 309
    new-instance v3, Lcom/sonymobile/home/data/ShortcutItem;

    check-cast v5, Lcom/sonymobile/home/data/ShortcutItem;

    .end local v5    # "oldItem":Lcom/sonymobile/home/data/Item;
    invoke-direct {v3, v5}, Lcom/sonymobile/home/data/ShortcutItem;-><init>(Lcom/sonymobile/home/data/ShortcutItem;)V

    .line 311
    .local v3, "newItem":Lcom/sonymobile/home/data/ShortcutItem;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 312
    .end local v3    # "newItem":Lcom/sonymobile/home/data/ShortcutItem;
    .restart local v5    # "oldItem":Lcom/sonymobile/home/data/Item;
    :cond_1
    instance-of v6, v5, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v6, :cond_0

    .line 313
    new-instance v6, Lcom/sonymobile/home/data/ActivityItem;

    check-cast v5, Lcom/sonymobile/home/data/ActivityItem;

    .end local v5    # "oldItem":Lcom/sonymobile/home/data/Item;
    invoke-direct {v6, v5}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Lcom/sonymobile/home/data/ActivityItem;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 316
    :cond_2
    new-instance v1, Lcom/sonymobile/home/data/FolderItem;

    iget-object v6, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$7;->val$folderItem:Lcom/sonymobile/home/data/FolderItem;

    invoke-direct {v1, v6}, Lcom/sonymobile/home/data/FolderItem;-><init>(Lcom/sonymobile/home/data/FolderItem;)V

    .line 318
    .local v1, "newFolderItem":Lcom/sonymobile/home/data/FolderItem;
    iget-object v6, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$7;->this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

    # getter for: Lcom/sonymobile/home/model/ItemCreatorImpl;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;
    invoke-static {v6}, Lcom/sonymobile/home/model/ItemCreatorImpl;->access$400(Lcom/sonymobile/home/model/ItemCreatorImpl;)Lcom/sonymobile/home/folder/FolderManager;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Lcom/sonymobile/home/folder/FolderManager;->insertFolder(Lcom/sonymobile/home/data/FolderItem;Ljava/util/List;)V

    .line 320
    iget-object v6, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$7;->this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

    iget-object v7, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$7;->val$handler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$7;->val$listener:Lcom/sonymobile/home/data/ItemCreator$ResultListener;

    # invokes: Lcom/sonymobile/home/model/ItemCreatorImpl;->notifyListener(Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Lcom/sonymobile/home/data/Item;)V
    invoke-static {v6, v7, v8, v1}, Lcom/sonymobile/home/model/ItemCreatorImpl;->access$000(Lcom/sonymobile/home/model/ItemCreatorImpl;Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Lcom/sonymobile/home/data/Item;)V

    .line 321
    return-void
.end method
