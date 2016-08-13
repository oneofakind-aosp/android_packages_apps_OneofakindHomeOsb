.class Lcom/sonymobile/home/desktop/cui/CuiPresenter$1;
.super Ljava/lang/Object;
.source "CuiPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/model/OnPackageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/cui/CuiPresenter;-><init>(Landroid/content/Context;Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/desktop/cui/CuiCallbackHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/transfer/TransferHandler;Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;Lcom/sonymobile/home/shortcut/ShortcutManager;Landroid/os/Handler;Lcom/sonymobile/home/settings/UserSettings;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/desktop/DesktopPreferences;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$1;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$1;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    # invokes: Lcom/sonymobile/home/desktop/cui/CuiPresenter;->restoreAllMenus()V
    invoke-static {v0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->access$000(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)V

    .line 195
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$1;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    # invokes: Lcom/sonymobile/home/desktop/cui/CuiPresenter;->restoreAllMenus()V
    invoke-static {v0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->access$000(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)V

    .line 200
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$1;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    # invokes: Lcom/sonymobile/home/desktop/cui/CuiPresenter;->restoreAllMenus()V
    invoke-static {v0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->access$000(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)V

    .line 205
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$1;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    # invokes: Lcom/sonymobile/home/desktop/cui/CuiPresenter;->restoreAllMenus()V
    invoke-static {v0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->access$000(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)V

    .line 215
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$1;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    # invokes: Lcom/sonymobile/home/desktop/cui/CuiPresenter;->restoreAllMenus()V
    invoke-static {v0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->access$000(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)V

    .line 210
    return-void
.end method
