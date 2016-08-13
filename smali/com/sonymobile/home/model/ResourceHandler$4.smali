.class Lcom/sonymobile/home/model/ResourceHandler$4;
.super Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;
.source "ResourceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/ResourceHandler;->notifyResourceLoaded(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonymobile/home/util/ObserverList$DispatchRunnable",
        "<",
        "Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/model/ResourceHandler;

.field final synthetic val$item:Lcom/sonymobile/home/data/Item;

.field final synthetic val$resource:Lcom/sonymobile/home/model/ResourceItem;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)V
    .locals 0

    .prologue
    .line 812
    iput-object p1, p0, Lcom/sonymobile/home/model/ResourceHandler$4;->this$0:Lcom/sonymobile/home/model/ResourceHandler;

    iput-object p2, p0, Lcom/sonymobile/home/model/ResourceHandler$4;->val$item:Lcom/sonymobile/home/data/Item;

    iput-object p3, p0, Lcom/sonymobile/home/model/ResourceHandler$4;->val$resource:Lcom/sonymobile/home/model/ResourceItem;

    invoke-direct {p0}, Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;

    .prologue
    .line 816
    iget-object v0, p0, Lcom/sonymobile/home/model/ResourceHandler$4;->val$item:Lcom/sonymobile/home/data/Item;

    iget-object v1, p0, Lcom/sonymobile/home/model/ResourceHandler$4;->val$resource:Lcom/sonymobile/home/model/ResourceItem;

    invoke-interface {p1, v0, v1}, Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;->onResourceLoaded(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)V

    .line 817
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 812
    check-cast p1, Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/model/ResourceHandler$4;->run(Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;)V

    return-void
.end method
