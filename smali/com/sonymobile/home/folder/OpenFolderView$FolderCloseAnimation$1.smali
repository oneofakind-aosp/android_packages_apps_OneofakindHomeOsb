.class Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation$1;
.super Ljava/lang/Object;
.source "OpenFolderView.java"

# interfaces
.implements Lcom/sonymobile/flix/util/Animation$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;-><init>(Lcom/sonymobile/home/folder/OpenFolderView;Lcom/sonymobile/flix/components/Component;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;

.field final synthetic val$this$0:Lcom/sonymobile/home/folder/OpenFolderView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;Lcom/sonymobile/home/folder/OpenFolderView;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation$1;->this$1:Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;

    iput-object p2, p0, Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation$1;->val$this$0:Lcom/sonymobile/home/folder/OpenFolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonymobile/flix/util/Animation;)V
    .locals 1
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation$1;->this$1:Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;

    iget-object v0, v0, Lcom/sonymobile/home/folder/OpenFolderView$FolderCloseAnimation;->this$0:Lcom/sonymobile/home/folder/OpenFolderView;

    # invokes: Lcom/sonymobile/home/folder/OpenFolderView;->closeAnimationCallback()V
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderView;->access$500(Lcom/sonymobile/home/folder/OpenFolderView;)V

    .line 227
    return-void
.end method

.method public onStart(Lcom/sonymobile/flix/util/Animation;)V
    .locals 0
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 222
    return-void
.end method
