.class Lcom/sonymobile/home/folder/FolderManager$5;
.super Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;
.source "FolderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/folder/FolderManager;->notifyFolderBadgeChanged(J)V
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

.field final synthetic val$folderId:J


# direct methods
.method constructor <init>(Lcom/sonymobile/home/folder/FolderManager;J)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lcom/sonymobile/home/folder/FolderManager$5;->this$0:Lcom/sonymobile/home/folder/FolderManager;

    iput-wide p2, p0, Lcom/sonymobile/home/folder/FolderManager$5;->val$folderId:J

    invoke-direct {p0}, Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;

    .prologue
    .line 585
    iget-wide v0, p0, Lcom/sonymobile/home/folder/FolderManager$5;->val$folderId:J

    invoke-interface {p1, v0, v1}, Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;->onFolderChanged(J)V

    .line 586
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 581
    check-cast p1, Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/folder/FolderManager$5;->run(Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;)V

    return-void
.end method
