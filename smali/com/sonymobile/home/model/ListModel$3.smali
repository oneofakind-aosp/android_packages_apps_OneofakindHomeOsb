.class Lcom/sonymobile/home/model/ListModel$3;
.super Ljava/lang/Object;
.source "ListModel.java"

# interfaces
.implements Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/ListModel;->createResourceLoaderCallbacks()Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;
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
    .line 100
    iput-object p1, p0, Lcom/sonymobile/home/model/ListModel$3;->this$0:Lcom/sonymobile/home/model/ListModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceLoaded(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)V
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "resource"    # Lcom/sonymobile/home/model/ResourceItem;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonymobile/home/model/ListModel$3;->this$0:Lcom/sonymobile/home/model/ListModel;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/model/ListModel;->notifyOnModelItemChanged(Lcom/sonymobile/home/data/Item;)V

    .line 105
    return-void
.end method
