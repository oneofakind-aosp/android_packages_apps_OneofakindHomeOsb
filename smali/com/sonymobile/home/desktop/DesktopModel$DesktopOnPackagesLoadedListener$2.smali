.class Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener$2;
.super Ljava/lang/Object;
.source "DesktopModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;->onPackagesLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;

.field final synthetic val$notReplacableItemsRemovedFromModel:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 869
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener$2;->this$1:Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;

    iput-object p2, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener$2;->val$notReplacableItemsRemovedFromModel:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 872
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener$2;->val$notReplacableItemsRemovedFromModel:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 873
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener$2;->this$1:Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;

    iget-object v2, v2, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/DesktopModel;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopModel;->access$1200(Lcom/sonymobile/home/desktop/DesktopModel;)Lcom/sonymobile/home/data/ItemCreator;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sonymobile/home/data/ItemCreator;->destroyItem(Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 875
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_0
    return-void
.end method
