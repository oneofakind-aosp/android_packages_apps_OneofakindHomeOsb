.class Lcom/sonymobile/home/folder/FolderManager$6;
.super Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;
.source "FolderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/folder/FolderManager;->notifyFolderNameChanged(JLjava/lang/String;)V
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

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/folder/FolderManager;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lcom/sonymobile/home/folder/FolderManager$6;->this$0:Lcom/sonymobile/home/folder/FolderManager;

    iput-wide p2, p0, Lcom/sonymobile/home/folder/FolderManager$6;->val$folderId:J

    iput-object p4, p0, Lcom/sonymobile/home/folder/FolderManager$6;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;

    .prologue
    .line 597
    iget-wide v0, p0, Lcom/sonymobile/home/folder/FolderManager$6;->val$folderId:J

    iget-object v2, p0, Lcom/sonymobile/home/folder/FolderManager$6;->val$name:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;->onFolderNameChanged(JLjava/lang/String;)V

    .line 598
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 593
    check-cast p1, Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/folder/FolderManager$6;->run(Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;)V

    return-void
.end method
