.class Lcom/sonymobile/home/model/ListModel$2;
.super Ljava/lang/Object;
.source "ListModel.java"

# interfaces
.implements Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/ListModel;->createOnPackagesLoadedListener()Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/model/ListModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/ListModel;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sonymobile/home/model/ListModel$2;->this$0:Lcom/sonymobile/home/model/ListModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackagesLoaded()V
    .locals 5

    .prologue
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v0, "itemsRemovedFromModel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    iget-object v2, p0, Lcom/sonymobile/home/model/ListModel$2;->this$0:Lcom/sonymobile/home/model/ListModel;

    invoke-virtual {v2, v0}, Lcom/sonymobile/home/model/ListModel;->syncItems(Ljava/util/Collection;)Z

    move-result v1

    .line 70
    .local v1, "modelChanged":Z
    iget-object v2, p0, Lcom/sonymobile/home/model/ListModel$2;->this$0:Lcom/sonymobile/home/model/ListModel;

    iget-object v2, v2, Lcom/sonymobile/home/model/ListModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/sonymobile/home/model/ListModel$2;->this$0:Lcom/sonymobile/home/model/ListModel;

    iget-object v2, v2, Lcom/sonymobile/home/model/ListModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    iget-object v3, p0, Lcom/sonymobile/home/model/ListModel$2;->this$0:Lcom/sonymobile/home/model/ListModel;

    iget-object v3, v3, Lcom/sonymobile/home/model/ListModel;->mOnResourceLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;

    iget-object v4, p0, Lcom/sonymobile/home/model/ListModel$2;->this$0:Lcom/sonymobile/home/model/ListModel;

    iget-object v4, v4, Lcom/sonymobile/home/model/ListModel;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/home/model/ResourceHandler;->addOnResourceLoadedCallback(Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;Landroid/os/Handler;)V

    .line 75
    iget-object v2, p0, Lcom/sonymobile/home/model/ListModel$2;->this$0:Lcom/sonymobile/home/model/ListModel;

    iget-object v2, v2, Lcom/sonymobile/home/model/ListModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sonymobile/home/model/ListModel$2;->this$0:Lcom/sonymobile/home/model/ListModel;

    iget-object v4, v4, Lcom/sonymobile/home/model/ListModel;->mItems:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/model/ResourceHandler;->loadResources(Ljava/util/Collection;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/model/ListModel$2;->this$0:Lcom/sonymobile/home/model/ListModel;

    invoke-virtual {v2}, Lcom/sonymobile/home/model/ListModel;->setModelLoaded()V

    .line 81
    iget-object v2, p0, Lcom/sonymobile/home/model/ListModel$2;->this$0:Lcom/sonymobile/home/model/ListModel;

    iget-object v2, v2, Lcom/sonymobile/home/model/ListModel;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    iget-object v3, p0, Lcom/sonymobile/home/model/ListModel$2;->this$0:Lcom/sonymobile/home/model/ListModel;

    iget-object v3, v3, Lcom/sonymobile/home/model/ListModel;->mFolderChangeListener:Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;

    iget-object v4, p0, Lcom/sonymobile/home/model/ListModel$2;->this$0:Lcom/sonymobile/home/model/ListModel;

    iget-object v4, v4, Lcom/sonymobile/home/model/ListModel;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/home/folder/FolderManager;->addFolderChangeListener(Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;Landroid/os/Handler;)V

    .line 83
    iget-object v2, p0, Lcom/sonymobile/home/model/ListModel$2;->this$0:Lcom/sonymobile/home/model/ListModel;

    invoke-virtual {v2}, Lcom/sonymobile/home/model/ListModel;->notifyOnModelChanged()V

    .line 85
    if-eqz v1, :cond_1

    .line 86
    iget-object v2, p0, Lcom/sonymobile/home/model/ListModel$2;->this$0:Lcom/sonymobile/home/model/ListModel;

    invoke-virtual {v2, v0}, Lcom/sonymobile/home/model/ListModel;->writeModelToStorage(Ljava/util/List;)V

    .line 89
    :cond_1
    return-void
.end method
