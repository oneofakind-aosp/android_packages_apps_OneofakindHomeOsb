.class Lcom/sonymobile/home/MainView$4;
.super Ljava/lang/Object;
.source "MainView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/MainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/MainView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/MainView;)V
    .locals 0

    .prologue
    .line 873
    iput-object p1, p0, Lcom/sonymobile/home/MainView$4;->this$0:Lcom/sonymobile/home/MainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchModeChanged(Z)V
    .locals 2
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 876
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/MainView$4;->this$0:Lcom/sonymobile/home/MainView;

    iget-object v0, v0, Lcom/sonymobile/home/MainView;->mKeyboardFocusManager:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/sonymobile/home/MainView$4;->this$0:Lcom/sonymobile/home/MainView;

    iget-object v0, v0, Lcom/sonymobile/home/MainView;->mKeyboardFocusManager:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->clearFocus()V

    .line 878
    iget-object v0, p0, Lcom/sonymobile/home/MainView$4;->this$0:Lcom/sonymobile/home/MainView;

    iget-object v0, v0, Lcom/sonymobile/home/MainView;->mKeyboardFocusManager:Lcom/sonymobile/home/HomeKeyboardFocusManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/HomeKeyboardFocusManager;->setAllowFocus(Z)V

    .line 880
    :cond_0
    return-void
.end method
