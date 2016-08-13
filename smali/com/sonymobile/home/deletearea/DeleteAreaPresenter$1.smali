.class Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;
.super Ljava/lang/Object;
.source "DeleteAreaPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/transfer/DropTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;-><init>(Lcom/sonymobile/home/deletearea/DeleteDropZoneView;Lcom/sonymobile/home/DialogHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;

.field final synthetic val$dialogHandler:Lcom/sonymobile/home/DialogHandler;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;Lcom/sonymobile/home/DialogHandler;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;->this$0:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;

    iput-object p2, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;->val$dialogHandler:Lcom/sonymobile/home/DialogHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;Lcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;Lcom/sonymobile/flix/components/Component;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;
    .param p1, "x1"    # Lcom/sonymobile/flix/components/Image;
    .param p2, "x2"    # Lcom/sonymobile/home/transfer/DropTarget$DropCallback;
    .param p3, "x3"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;->finishDeleteDrop(Lcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;Lcom/sonymobile/flix/components/Component;)V

    return-void
.end method

.method private finishDeleteDrop(Lcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;Lcom/sonymobile/flix/components/Component;)V
    .locals 7
    .param p1, "transferImage"    # Lcom/sonymobile/flix/components/Image;
    .param p2, "dropCallback"    # Lcom/sonymobile/home/transfer/DropTarget$DropCallback;
    .param p3, "dropped"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 98
    instance-of v2, p3, Lcom/sonymobile/home/ui/pageview/PageItemView;

    if-eqz v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;->this$0:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;

    # getter for: Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->mDeleteAreaView:Lcom/sonymobile/home/deletearea/DeleteDropZoneView;
    invoke-static {v2}, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->access$300(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;)Lcom/sonymobile/home/deletearea/DeleteDropZoneView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v1

    .line 100
    .local v1, "scene":Lcom/sonymobile/flix/components/Scene;
    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;

    move-result-object v0

    .line 101
    .local v0, "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    invoke-virtual {v0}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    const/16 v2, 0x4000

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080069

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p3}, Lcom/sonymobile/flix/components/Component;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->sendEvent(ILjava/lang/String;)V

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;->this$0:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;

    # getter for: Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->mDeleteAreaListener:Lcom/sonymobile/home/deletearea/DeleteAreaListener;
    invoke-static {v2}, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->access$400(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;)Lcom/sonymobile/home/deletearea/DeleteAreaListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 111
    iget-object v2, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;->this$0:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;

    # getter for: Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->mDeleteAreaListener:Lcom/sonymobile/home/deletearea/DeleteAreaListener;
    invoke-static {v2}, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->access$400(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;)Lcom/sonymobile/home/deletearea/DeleteAreaListener;

    move-result-object v2

    check-cast p3, Lcom/sonymobile/home/ui/pageview/PageItemView;

    .end local p3    # "dropped":Lcom/sonymobile/flix/components/Component;
    invoke-interface {v2, p3}, Lcom/sonymobile/home/deletearea/DeleteAreaListener;->onDroppedOnDeleteArea(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 115
    .end local v0    # "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    .end local v1    # "scene":Lcom/sonymobile/flix/components/Scene;
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;->this$0:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;

    # getter for: Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->mDeleteAreaView:Lcom/sonymobile/home/deletearea/DeleteDropZoneView;
    invoke-static {v2}, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->access$300(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;)Lcom/sonymobile/home/deletearea/DeleteDropZoneView;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$2;

    invoke-direct {v3, p0, p2}, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$2;-><init>(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;)V

    invoke-virtual {v2, p1, v3}, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->dropItem(Lcom/sonymobile/flix/components/Image;Lcom/sonymobile/flix/util/Animation$Listener;)V

    .line 149
    return-void
.end method


# virtual methods
.method public drop(Lcom/sonymobile/home/transfer/Transferable;ILcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;)V
    .locals 4
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;
    .param p2, "action"    # I
    .param p3, "transferImage"    # Lcom/sonymobile/flix/components/Image;
    .param p4, "dropCallback"    # Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    .prologue
    .line 62
    invoke-interface {p1}, Lcom/sonymobile/home/transfer/Transferable;->getComponent()Lcom/sonymobile/flix/components/Component;

    move-result-object v1

    .line 64
    .local v1, "dropped":Lcom/sonymobile/flix/components/Component;
    iget-object v2, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;->this$0:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;

    const/4 v3, 0x1

    # setter for: Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->mIsDropped:Z
    invoke-static {v2, v3}, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->access$002(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;Z)Z

    .line 66
    invoke-interface {p1}, Lcom/sonymobile/home/transfer/Transferable;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v2

    instance-of v2, v2, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v2, :cond_0

    and-int/lit8 v2, p2, 0x8

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 69
    new-instance v0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$1;

    invoke-direct {v0, p0, p3, p4, v1}, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1$1;-><init>(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;Lcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;Lcom/sonymobile/flix/components/Component;)V

    .line 85
    .local v0, "deleteDialogFragmentListener":Lcom/sonymobile/home/folder/FolderDeleteDialogFragment$DialogListener;
    iget-object v2, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;->this$0:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;

    iget-object v3, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;->val$dialogHandler:Lcom/sonymobile/home/DialogHandler;

    invoke-static {v0, v3}, Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;->newInstance(Lcom/sonymobile/home/folder/FolderDeleteDialogFragment$DialogListener;Lcom/sonymobile/home/DialogHandler;)Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;

    move-result-object v3

    # setter for: Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->mFolderDeleteDialogFragment:Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;
    invoke-static {v2, v3}, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->access$202(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;)Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;

    .line 88
    sget-object v2, Lcom/sonymobile/home/DialogFactory$Action;->DELETE_FOLDER:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v2}, Lcom/sonymobile/home/DialogFactory$Action;->getTag()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;->this$0:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;

    # getter for: Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->mFolderDeleteDialogFragment:Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;
    invoke-static {v3}, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->access$200(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;)Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonymobile/home/DialogFactory;->showDialog(Ljava/lang/String;Landroid/app/DialogFragment;)V

    .line 94
    .end local v0    # "deleteDialogFragmentListener":Lcom/sonymobile/home/folder/FolderDeleteDialogFragment$DialogListener;
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-direct {p0, p3, p4, v1}, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;->finishDeleteDrop(Lcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;Lcom/sonymobile/flix/components/Component;)V

    goto :goto_0
.end method

.method public enter(Lcom/sonymobile/home/transfer/Transferable;Lcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;)Z
    .locals 6
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;
    .param p2, "transferImage"    # Lcom/sonymobile/flix/components/Image;
    .param p3, "event"    # Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;

    .prologue
    .line 153
    invoke-virtual {p2}, Lcom/sonymobile/flix/components/Image;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 154
    .local v1, "paint":Landroid/graphics/Paint;
    const/16 v3, 0x88

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 155
    invoke-virtual {v1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v3

    if-nez v3, :cond_0

    .line 156
    iget-object v3, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;->this$0:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;

    # getter for: Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->mDeleteAreaView:Lcom/sonymobile/home/deletearea/DeleteDropZoneView;
    invoke-static {v3}, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->access$300(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;)Lcom/sonymobile/home/deletearea/DeleteDropZoneView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 158
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;->this$0:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;

    # getter for: Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->mDeleteAreaView:Lcom/sonymobile/home/deletearea/DeleteDropZoneView;
    invoke-static {v3}, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->access$300(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;)Lcom/sonymobile/home/deletearea/DeleteDropZoneView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->enter()V

    .line 159
    iget-object v3, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;->this$0:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;

    const/4 v4, 0x0

    # setter for: Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->mIsDropped:Z
    invoke-static {v3, v4}, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->access$002(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;Z)Z

    .line 161
    iget-object v3, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;->this$0:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;

    # getter for: Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->mDeleteAreaView:Lcom/sonymobile/home/deletearea/DeleteDropZoneView;
    invoke-static {v3}, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->access$300(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;)Lcom/sonymobile/home/deletearea/DeleteDropZoneView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v2

    .line 162
    .local v2, "scene":Lcom/sonymobile/flix/components/Scene;
    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;

    move-result-object v0

    .line 163
    .local v0, "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    invoke-virtual {v0}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 164
    const/16 v3, 0x4000

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080051

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->sendEvent(ILjava/lang/String;)V

    .line 168
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public exit(Lcom/sonymobile/home/transfer/Transferable;Lcom/sonymobile/flix/components/Image;)V
    .locals 3
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;
    .param p2, "transferImage"    # Lcom/sonymobile/flix/components/Image;

    .prologue
    const/4 v2, 0x0

    .line 178
    iget-object v1, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;->this$0:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;

    # getter for: Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->mFolderDeleteDialogFragment:Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;
    invoke-static {v1}, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->access$200(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;)Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;->this$0:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;

    # getter for: Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->mFolderDeleteDialogFragment:Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;
    invoke-static {v1}, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->access$200(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;)Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;->dismiss()V

    .line 180
    iget-object v1, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;->this$0:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;

    # setter for: Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->mFolderDeleteDialogFragment:Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;
    invoke-static {v1, v2}, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->access$202(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;)Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;

    .line 183
    :cond_0
    invoke-virtual {p2}, Lcom/sonymobile/flix/components/Image;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 184
    .local v0, "paint":Landroid/graphics/Paint;
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 185
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;->this$0:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;

    # getter for: Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->mIsDropped:Z
    invoke-static {v1}, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->access$000(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 189
    iget-object v1, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;->this$0:Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;

    # getter for: Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->mDeleteAreaView:Lcom/sonymobile/home/deletearea/DeleteDropZoneView;
    invoke-static {v1}, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->access$300(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;)Lcom/sonymobile/home/deletearea/DeleteDropZoneView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->exit(Lcom/sonymobile/flix/util/Animation$Listener;)V

    .line 191
    :cond_2
    return-void
.end method

.method public over(Lcom/sonymobile/home/transfer/Transferable;Lcom/sonymobile/home/transfer/TransferView;Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;)V
    .locals 0
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;
    .param p2, "transferView"    # Lcom/sonymobile/home/transfer/TransferView;
    .param p3, "event"    # Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;

    .prologue
    .line 174
    return-void
.end method
