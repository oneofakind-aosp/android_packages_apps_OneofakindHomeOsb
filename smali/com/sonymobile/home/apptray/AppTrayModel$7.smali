.class Lcom/sonymobile/home/apptray/AppTrayModel$7;
.super Ljava/lang/Object;
.source "AppTrayModel.java"

# interfaces
.implements Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/apptray/AppTrayModel;->createResourceLoaderCallbacks()Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/apptray/AppTrayModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/apptray/AppTrayModel;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayModel$7;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceLoaded(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)V
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "resource"    # Lcom/sonymobile/home/model/ResourceItem;

    .prologue
    .line 447
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel$7;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayModel;->notifyOnModelItemChanged(Lcom/sonymobile/home/data/Item;)V
    invoke-static {v0, p1}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$3600(Lcom/sonymobile/home/apptray/AppTrayModel;Lcom/sonymobile/home/data/Item;)V

    .line 448
    return-void
.end method
