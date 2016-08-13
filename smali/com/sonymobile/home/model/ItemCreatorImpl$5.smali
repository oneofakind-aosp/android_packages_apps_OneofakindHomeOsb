.class Lcom/sonymobile/home/model/ItemCreatorImpl$5;
.super Ljava/lang/Object;
.source "ItemCreatorImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/ItemCreatorImpl;->addItemToFolder(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

.field final synthetic val$addedItem:Lcom/sonymobile/home/data/Item;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$item:Lcom/sonymobile/home/data/Item;

.field final synthetic val$listener:Lcom/sonymobile/home/data/ItemCreator$ResultListener;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/ItemCreatorImpl;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$5;->this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

    iput-object p2, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$5;->val$item:Lcom/sonymobile/home/data/Item;

    iput-object p3, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$5;->val$addedItem:Lcom/sonymobile/home/data/Item;

    iput-object p4, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$5;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$5;->val$listener:Lcom/sonymobile/home/data/ItemCreator$ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$5;->val$item:Lcom/sonymobile/home/data/Item;

    check-cast v0, Lcom/sonymobile/home/data/FolderItem;

    .line 258
    .local v0, "folderItem":Lcom/sonymobile/home/data/FolderItem;
    iget-object v2, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$5;->val$addedItem:Lcom/sonymobile/home/data/Item;

    instance-of v2, v2, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v2, :cond_1

    .line 259
    new-instance v1, Lcom/sonymobile/home/data/ActivityItem;

    iget-object v2, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$5;->val$addedItem:Lcom/sonymobile/home/data/Item;

    check-cast v2, Lcom/sonymobile/home/data/ActivityItem;

    invoke-direct {v1, v2}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Lcom/sonymobile/home/data/ActivityItem;)V

    .line 263
    .local v1, "itemToBeAdded":Lcom/sonymobile/home/data/Item;
    :goto_0
    if-eqz v1, :cond_0

    .line 264
    iget-object v2, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$5;->this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

    # getter for: Lcom/sonymobile/home/model/ItemCreatorImpl;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;
    invoke-static {v2}, Lcom/sonymobile/home/model/ItemCreatorImpl;->access$400(Lcom/sonymobile/home/model/ItemCreatorImpl;)Lcom/sonymobile/home/folder/FolderManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sonymobile/home/folder/FolderManager;->addItem(Lcom/sonymobile/home/data/FolderItem;Lcom/sonymobile/home/data/Item;)V

    .line 266
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$5;->this$0:Lcom/sonymobile/home/model/ItemCreatorImpl;

    iget-object v3, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$5;->val$handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$5;->val$listener:Lcom/sonymobile/home/data/ItemCreator$ResultListener;

    iget-object v5, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$5;->val$item:Lcom/sonymobile/home/data/Item;

    # invokes: Lcom/sonymobile/home/model/ItemCreatorImpl;->notifyListener(Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Lcom/sonymobile/home/data/Item;)V
    invoke-static {v2, v3, v4, v5}, Lcom/sonymobile/home/model/ItemCreatorImpl;->access$000(Lcom/sonymobile/home/model/ItemCreatorImpl;Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Lcom/sonymobile/home/data/Item;)V

    .line 267
    return-void

    .line 261
    .end local v1    # "itemToBeAdded":Lcom/sonymobile/home/data/Item;
    :cond_1
    new-instance v1, Lcom/sonymobile/home/data/ShortcutItem;

    iget-object v2, p0, Lcom/sonymobile/home/model/ItemCreatorImpl$5;->val$addedItem:Lcom/sonymobile/home/data/Item;

    check-cast v2, Lcom/sonymobile/home/data/ShortcutItem;

    invoke-direct {v1, v2}, Lcom/sonymobile/home/data/ShortcutItem;-><init>(Lcom/sonymobile/home/data/ShortcutItem;)V

    .restart local v1    # "itemToBeAdded":Lcom/sonymobile/home/data/Item;
    goto :goto_0
.end method
