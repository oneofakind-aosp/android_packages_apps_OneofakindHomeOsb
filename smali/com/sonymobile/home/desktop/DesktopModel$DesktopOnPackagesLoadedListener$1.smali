.class Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener$1;
.super Ljava/lang/Object;
.source "DesktopModel.java"

# interfaces
.implements Lcom/sonymobile/home/model/RemoveSyncable;


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
    .line 855
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener$1;->this$1:Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener;

    iput-object p2, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener$1;->val$notReplacableItemsRemovedFromModel:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public removeDuringSync(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 858
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel$DesktopOnPackagesLoadedListener$1;->val$notReplacableItemsRemovedFromModel:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
