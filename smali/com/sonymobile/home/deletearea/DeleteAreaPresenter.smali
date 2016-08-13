.class public Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;
.super Ljava/lang/Object;
.source "DeleteAreaPresenter.java"


# instance fields
.field private mDeleteAreaListener:Lcom/sonymobile/home/deletearea/DeleteAreaListener;

.field private final mDeleteAreaView:Lcom/sonymobile/home/deletearea/DeleteDropZoneView;

.field private mFolderDeleteDialogFragment:Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;

.field private mIsDropped:Z


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/deletearea/DeleteDropZoneView;Lcom/sonymobile/home/DialogHandler;)V
    .locals 3
    .param p1, "view"    # Lcom/sonymobile/home/deletearea/DeleteDropZoneView;
    .param p2, "dialogHandler"    # Lcom/sonymobile/home/DialogHandler;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->mDeleteAreaView:Lcom/sonymobile/home/deletearea/DeleteDropZoneView;

    .line 57
    new-instance v0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;

    invoke-direct {v0, p0, p2}, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter$1;-><init>(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;Lcom/sonymobile/home/DialogHandler;)V

    .line 195
    .local v0, "dropTarget":Lcom/sonymobile/home/transfer/DropTarget;
    iget-object v1, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->mDeleteAreaView:Lcom/sonymobile/home/deletearea/DeleteDropZoneView;

    invoke-virtual {v1}, Lcom/sonymobile/home/deletearea/DeleteDropZoneView;->getDropZone()Lcom/sonymobile/flix/components/Component;

    move-result-object v1

    const-string v2, "DropTarget.DropTarget"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/flix/components/Component;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->mIsDropped:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->mIsDropped:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;)Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->mFolderDeleteDialogFragment:Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;)Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;
    .param p1, "x1"    # Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->mFolderDeleteDialogFragment:Lcom/sonymobile/home/folder/FolderDeleteDialogFragment;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;)Lcom/sonymobile/home/deletearea/DeleteDropZoneView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->mDeleteAreaView:Lcom/sonymobile/home/deletearea/DeleteDropZoneView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;)Lcom/sonymobile/home/deletearea/DeleteAreaListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteAreaPresenter;->mDeleteAreaListener:Lcom/sonymobile/home/deletearea/DeleteAreaListener;

    return-object v0
.end method
