.class public Lcom/sonymobile/home/presenter/view/FolderItemView;
.super Lcom/sonymobile/home/presenter/view/IconLabelView;
.source "FolderItemView.java"


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/data/Item;ZLcom/sonymobile/home/ui/pageview/PageItemViewListener;)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "includeLabel"    # Z
    .param p4, "pageItemViewListener"    # Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/home/presenter/view/IconLabelView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/data/Item;ZLcom/sonymobile/home/ui/pageview/PageItemViewListener;)V

    .line 29
    return-void
.end method


# virtual methods
.method public onRelease()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/sonymobile/home/presenter/view/FolderItemView;->mLabel:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sonymobile/home/presenter/view/FolderItemView;->mIcon:Landroid/graphics/Bitmap;

    .line 35
    return-void
.end method
