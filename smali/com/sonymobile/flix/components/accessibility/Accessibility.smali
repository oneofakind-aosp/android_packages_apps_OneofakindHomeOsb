.class public Lcom/sonymobile/flix/components/accessibility/Accessibility;
.super Ljava/lang/Object;
.source "Accessibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityDelegateView;,
        Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;
    }
.end annotation


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAccessibilityView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 29
    new-instance v0, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityDelegateView;

    invoke-direct {v0, p1}, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityDelegateView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility;->mAccessibilityView:Landroid/view/View;

    .line 32
    iget-object v0, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility;->mAccessibilityView:Landroid/view/View;

    new-instance v1, Lcom/sonymobile/flix/components/accessibility/Accessibility$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/flix/components/accessibility/Accessibility$1;-><init>(Lcom/sonymobile/flix/components/accessibility/Accessibility;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method


# virtual methods
.method public announce(Ljava/lang/String;)V
    .locals 5
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility;->mAccessibilityView:Landroid/view/View;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 90
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility;->mAccessibilityView:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p1}, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->obtain(ILandroid/view/View;ILandroid/os/Bundle;Ljava/lang/String;)Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;

    move-result-object v0

    .line 93
    .local v0, "accessibilityRunnable":Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;
    iget-object v1, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility;->mAccessibilityView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->run()V

    .line 97
    .end local v0    # "accessibilityRunnable":Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;
    :cond_0
    return-void
.end method

.method public attachTo(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "view"    # Landroid/view/ViewGroup;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility;->mAccessibilityView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 47
    return-void
.end method

.method public detach()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility;->mAccessibilityView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility;->mAccessibilityView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility;->mAccessibilityView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 56
    :cond_0
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility;->mAccessibilityView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performAction(I)V
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->performAction(ILandroid/os/Bundle;)V

    .line 107
    return-void
.end method

.method public performAction(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 117
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility;->mAccessibilityView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, p2, v3}, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->obtain(ILandroid/view/View;ILandroid/os/Bundle;Ljava/lang/String;)Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;

    move-result-object v0

    .line 120
    .local v0, "accessibilityRunnable":Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;
    iget-object v1, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility;->mAccessibilityView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->run()V

    .line 123
    :cond_0
    return-void
.end method

.method public playSoundEffect(I)V
    .locals 4
    .param p1, "soundConstant"    # I

    .prologue
    const/4 v3, 0x0

    .line 132
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility;->mAccessibilityView:Landroid/view/View;

    invoke-static {v1, v2, p1, v3, v3}, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->obtain(ILandroid/view/View;ILandroid/os/Bundle;Ljava/lang/String;)Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;

    move-result-object v0

    .line 135
    .local v0, "accessibilityRunnable":Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;
    iget-object v1, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility;->mAccessibilityView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    invoke-virtual {v0}, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->run()V

    .line 138
    :cond_0
    return-void
.end method

.method public sendEvent(ILjava/lang/String;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 67
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/accessibility/Accessibility;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility;->mAccessibilityView:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 69
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility;->mAccessibilityView:Landroid/view/View;

    invoke-static {v1, v2, p1, v3, v3}, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->obtain(ILandroid/view/View;ILandroid/os/Bundle;Ljava/lang/String;)Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;

    move-result-object v0

    .line 71
    .local v0, "accessibilityRunnable":Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;
    iget-object v1, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility;->mAccessibilityView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->run()V

    .line 75
    .end local v0    # "accessibilityRunnable":Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;
    :cond_0
    return-void
.end method
