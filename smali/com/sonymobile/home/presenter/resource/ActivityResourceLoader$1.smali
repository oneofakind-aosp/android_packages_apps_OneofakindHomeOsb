.class Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader$1;
.super Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener$Adapter;
.source "ActivityResourceLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;-><init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/settings/UserSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;

.field final synthetic val$userSettings:Lcom/sonymobile/home/settings/UserSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader$1;->this$0:Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;

    iput-object p2, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader$1;->val$userSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-direct {p0}, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onIconSizeChanged()V
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader$1;->this$0:Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;

    # getter for: Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mIconSizeLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->access$000(Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader$1;->this$0:Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;

    iget-object v2, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader$1;->val$userSettings:Lcom/sonymobile/home/settings/UserSettings;

    sget-object v3, Lcom/sonymobile/home/settings/UserSettings$IconType;->ICON_RESOURCE:Lcom/sonymobile/home/settings/UserSettings$IconType;

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/settings/UserSettings;->getIconSize(Lcom/sonymobile/home/settings/UserSettings$IconType;)I

    move-result v2

    # setter for: Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mIconSize:I
    invoke-static {v0, v2}, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->access$102(Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;I)I

    .line 75
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader$1;->this$0:Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;

    iget-object v2, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader$1;->this$0:Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;

    # getter for: Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mIconSize:I
    invoke-static {v2}, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->access$100(Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;)I

    move-result v2

    invoke-static {v2}, Lcom/sonymobile/home/bitmap/IconUtilities;->getIconDpi(I)I

    move-result v2

    # setter for: Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mIconDpi:I
    invoke-static {v0, v2}, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->access$202(Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;I)I

    .line 76
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader$1;->this$0:Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;

    iget-object v2, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader$1;->this$0:Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;

    # getter for: Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mIconDpi:I
    invoke-static {v2}, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->access$200(Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;)I

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader$1;->this$0:Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;

    # getter for: Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->mIconSize:I
    invoke-static {v3}, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->access$100(Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;)I

    move-result v3

    # invokes: Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->loadDefaultIcons(II)V
    invoke-static {v0, v2, v3}, Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;->access$300(Lcom/sonymobile/home/presenter/resource/ActivityResourceLoader;II)V

    .line 77
    monitor-exit v1

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
