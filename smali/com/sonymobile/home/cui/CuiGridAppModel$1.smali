.class Lcom/sonymobile/home/cui/CuiGridAppModel$1;
.super Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener$Adapter;
.source "CuiGridAppModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/cui/CuiGridAppModel;-><init>(Landroid/content/Context;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/settings/UserSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/cui/CuiGridAppModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/cui/CuiGridAppModel;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sonymobile/home/cui/CuiGridAppModel$1;->this$0:Lcom/sonymobile/home/cui/CuiGridAppModel;

    invoke-direct {p0}, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onIconSizeChanged()V
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridAppModel$1;->this$0:Lcom/sonymobile/home/cui/CuiGridAppModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridAppModel;->mIconSizeLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sonymobile/home/cui/CuiGridAppModel;->access$000(Lcom/sonymobile/home/cui/CuiGridAppModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridAppModel$1;->this$0:Lcom/sonymobile/home/cui/CuiGridAppModel;

    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridAppModel$1;->this$0:Lcom/sonymobile/home/cui/CuiGridAppModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridAppModel;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;
    invoke-static {v2}, Lcom/sonymobile/home/cui/CuiGridAppModel;->access$200(Lcom/sonymobile/home/cui/CuiGridAppModel;)Lcom/sonymobile/home/settings/UserSettings;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/home/settings/UserSettings$IconType;->DESKTOP_ICON:Lcom/sonymobile/home/settings/UserSettings$IconType;

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/settings/UserSettings;->getIconSize(Lcom/sonymobile/home/settings/UserSettings$IconType;)I

    move-result v2

    # setter for: Lcom/sonymobile/home/cui/CuiGridAppModel;->mIconSize:I
    invoke-static {v0, v2}, Lcom/sonymobile/home/cui/CuiGridAppModel;->access$102(Lcom/sonymobile/home/cui/CuiGridAppModel;I)I

    .line 67
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridAppModel$1;->this$0:Lcom/sonymobile/home/cui/CuiGridAppModel;

    iget-object v2, p0, Lcom/sonymobile/home/cui/CuiGridAppModel$1;->this$0:Lcom/sonymobile/home/cui/CuiGridAppModel;

    # getter for: Lcom/sonymobile/home/cui/CuiGridAppModel;->mIconSize:I
    invoke-static {v2}, Lcom/sonymobile/home/cui/CuiGridAppModel;->access$100(Lcom/sonymobile/home/cui/CuiGridAppModel;)I

    move-result v2

    invoke-static {v2}, Lcom/sonymobile/home/bitmap/IconUtilities;->getIconDpi(I)I

    move-result v2

    # setter for: Lcom/sonymobile/home/cui/CuiGridAppModel;->mIconDpi:I
    invoke-static {v0, v2}, Lcom/sonymobile/home/cui/CuiGridAppModel;->access$302(Lcom/sonymobile/home/cui/CuiGridAppModel;I)I

    .line 68
    monitor-exit v1

    .line 69
    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
