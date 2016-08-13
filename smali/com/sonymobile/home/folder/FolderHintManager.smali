.class public abstract Lcom/sonymobile/home/folder/FolderHintManager;
.super Ljava/lang/Object;
.source "FolderHintManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mFolderHintCreator:Lcom/sonymobile/home/folder/FolderHintCreator;

.field private mFolderHintScaleFactor:F

.field protected mHintAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

.field private mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

.field private final mScene:Lcom/sonymobile/flix/components/Scene;

.field private mTransferView:Lcom/sonymobile/home/transfer/TransferView;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;FLcom/sonymobile/home/settings/UserSettings;)V
    .locals 2
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "folderHintScaleFactor"    # F
    .param p3, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mScene:Lcom/sonymobile/flix/components/Scene;

    .line 71
    iput p2, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mFolderHintScaleFactor:F

    .line 72
    new-instance v0, Lcom/sonymobile/home/folder/FolderHintCreator;

    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-direct {v0, v1, p3}, Lcom/sonymobile/home/folder/FolderHintCreator;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/settings/UserSettings;)V

    iput-object v0, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mFolderHintCreator:Lcom/sonymobile/home/folder/FolderHintCreator;

    .line 73
    return-void
.end method


# virtual methods
.method public animateFolder(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/transfer/TransferView;)V
    .locals 6
    .param p1, "pageItemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "transferView"    # Lcom/sonymobile/home/transfer/TransferView;

    .prologue
    const-wide/16 v4, 0xc8

    .line 143
    invoke-virtual {p1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v1

    instance-of v1, v1, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v1, :cond_0

    .line 145
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-direct {v0, p1, v4, v5}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;J)V

    .line 146
    .local v0, "showHintAnimation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mFolderHintScaleFactor:F

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setScaling(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 147
    invoke-virtual {p1, v0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->startAnimation(Lcom/sonymobile/flix/components/util/ComponentAnimation;)V

    .line 148
    iput-object p2, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    .line 149
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v4, v5}, Lcom/sonymobile/home/transfer/TransferView;->animateTransferImage(ZJ)V

    .line 151
    iput-object p1, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 153
    .end local v0    # "showHintAnimation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    :cond_0
    return-void
.end method

.method public final cancel()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xc8

    const/4 v3, 0x0

    .line 159
    invoke-virtual {p0, p0}, Lcom/sonymobile/home/folder/FolderHintManager;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 160
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mHintAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v2, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mHintAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v1, v2}, Lcom/sonymobile/flix/components/Scene;->removeTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 162
    iput-object v3, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mHintAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    if-eqz v1, :cond_3

    .line 167
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->cancelAnimation()V

    .line 168
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/sonymobile/home/transfer/TransferView;->animateTransferImage(ZJ)V

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v1

    instance-of v1, v1, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v1, :cond_2

    .line 173
    new-instance v0, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-direct {v0, v1, v4, v5}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;J)V

    .line 174
    .local v0, "hideHintAnimation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    iget v1, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mFolderHintScaleFactor:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setScaling(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 175
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/ui/pageview/PageItemView;->startAnimation(Lcom/sonymobile/flix/components/util/ComponentAnimation;)V

    .line 177
    .end local v0    # "hideHintAnimation":Lcom/sonymobile/flix/components/util/ComponentAnimation;
    :cond_2
    iput-object v3, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 179
    :cond_3
    return-void
.end method

.method public createHint(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/transfer/TransferView;)V
    .locals 2
    .param p1, "pageItemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "transferView"    # Lcom/sonymobile/home/transfer/TransferView;

    .prologue
    .line 126
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    if-eq p1, v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/FolderHintManager;->reset()V

    .line 129
    iput-object p1, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 130
    iput-object p2, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    .line 131
    const-wide/16 v0, 0x32

    invoke-virtual {p0, p0, v0, v1}, Lcom/sonymobile/home/folder/FolderHintManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 133
    :cond_0
    return-void
.end method

.method protected abstract getHiddenItemId()J
.end method

.method protected abstract moveToCurrentPage()V
.end method

.method protected positionFolderHint(Lcom/sonymobile/flix/components/Image;J)V
    .locals 4
    .param p1, "folderHintView"    # Lcom/sonymobile/flix/components/Image;
    .param p2, "uniqueId"    # J

    .prologue
    .line 111
    iget-object v2, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mFolderHintCreator:Lcom/sonymobile/home/folder/FolderHintCreator;

    iget-object v3, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/folder/FolderHintCreator;->getIconX(Lcom/sonymobile/home/ui/pageview/PageItemView;)F

    move-result v0

    .line 112
    .local v0, "iconXPos":F
    iget-object v2, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mFolderHintCreator:Lcom/sonymobile/home/folder/FolderHintCreator;

    iget-object v3, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/folder/FolderHintCreator;->getIconY(Lcom/sonymobile/home/ui/pageview/PageItemView;)F

    move-result v1

    .line 113
    .local v1, "iconYPos":F
    iget-object v2, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v2}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getX()F

    move-result v2

    add-float/2addr v2, v0

    iget-object v3, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v3}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getY()F

    move-result v3

    add-float/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/sonymobile/flix/components/Image;->setPosition(FF)V

    .line 115
    return-void
.end method

.method protected abstract postDelayed(Ljava/lang/Runnable;J)Z
.end method

.method protected abstract removeCallbacks(Ljava/lang/Runnable;)V
.end method

.method protected abstract reset()V
.end method

.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xc8

    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    .line 77
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getItem()Lcom/sonymobile/home/data/Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getUniqueId()J

    move-result-wide v2

    .line 78
    .local v2, "uniqueId":J
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/FolderHintManager;->getHiddenItemId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mFolderHintCreator:Lcom/sonymobile/home/folder/FolderHintCreator;

    iget-object v4, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {v1, v4}, Lcom/sonymobile/home/folder/FolderHintCreator;->createHint(Lcom/sonymobile/home/ui/pageview/PageItemView;)Lcom/sonymobile/flix/components/Image;

    move-result-object v0

    .line 80
    .local v0, "folderHintView":Lcom/sonymobile/flix/components/Image;
    const-wide/high16 v4, -0x8000000000000000L

    invoke-virtual {p0, v4, v5}, Lcom/sonymobile/home/folder/FolderHintManager;->setOverlappedFolderId(J)V

    .line 81
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/folder/FolderHintManager;->setHiddenView(Lcom/sonymobile/home/ui/pageview/PageItemView;)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/sonymobile/home/folder/FolderHintManager;->setFolderHintView(Lcom/sonymobile/flix/components/Image;)V

    .line 84
    if-eqz v0, :cond_1

    .line 85
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mPageItemView:Lcom/sonymobile/home/ui/pageview/PageItemView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sonymobile/home/ui/pageview/PageItemView;->setVisible(Z)V

    .line 86
    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/home/folder/FolderHintManager;->setHiddenItemId(J)V

    .line 87
    invoke-virtual {p0}, Lcom/sonymobile/home/folder/FolderHintManager;->moveToCurrentPage()V

    .line 89
    invoke-virtual {p0, v0, v2, v3}, Lcom/sonymobile/home/folder/FolderHintManager;->positionFolderHint(Lcom/sonymobile/flix/components/Image;J)V

    .line 90
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    invoke-virtual {v1, v7, v8, v9}, Lcom/sonymobile/home/transfer/TransferView;->animateTransferImage(ZJ)V

    .line 94
    :cond_0
    new-instance v1, Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-direct {v1, v0, v8, v9}, Lcom/sonymobile/flix/components/util/ComponentAnimation;-><init>(Lcom/sonymobile/flix/components/Component;J)V

    iput-object v1, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mHintAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 95
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mHintAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    iget v4, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mFolderHintScaleFactor:F

    invoke-virtual {v1, v6, v4}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setScaling(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 96
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mHintAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    const v4, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v4, v6}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setAlpha(FF)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 97
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mHintAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v1, v7}, Lcom/sonymobile/flix/components/util/ComponentAnimation;->setVisibleOnStart(Z)Lcom/sonymobile/flix/components/util/ComponentAnimation;

    .line 98
    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mScene:Lcom/sonymobile/flix/components/Scene;

    iget-object v4, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mHintAnimation:Lcom/sonymobile/flix/components/util/ComponentAnimation;

    invoke-virtual {v1, v4}, Lcom/sonymobile/flix/components/Scene;->addTask(Lcom/sonymobile/flix/util/Scheduler$Task;)Z

    .line 101
    .end local v0    # "folderHintView":Lcom/sonymobile/flix/components/Image;
    :cond_1
    return-void
.end method

.method public final setFolderHintScaleFactor(F)V
    .locals 0
    .param p1, "folderHintScaleFactor"    # F

    .prologue
    .line 187
    iput p1, p0, Lcom/sonymobile/home/folder/FolderHintManager;->mFolderHintScaleFactor:F

    .line 188
    return-void
.end method

.method protected abstract setFolderHintView(Lcom/sonymobile/flix/components/Image;)V
.end method

.method protected abstract setHiddenItemId(J)V
.end method

.method protected abstract setHiddenView(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
.end method

.method protected abstract setOverlappedFolderId(J)V
.end method
