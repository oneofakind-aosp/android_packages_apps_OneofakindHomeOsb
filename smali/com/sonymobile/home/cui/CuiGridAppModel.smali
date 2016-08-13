.class public Lcom/sonymobile/home/cui/CuiGridAppModel;
.super Lcom/sonymobile/home/cui/CuiGridModel;
.source "CuiGridAppModel.java"


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

.field private final mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

.field private final mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

.field private final mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

.field private final mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceHandler"    # Lcom/sonymobile/home/model/ResourceHandler;
    .param p3, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p4, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 53
    sget-object v0, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_APPS:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    invoke-static {v0, p1}, Lcom/sonymobile/home/cui/CuiGridHandler;->getGrid(Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;Landroid/content/Context;)Lcom/sonymobile/grid/Grid;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/home/cui/CuiGridModel;-><init>(Landroid/content/Context;Lcom/sonymobile/grid/Grid;)V

    .line 54
    iput-object p2, p0, Lcom/sonymobile/home/cui/CuiGridAppModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    .line 55
    iput-object p3, p0, Lcom/sonymobile/home/cui/CuiGridAppModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridAppModel;->mIconSizeLock:Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/sonymobile/home/settings/UserSettings$IconType;->DESKTOP_ICON:Lcom/sonymobile/home/settings/UserSettings$IconType;

    invoke-virtual {p4, v0}, Lcom/sonymobile/home/settings/UserSettings;->getIconSize(Lcom/sonymobile/home/settings/UserSettings$IconType;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/cui/CuiGridAppModel;->mIconSize:I

    .line 59
    iget v0, p0, Lcom/sonymobile/home/cui/CuiGridAppModel;->mIconSize:I

    invoke-static {v0}, Lcom/sonymobile/home/bitmap/IconUtilities;->getIconDpi(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/cui/CuiGridAppModel;->mIconDpi:I

    .line 61
    iput-object p4, p0, Lcom/sonymobile/home/cui/CuiGridAppModel;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    .line 62
    new-instance v0, Lcom/sonymobile/home/cui/CuiGridAppModel$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/cui/CuiGridAppModel$1;-><init>(Lcom/sonymobile/home/cui/CuiGridAppModel;)V

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridAppModel;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    .line 71
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridAppModel;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    invoke-virtual {p4, v0}, Lcom/sonymobile/home/settings/UserSettings;->addUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V

    .line 73
    new-instance v0, Lcom/sonymobile/home/cui/CuiGridAppModel$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/cui/CuiGridAppModel$2;-><init>(Lcom/sonymobile/home/cui/CuiGridAppModel;)V

    iput-object v0, p0, Lcom/sonymobile/home/cui/CuiGridAppModel;->mAsyncBitmapLoader:Lcom/sonymobile/home/cui/AsyncBitmapLoader;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/cui/CuiGridAppModel;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridAppModel;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridAppModel;->mIconSizeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/cui/CuiGridAppModel;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridAppModel;

    .prologue
    .line 33
    iget v0, p0, Lcom/sonymobile/home/cui/CuiGridAppModel;->mIconSize:I

    return v0
.end method

.method static synthetic access$102(Lcom/sonymobile/home/cui/CuiGridAppModel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridAppModel;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/sonymobile/home/cui/CuiGridAppModel;->mIconSize:I

    return p1
.end method

.method static synthetic access$200(Lcom/sonymobile/home/cui/CuiGridAppModel;)Lcom/sonymobile/home/settings/UserSettings;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridAppModel;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridAppModel;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/home/cui/CuiGridAppModel;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridAppModel;

    .prologue
    .line 33
    iget v0, p0, Lcom/sonymobile/home/cui/CuiGridAppModel;->mIconDpi:I

    return v0
.end method

.method static synthetic access$302(Lcom/sonymobile/home/cui/CuiGridAppModel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridAppModel;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/sonymobile/home/cui/CuiGridAppModel;->mIconDpi:I

    return p1
.end method

.method static synthetic access$400(Lcom/sonymobile/home/cui/CuiGridAppModel;)Lcom/sonymobile/home/model/PackageHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridAppModel;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridAppModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/home/cui/CuiGridAppModel;)Lcom/sonymobile/home/cui/AsyncBitmapLoader;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridAppModel;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridAppModel;->mAsyncBitmapLoader:Lcom/sonymobile/home/cui/AsyncBitmapLoader;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/home/cui/CuiGridAppModel;)Lcom/sonymobile/home/model/ResourceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/cui/CuiGridAppModel;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridAppModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;

    return-object v0
.end method


# virtual methods
.method public getType()Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;
    .locals 1

    .prologue
    .line 200
    sget-object v0, Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;->GRID_APPS:Lcom/sonymobile/home/cui/CuiGridHandler$CuiGridType;

    return-object v0
.end method

.method public load()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridAppModel;->mWorker:Lcom/sonymobile/flix/util/Worker;

    new-instance v1, Lcom/sonymobile/home/cui/CuiGridAppModel$3;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/cui/CuiGridAppModel$3;-><init>(Lcom/sonymobile/home/cui/CuiGridAppModel;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/util/Worker;->post(Lcom/sonymobile/flix/util/Worker$Task;)V

    .line 196
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Lcom/sonymobile/home/cui/CuiGridModel;->onDestroy()V

    .line 110
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridAppModel;->mAsyncBitmapLoader:Lcom/sonymobile/home/cui/AsyncBitmapLoader;

    invoke-virtual {v0}, Lcom/sonymobile/home/cui/AsyncBitmapLoader;->close()V

    .line 111
    iget-object v0, p0, Lcom/sonymobile/home/cui/CuiGridAppModel;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    iget-object v1, p0, Lcom/sonymobile/home/cui/CuiGridAppModel;->mUserSettingsListener:Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/settings/UserSettings;->removeUserSettingsListener(Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;)V

    .line 112
    return-void
.end method
