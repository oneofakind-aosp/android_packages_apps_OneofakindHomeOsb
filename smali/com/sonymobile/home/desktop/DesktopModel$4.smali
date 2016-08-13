.class Lcom/sonymobile/home/desktop/DesktopModel$4;
.super Ljava/lang/Object;
.source "DesktopModel.java"

# interfaces
.implements Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/DesktopModel;->createResourceLoaderCallbacks()Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/DesktopModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopModel;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopModel$4;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceLoaded(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)V
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "resource"    # Lcom/sonymobile/home/model/ResourceItem;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopModel$4;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # invokes: Lcom/sonymobile/home/desktop/DesktopModel;->notifyOnModelItemChanged(Lcom/sonymobile/home/data/Item;)V
    invoke-static {v0, p1}, Lcom/sonymobile/home/desktop/DesktopModel;->access$300(Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/data/Item;)V

    .line 526
    return-void
.end method
