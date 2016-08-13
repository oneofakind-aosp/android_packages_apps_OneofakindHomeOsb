.class Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation$1;
.super Ljava/lang/Object;
.source "OpenFolderView.java"

# interfaces
.implements Lcom/sonymobile/flix/util/Animation$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;-><init>(Lcom/sonymobile/home/folder/OpenFolderView;Lcom/sonymobile/flix/components/Component;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;

.field final synthetic val$this$0:Lcom/sonymobile/home/folder/OpenFolderView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;Lcom/sonymobile/home/folder/OpenFolderView;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation$1;->this$1:Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;

    iput-object p2, p0, Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation$1;->val$this$0:Lcom/sonymobile/home/folder/OpenFolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonymobile/flix/util/Animation;)V
    .locals 2
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation$1;->this$1:Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;

    iget-object v0, v0, Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;->this$0:Lcom/sonymobile/home/folder/OpenFolderView;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/home/folder/OpenFolderView;->mOpenAnimRunning:Z
    invoke-static {v0, v1}, Lcom/sonymobile/home/folder/OpenFolderView;->access$302(Lcom/sonymobile/home/folder/OpenFolderView;Z)Z

    .line 190
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation$1;->this$1:Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;

    iget-object v0, v0, Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;->this$0:Lcom/sonymobile/home/folder/OpenFolderView;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderView;->mDelayedLocateItem:Lcom/sonymobile/home/data/Item;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderView;->access$400(Lcom/sonymobile/home/folder/OpenFolderView;)Lcom/sonymobile/home/data/Item;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation$1;->this$1:Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;

    iget-object v0, v0, Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;->this$0:Lcom/sonymobile/home/folder/OpenFolderView;

    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation$1;->this$1:Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;

    iget-object v1, v1, Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;->this$0:Lcom/sonymobile/home/folder/OpenFolderView;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderView;->mDelayedLocateItem:Lcom/sonymobile/home/data/Item;
    invoke-static {v1}, Lcom/sonymobile/home/folder/OpenFolderView;->access$400(Lcom/sonymobile/home/folder/OpenFolderView;)Lcom/sonymobile/home/data/Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/folder/OpenFolderView;->locateItem(Lcom/sonymobile/home/data/Item;)V

    .line 192
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation$1;->this$1:Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;

    iget-object v0, v0, Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;->this$0:Lcom/sonymobile/home/folder/OpenFolderView;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/home/folder/OpenFolderView;->mDelayedLocateItem:Lcom/sonymobile/home/data/Item;
    invoke-static {v0, v1}, Lcom/sonymobile/home/folder/OpenFolderView;->access$402(Lcom/sonymobile/home/folder/OpenFolderView;Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/data/Item;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation$1;->this$1:Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;

    iget-object v0, v0, Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;->this$0:Lcom/sonymobile/home/folder/OpenFolderView;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderView;->mListener:Lcom/sonymobile/home/folder/OpenFolderView$OpenFolderViewListener;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderView;->access$100(Lcom/sonymobile/home/folder/OpenFolderView;)Lcom/sonymobile/home/folder/OpenFolderView$OpenFolderViewListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation$1;->this$1:Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;

    iget-object v0, v0, Lcom/sonymobile/home/folder/OpenFolderView$FolderOpenAnimation;->this$0:Lcom/sonymobile/home/folder/OpenFolderView;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderView;->mListener:Lcom/sonymobile/home/folder/OpenFolderView$OpenFolderViewListener;
    invoke-static {v0}, Lcom/sonymobile/home/folder/OpenFolderView;->access$100(Lcom/sonymobile/home/folder/OpenFolderView;)Lcom/sonymobile/home/folder/OpenFolderView$OpenFolderViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/home/folder/OpenFolderView$OpenFolderViewListener;->onOpen()V

    .line 198
    :cond_1
    return-void
.end method

.method public onStart(Lcom/sonymobile/flix/util/Animation;)V
    .locals 0
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 184
    return-void
.end method
