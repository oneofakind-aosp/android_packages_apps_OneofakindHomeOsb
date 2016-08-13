.class Lcom/sonymobile/home/folder/OpenFolderModel$1;
.super Ljava/lang/Object;
.source "OpenFolderModel.java"

# interfaces
.implements Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/folder/OpenFolderModel;->createResourceLoaderCallbacks()Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/folder/OpenFolderModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/folder/OpenFolderModel;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderModel$1;->this$0:Lcom/sonymobile/home/folder/OpenFolderModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceLoaded(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)V
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "resource"    # Lcom/sonymobile/home/model/ResourceItem;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderModel$1;->this$0:Lcom/sonymobile/home/folder/OpenFolderModel;

    # invokes: Lcom/sonymobile/home/folder/OpenFolderModel;->notifyOnModelItemChanged(Lcom/sonymobile/home/data/Item;)V
    invoke-static {v0, p1}, Lcom/sonymobile/home/folder/OpenFolderModel;->access$000(Lcom/sonymobile/home/folder/OpenFolderModel;Lcom/sonymobile/home/data/Item;)V

    .line 98
    return-void
.end method
