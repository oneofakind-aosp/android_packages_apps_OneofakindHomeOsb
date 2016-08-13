.class Lcom/sonymobile/home/desktop/DesktopView$2;
.super Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener$Adapter;
.source "DesktopView.java"


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
    .line 365
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopView$2;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-direct {p0}, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageTransitionChanged(Lcom/sonymobile/home/settings/UserSettings$PageTransition;)V
    .locals 1
    .param p1, "pageTransition"    # Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView$2;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    # invokes: Lcom/sonymobile/home/desktop/DesktopView;->resetPageTransition()V
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopView;->access$400(Lcom/sonymobile/home/desktop/DesktopView;)V

    .line 369
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView$2;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    # setter for: Lcom/sonymobile/home/desktop/DesktopView;->mCurrentPageTransition:Lcom/sonymobile/home/settings/UserSettings$PageTransition;
    invoke-static {v0, p1}, Lcom/sonymobile/home/desktop/DesktopView;->access$502(Lcom/sonymobile/home/desktop/DesktopView;Lcom/sonymobile/home/settings/UserSettings$PageTransition;)Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    .line 370
    return-void
.end method
