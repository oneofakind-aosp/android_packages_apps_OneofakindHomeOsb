.class Lcom/sonymobile/home/cui/CuiGridShortcutModel$1;
.super Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener$Adapter;
.source "CuiGridShortcutModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/cui/CuiGridShortcutModel;-><init>(Landroid/content/Context;Lcom/sonymobile/home/settings/UserSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/cui/CuiGridShortcutModel;

.field final synthetic val$userSettings:Lcom/sonymobile/home/settings/UserSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/cui/CuiGridShortcutModel;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel$1;->this$0:Lcom/sonymobile/home/cui/CuiGridShortcutModel;

    iput-object p2, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel$1;->val$userSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-direct {p0}, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onIconSizeChanged()V
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel$1;->this$0:Lcom/sonymobile/home/cui/CuiGridShortcutModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridShortcutModel;->mIconSizeLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->access$000(Lcom/sonymobile/home/cui/CuiGridShortcutModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel$1;->this$0:Lcom/sonymobile/home/cui/CuiGridShortcutModel;

    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel$1;->val$userSettings:Lcom/sonymobile/home/settings/UserSettings;

    sget-object v3, Lcom/sonymobile/home/settings/UserSettings$IconType;->DESKTOP_ICON:Lcom/sonymobile/home/settings/UserSettings$IconType;

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/settings/UserSettings;->getIconSize(Lcom/sonymobile/home/settings/UserSettings$IconType;)I

    move-result v2

    # setter for: Lcom/sonymobile/home/cui/CuiGridShortcutModel;->mIconSize:I
    invoke-static {v0, v2}, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->access$102(Lcom/sonymobile/home/cui/CuiGridShortcutModel;I)I

    .line 56
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel$1;->this$0:Lcom/sonymobile/home/cui/CuiGridShortcutModel;

    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel$1;->this$0:Lcom/sonymobile/home/cui/CuiGridShortcutModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridShortcutModel;->mIconSize:I
    invoke-static {v2}, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->access$100(Lcom/sonymobile/home/cui/CuiGridShortcutModel;)I

    move-result v2

    invoke-static {v2}, Lcom/sonymobile/home/bitmap/IconUtilities;->getIconDpi(I)I

    move-result v2

    # setter for: Lcom/sonymobile/home/cui/CuiGridShortcutModel;->mIconDpi:I
    invoke-static {v0, v2}, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->access$202(Lcom/sonymobile/home/cui/CuiGridShortcutModel;I)I

    .line 57
    monitor-exit v1

    .line 58
    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
