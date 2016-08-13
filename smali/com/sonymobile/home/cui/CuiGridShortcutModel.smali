.class public Lcom/sonymobile/home/cui/CuiGridShortcutModel;
.super Lcom/sonymobile/home/cui/CuiGridModel;
.source "CuiGridShortcutModel.java"


# instance fields
.field private final mAsyncBitmapLoader:Lcom/sonymobile/home/cui/AsyncBitmapLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/home/cui/AsyncBitmapLoader",
            "<",
            "Lcom/sonymobile/home/cui/CuiGridItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIconDpi:I

.field private mIconSize:I

.field private final mIconSizeLock:Ljava/lang/Object;

.field private final mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

.field private final mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 44
    sget-object v0, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_SHORTCUTS:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    invoke-static {v0, p1}, Lcom/sonymobile/home/cui/CuiGridHandler;->getGrid(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Landroid/content/Context;)Lcom/sonymobile/grid/Grid;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/home/cui/CuiGridModel;-><init>(Landroid/content/Context;Lcom/sonymobile/grid/Grid;)V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->mIconSizeLock:Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/sonymobile/home/settings/UserSettings$IconType;->DESKTOP_ICON:Lcom/sonymobile/home/settings/UserSettings$IconType;

    invoke-virtual {p2, v0}, Lcom/sonymobile/home/settings/UserSettings;->getIconSize(Lcom/sonymobile/home/settings/UserSettings$IconType;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->mIconSize:I

    .line 48
    iget v0, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->mIconSize:I

    invoke-static {v0}, Lcom/sonymobile/home/bitmap/IconUtilities;->getIconDpi(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->mIconDpi:I

    .line 50
    iput-object p2, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    .line 51
    new-instance v0, Lcom/sonymobile/home/cui/CuiGridShortcutModel$1;

    invoke-direct {v0, p0, p2}, Lcom/sonymobile/home/cui/CuiGridShortcutModel$1;-><init>(Lcom/sonymobile/home/cui/CuiGridShortcutModel;Lcom/sonymobile/home/settings/UserSettings;)V

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    .line 60
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    invoke-virtual {p2, v0}, Lcom/sonymobile/home/settings/UserSettings;->addUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V

    .line 62
    new-instance v0, Lcom/sonymobile/home/cui/CuiGridShortcutModel$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/cui/CuiGridShortcutModel$2;-><init>(Lcom/sonymobile/home/cui/CuiGridShortcutModel;)V

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->mAsyncBitmapLoader:Lcom/sonymobile/home/cui/AsyncBitmapLoader;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/cui/CuiGridShortcutModel;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridShortcutModel;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->mIconSizeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/cui/CuiGridShortcutModel;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridShortcutModel;

    .prologue
    .line 29
    iget v0, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->mIconSize:I

    return v0
.end method

.method static synthetic access$102(Lcom/sonymobile/home/cui/CuiGridShortcutModel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridShortcutModel;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->mIconSize:I

    return p1
.end method

.method static synthetic access$200(Lcom/sonymobile/home/cui/CuiGridShortcutModel;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridShortcutModel;

    .prologue
    .line 29
    iget v0, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->mIconDpi:I

    return v0
.end method

.method static synthetic access$202(Lcom/sonymobile/home/cui/CuiGridShortcutModel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridShortcutModel;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->mIconDpi:I

    return p1
.end method

.method static synthetic access$300(Lcom/sonymobile/home/cui/CuiGridShortcutModel;)Lcom/sonymobile/home/cui/AsyncBitmapLoader;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridShortcutModel;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->mAsyncBitmapLoader:Lcom/sonymobile/home/cui/AsyncBitmapLoader;

    return-object v0
.end method


# virtual methods
.method public getType()Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_SHORTCUTS:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    return-object v0
.end method

.method public load()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->mWorker:Lcom/sonymobile/flix/util/Worker;

    new-instance v1, Lcom/sonymobile/home/cui/CuiGridShortcutModel$3;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/cui/CuiGridShortcutModel$3;-><init>(Lcom/sonymobile/home/cui/CuiGridShortcutModel;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/Worker;->post(Lcom/sonymobile/flix/util/Worker$Task;)V

    .line 139
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Lcom/sonymobile/home/cui/CuiGridModel;->onDestroy()V

    .line 94
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->mAsyncBitmapLoader:Lcom/sonymobile/home/cui/AsyncBitmapLoader;

    invoke-virtual {v0}, Lcom/sonymobile/home/cui/AsyncBitmapLoader;->close()V

    .line 95
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridShortcutModel;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/settings/UserSettings;->removeUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V

    .line 96
    return-void
.end method
