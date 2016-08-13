.class Lcom/sonymobile/home/folder/FolderManager$3;
.super Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;
.source "FolderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/folder/FolderManager;->notifyFolderAdded(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonymobile/home/util/ObserverList$DispatchRunnable",
        "<",
        "Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/folder/FolderManager;

.field final synthetic val$pageViewName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/folder/FolderManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/sonymobile/home/folder/FolderManager$3;->this$0:Lcom/sonymobile/home/folder/FolderManager;

    iput-object p2, p0, Lcom/sonymobile/home/folder/FolderManager$3;->val$pageViewName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;

    .prologue
    .line 561
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderManager$3;->val$pageViewName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;->onFolderAdded(Ljava/lang/String;)V

    .line 562
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 557
    check-cast p1, Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/folder/FolderManager$3;->run(Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;)V

    return-void
.end method
