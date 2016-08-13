.class Lcom/sonymobile/home/model/Model$8;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/Model;->createFolderChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/model/Model;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/Model;)V
    .locals 0

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/sonymobile/home/model/Model$8;->this$0:Lcom/sonymobile/home/model/Model;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderAdded(Ljava/lang/String;)V
    .locals 1
    .param p1, "pageViewName"    # Ljava/lang/String;

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/sonymobile/home/model/Model$8;->this$0:Lcom/sonymobile/home/model/Model;

    iget-object v0, v0, Lcom/sonymobile/home/model/Model;->mPageViewName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1145
    iget-object v0, p0, Lcom/sonymobile/home/model/Model$8;->this$0:Lcom/sonymobile/home/model/Model;

    invoke-virtual {v0}, Lcom/sonymobile/home/model/Model;->notifyOnModelChanged()V

    .line 1147
    :cond_0
    return-void
.end method

.method public onFolderChanged(J)V
    .locals 7
    .param p1, "folderId"    # J

    .prologue
    .line 1122
    iget-object v3, p0, Lcom/sonymobile/home/model/Model$8;->this$0:Lcom/sonymobile/home/model/Model;

    iget-object v3, v3, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/data/Item;

    .line 1123
    .local v0, "folderItem":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v0}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 1124
    iget-object v3, p0, Lcom/sonymobile/home/model/Model$8;->this$0:Lcom/sonymobile/home/model/Model;

    iget-object v4, v3, Lcom/sonymobile/home/model/Model;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    move-object v3, v0

    check-cast v3, Lcom/sonymobile/home/data/FolderItem;

    invoke-virtual {v4, v3}, Lcom/sonymobile/home/folder/FolderManager;->getNumberOfItemsInFolder(Lcom/sonymobile/home/data/FolderItem;)I

    move-result v2

    .line 1125
    .local v2, "nbrOfItemsInFolder":I
    invoke-static {v2}, Lcom/sonymobile/home/model/Model;->isBelowMinimumNumberOfItemsInFolder(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1126
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1128
    iget-object v3, p0, Lcom/sonymobile/home/model/Model$8;->this$0:Lcom/sonymobile/home/model/Model;

    check-cast v0, Lcom/sonymobile/home/data/FolderItem;

    .end local v0    # "folderItem":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v3, v0}, Lcom/sonymobile/home/model/Model;->removeFolderIfItContainsOnlyOneItem(Lcom/sonymobile/home/data/FolderItem;)V

    .line 1140
    .end local v2    # "nbrOfItemsInFolder":I
    :cond_1
    :goto_0
    return-void

    .line 1129
    .restart local v0    # "folderItem":Lcom/sonymobile/home/data/Item;
    .restart local v2    # "nbrOfItemsInFolder":I
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/home/model/Model$8;->this$0:Lcom/sonymobile/home/model/Model;

    iget-object v4, v3, Lcom/sonymobile/home/model/Model;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    move-object v3, v0

    check-cast v3, Lcom/sonymobile/home/data/FolderItem;

    invoke-virtual {v4, v3}, Lcom/sonymobile/home/folder/FolderManager;->isFolderEmpty(Lcom/sonymobile/home/data/FolderItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1131
    iget-object v3, p0, Lcom/sonymobile/home/model/Model$8;->this$0:Lcom/sonymobile/home/model/Model;

    check-cast v0, Lcom/sonymobile/home/data/FolderItem;

    .end local v0    # "folderItem":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v3, v0}, Lcom/sonymobile/home/model/Model;->removeEmptyFolder(Lcom/sonymobile/home/data/FolderItem;)V

    goto :goto_0

    .line 1133
    .restart local v0    # "folderItem":Lcom/sonymobile/home/data/Item;
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/home/model/Model$8;->this$0:Lcom/sonymobile/home/model/Model;

    iget-object v3, v3, Lcom/sonymobile/home/model/Model;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    if-eqz v3, :cond_1

    .line 1135
    iget-object v3, p0, Lcom/sonymobile/home/model/Model$8;->this$0:Lcom/sonymobile/home/model/Model;

    iget-object v3, v3, Lcom/sonymobile/home/model/Model;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    invoke-virtual {v3, v0}, Lcom/sonymobile/home/model/ResourceHandler;->updateResources(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    goto :goto_0
.end method

.method public onFolderNameChanged(JLjava/lang/String;)V
    .locals 7
    .param p1, "folderId"    # J
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 1151
    iget-object v3, p0, Lcom/sonymobile/home/model/Model$8;->this$0:Lcom/sonymobile/home/model/Model;

    iget-object v3, v3, Lcom/sonymobile/home/model/Model;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 1152
    .local v2, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v2}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    move-object v0, v2

    .line 1153
    check-cast v0, Lcom/sonymobile/home/data/FolderItem;

    .line 1154
    .local v0, "folderItem":Lcom/sonymobile/home/data/FolderItem;
    invoke-virtual {v0, p3}, Lcom/sonymobile/home/data/FolderItem;->setName(Ljava/lang/String;)V

    .line 1155
    iget-object v3, p0, Lcom/sonymobile/home/model/Model$8;->this$0:Lcom/sonymobile/home/model/Model;

    invoke-virtual {v3, v2}, Lcom/sonymobile/home/model/Model;->notifyOnModelItemChanged(Lcom/sonymobile/home/data/Item;)V

    .line 1156
    iget-object v3, p0, Lcom/sonymobile/home/model/Model$8;->this$0:Lcom/sonymobile/home/model/Model;

    iget-boolean v3, v3, Lcom/sonymobile/home/model/Model;->mIsSafeMode:Z

    if-nez v3, :cond_1

    .line 1157
    iget-object v3, p0, Lcom/sonymobile/home/model/Model$8;->this$0:Lcom/sonymobile/home/model/Model;

    invoke-virtual {v3, v2}, Lcom/sonymobile/home/model/Model;->updateStorage(Lcom/sonymobile/home/data/Item;)V

    .line 1162
    .end local v0    # "folderItem":Lcom/sonymobile/home/data/FolderItem;
    .end local v2    # "item":Lcom/sonymobile/home/data/Item;
    :cond_1
    return-void
.end method
