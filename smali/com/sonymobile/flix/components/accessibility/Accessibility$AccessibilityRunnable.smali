.class public Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;
.super Ljava/lang/Object;
.source "Accessibility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/components/accessibility/Accessibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AccessibilityRunnable"
.end annotation


# static fields
.field protected static final sPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAccessibilityView:Landroid/view/View;

.field protected mAction:I

.field protected mArguments:Landroid/os/Bundle;

.field protected mDescription:Ljava/lang/String;

.field protected mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->sPool:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    return-void
.end method

.method public static obtain(ILandroid/view/View;ILandroid/os/Bundle;Ljava/lang/String;)Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;
    .locals 6
    .param p0, "type"    # I
    .param p1, "accessibilityView"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;
    .param p4, "description"    # Ljava/lang/String;

    .prologue
    .line 181
    sget-object v2, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->sPool:Ljava/util/ArrayList;

    monitor-enter v2

    .line 182
    :try_start_0
    sget-object v1, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    new-instance v0, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;

    invoke-direct {v0}, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;-><init>()V

    .line 187
    .local v0, "runnable":Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 188
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->set(ILandroid/view/View;ILandroid/os/Bundle;Ljava/lang/String;)V

    .line 189
    return-object v0

    .line 185
    .end local v0    # "runnable":Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;
    :cond_0
    :try_start_1
    sget-object v1, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->sPool:Ljava/util/ArrayList;

    sget-object v3, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;

    .restart local v0    # "runnable":Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;
    goto :goto_0

    .line 187
    .end local v0    # "runnable":Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static recycle(Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;)V
    .locals 6
    .param p0, "runnable"    # Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 193
    if-eqz p0, :cond_0

    move-object v0, p0

    move v3, v1

    move-object v4, v2

    move-object v5, v2

    .line 194
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->set(ILandroid/view/View;ILandroid/os/Bundle;Ljava/lang/String;)V

    .line 195
    sget-object v1, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->sPool:Ljava/util/ArrayList;

    monitor-enter v1

    .line 196
    :try_start_0
    sget-object v0, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    monitor-exit v1

    .line 199
    :cond_0
    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 212
    iget v0, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 228
    :goto_0
    invoke-static {p0}, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->recycle(Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;)V

    .line 229
    return-void

    .line 214
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->mAccessibilityView:Landroid/view/View;

    iget v1, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->mAction:I

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 217
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->mAccessibilityView:Landroid/view/View;

    iget-object v1, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 220
    :pswitch_2
    iget-object v0, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->mAccessibilityView:Landroid/view/View;

    iget v1, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->mAction:I

    iget-object v2, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 223
    :pswitch_3
    iget-object v0, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->mAccessibilityView:Landroid/view/View;

    iget v1, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->mAction:I

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected set(ILandroid/view/View;ILandroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "accessibilityView"    # Landroid/view/View;
    .param p3, "action"    # I
    .param p4, "arguments"    # Landroid/os/Bundle;
    .param p5, "description"    # Ljava/lang/String;

    .prologue
    .line 203
    iput p1, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->mType:I

    .line 204
    iput-object p2, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->mAccessibilityView:Landroid/view/View;

    .line 205
    iput p3, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->mAction:I

    .line 206
    iput-object p4, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->mArguments:Landroid/os/Bundle;

    .line 207
    iput-object p5, p0, Lcom/sonymobile/flix/components/accessibility/Accessibility$AccessibilityRunnable;->mDescription:Ljava/lang/String;

    .line 208
    return-void
.end method
