.class Lcom/sonymobile/home/desktop/DesktopView$1;
.super Ljava/lang/Object;
.source "DesktopView.java"

# interfaces
.implements Lcom/sonymobile/home/ui/pageview/PageViewTouchAreaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/DesktopView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/settings/UserSettings;Lcom/sonymobile/home/desktop/DesktopPreferences;Lcom/sonymobile/home/desktop/DesktopTouchConsumedHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/DesktopView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopView;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopView$1;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(FFFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "rawX"    # F
    .param p4, "rawY"    # F

    .prologue
    .line 326
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView$1;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    # invokes: Lcom/sonymobile/home/desktop/DesktopView;->notifyClick(FF)V
    invoke-static {v0, p3, p4}, Lcom/sonymobile/home/desktop/DesktopView;->access$200(Lcom/sonymobile/home/desktop/DesktopView;FF)V

    .line 327
    return-void
.end method

.method public onLongPress(FFFF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "rawX"    # F
    .param p4, "rawY"    # F

    .prologue
    .line 320
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView$1;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    # invokes: Lcom/sonymobile/home/desktop/DesktopView;->notifyLongPress(FF)V
    invoke-static {v0, p3, p4}, Lcom/sonymobile/home/desktop/DesktopView;->access$100(Lcom/sonymobile/home/desktop/DesktopView;FF)V

    .line 321
    const/4 v0, 0x1

    return v0
.end method

.method public onSecondaryClick(FFFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "rawX"    # F
    .param p4, "rawY"    # F

    .prologue
    .line 315
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView$1;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    # invokes: Lcom/sonymobile/home/desktop/DesktopView;->notifySecondaryClick(FF)V
    invoke-static {v0, p3, p4}, Lcom/sonymobile/home/desktop/DesktopView;->access$000(Lcom/sonymobile/home/desktop/DesktopView;FF)V

    .line 316
    return-void
.end method
