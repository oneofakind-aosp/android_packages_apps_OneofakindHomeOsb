.class Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderTransferable;
.super Lcom/sonymobile/home/ui/pageview/PageItemViewTransferable;
.source "OpenFolderPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/folder/OpenFolderPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenFolderTransferable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/folder/OpenFolderPresenter;Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 0
    .param p2, "pageItemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderPresenter$OpenFolderTransferable;->this$0:Lcom/sonymobile/home/folder/OpenFolderPresenter;

    .line 133
    invoke-direct {p0, p2}, Lcom/sonymobile/home/ui/pageview/PageItemViewTransferable;-><init>(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 134
    return-void
.end method


# virtual methods
.method public getColSpan()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public getRowSpan()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    return v0
.end method
