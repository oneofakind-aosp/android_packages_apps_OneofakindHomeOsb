.class public Lcom/sonymobile/home/mainview/AccessibleTransferHandlerListener;
.super Ljava/lang/Object;
.source "AccessibleTransferHandlerListener.java"

# interfaces
.implements Lcom/sonymobile/home/transfer/TransferView$TransferViewListener;


# instance fields
.field private final mScene:Lcom/sonymobile/flix/components/Scene;

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;)V
    .locals 2
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sonymobile/home/mainview/AccessibleTransferHandlerListener;->mScene:Lcom/sonymobile/flix/components/Scene;

    .line 31
    invoke-virtual {p1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/sonymobile/home/mainview/AccessibleTransferHandlerListener;->mVibrator:Landroid/os/Vibrator;

    .line 33
    return-void
.end method


# virtual methods
.method public onTransferEnd()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onTransferStart(Lcom/sonymobile/home/transfer/Transferable;)V
    .locals 7
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;

    .prologue
    .line 38
    iget-object v2, p0, Lcom/sonymobile/home/mainview/AccessibleTransferHandlerListener;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 40
    iget-object v2, p0, Lcom/sonymobile/home/mainview/AccessibleTransferHandlerListener;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v2}, Lcom/sonymobile/flix/components/Scene;->getAccessibility()Lcom/sonymobile/flix/components/accessibility/Accessibility;

    move-result-object v0

    .line 41
    .local v0, "accessibility":Lcom/sonymobile/flix/components/accessibility/Accessibility;
    invoke-virtual {v0}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 42
    invoke-interface {p1}, Lcom/sonymobile/home/transfer/Transferable;->getComponent()Lcom/sonymobile/flix/components/Component;

    move-result-object v2

    instance-of v2, v2, Lcom/sonymobile/home/ui/pageview/PageItemView;

    if-eqz v2, :cond_0

    .line 43
    invoke-interface {p1}, Lcom/sonymobile/home/transfer/Transferable;->getComponent()Lcom/sonymobile/flix/components/Component;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/ui/pageview/PageItemView;

    .line 44
    .local v1, "itemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    const/16 v2, 0x4000

    iget-object v3, p0, Lcom/sonymobile/home/mainview/AccessibleTransferHandlerListener;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v3}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080068

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/sonymobile/home/ui/pageview/PageItemView;->getButton()Lcom/sonymobile/flix/components/accessibility/AccessibleButton;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/flix/components/accessibility/AccessibleButton;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->sendEvent(ILjava/lang/String;)V

    .line 50
    .end local v1    # "itemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    :cond_0
    return-void
.end method
