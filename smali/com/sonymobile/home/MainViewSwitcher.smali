.class public Lcom/sonymobile/home/MainViewSwitcher;
.super Ljava/lang/Object;
.source "MainViewSwitcher.java"


# instance fields
.field private final mAppTray:Lcom/sonymobile/home/apptray/AppTray;

.field private final mDesktop:Lcom/sonymobile/home/desktop/Desktop;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/desktop/Desktop;Lcom/sonymobile/home/apptray/AppTray;)V
    .locals 0
    .param p1, "desktop"    # Lcom/sonymobile/home/desktop/Desktop;
    .param p2, "appTray"    # Lcom/sonymobile/home/apptray/AppTray;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/sonymobile/home/MainViewSwitcher;->mDesktop:Lcom/sonymobile/home/desktop/Desktop;

    .line 25
    iput-object p2, p0, Lcom/sonymobile/home/MainViewSwitcher;->mAppTray:Lcom/sonymobile/home/apptray/AppTray;

    .line 26
    return-void
.end method


# virtual methods
.method public setAppTray(ZZ)Lcom/sonymobile/home/mainview/MainViewResident;
    .locals 2
    .param p1, "animate"    # Z
    .param p2, "animateBackground"    # Z

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/home/MainViewSwitcher;->mDesktop:Lcom/sonymobile/home/desktop/Desktop;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/desktop/Desktop;->hide(Z)V

    .line 37
    iget-object v1, p0, Lcom/sonymobile/home/MainViewSwitcher;->mAppTray:Lcom/sonymobile/home/apptray/AppTray;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sonymobile/home/apptray/AppTray;->setAnimateBackgroundDim(Z)V

    .line 38
    iget-object v0, p0, Lcom/sonymobile/home/MainViewSwitcher;->mAppTray:Lcom/sonymobile/home/apptray/AppTray;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/apptray/AppTray;->show(Z)V

    .line 39
    iget-object v0, p0, Lcom/sonymobile/home/MainViewSwitcher;->mAppTray:Lcom/sonymobile/home/apptray/AppTray;

    return-object v0

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDesktop(Z)Lcom/sonymobile/home/mainview/MainViewResident;
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sonymobile/home/MainViewSwitcher;->mAppTray:Lcom/sonymobile/home/apptray/AppTray;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/apptray/AppTray;->hide(Z)V

    .line 50
    iget-object v0, p0, Lcom/sonymobile/home/MainViewSwitcher;->mDesktop:Lcom/sonymobile/home/desktop/Desktop;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/desktop/Desktop;->show(Z)V

    .line 51
    iget-object v0, p0, Lcom/sonymobile/home/MainViewSwitcher;->mDesktop:Lcom/sonymobile/home/desktop/Desktop;

    return-object v0
.end method
