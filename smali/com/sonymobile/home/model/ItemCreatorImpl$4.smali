.class Lcom/sonymobile/home/model/ItemCreatorImpl$4;
.super Ljava/lang/Object;
.source "ItemCreatorImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/ItemCreatorImpl;->createFolder(Ljava/util/List;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$listener:Lcom/sonymobile/home/data/ItemCreator$ResultListener;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/ItemCreatorImpl;Ljava/util/List;Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$4;->this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

    iput-object p2, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$4;->val$items:Ljava/util/List;

    iput-object p3, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$4;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$4;->val$listener:Lcom/sonymobile/home/data/ItemCreator$ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 207
    new-instance v0, Lcom/sonymobile/home/data/FolderItem;

    iget-object v6, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$4;->this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

    # getter for: Lcom/sonymobile/home/model/ItemCreatorImpl;->mDefaultFolderLabel:Ljava/lang/String;
    invoke-static {v6}, Lcom/sonymobile/home/model/ItemCreatorImpl;->access$200(Lcom/sonymobile/home/model/ItemCreatorImpl;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/sonymobile/home/data/FolderItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .local v0, "folderItem":Lcom/sonymobile/home/data/FolderItem;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v3, "newFolderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v2, 0x0

    .line 211
    .local v2, "index":I
    iget-object v6, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$4;->this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

    # getter for: Lcom/sonymobile/home/model/ItemCreatorImpl;->mHasCleanupTempStorage:Z
    invoke-static {v6}, Lcom/sonymobile/home/model/ItemCreatorImpl;->access$300(Lcom/sonymobile/home/model/ItemCreatorImpl;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 212
    iget-object v6, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$4;->this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

    const/4 v7, 0x1

    # setter for: Lcom/sonymobile/home/model/ItemCreatorImpl;->mHasCleanupTempStorage:Z
    invoke-static {v6, v7}, Lcom/sonymobile/home/model/ItemCreatorImpl;->access$302(Lcom/sonymobile/home/model/ItemCreatorImpl;Z)Z

    .line 213
    iget-object v6, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$4;->this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

    # getter for: Lcom/sonymobile/home/model/ItemCreatorImpl;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;
    invoke-static {v6}, Lcom/sonymobile/home/model/ItemCreatorImpl;->access$400(Lcom/sonymobile/home/model/ItemCreatorImpl;)Lcom/sonymobile/home/folder/FolderManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/home/folder/FolderManager;->clearTempFolder()V

    .line 215
    :cond_0
    new-instance v6, Lcom/sonymobile/home/data/ItemLocation;

    invoke-direct {v6, v8, v8}, Lcom/sonymobile/home/data/ItemLocation;-><init>(II)V

    invoke-virtual {v0, v6}, Lcom/sonymobile/home/data/FolderItem;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 216
    const-string v6, "temp_folder"

    invoke-virtual {v0, v6}, Lcom/sonymobile/home/data/FolderItem;->setPageViewName(Ljava/lang/String;)V

    .line 218
    iget-object v6, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$4;->val$items:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/home/data/Item;

    .line 219
    .local v5, "oldItem":Lcom/sonymobile/home/data/Item;
    const/4 v4, 0x0

    .line 221
    .local v4, "newItem":Lcom/sonymobile/home/data/Item;
    instance-of v6, v5, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v6, :cond_3

    .line 222
    new-instance v4, Lcom/sonymobile/home/data/ShortcutItem;

    .end local v4    # "newItem":Lcom/sonymobile/home/data/Item;
    check-cast v5, Lcom/sonymobile/home/data/ShortcutItem;

    .end local v5    # "oldItem":Lcom/sonymobile/home/data/Item;
    invoke-direct {v4, v5}, Lcom/sonymobile/home/data/ShortcutItem;-><init>(Lcom/sonymobile/home/data/ShortcutItem;)V

    .line 227
    .restart local v4    # "newItem":Lcom/sonymobile/home/data/Item;
    :cond_2
    :goto_1
    if-eqz v4, :cond_1

    .line 228
    const-string v6, "folder"

    invoke-virtual {v4, v6}, Lcom/sonymobile/home/data/Item;->setPageViewName(Ljava/lang/String;)V

    .line 229
    new-instance v6, Lcom/sonymobile/home/data/ItemLocation;

    invoke-direct {v6, v8, v2}, Lcom/sonymobile/home/data/ItemLocation;-><init>(II)V

    invoke-virtual {v4, v6}, Lcom/sonymobile/home/data/Item;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 231
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    .restart local v5    # "oldItem":Lcom/sonymobile/home/data/Item;
    :cond_3
    instance-of v6, v5, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v6, :cond_2

    .line 224
    new-instance v4, Lcom/sonymobile/home/data/ActivityItem;

    .end local v4    # "newItem":Lcom/sonymobile/home/data/Item;
    check-cast v5, Lcom/sonymobile/home/data/ActivityItem;

    .end local v5    # "oldItem":Lcom/sonymobile/home/data/Item;
    invoke-direct {v4, v5}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Lcom/sonymobile/home/data/ActivityItem;)V

    .restart local v4    # "newItem":Lcom/sonymobile/home/data/Item;
    goto :goto_1

    .line 237
    .end local v4    # "newItem":Lcom/sonymobile/home/data/Item;
    :cond_4
    iget-object v6, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$4;->this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

    # getter for: Lcom/sonymobile/home/model/ItemCreatorImpl;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;
    invoke-static {v6}, Lcom/sonymobile/home/model/ItemCreatorImpl;->access$400(Lcom/sonymobile/home/model/ItemCreatorImpl;)Lcom/sonymobile/home/folder/FolderManager;

    move-result-object v6

    invoke-virtual {v6, v0, v3}, Lcom/sonymobile/home/folder/FolderManager;->insertFolder(Lcom/sonymobile/home/data/FolderItem;Ljava/util/List;)V

    .line 239
    iget-object v6, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$4;->this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

    iget-object v7, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$4;->val$handler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$4;->val$listener:Lcom/sonymobile/home/data/ItemCreator$ResultListener;

    # invokes: Lcom/sonymobile/home/model/ItemCreatorImpl;->notifyListener(Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Lcom/sonymobile/home/data/Item;)V
    invoke-static {v6, v7, v8, v0}, Lcom/sonymobile/home/model/ItemCreatorImpl;->access$000(Lcom/sonymobile/home/model/ItemCreatorImpl;Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Lcom/sonymobile/home/data/Item;)V

    .line 240
    return-void
.end method
